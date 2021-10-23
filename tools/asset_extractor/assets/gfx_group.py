from assets.base import BaseAsset, Reader

class GfxGroup(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])
        gfx_index = 0
        lines = []
        while reader.cursor < self.size:
            unk0 = reader.read_u32()
            gfx_offset = unk0 & 0xFFFFFF
            dest = reader.read_u32()
            unk8 = reader.read_u32()
            size = unk8 & 0xFFFFFF
            terminator = unk0 & 0x80000000

            compressed = unk8 & 0x80000000
            uncompressed_size = size


            lines.append(f'\t.4byte {hex(gfx_offset)}+{hex(terminator)}+{hex(unk0 & 0xF000000)}, {hex(dest)}, {hex(uncompressed_size)} + {hex(compressed)} @ {gfx_index}\n')
            if not terminator:
                break
            gfx_index += 1

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)