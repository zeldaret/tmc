import struct

def barray_to_s16(barray):
    integers = struct.unpack('h', barray)
    return integers[0]

def u16_to_hex(value):
    return '0x' + (struct.pack('>H', value).hex())

def barray_to_u16_hex(barray):
    count = len(barray)//2
    integers = struct.unpack('H'*count, barray)
    return [u16_to_hex(x) for x in integers]

def u32_to_hex(value):
    return '0x' + (struct.pack('>I', value).hex())

def barray_to_u32_hex(barray):
    count = len(barray)//4
    integers = struct.unpack('I'*count, barray)
    return [u32_to_hex(x) for x in integers]