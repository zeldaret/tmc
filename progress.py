#!/usr/bin/env python3

import argparse
import json
import os
import re

def collect_non_matching_funcs():
    result = []
    for root, dirs, files in os.walk('src'):
        for file in files:
            if file.endswith('.c'):
                with open(os.path.join(root, file), 'r') as f:
                    data = f.read()
                    # Find all NONMATCH and ASM_FUNC macros
                    for match in re.findall(r'(NONMATCH|ASM_FUNC)\(".*",\W*\w*\W*(\w*).*\)', data):
                        result.append(match)
    return result


def parse_map(non_matching_funcs):
    src = 0
    asm = 0
    src_data = 0
    data = 0
    non_matching = 0

    with open('build/USA/tmc.map', 'r') as map:
        # Skip to the linker script section
        line = map.readline()
        while not line.startswith('Linker script and memory map'):
            line = map.readline()
        while not line.startswith('rom'):
            line = map.readline()

        prev_symbol = None
        prev_addr = 0
        for line in map:
            if line.startswith(' .'):
                arr = line.split()
                section = arr[0]
                size = int(arr[2], 16)
                filepath = arr[3]
                dir = filepath.split('/')[0]

                if section == '.text':
                    if dir == 'src':
                        src += size
                    elif dir == 'asm':
                        if filepath.find("asm/src/") != -1 or filepath.find("asm/lib/") != -1:
                            src += size
                        else:
                            asm += size
                    elif dir == 'data':
                        # scripts
                        src_data += size
                    elif dir == '..':
                        # libc
                        src += size
                elif section == '.rodata':
                    if dir == 'src':
                        src_data += size
                    elif dir == 'data':
                        data += size

            elif line.startswith('  '):
                arr = line.split()
                if len(arr) == 2 and arr[1] != '':  # It is actually a symbol

                    if prev_symbol in non_matching_funcs:
                        # Calculate the length for non matching function
                        non_matching += int(arr[0], 16) - prev_addr

                    prev_symbol = arr[1]
                    prev_addr = int(arr[0], 16)
            elif line.strip() == '':
                # End of linker script section
                break

    src -= non_matching
    asm += non_matching

    return (src, asm, src_data, data)


def main():
    parser = argparse.ArgumentParser()

    parser = argparse.ArgumentParser(description="Computes current progress throughout the whole project.")
    parser.add_argument("format", nargs="?", default="text", choices=["text", "csv", "shield-json"])
    parser.add_argument("-m", "--matching", dest='matching', action='store_true',
                        help="Output matching progress instead of decompilation progress")
    args = parser.parse_args()

    matching = args.matching

    non_matching_funcs = []
    funcs = collect_non_matching_funcs()
    if matching:
        # Remove all non matching funcs from count
        non_matching_funcs = [x[1] for x in funcs]
    else:
        # Only remove ASM_FUNC functions from count
        for func in funcs:
            if func[0] == 'ASM_FUNC':
                non_matching_funcs.append(func[1])

    (src, asm, src_data, data) = parse_map(non_matching_funcs)

    total = src + asm
    data_total = src_data + data

    src_percent = 100 * src / total
    asm_percent = 100 * asm / total

    src_data_percent = 100 * src_data / data_total
    data_percent     = 100 * data / data_total


    if args.format == 'csv':
        import git
        version = 2
        git_object = git.Repo().head.object
        timestamp = str(git_object.committed_date)
        git_hash = git_object.hexsha

        csv_list = [str(version), timestamp, git_hash, str(src),
                    str(total), str(src_data), str(data_total)]

        print(','.join(csv_list))

    elif args.format == 'shield-json':
        # https://shields.io/endpoint
        print(json.dumps({
            "schemaVersion": 1,
            "label": "progress",
            "message": f"{src_percent:.3g}%",
            "color": 'yellow',
        }))

    elif args.format == 'text':
        adjective = "decompiled" if not args.matching else "matched"

        print("src:  {:>9} / {:>8} total bytes {:<10} {:>9.4f}%".format(src, total, adjective, round(src_percent, 4)))
        # print()
        print("data: {:>9} / {:>8} total bytes analysed   {:>9.4f}%".format(src_data, data_total, round(src_data_percent, 4)))

    else:
        print("Unknown format argument: " + args.format)


if __name__ == '__main__':
    main()
