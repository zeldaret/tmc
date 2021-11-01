from assets.base import BaseAsset, Reader, opt_param

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
                lines.append(f'\texit_list_end\n')
                break
            # lines.append(f'\t.2byte {transition_type} @ transition_type\n')
            # lines.append(f'\t.2byte {x_pos}, {y_pos} @ pos\n')
            # lines.append(f'\t.2byte {dest_x}, {dest_y} @ dest\n')
            # lines.append(f'\t.byte {screen_edge} @ screen edge\n')
            # lines.append(f'\t.byte {dest_area} @ screen edge\n')
            # lines.append(f'\t.byte {dest_room} @ screen edge\n')
            # lines.append(f'\t.byte {unknown_2}, {unknown_3}, {unknown_4} @ unknown\n')
            # lines.append(f'\t.2byte {unknown_5}, {padding_1} @ unknown\n')
            line = f'\texit transition={transition_type}'
            line += opt_param('x', '0x0', hex(x_pos))
            line += opt_param('y', '0x0', hex(y_pos))
            line += opt_param('destX', '0x0', hex(dest_x))
            line += opt_param('destY', '0x0', hex(dest_y))
            line += opt_param('screenEdge', '0x0', hex(screen_edge))
            line += opt_param('destArea', '0x0', hex(dest_area))
            line += opt_param('destRoom', '0x0', hex(dest_room))
            line += opt_param('unknown', '0x0', hex(unknown_2))
            line += opt_param('unknown2', '0x0', hex(unknown_3))
            line += opt_param('unknown3', '0x0', hex(unknown_4))
            line += opt_param('unknown4', '0x0', hex(unknown_5))
            line += opt_param('padding', '0x0', hex(padding_1))
            lines.append(line + '\n')

        assert(self.path.endswith('.bin'))
        path = self.path[0:-4] + '.s'
        with open(path, 'w') as file:
            file.writelines(lines)