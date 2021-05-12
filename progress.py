import argparse
import git
import os


def collect_non_matching_funcs():
    result = []
    for r, d, f in os.walk('asm/non_matching'):
        for file in f:
            if file.endswith('.inc'):
                # Assume that the filename is the function name
                result.append(file[0:-4])
            else:
                print(r,file)
    return result


def parse_map(non_matching_funcs):
    src = 0
    asm = 0
    src_data = 0
    data = 0
    non_matching = 0

    with open('tmc.map', 'r') as map:
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
                        asm += size
                    elif dir == 'data':
                        # scripts
                        data += size
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
    parser.add_argument('-m', '--matching', dest='matching', action='store_true',
                        help='Output matching progress instead of decompilation progress')
    args = parser.parse_args()
    matching = args.matching

    non_matching_funcs = []
    if matching:
        non_matching_funcs = collect_non_matching_funcs()

    (src, asm, src_data, data) = parse_map(non_matching_funcs)

    total = src + asm
    data_total = src_data + data

    src_pct = '%.4f' % (100 * src / total)
    asm_pct = '%.4f' % (100 * asm / total)

    src_data_pct = '%.4f' % (100 * src_data / data_total)
    data_pct = '%.4f' % (100 * data / data_total)

    version = 1
    git_object = git.Repo().head.object
    timestamp = str(git_object.committed_date)
    git_hash = git_object.hexsha

    csv_list = [str(version), timestamp, git_hash, str(src_pct),
                str(asm_pct), str(src_data_pct), str(data_pct)]

    print(','.join(csv_list))


if __name__ == '__main__':
    main()
