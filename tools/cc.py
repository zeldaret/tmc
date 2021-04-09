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


def parse_defsym(Ds):
    result = []
    for D in Ds:
        result.append('--defsym')
        if '=' in D:
            result.append(D)
        else:
            result.append(D + '=1')
    return result


def do_preprocess(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'preprocess "{input_filename}" > "{output_filename}"')
    call = [CC, '-E']
    if args.I:
        for I in args.I:
            call += ['-I', I]
    if args.nostdinc:
        call.append('-nostdinc')
    if args.undef:
        call.append('-undef')
    if args.D:
        for D in args.D:
            call.append(f'-D{D}')
    call += [input_filename, '-o', output_filename]
    logging.debug(f'call: {call}')
    cpp = subprocess.Popen(call, stderr=subprocess.PIPE)
    cpp.wait()
    if cpp.returncode:
        logging.error(cpp.stderr.read().decode('ascii'))
        exit(cpp.returncode)


def do_compile(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'compile "{input_filename}" > "{output_filename}"')
    preproc = subprocess.Popen([PREPROC, input_filename, CHARMAP], stderr=subprocess.PIPE, stdout=subprocess.PIPE)
    cmd = [CC1]
    if args.g:
        cmd.append('-g')
    if args.O:
        cmd.append(f'-O{args.O}')
    if args.W:
        for W in args.W:
            cmd.append(f'-W{W}')
    if args.mthumb_interwork:
        cmd.append('-mthumb-interwork')

    cmd += ['-o', output_filename]
    cc = subprocess.Popen(cmd, stdin=preproc.stdout, stderr=subprocess.PIPE)
    preproc.stdout.close()
    preproc.wait()
    cc.wait()
    if preproc.returncode:
        logging.error(preproc.stderr.read().decode('ascii'))
        exit(preproc.returncode)
    if cc.returncode:
        logging.error(cc.stderr.read().decode('ascii'))
        exit(cc.returncode)

    append = subprocess.Popen(f'echo -e "\t.text\n\t.align\t2, 0 @ Don\'t pad with nop\n" >> {output_filename}',
                              shell=True, stderr=subprocess.PIPE)
    append.wait()
    if append.returncode:
        logging.error(append.stderr.read().decode('ascii'))
        exit(append.returncode)


def do_assemble(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'assemble "{input_filename}" > "{output_filename}"')
    cmd = [AS]
    if args.mcpu:
        cmd.append(f'-mcpu={args.mcpu}')
    if args.D:
        cmd += parse_defsym(args.D)
    cmd += ['-I', f'{TOOLS_DIR}/..', '-o', output_filename, input_filename]
    logging.debug(f'cmd: {cmd}')
    asm = subprocess.Popen(cmd, stderr=subprocess.PIPE)
    asm.wait()
    if asm.returncode:
        logging.error(asm.stderr.read().decode('ascii'))
        exit(asm.returncode)


def do_assemble2(input_filename: str, output_filename: str, args) -> None:
    logging.debug(f'assemble2 "{input_filename}" > "{output_filename}"')
    preproc = subprocess.Popen([PREPROC, os.path.abspath(input_filename)], stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE, cwd=f'{TOOLS_DIR}/..')
    cmd = [AS]
    if args.mcpu:
        cmd.append(f'-mcpu={args.mcpu}')
    if args.D:
        cmd += parse_defsym(args.D)
    cmd += ['-I', f'{TOOLS_DIR}/..', '-o', output_filename]
    asm = subprocess.Popen(cmd, stdin=preproc.stdout, stderr=subprocess.PIPE)
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
    cmd = [LD]
    if args.Map:
        cmd += ['-Map', args.Map]
    if args.n:
        cmd.append('-n')
    if args.T:
        cmd += ['-T', args.T]
    cmd += ['-o', f'../../{output_filename}']
    if args.L:
        for L in args.L:
            cmd += ['-L', L]
    if args.l:
        for l in args.l:
            cmd.append(f'-l{l}')
    ld = subprocess.Popen(cmd, stderr=subprocess.PIPE, cwd='CMakeFiles/tmc.elf.dir')
    ld.wait()
    if ld.returncode:
        logging.error(ld.stderr.read().decode('ascii'))
        exit(ld.returncode)


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
    parser.add_argument('-O')
    parser.add_argument('-W', action='append')
    parser.add_argument('-D', action='append')
    parser.add_argument('-g', action='store_true')
    parser.add_argument('-Map')
    parser.add_argument('-T')
    parser.add_argument('-L', action='append')
    parser.add_argument('-l', action='append')
    parser.add_argument('-n', action='store_true')
    parser.add_argument('-mcpu')
    parser.add_argument('-mthumb-interwork', action='store_true')
    parser.add_argument('-nostdinc', action='store_true')
    parser.add_argument('-undef', action='store_true')
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
