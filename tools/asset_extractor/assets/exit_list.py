from assets.base import BaseAsset, Reader

class ExitList(BaseAsset):
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        super().__init__(path, addr, size, options)

    def extract_binary(self, rom: bytearray) -> None:
        reader = Reader(rom[self.addr:self.addr+self.size])

        lines = []

        while reader.cursor < self.size:
            transition_type = reader.read_u16()
            x_pos = reader.read_u16()
            y_pos = reader.read_u16()
            dest_x = reader.read_u16()
            dest_y = reader.read_u16()
            screen_edge = reader.read_u8()
            dest_area = reader.read_u8()
            dest_room = reader.read_u8()
            unknown_2 = reader.read_u8()
            unknown_3 = reader.read_u8()
            unknown_4 = reader.read_u8()
            unknown_5 = reader.read_u16()
            padding_1 = reader.read_u16()
            if transition_type == 0xffff:
                lines.append(f'\t.4byte 0xffff, 0,0,0,0 @ terminator\n')
                break
            lines.append(f'\t.2byte {transition_type} @ transition_type\n')
            lines.append(f'\t.2byte {x_pos}, {y_pos} @ pos\n')
            lines.append(f'\t.2byte {dest_x}, {dest_y} @ dest\n')
            lines.append(f'\t.byte {screen_edge} @ screen edge\n')
            lines.append(f'\t.byte {dest_area} @ screen edge\n')
            lines.append(f'\t.byte {dest_room} @ screen edge\n')
            lines.append(f'\t.byte {unknown_2}, {unknown_3}, {unknown_4} @ unknown\n')
            lines.append(f'\t.2byte {unknown_5}, {padding_1} @ unknown\n')

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)