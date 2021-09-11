from pathlib import Path
import os
import sys
import subprocess
import parser

# Allow to parse expressions instead of just hex numbers to be able to quickly adapt offsets for different versions
def parse_hex(text):
    code = parser.expr(text).compile()
    return eval(code)

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
            (path,start,size,mode) = line.split(',')
            mode = mode.strip()
            start = parse_hex(start)
            size = parse_hex(size)

            if os.path.isfile(path):
               print(f'{path} already extracted.') 
            else:
                print(f'Extracting {path}...')
                Path(os.path.dirname(path)).mkdir(parents=True, exist_ok=True)
                with open(path, 'wb') as output:
                    output.write(baserom[start:start+size])
                if mode == 'tileset':
                    extract_tileset(path)


def run_gbagfx(path_in: str, path_out:str, options: list[str]) -> None:
    subprocess.check_call([os.path.join('tools', 'gbagfx', 'gbagfx'), path_in, path_out] + options)

def extract_tileset(path):
    assert(path.endswith('.4bpp.lz'))
    base = path[0:-8]
    print(base)
    subprocess.call(['cp', path, path+'.bkp'])
    run_gbagfx(path, base+'.4bpp', []) # decompress
    run_gbagfx(base+'.4bpp', base+'.png', ['-mwidth', '32']) # convert to png
    # TODO automatically generate tileset entries from tileset_headers.s
    # TODO Possible to set the correct palette? Or not, because there is a set of palettes that can be chosen and the correct palette is only defined by the metatile?


def main():
    if len(sys.argv) == 1:
        extract_assets('USA')
    elif len(sys.argv) == 2:
        extract_assets(sys.argv[1].upper())
    else:
        print('Usage: asset_extractor.py VARIANT')

if __name__ == '__main__':
    main()