# This python script reads the script.s file which contains all the .incbin macros
# Then it fetches the corresponding data of the baserom, o
TMC_FOLDER='../..'

import subprocess
import sys
from script_disassembler import disassemble_script, generate_macros

ROM_OFFSET=0x08000000
SCRIPTS_START=0x08008B5C
SCRIPTS_END=0x08016984
# cat data/scripts.s  | grep @ | cut -d " " -f 3 | sed  -e 's/^/0x/' | sed -e 's/\\n/, /g' > labels.txt

def read_baserom():
    # read baserom data
    with open(f'{TMC_FOLDER}/baserom.gba', 'rb') as baserom:
        return bytearray(baserom.read())

def get_label(addr):
    return hex(addr).upper().replace('0X', 'gUnk_0')

def main():
    baserom_data = read_baserom()

    script_start = SCRIPTS_START-ROM_OFFSET

    scripts = '''	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.include "asm/macros/scripts.inc"

	.syntax unified

	.text
    
    '''

    while script_start < SCRIPTS_END-ROM_OFFSET:
        label = get_label(script_start+ROM_OFFSET)
        print(f"Disassembling \033[1;34m{label}\033[0m ({script_start} / { SCRIPTS_END-ROM_OFFSET} bytes converted)...")
        # find end of the script signified by 0xffff0000
        script_end = baserom_data.index(b'\xff\xff\x00\x00', script_start) + 4

        if script_end > SCRIPTS_END-ROM_OFFSET:
            script_end = SCRIPTS_END-ROM_OFFSET

        script_start+ROM_OFFSET
        # read data from rom
        data = baserom_data[script_start:script_end]


        scripts += f'	.include "data/scripts/{label}.inc"\n'
        stdout = sys.stdout
        with open(f'{TMC_FOLDER}/data/scripts/{label}.inc','w') as out:
            sys.stdout = out
            print(f'SCRIPT_START {label}')
            res = disassemble_script(data)
            if res != 0:
                # Script ended in the middle, need to create a new file
                script_end = script_start + res
        sys.stdout = stdout

        script_start = script_end 
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