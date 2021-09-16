from pathlib import Path
import os
import sys
import subprocess
import yaml
from distutils.util import strtobool
import json

verbose = False

def extract_assets(variant, assets_folder):
    print(f'Extract assets from {variant}.', flush=True)
    map = {
        'USA': 'baserom.gba',
        'EU': 'baserom_eu.gba',
        'JP': 'baserom_jp.gba',
        'DEMO_USA': 'baserom_demo.gba',
        'DEMO_JP': 'baserom_demo_jp.gba',
    }

    if not os.path.exists(map[variant]):
        print(f'Error: Baserom {map[variant]} is missing.', file=sys.stderr)
        exit(1)

    baserom = None
    baserom_path = map[variant]
    with open(baserom_path, 'rb') as file:
        baserom = bytearray(file.read())
    
    config_modified = os.path.getmtime('assets.yaml')
    json_modified = os.path.getmtime('assets.json')
    if json_modified < config_modified:
        print('Convert yaml to json...', flush=True)
        subprocess.check_call('cat assets.yaml | yq . > assets.json', shell=True)

    with open('assets.json') as file:
        current_offset = 0
        #print('Parsing yaml...', flush=True)
        #assets = yaml.safe_load(file)
        #print('done', flush=True)
        print('Parsing json...', flush=True)
        assets = json.load(file)
        print('done', flush=True)
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

                extract_file = False

                if os.path.isfile(path):
                    file_modified = os.path.getmtime(path)
                    if file_modified < config_modified:
                        if verbose:
                            print(f'{path} was created before the config was modified.')
                        extract_file = True
                    # TODO Extract when source file (depends on type) was modified after target file
                    #print(f'{file_modified} {config_modified}')
                else:
                    if verbose:
                        print(f'{path} does not yet exist.')
                    extract_file = True
                        

                if extract_file:
                    if verbose:
                        print(f'Extracting {path}...')
                    start = 0
                    if 'start' in asset:
                        # Apply offset to the start of the USA variant
                        start = asset['start'] + current_offset
                    elif 'starts' in asset:
                        # Use start for the current variant
                        start = asset['starts'][variant]

                    mode = ''
                    if 'type' in asset:
                        mode = asset['type']

                    Path(os.path.dirname(path)).mkdir(parents=True, exist_ok=True)

                    if 'size' in asset: # The asset has a size and want to be extracted first.
                        size = asset['size'] # TODO can different sizes for the different variants ever occur?
    
                        with open(path, 'wb') as output:
                            output.write(baserom[start:start+size])
                    # If an asset has no size, the extraction tool reads the baserom iself.

                    options = asset['options'] if 'options' in asset else []

                    if mode == 'tileset':
                        extract_tileset(path)
                    elif mode == 'palette':
                        extract_palette(path)
                    elif mode == 'graphic':
                        extract_graphic(path, options)
                    elif mode == 'midi':
                        extract_midi(path, baserom_path, start, options)
                    elif mode == 'aif':
                        extract_aif(path, options)



def run_gbagfx(path_in, path_out, options):
    subprocess.check_call([os.path.join('tools', 'gbagfx', 'gbagfx'), path_in, path_out] + options)

def extract_tileset(path):
    assert(path.endswith('.4bpp.lz'))
    base = path[0:-8]
    # subprocess.call(['cp', path, path+'.bkp'])
    run_gbagfx(path, base+'.4bpp', []) # decompress
    run_gbagfx(base+'.4bpp', base+'.png', ['-mwidth', '32']) # convert to png
    # TODO automatically generate tileset entries from tileset_headers.s
    # TODO Possible to set the correct palette? Or not, because there is a set of palettes that can be chosen and the correct palette is only defined by the metatile?

def extract_palette(path):
    assert(path.endswith('.gbapal'))
    base = path[0:-7]
    run_gbagfx(path, base+'.pal', [])

def extract_graphic(path, options):
    assert(path.endswith('.4bpp'))
    base = path[0:-5]
    params = []
    for key in options:
        params.append('-'+key)
        params.append(str(options[key]))
    run_gbagfx(path, base+'.png', params)

def extract_midi(path, baserom_path, start, options):
    assert(path.endswith('.s'))
    base = path[0:-2]

    common_params = []
    agb2mid_params = []

    exactGateTime = True # Set exactGateTime by default

    for key in options:
        if key == 'group' or key == 'G':
            common_params.append('-G')
            common_params.append(str(options[key]))
        elif key == 'priority' or key == 'P':
            common_params.append('-P')
            common_params.append(str(options[key]))
        elif key == 'reverb' or key == 'R':
            common_params.append('-R')
            common_params.append(str(options[key]))
        elif key == 'nominator':
            agb2mid_params.append('-n')
            agb2mid_params.append(str(options[key]))
        elif key == 'denominator':
            agb2mid_params.append('-d')
            agb2mid_params.append(str(options[key]))
        elif key == 'timeChanges':
            changes = options['timeChanges']
            if isinstance(changes, list):
                # Multiple time changes
                for change in changes:
                    agb2mid_params.append('-t')
                    agb2mid_params.append(str(change['nominator']))
                    agb2mid_params.append(str(change['denominator']))
                    agb2mid_params.append(str(change['time']))    
            else:
                agb2mid_params.append('-t')
                agb2mid_params.append(str(changes['nominator']))
                agb2mid_params.append(str(changes['denominator']))
                agb2mid_params.append(str(changes['time']))
        elif key == 'exactGateTime':
            if options[key] == 1:
                exactGateTime = True
            elif options[key] == 0:
                exactGateTime = False
            else:
                exactGateTime = strtobool(options[key])
        else:
            common_params.append('-'+key)
            common_params.append(str(options[key]))

    if exactGateTime:
        common_params.append('-E')

    # To midi
    subprocess.check_call([os.path.join('tools', 'agb2mid', 'agb2mid'), baserom_path, hex(start), baserom_path, base+'.mid'] + common_params + agb2mid_params)
    # To assembly (TODO only do in build step, not if only extracting)
    subprocess.check_call([os.path.join('tools', 'mid2agb', 'mid2agb'), base+'.mid', path] + common_params)

def extract_aif(path, options):
    assert(path.endswith('.bin'))
    base = path[0:-4]
    subprocess.check_call([os.path.join('tools', 'aif2pcm', 'aif2pcm'), path, base+'.aif'])


def main():
    if len(sys.argv) == 1:
        extract_assets('USA')
    elif len(sys.argv) == 3:
        extract_assets(sys.argv[1].upper(), sys.argv[2])
    else:
        print('Usage: asset_extractor.py VARIANT BUILD_FOLDER')

if __name__ == '__main__':
    main()