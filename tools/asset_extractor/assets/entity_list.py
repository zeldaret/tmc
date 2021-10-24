from assets.base import BaseAsset, Reader

class EntityList(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])

        lines = []
        while reader.cursor + 15 < self.size:
            type_and_unknowns = reader.read_u8()

            type = type_and_unknowns & 0x0F
            unknown_1 = (type_and_unknowns & 0xF0) >> 4
            unknowns = reader.read_u8()
            unknown_2 = unknowns & 0x0F
            unknown_3 = (unknowns & 0xF0) >> 4
            subtype = reader.read_u8()
            params_a = reader.read_u8()
            params_b = reader.read_u32()
            params_c = reader.read_u32()
            params_d = reader.read_u32()
            if type_and_unknowns == 0xff: # End of list
                lines.append(f'\t.4byte 0xff, 0, 0, 0 @terminator\n')
                break
            lines.append(f'\t.byte {type_and_unknowns}, {unknowns}, {subtype}, {params_a}\n')
            lines.append(f'\t.4byte {params_b}, {params_c}, {params_d}\n')
            # TODO resolve pointers in here

        if reader.cursor < self.size:
            lines.append(f'@ unaccounted bytes\n')
            while reader.cursor < self.size:
                lines.append(f'.byte {reader.read_u8()}\n')

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)