from dataclasses import dataclass
import struct

# Disassembler for tmc scripts
# Input 'macros' to generate the macros for the script commands
# Input the script bytes as hex to disassemble the script

@dataclass
class Context:
    ptr: int
    data: bytes

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

"""
def GetNextScriptCommandWordAfterCommandMetadata(ctx):
    return struct.unpack('I', ctx.data[ctx.ptr+2:ctx.ptr+6])[0]


def sub_0807E10C(ctx):
    meta = GetNextScriptCommandWordAfterCommandMetadata(ctx)
    print('function', hex(meta))


def sub_0807E5F8(ctx):
    curPtr = start + ctx.ptr
    print('current', hex(curPtr))
    # gUnk_02033280.unk_00 |= GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    meta = GetNextScriptCommandWordAfterCommandMetadata(ctx)
    print('meta', meta)
    newPtr = curPtr | meta
    print('Start next script at: ', hex(newPtr))
"""

commands = [
    {'fun': 'nullsub_507', 'params': ''},
    {'fun': 'sub_0807E004', 'params': '', 'name': 'start executing scripts'},
    {'fun': 'sub_0807E014', 'params': '', 'name': 'stop executing scripts'},
    {'fun': 'sub_0807E024', 'params': 's', 'name': 'jump by offset'},
    {'fun': 'sub_0807E050', 'params': 's', 'name': 'jump if'},
    {'fun': 'sub_0807E064', 'params': 's', 'name': 'jump if not'},
    {'fun': 'sub_0807E078', 'params': 's'},
    {'fun': 'sub_0807E0A0', 'params': 'w','name': 'abs jump' },
    {'fun': 'sub_0807E0B8', 'params': 'w', 'name': 'abs jump if'},
    {'fun': 'sub_0807E0CC', 'params': 'w', 'name': 'abs jump if not'},
    {'fun': 'sub_0807E0E0', 'params': 'w'},
    {'fun': 'sub_0807E10C', 'params':'w', 'name': 'Execute function via pointer'},# 'exec': sub_0807E10C},
    {'fun': 'sub_0807E124', 'params': 'ww'},
    {'fun': 'sub_0807E148', 'params': 'w'},
    {'fun': 'sub_0807E158', 'params': 'w'},
    {'fun': 'sub_0807E188', 'params': 's'},
    {'fun': 'sub_0807E1D8', 'params': 's'},
    {'fun': 'sub_0807E4AC', 'params': 's'},
    {'fun': 'sub_0807E200'},
    {'fun': 'sub_0807E220'},
    {'fun': 'sub_0807E240'},
    {'fun': 'sub_0807E260', 'params': 's'},
    {'fun': 'sub_0807E280'},
    {'fun': 'sub_0807E2A8', 'params': 's'},
    {'fun': 'sub_0807E2E4', 'params': ''},
    {'fun': 'sub_0807E30C'},
    {'fun': 'sub_0807E390'},
    {'fun': 'sub_0807E3BC'},
    {'fun': 'sub_0807E3E8'},
    {'fun': 'sub_0807E40C'},
    {'fun': 'sub_0807E42C'},
    {'fun': 'sub_0807E48C'},
    {'fun': 'sub_0807E4CC'},
    {'fun': 'sub_0807E4EC'},
    {'fun': 'sub_0807E514'},
    {'fun': 'sub_0807E538'},
    {'fun': 'sub_0807E564'},
    {'fun': 'sub_0807E584'},
    {'fun': 'sub_0807E5A0'},
    {'fun': 'sub_0807E5CC'},
    {'fun': 'sub_0807E5F8', 'params': 'w'},# 'exec': sub_0807E5F8},
    {'fun': 'sub_0807E610'},
    {'fun': 'sub_0807E628'},
    {'fun': 'sub_0807E634'},
    {'fun': 'sub_0807E644'},
    {'fun': 'sub_0807E650'},
    {'fun': 'sub_0807E65C'},
    {'fun': 'sub_0807E668'},
    {'fun': 'sub_0807E674'},
    {'fun': 'sub_0807E680', 'params': 's'},
    {'fun': 'sub_0807E690'},
    {'fun': 'sub_0807E6AC', 'params': 'w'},
    {'fun': 'sub_0807E6DC'},
    {'fun': 'sub_0807E700'},
    {'fun': 'sub_0807E72C'},
    {'fun': 'sub_0807E75C'},
    {'fun': 'sub_0807E778'},
    {'fun': 'sub_0807E788'},
    {'fun': 'sub_0807E79C'},
    {'fun': 'nullsub_508'},
    {'fun': 'sub_0807E7B0'},
    {'fun': 'sub_0807E7C4'},
    {'fun': 'sub_0807E7D8'},
    {'fun': 'sub_0807E7EC'},
    {'fun': 'sub_0807E800'},
    {'fun': 'sub_0807E80C'},
    {'fun': 'sub_0807E858'},
    {'fun': 'sub_0807E864', 'params': ''},
    {'fun': 'sub_0807E878', 'params': ''},
    {'fun': 'sub_0807E888'},
    {'fun': 'sub_0807E898'},
    {'fun': 'sub_0807E8C4', 'params': 'w'},
    {'fun': 'sub_0807E8D4'},
    {'fun': 'sub_0807E8E4', 'params': ''},
    {'fun': 'sub_0807E8E4', 'params': ''},
    {'fun': 'sub_0807E8E4', 'params': ''},
    {'fun': 'sub_0807E8E4', 'params': ''},
    {'fun': 'sub_0807E908'},
    {'fun': 'sub_0807E914'},
    {'fun': 'sub_0807E924'},
    {'fun': 'sub_0807E930', 'params': 's'},
    {'fun': 'sub_0807E944'},
    {'fun': 'sub_0807E974'},
    {'fun': 'sub_0807E9D4', 'params': ''},
    {'fun': 'sub_0807E9DC', 'params': ''},
    {'fun': 'sub_0807E9E4'},
    {'fun': 'sub_0807E9F0'},
    {'fun': 'sub_0807EA4C'},
    {'fun': 'sub_0807EA88'},
    {'fun': 'sub_0807EA94', 'params': ''},
    {'fun': 'sub_0807EAB4'},
    {'fun': 'sub_0807EAC0'},
    {'fun': 'sub_0807EAD0', 'params': 'ss'},
    {'fun': 'sub_0807EAF0'},
    {'fun': 'sub_0807EB18'},
    {'fun': 'sub_0807EB28', 'params': 's'},
    {'fun': 'sub_0807EB38'},
    {'fun': 'sub_0807EB44'},
    {'fun': 'sub_0807EB4C'},
    {'fun': 'sub_0807EB74'},
    {'fun': 'sub_0807EB8C', 'params': ''},
    {'fun': 'sub_0807EBA8'},
    {'fun': 'sub_0807EBB0'},
    {'fun': 'sub_0807EBC0', 'params': 's'},
    {'fun': 'sub_0807EBC8'},
    {'fun': 'sub_0807EBD8'},
    {'fun': 'sub_0807EBF4'},
    {'fun': 'sub_0807EC08'},
    {'fun': 'nullsub_509'},
    {'fun': 'sub_0807EC1C', 'params': 's'},
    {'fun': 'sub_0807EC64'},
    {'fun': 'sub_0807EC94'},
    {'fun': 'sub_0807ECC4'},
    {'fun': 'sub_0807ECF4'},
    {'fun': 'sub_0807ED24'},
    {'fun': 'sub_0807EDD4'},
    {'fun': 'sub_0807EE04'},
    {'fun': 'sub_0807EE30', 'params': ''},
    {'fun': 'sub_0807EEB4'},
    {'fun': 'sub_0807EEF4'},
    {'fun': 'sub_0807EF3C'},
    {'fun': 'sub_0807EF80', 'params': 's'},
    {'fun': 'sub_0807EF90'},
    {'fun': 'sub_0807EFA0'},
    {'fun': 'sub_0807EFAC', 'params': 's'},
    {'fun': 'sub_0807EFD4'},
    {'fun': 'sub_0807EFE4', 'params': ''},
    {'fun': 'sub_0807EFF4'},
    {'fun': 'sub_0807F004'},
    {'fun': 'sub_0807F010'},
    {'fun': 'sub_0807F034'},
    {'fun': 'sub_0807F050'},
    {'fun': 'sub_0807F060'},
    {'fun': 'sub_0807F078'},
    {'fun': 'sub_0807F088'},
    {'fun': 'sub_0807F098'},
    {'fun': 'sub_0807F0A4'},
    {'fun': 'sub_0807F0B4'},
    {'fun': 'sub_0807F0C8'}
]

