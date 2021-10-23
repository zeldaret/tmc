from assets.base import ROM_OFFSET, BaseAsset, Reader

class PaletteGroup(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        self.extract_palette_group(rom, self.addr, self.size)
        #self.extract_palette_groups(rom)

    def extract_palette_group(self, rom: bytearray, address: int, size: int) -> tuple[list[str], list[int]]:
        lines: list[str] = []
        palette_indices: list[int] = []

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'

        reader = Reader(rom[address:address+size])
        continue_loading_palette_sets = True
        while continue_loading_palette_sets:
            global_palette_index = reader.read_u16()
            palette_load_offset = reader.read_u8()
            bitfield = reader.read_u8()

            num_palettes = bitfield & 0x0F
            if num_palettes == 0:
                num_palettes = 0x10
            continue_loading_palette_sets = (bitfield & 0x80 == 0x80)
            lines.append(f'\t.2byte {global_palette_index} @ palette index\n')
            lines.append(f'\t.byte {palette_load_offset} @ palette offset\n')
            lines.append(f'\t.byte {num_palettes if num_palettes < 0x10 else 0} + {continue_loading_palette_sets*0x80} @ num_palettes, continue_loading\n\n')
            for i in range(num_palettes):
                palette_indices.append(global_palette_index + i)

        with open(path, 'w') as file:
            file.writelines(lines)