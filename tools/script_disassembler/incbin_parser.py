# This python script reads the script.s file which contains all the .incbin macros
# Then it fetches the corresponding data of the baserom, o
TMC_FOLDER='../..'

import subprocess
import sys
from script_disassembler import disassemble_script

def main():
    # read baserom data
    with open(f'{TMC_FOLDER}/baserom.gba', 'rb') as baserom:
        baserom_data = bytearray(baserom.read())

    # read scripts.s with incbins
    with open(f'{TMC_FOLDER}/data/scripts.s', 'r') as scripts:

        while True:
            line = scripts.readline()

            if not line:
                # end of file
                break

            if ':: @' in line: # this might be a label
                incbin_line = scripts.readline()

                if '.incbin' in incbin_line: # found a label with incbin
                    label = line.split('::')[0]
                    (_, start, end) = incbin_line.split(',')
                    start = int(start, 16)
                    end = int(end, 16)
                    
                    # read data from rom
                    data = baserom_data[start:start+end]

                    stdout = sys.stdout
                    with open(f'{TMC_FOLDER}/data/scripts/{label}.inc','w') as out:
                        sys.stdout = out
                        print(f'SCRIPT_START {label}')
                        disassemble_script(data)
                    sys.stdout = stdout

                    # print new include label
                    print(f'.include "data/scripts/{label}.inc"')
                else:
                    print(line, end='')
                    print(incbin_line, end='')
            else:
                print(line, end='')

if __name__ == '__main__':
    main()