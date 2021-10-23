from assets.base import BaseAsset, Reader

class ExtraFrameOffsets(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])

        first_level = []
        second_level = []

        lines = []
        bytes = []
        for i in range(0x10):
            bytes.append(reader.read_u8())
        lines.append('\t.byte ' + ', '.join(str(x) for x in bytes) + '\n')

        lines.append('@ First level of offsets\n')

        while True:
            if reader.cursor in first_level:
                #print(f'first_level up to: {reader.cursor}')
                break
            pointer = reader.read_u16()
            first_level.append(pointer)
            lines.append(f'\t.2byte {hex(pointer)}\n')

        #print(first_level)
        #print(first_level)
        lines.append('\n@ Second level of offsets\n')
        while True:
            #print(reader.cursor)
            #if reader.cursor >= 24372:
                #print(f'>< second_level up to: {reader.cursor}')
                #
                # break
            if reader.cursor >= 0xD00:
                #print(f'second_level up to: {reader.cursor}')
                break
            pointer = reader.read_u8()
            second_level.append(pointer)
            lines.append(f'\t.byte {hex(pointer)}\n')
        obj_lists = []
        lines.append('\n@ Extra frame offsets\n')
        while True:
            #print('WH')
            if (reader.cursor-0xD00)/4 not in second_level:
                #print(f'{reader.cursor} not in second_level')
                break
                next = -1
                for i in second_level:
                    if i > reader.cursor:
                        if next == -1 or i < next:
                            next = i

                diff = next-reader.cursor
                print(f'Skipping forward to {next} (+{diff})')
                lines.append(f'@ Skipping {diff} bytes\n')
                bytes = []
                for i in range(diff):
                    bytes.append(reader.read_u8())
                lines.append('\t.byte ' + ', '.join(str(x) for x in bytes) + '\n')

            extra_x_off = reader.read_s8()
            extra_y_off = reader.read_s8()
            lines.append(f'\t.byte {extra_x_off}, {extra_y_off}\n')

            extra_x_off = reader.read_s8()
            extra_y_off = reader.read_s8()
            lines.append(f'\t.byte {extra_x_off}, {extra_y_off}\n')

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)