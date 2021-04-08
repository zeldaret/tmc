#!/bin/python
import argparse
import sys
import os
import subprocess
import logging

DEVKITARM = os.environ.get('DEVKITARM')
if DEVKITARM is None:
    raise ValueError('this requries DEVKITARM env variable')
CC = f'{DEVKITARM}/bin/arm-none-eabi-gcc'
# FIXME: relies on the script being in the tools dir
TOOLS_DIR = sys.path[0]
PREPROC = f'{TOOLS_DIR}/preproc/preproc'
CHARMAP = f'{TOOLS_DIR}/../charmap.txt'
CC1 = f'{TOOLS_DIR}/agbcc/bin/agbcc'
AS = f'{DEVKITARM}/bin/arm-none-eabi-as'
LD = f'{DEVKITARM}/bin/arm-none-eabi-ld'


class Stages:
    PREPROCESS = 0
    COMPILE = 1
    ASSEMBLE = 2
    LINK = 3

    @staticmethod
    def parse(filename: str):
        if filename.endswith('.c'):
            return Stages.PREPROCESS
        if filename.endswith('.i'):
            return Stages.COMPILE
        if filename.endswith('.s'):
            return Stages.ASSEMBLE
        return Stages.LINK

    @staticmethod
    def get_filename(basename, stage):
        if stage is Stages.PREPROCESS:
            return basename + '.i'
        if stage is Stages.COMPILE:
            return basename + '.s'
        if stage is Stages.ASSEMBLE:
            return basename + '.o'


def do_preprocess(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'preprocess "{input_filename}" > "{output_filename}"')
    # TODO CPPFLAGS
    call = [CC, '-E']
    if args.I:
        for I in args.I:
            call += ['-I', I]
    call += ['-nostdinc', '-undef', '-DTHEMINISHCAP', '-DREVISION=0' '-DENGLISH', input_filename, '-o', output_filename]
    logging.debug(f'call: {call}')
    p = subprocess.Popen(call, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    if p.returncode:
        logging.error(err.decode('ascii'))
        exit(p.returncode)


def do_compile(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'compile "{input_filename}" > "{output_filename}"')
    # TODO CFLAGS
    p = subprocess.Popen(
        f'{PREPROC} {input_filename} {CHARMAP} | {CC1} -O2 -Wimplicit -Wparentheses -Werror -Wno-multichar -o {output_filename}',
        shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    if p.returncode:
        logging.error(err.decode('ascii'))
        exit(p.returncode)
    p = subprocess.Popen(f'echo -e "\t.text\n\t.align\t2, 0 @ Don\'t pad with nop\n" >> {output_filename}', shell=True,
                         stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    if p.returncode:
        logging.error(err.decode('ascii'))
        exit(p.returncode)


def do_assemble(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'assemble "{input_filename}" > "{output_filename}"')
    # TODO ASFLAGS
    cmd = [AS,
           '-mcpu=arm7tdmi', '--defsym', 'THEMINISHCAP=1', '--defsym', 'REVISION=0', '--defsym',
           'ENGLISH=1', '-I', f'{TOOLS_DIR}/..',
           '-o', output_filename, input_filename]
    logging.debug(f'cmd: {cmd}')
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    if p.returncode:
        logging.error(err.decode('ascii'))
        exit(p.returncode)


def do_assemble2(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'assemble2 "{input_filename}" > "{output_filename}"')
    # TODO ASFLAGS
    preproc = subprocess.Popen([PREPROC, input_filename], stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                               cwd=f'{TOOLS_DIR}/..')
    asm = subprocess.Popen([AS, '-mcpu=arm7tdmi', '--defsym', 'THEMINISHCAP=1', '--defsym', 'REVISION=0',
                            '--defsym', 'ENGLISH=1', '-I', f'{TOOLS_DIR}/..', '-o', output_filename],
                           stdin=preproc.stdout, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    preproc.stdout.close()
    preproc.wait()
    asm.wait()
    if preproc.returncode:
        logging.error('preproc:\n' + preproc.stderr.read().decode('ascii'))
        exit(preproc.returncode)
    if asm.returncode:
        logging.error('as:\n' + asm.stderr.read().decode('ascii'))
        exit(asm.returncode)


def do_link(input_files, output_filename: str, args) -> None:
    logging.debug(f'link: "{input_files}" > "{output_filename}"')
    # TODO LDFLAGS
    # TODO map file
    p = subprocess.Popen([LD, '-Map', f'{TOOLS_DIR}/../tmc.map', '-n', '-T', f'{TOOLS_DIR}/../cmake.ld', '-o',
                          f'../../{output_filename}', '-L', f'{TOOLS_DIR}/agbcc/lib', '-lc'],
                         stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd='CMakeFiles/tmc.elf.dir')
    out, err = p.communicate()
    if p.returncode:
        logging.error(err.decode('ascii'))
        exit(p.returncode)


def do_stage(stage: int, input_filename: str, output_filename: str, args) -> None:
    if stage is Stages.PREPROCESS:
        return do_preprocess(input_filename, output_filename, args)
    if stage is Stages.COMPILE:
        return do_compile(input_filename, output_filename, args)
    if stage is Stages.ASSEMBLE:
        return do_assemble(input_filename, output_filename, args)
    if stage is Stages.LINK:
        raise ValueError('link is handled seperatly from other stages')
    raise ValueError(f'unknown stage {stage}')


def parse_args(argv):
    parser = argparse.ArgumentParser(description='compiler driver for agbcc and stuff')
    parser.add_argument('-o', dest='output')
    parser.add_argument('-c', action='store_const', dest='stages', const=Stages.ASSEMBLE)
    parser.add_argument('-v', action='count')
    parser.add_argument('-I', action='append')
    parser.add_argument('files', nargs='+')
    return parser.parse_args(argv)


def setup_logging(args):
    level = logging.INFO
    if args.v is not None:
        if args.v >= 1:
            level = logging.INFO
        if args.v >= 2:
            level = logging.DEBUG
    logging.basicConfig(level=level)


def main(argv):
    args = parse_args(argv)
    setup_logging(args)
    logging.debug(f'argv: {argv}')
    logging.debug(f'args I: {args.I}')
    target_stage = args.stages if args.stages is not None else Stages.LINK
    if target_stage is Stages.LINK:
        logging.debug(f'link "{args.files}" > "{args.output}"')
        do_link(args.files, args.output, args)
    else:
        if len(args.files) > 1:
            raise ValueError('multiple input files only allowed for linking')
        filename = args.files[0]
        starting_stage = Stages.parse(filename)
        if starting_stage is Stages.ASSEMBLE:
            do_assemble2(filename, args.output, args)
        else:
            current_stage = starting_stage
            current_filename = filename
            while current_stage < target_stage:
                output_filename = Stages.get_filename(args.output, current_stage)
                do_stage(current_stage, current_filename, output_filename, args)
                current_filename = output_filename
                current_stage += 1
            if current_stage is target_stage:
                do_stage(current_stage, current_filename, args.output, args)


if __name__ == "__main__":
    main(sys.argv[1:])