# definitions for parameters
parameters = {
    '': {
        'length':0,
        'param': '',
        'expr': '',
        'read': lambda ctx: ''
    },
    's': {
        'length': 1,
        'param': 's',
        'expr': 's,',
        'read': lambda ctx: barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+4])[0]
    },
    'w': {
        'length': 2,
        'param': 'w',
        'expr': 'WORD_TO_SHORTS(w),',
        'read': lambda ctx: barray_to_u32_hex(ctx.data[ctx.ptr+2:ctx.ptr+6])[0]
    },
    'ss': {
        'length': 2,
        'param': 'a,b',
        'expr': 'a,b,',
        'read': lambda ctx: ','.join(barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+6]))
    },
    'ww': {
        'length': 4,
        'param': 'a,b',
        'expr': 'WORD_TO_SHORTS(a), WORD_TO_SHORTS(b),',
        'read': lambda ctx: ','.join(barray_to_u32_hex(ctx.data[ctx.ptr+2:ctx.ptr+10]))
    },
}


def ExecuteScriptCommandSet(ctx: Context):
    cmd = struct.unpack('H', ctx.data[ctx.ptr:ctx.ptr+2])[0]
    if cmd == 0 or cmd ==0xffff:
        return 0

    unk_06 = cmd >> 0xA
    operationId = cmd & 0x3FF
    #print(cmd)
    #print('advance by', unk_06)
    #print('command id', operationId)
    command = commands[operationId]
    #print(command)
    param_length = unk_06 - 1 
    if unk_06 > 1:
        meta = struct.unpack(
            'H'*(unk_06-1), ctx.data[ctx.ptr+2:ctx.ptr+2*unk_06])
        #print('meta', meta)

    # Handle parameters
    if not 'params' in command:
        raise Exception('Parameters not defined for ' + command['fun'] + '   Should be of length ' + str(param_length))
    if not command['params'] in parameters:
        raise Exception('Parameter configuration ' + command['params'] + ' not defined')
    params = parameters[command['params']]
    if unk_06-1 != params['length']:
        raise Exception('Call with ' + (unk_06-1) +' length, while length of ' + params['length']+' defined')


    print(command['fun'] + '(' + params['read'](ctx) + ')')

    # Execute script
    ctx.ptr += unk_06*2
    return 1


