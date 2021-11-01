from assets.base import BaseAsset, Reader, opt_param

class FrameObjLists(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])

        first_level = []
        second_level = []

        lines = []
        lines.append('@ First level of offsets\n')
        while True:
            if reader.cursor in first_level:
                #print(f'first_level up to: {reader.cursor}')
                break
            pointer = reader.read_u32()
            first_level.append(pointer)
            lines.append(f'\t.4byte {hex(pointer)}\n')

        #print(first_level)
        lines.append('\n@ Second level of offsets\n')
        while True:
            #print(reader.cursor)
            #if reader.cursor >= 24372:
                #print(f'>< second_level up to: {reader.cursor}')
                #
                # break
            if reader.cursor in second_level:
                #print(f'second_level up to: {reader.cursor}')
                break
            pointer = reader.read_u32()
            second_level.append(pointer)
            lines.append(f'\t.4byte {hex(pointer)}\n')
        #print(second_level)

        obj_lists = []
        last_second_level = max(second_level)
        lines.append('\n@ Frame obj lists\n')
        while True:
            if reader.cursor > last_second_level:
                #print(f'No longer in second level: {reader.cursor}')
                break
            if reader.cursor not in second_level:
                #print(f'{reader.cursor} not in second_level {num_objects}')
                next = -1
                for i in second_level:
                    if i > reader.cursor:
                        if next == -1 or i < next:
                            next = i

                diff = next-reader.cursor
                #print(f'Skipping forward to {next} (+{diff})')
                lines.append(f'@ Skipping {diff} bytes\n')
                bytes = []
                for i in range(diff):
                    bytes.append(reader.read_u8())
                lines.append('\t.byte ' + ', '.join(str(x) for x in bytes) + '\n')
            num_objects = reader.read_u8()
            lines.append(f'\t.byte {num_objects} @ num_objs\n')
            if num_objects > 200:
                #print(f'num_objects: {num_objects} @{reader.cursor}/{last_second_level}')
                break
            list = []
            #print(num_objects)
            for i in range(num_objects):
                x_offset = reader.read_s8()
                y_offset = reader.read_s8()
                bitfield = reader.read_u8()
                bitfield2 = reader.read_u16()

                # lines.append(f'\t.byte {x_offset}, {y_offset}, {hex(bitfield)}\n')
                # lines.append(f'\t.2byte {hex(bitfield2)}\n')

                # bitfield
                override_entity_palette_index = (bitfield & 0x01) != 0
                # Bit 02 seems unused.
                h_flip = (bitfield & 0x04) != 0
                v_flip = (bitfield & 0x08) != 0
                size = (bitfield & 0x30) >> 4
                shape = (bitfield & 0xC0) >> 6

                # bitfield2
                first_gfx_tile_offset = bitfield2 & 0x03FF
                priority = (bitfield2 & 0x0C00) >> 10
                palette_index = (bitfield2 & 0xF000) >> 12


                # print(x_offset, y_offset, bitfield, bitfield2)
                # print(override_entity_palette_index, h_flip, v_flip, size, shape)
                # print(first_gfx_tile_offset, priority, palette_index)
                line = f'\tobj x={hex(x_offset)}, y={hex(y_offset)}'
                line += opt_param('bitfield', '0x0', hex(bitfield))
                line += opt_param('bitfield2', '0x0', hex(bitfield2))
                lines.append(line + '\n')
                list.append({})
                # print()
            obj_lists.append(list)
        #print(len(obj_lists))
        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)