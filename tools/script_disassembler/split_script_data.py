from definitions import ROM_OFFSET, SCRIPTS_END, SCRIPTS_START
from script_disassembler import disassemble_script, generate_macros
import sys

# Reads a section from the baserom, splits the residing scripts into seperate files and disassembles them
# Should only be run before any manual changes to the script files are done!

TMC_FOLDER = '../..'



# Create labels for these additional script instructions
# Currently done by splitting the script at that point
LABEL_BREAKS = [0x0800A088, 0x0800ACE0, 0x0800AD54, 0x0800B41C, 0x0800B7C4, 0x0800C8C8, 0x0800D190, 0x800D3EC, 0x0800E9F4, 0x0800FD80,
                0x08012AC8, 0x08012F0C, 0x080130E4, 0x08013B70, 0x080142B0, 0x080147DC, 0x08014A80, 0x08014B10, 0x0801635C,  0x08016384, 0x080165D8]

# Whether to output a label for every line
PRINT_ALL_LABELS = False


def read_baserom():
    # read baserom data
    with open(f'{TMC_FOLDER}/baserom.gba', 'rb') as baserom:
        return bytearray(baserom.read())


def get_label(addr):
    return hex(addr).upper().replace('0X', 'script_0')


def disassemble_scripts(baserom_data):
    script_start = SCRIPTS_START-ROM_OFFSET

    scripts = '''	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.include "asm/macros/scripts.inc"

	.syntax unified

	.text
    
'''
    label_break = 0

    while script_start < SCRIPTS_END-ROM_OFFSET:
        if label_break < len(LABEL_BREAKS) and script_start + ROM_OFFSET >= LABEL_BREAKS[label_break]:
            label_break += 1

        label = get_label(script_start + ROM_OFFSET)
        print(f"Disassembling \033[1;34m{label}\033[0m ({script_start} / { SCRIPTS_END-ROM_OFFSET} bytes converted)...")
        # find end of the script signified by 0xffff0000
        script_end = baserom_data.index(b'\xff\xff\x00\x00', script_start) + 4

        if script_end > SCRIPTS_END-ROM_OFFSET:
            script_end = SCRIPTS_END-ROM_OFFSET

        # break at a predefined label into a new file
        if label_break < len(LABEL_BREAKS) and script_end + ROM_OFFSET > LABEL_BREAKS[label_break]:
            script_end = LABEL_BREAKS[label_break]-ROM_OFFSET

        # read data from rom
        data = baserom_data[script_start:script_end]

        scripts += f'	.include "data/scripts/{label}.inc"\n'
        stdout = sys.stdout

        with open(f'{TMC_FOLDER}/data/scripts/{label}.inc', 'w') as out:
            sys.stdout = out

            if script_start == 0x1637C:  # This function is actually assembly
                print('''thumb_func_start script_0801637C
script_0801637C:
    push {lr}
    bl CreateDust
    pop {pc}''')
                sys.stdout = stdout
                script_start = script_end
                continue

            print(f'SCRIPT_START {label}')
            res = disassemble_script(data, script_start + ROM_OFFSET, PRINT_ALL_LABELS)
            if res != 0:
                # Script ended in the middle, need to create a new file
                script_end = script_start + res
        sys.stdout = stdout

        script_start = script_end
    return scripts


def main():
    baserom_data = read_baserom()

    # Do two passes, in the first pass not all labels that are jumped to are known, so those labels are recorded in the first pass
    # This is not necessary when all labels are printed
    if not PRINT_ALL_LABELS:
        print('Collecting labels...')
        disassemble_scripts(baserom_data)
    print('Writing scripts with labels...')
    scripts = disassemble_scripts(baserom_data)

    print('Writing scripts.s file...')
    with open(f'{TMC_FOLDER}/data/scripts.s', 'w') as out:
        out.write(scripts)
    print('Generating asm macros...')
    stdout = sys.stdout
    with open(f'{TMC_FOLDER}/asm/macros/scripts.inc', 'w') as out:
        sys.stdout = out
        generate_macros()
    sys.stdout = stdout

    print('\033[1;92mDone\033[0m\n')


if __name__ == '__main__':
    main()
