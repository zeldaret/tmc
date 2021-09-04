from pathlib import Path
import os
import sys

def extract_assets(variant):
    print(f'Extract assets from {variant}.')
    map = {
        'USA': 'baserom.gba',
        'EU': 'baserom_eu.gba',
        'JP': 'baserom_jp.gba',
        'DEMO': 'baserom_demo.gba'
    }
    baserom = None
    with open(map[variant], 'rb') as file:
        baserom = bytearray(file.read())

    with open(f'assets_{variant}.csv', 'r') as file:
        for line in file:
            (path,start,size,_) = line.split(',')
            if os.path.isfile(path):
               print(f'{path} already extracted.') 
            else:
                print(f'Extracting {path}...')
                Path(os.path.dirname(path)).mkdir(parents=True, exist_ok=True)
                with open(path, 'wb') as output:
                    output.write(baserom[int(start,16):int(start,16)+int(size,16)])
def main():
    
    if len(sys.argv) == 1:
        extract_assets('USA')
    elif len(sys.argv) == 2:
        extract_assets(sys.argv[1].upper())
    else:
        print('Usage: asset_extractor.py VARIANT')

if __name__ == '__main__':
    main()