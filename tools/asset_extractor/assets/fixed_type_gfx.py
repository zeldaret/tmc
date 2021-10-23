from assets.base import BaseAsset, Reader

class FixedTypeGfx(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])
        lines = []

        index = 0
        while reader.cursor < self.size:
            pointer = reader.read_u32()
            gfx_data_ptr = pointer& 0x00FFFFFC
            compressed = pointer& 0x00000001

            maybe_size = ((pointer >> 0x10) & 0x7f00) >> 4

            gfx_data_len = ((pointer & 0x7F000000)>>24) * 0x200
            lines.append(f'\t.4byte {hex(gfx_data_ptr)} + {compressed} + {hex((gfx_data_len//0x200))}<<24  @{index}\n')
            index += 1

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)