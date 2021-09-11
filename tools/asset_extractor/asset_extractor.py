from pathlib import Path
import os
import sys
import subprocess
import yaml

verbose = False

def extract_assets(variant, assets_folder):
    print(f'Extract assets from {variant}.')
    map = {
        'USA': 'baserom.gba',
        'EU': 'baserom_eu.gba',
        'JP': 'baserom_jp.gba',
        'DEMO': 'baserom_demo.gba'
    }

    if not os.path.exists(map[variant]):
        print(f'Error: Baserom {map[variant]} is missing.', file=sys.stderr)
        exit(1)

    baserom = None
    with open(map[variant], 'rb') as file:
        baserom = bytearray(file.read())

    with open('assets.yaml') as file:
        current_offset = 0
        assets = yaml.safe_load(file)
        for asset in assets:
            if 'offsets' in asset: # Offset definition
                if variant in asset['offsets']:
                    current_offset = asset['offsets'][variant]
            elif 'path' in asset: # Asset definition

                if 'variants' in asset:
                    if variant not in asset['variants']:
                        # This asset is not used in the current variant
                        continue

                path = os.path.join(assets_folder, asset['path'])
                if os.path.isfile(path):
                    if verbose:
                        print(f'{path} already extracted.')
                else:
                    print(f'Extracting {path}...')

                    start = 0
                    if 'start' in asset:
                        # Apply offset to the start of the USA variant
                        start = asset['start'] + current_offset
                    elif 'starts' in asset:
                        # Use start for the current variant
                        start = asset['starts'][variant]

                    size = asset['size'] # TODO can different sizes for the different variants ever occur?

                    mode = ''
                    if 'type' in asset:
                        mode = asset['type']


                    Path(os.path.dirname(path)).mkdir(parents=True, exist_ok=True)
                    with open(path, 'wb') as output:
                        output.write(baserom[start:start+size])
                    if mode == 'tileset':
                        extract_tileset(path)



def run_gbagfx(path_in, path_out, options):
    subprocess.check_call([os.path.join('tools', 'gbagfx', 'gbagfx'), path_in, path_out] + options)

def extract_tileset(path):
    assert(path.endswith('.4bpp.lz'))
    base = path[0:-8]
    subprocess.call(['cp', path, path+'.bkp'])
    run_gbagfx(path, base+'.4bpp', []) # decompress
    run_gbagfx(base+'.4bpp', base+'.png', ['-mwidth', '32']) # convert to png
    # TODO automatically generate tileset entries from tileset_headers.s
    # TODO Possible to set the correct palette? Or not, because there is a set of palettes that can be chosen and the correct palette is only defined by the metatile?


def main():
    if len(sys.argv) == 1:
        extract_assets('USA')
    elif len(sys.argv) == 3:
        extract_assets(sys.argv[1].upper(), sys.argv[2])
    else:
        print('Usage: asset_extractor.py VARIANT BUILD_FOLDER')

if __name__ == '__main__':
    main()