def disassemble_script(input_data):
    input_bytes = bytearray.fromhex(input_data)

    ctx = Context(0, input_bytes)

    while True:
        if not ExecuteScriptCommandSet(ctx):
            break


    # Print rest (did not manage to get there)

    print(',\n'.join(barray_to_u16_hex(ctx.data[ctx.ptr:])))

def generate_macros():
    print('#ifndef SCRIPT_MACROS_H')
    print('#define SCRIPT_MACROS_H')
    print('// Generated by disassemble_script.py')
    print('#define START_SCRIPT(name) const unsigned short name[] = {')
    print('#define END_SCRIPT() };')
    print('#define WORD_TO_SHORTS(word) (unsigned short)word & 0xffff,(unsigned short)word >> 16')
    print('')
    for num, command in enumerate(commands):
        if not 'params' in command:
            #raise Exception('Parameters not defined for ' + command['fun'] + '   Should be of length ' + str(param_length))
            continue # TODO
        if not command['params'] in parameters:
            raise Exception('Parameter configuration ' + command['params'] + ' not defined')

        params = parameters[command['params']]
        id = ((params['length']+1) << 0xA) + num
        print('#define ' + command['fun'] + '(' + params['param'] + ') '+u16_to_hex(id)+', ' + params['expr'])

    print ('#endif')

def main():

    # Read input
    input_data = input()

    if input_data.strip() == 'macros':
        generate_macros()
        return
    disassemble_script(input_data)
    
main()