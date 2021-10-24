from assets.base import BaseAsset, Reader

class Animation(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])
        lines = []
        end_of_animation = False
        while not end_of_animation and reader.cursor+3 < self.size:
            frame_index = reader.read_u8()
            keyframe_duration = reader.read_u8()
            bitfield = reader.read_u8()
            bitfield2 = reader.read_u8()

            end_of_animation = bitfield2 & 0x80 != 0
            lines.append(f'\t.byte {frame_index}, {keyframe_duration}, {hex(bitfield)}, {hex(bitfield2)}\n')
        if not end_of_animation:
            lines.append('@ TODO why no terminator?\n')
        while reader.cursor < self.size:
            keyframe_count = reader.read_u8()
            lines.append(f'\t.byte {keyframe_count} @ keyframe count\n')

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)