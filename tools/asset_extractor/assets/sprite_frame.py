from assets.base import BaseAsset, Reader, opt_param

class SpriteFrame(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])
        i = 0
        lines = []
        while reader.cursor < self.size:
            num_gfx_tiles = reader.read_u8()
            unk = reader.read_u8()
            first_gfx_tile_index = reader.read_u16()

            line = f'\tsprite_frame first_tile_index={hex(first_gfx_tile_index)}'
            line += opt_param('num_tiles', '0', str(num_gfx_tiles))
            line += opt_param('unknown', '0x0', hex(unk))
            lines.append(line + '\n')
            assert(unk == 0 or unk == 1 or unk == 0xff)
            i += 1

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)