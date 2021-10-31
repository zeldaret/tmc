ROM_OFFSET = 0x8000000

class BaseAsset:
    def __init__(self, path: str, addr: int, size: int, options: any) -> None:
        self.path = path
        self.addr = addr
        self.size = size
        self.options = options

    def extract_binary(self, rom: bytearray) -> None:
        pass

    def convert(self) -> None:
        pass

class Reader:
    def __init__(self, data: bytearray) -> None:
        self.data = data
        self.cursor = 0
        self.bitfield = 0
        self.bitfield_remaining = 0

    def read_u8(self) -> int:
        val = self.data[self.cursor]
        self.cursor += 1
        return val

    def read_s8(self) -> int:
        val = self.data[self.cursor]
        self.cursor += 1
        if val > 127:
            return val-256
        else:
            return val

    def read_u16(self) -> int:
        val = self.data[self.cursor:self.cursor+2]
        self.cursor += 2
        return int.from_bytes(val, 'little')

    def read_s16(self) -> int:
        val = self.read_u16()
        if val > 32768:
            return val - 65536
        else:
            return val

    def read_u32(self) -> int:
        val = self.data[self.cursor:self.cursor+4]
        self.cursor += 4
        return int.from_bytes(val, 'little')

def opt_param(name: str, default: str, value: str) -> str:
    if value != default:
        return f', {name}={value}'
    return ''