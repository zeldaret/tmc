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
    {'fun': 'sub_0807E200', 'params': 'w'},
    {'fun': 'sub_0807E220', 'params': 'ss'},
    {'fun': 'sub_0807E240', 'params': 's'},
    {'fun': 'sub_0807E260', 'params': 's'},
    {'fun': 'sub_0807E280', 'params': 'sss'},
    {'fun': 'sub_0807E2A8', 'params': 's'},
    {'fun': 'sub_0807E2E4', 'params': ''},
    {'fun': 'sub_0807E30C', 'params': ''},
    {'fun': 'sub_0807E390', 'params': 's'},
    {'fun': 'sub_0807E3BC', 'params': 's'},
    {'fun': 'sub_0807E3E8', 'params': ''},
    {'fun': 'sub_0807E40C', 'params': 's'},
    {'fun': 'sub_0807E42C', 'params': 'ss'},
    {'fun': 'sub_0807E48C', 'params': 's'},
    {'fun': 'sub_0807E4CC', 'params': 'w'},
    {'fun': 'sub_0807E4EC', 'params': 'w'},
    {'fun': 'sub_0807E514', 'params': 's'},
    {'fun': 'sub_0807E538', 'params':'w'},
    {'fun': 'sub_0807E564', 'params': ''},
    {'fun': 'sub_0807E584', 'params': ''},
    {'fun': 'sub_0807E5A0', 'params': 's'},
    {'fun': 'sub_0807E5CC', 'params': 's'},
    {'fun': 'sub_0807E5F8', 'params': 'w'},# 'exec': sub_0807E5F8},
    {'fun': 'sub_0807E610', 'params': 'w'},
    {'fun': 'sub_0807E628', 'params': 's'},
    {'fun': 'sub_0807E634', 'params': 'ss'},
    {'fun': 'sub_0807E644', 'params': 's'},
    {'fun': 'sub_0807E650', 'params': 's'},
    {'fun': 'sub_0807E65C', 'params': 's'},
    {'fun': 'sub_0807E668', 'params': 's'},
    {'fun': 'sub_0807E674', 'params': 's'},
    {'fun': 'sub_0807E680', 'params': 's'},
    {'fun': 'sub_0807E690', 'params': 'w'},
    {'fun': 'sub_0807E6AC', 'params': 'w'},
    {'fun': 'sub_0807E6DC', 'params': ''},
    {'fun': 'sub_0807E700', 'params': ''},
    {'fun': 'sub_0807E72C', 'params': ''},
    {'fun': 'sub_0807E75C', 'params': ''},
    {'fun': 'sub_0807E778', 'params': ''},
    {'fun': 'sub_0807E788', 'params': 'w'},
    {'fun': 'sub_0807E79C', 'params': ''},
    {'fun': 'nullsub_508', 'params': 's'},
    {'fun': 'sub_0807E7B0', 'params': ''},
    {'fun': 'sub_0807E7C4', 'params': ''},
    {'fun': 'sub_0807E7D8', 'params': ''},
    {'fun': 'sub_0807E7EC', 'params': ''},
    {'fun': 'sub_0807E800', 'params': 'w'},
    {'fun': 'sub_0807E80C', 'params': 'w'},
    {'fun': 'sub_0807E858', 'params': 's'},
    {'fun': 'sub_0807E864', 'params': ''},
    {'fun': 'sub_0807E878', 'params': ''},
    {'fun': 'sub_0807E888', 'params': ''},
    {'fun': 'sub_0807E898', 'params': 'w'},
    {'fun': 'sub_0807E8C4', 'params': 'w'},
    {'fun': 'sub_0807E8D4', 'params': 's'},
    {'fun': 'sub_0807E8E4_0', 'params': ''}, # duplicate
    {'fun': 'sub_0807E8E4_1', 'params': ''}, # duplicate
    {'fun': 'sub_0807E8E4_2', 'params': ''}, # duplicate
    {'fun': 'sub_0807E8E4_3', 'params': ''}, # duplicate
    {'fun': 'sub_0807E908', 'params': 's'},
    {'fun': 'sub_0807E914', 'params': 'w'},
    {'fun': 'sub_0807E924', 'params': ''},
    {'fun': 'sub_0807E930', 'params': 's'},
    {'fun': 'sub_0807E944', 'params': ''},
    {'fun': 'sub_0807E974', 'params': 's'},
    {'fun': 'sub_0807E9D4', 'params': ''},
    {'fun': 'sub_0807E9DC', 'params': ''},
    {'fun': 'sub_0807E9E4', 'params': 's'},
    {'fun': 'sub_0807E9F0', 'params': ''},
    {'fun': 'sub_0807EA4C', 'params': ''},
    {'fun': 'sub_0807EA88', 'params': 's'},
    {'fun': 'sub_0807EA94', 'params': ''},
    {'fun': 'sub_0807EAB4', 'params': 's'},
    {'fun': 'sub_0807EAC0', 'params': 's'},
    {'fun': 'sub_0807EAD0', 'params': 'ss'},
    {'fun': 'sub_0807EAF0', 'params': 'w'},
    {'fun': 'sub_0807EB18', 'params': ''},
    {'fun': 'sub_0807EB28', 'params': 's'},
    {'fun': 'sub_0807EB38', 'params': ''},
    {'fun': 'sub_0807EB44', 'params': 's'},
    {'fun': 'sub_0807EB4C', 'params': 'ss'},
    {'fun': 'sub_0807EB74', 'params': ''},
    {'fun': 'sub_0807EB8C', 'params': ''},
    {'fun': 'sub_0807EBA8', 'params': 's'},
    {'fun': 'sub_0807EBB0', 'params': 's'},
    {'fun': 'sub_0807EBC0', 'params': 's'},
    {'fun': 'sub_0807EBC8', 'params': 'w'},
    {'fun': 'sub_0807EBD8', 'params': 'w'},
    {'fun': 'sub_0807EBF4', 'params': 'ss'},
    {'fun': 'sub_0807EC08', 'params': ''},
    {'fun': 'nullsub_509', 'params': ''},
    {'fun': 'sub_0807EC1C', 'params': 's'},
    {'fun': 'sub_0807EC64', 'params': 's'},
    {'fun': 'sub_0807EC94', 'params': 's'},
    {'fun': 'sub_0807ECC4', 'params': 's'},
    {'fun': 'sub_0807ECF4', 'params': 's'},
    {'fun': 'sub_0807ED24', 'params': 'sss'},
    {'fun': 'sub_0807EDD4', 'params': 'ss'},
    {'fun': 'sub_0807EE04', 'params': 'ss'},
    {'fun': 'sub_0807EE30', 'params': ''},
    {'fun': 'sub_0807EEB4', 'params': ''},
    {'fun': 'sub_0807EEF4', 'params': ''},
    {'fun': 'sub_0807EF3C', 'params': 'ss'},
    {'fun': 'sub_0807EF80', 'params': 's'},
    {'fun': 'sub_0807EF90', 'params': 's'},
    {'fun': 'sub_0807EFA0', 'params': 's'},
    {'fun': 'sub_0807EFAC', 'params': 's'},
    {'fun': 'sub_0807EFD4', 'params': 'w'},
    {'fun': 'sub_0807EFE4', 'params': ''},
    {'fun': 'sub_0807EFF4', 'params': 's'},
    {'fun': 'sub_0807F004', 'params': 's'},
    {'fun': 'sub_0807F010', 'params': 's'},
    {'fun': 'sub_0807F034', 'params': 's'},
    {'fun': 'sub_0807F050', 'params': 's'},
    {'fun': 'sub_0807F060', 'params': 's'},
    {'fun': 'sub_0807F078', 'params': 'ss'},
    {'fun': 'sub_0807F088', 'params': 's'},
    {'fun': 'sub_0807F098', 'params': ''},
    {'fun': 'sub_0807F0A4', 'params': ''},
    {'fun': 'sub_0807F0B4', 'params': 's'},
    {'fun': 'sub_0807F0C8', 'params': 'ss'}
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
        'expr': '	.short \s',
        'read': lambda ctx: barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+4])[0]
    },
    'w': {
        'length': 2,
        'param': 'w',
        'expr': '	.word \w',
        'read': lambda ctx: barray_to_u32_hex(ctx.data[ctx.ptr+2:ctx.ptr+6])[0]
    },
    'ss': {
        'length': 2,
        'param': 'a,b',
        'expr': '	.short \\a\n	.short \\b',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+6]))
    },
    'ww': {
        'length': 4,
        'param': 'a,b',
        'expr': '	.word \\a\n	.word \\b',
        'read': lambda ctx: ', '.join(barray_to_u32_hex(ctx.data[ctx.ptr+2:ctx.ptr+10]))
    },
    'sss': {
        'length': 3,
        'param': 'a,b,c',
        'expr': '	.short \\a\n	.short \\b\n	.short \\c',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+8]))
    },
}


def ExecuteScriptCommandSet(ctx: Context):
    cmd = struct.unpack('H', ctx.data[ctx.ptr:ctx.ptr+2])[0]
    if cmd == 0 or cmd ==0xffff:
        return 0

    unk_06 = cmd >> 0xA
    if unk_06 == 0:
        # TODO error
        return 0
    operationId = cmd & 0x3FF
    if operationId >= len(commands):
        print('ERR: NO CMD')
        # TODO error
        return 0
    command = commands[operationId]
    param_length = unk_06 - 1 
    if unk_06 > 1:
        if ctx.ptr+2*unk_06 >= len(ctx.data):
            # TODO raise Exception(f'Not enough data to fetch {unk_06-1} params')
            return 0
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
        # TODOraise Exception(f'Call {command["fun"]} with ' + str(unk_06-1) +' length, while length of ' + str(params['length'])+' defined')
        # TEMPORARY WORKAROUND:
        print(ctx.ptr, unk_06, cmd)
        ctx.ptr += unk_06*2
        return 1


    print(command['fun'] + ' ' + params['read'](ctx))

    # Execute script
    ctx.ptr += unk_06*2
    return 1


def disassemble_script(input_bytes):

    ctx = Context(0, input_bytes)

    while True:
        if ctx.ptr >= len(ctx.data) - 1: # End of file (there need to be at least two bytes remaining for the next operation id)
            break
        if not ExecuteScriptCommandSet(ctx):
            break


    # Print rest (did not manage to get there)
    if ctx.ptr < len(ctx.data):
        if (len(ctx.data) - ctx.ptr) % 2 != 0:
            print(ctx.data[ctx.ptr:])
            # TODO error
            return
        print('\n'.join(['.short ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr:])]))
    

def generate_macros():
    print('@ All the macro functions for scripts')
    print('@ Generated by disassemble_script.py')

    print('.macro SCRIPT_START name')
    print('	.globl \\name')
    print('	.section .text')
    print('\\name:')
    print('.endm')

    print('.macro SCRIPT_END')
    print('	.short 0xffff')
    print('.endm')

    print('')
    for num, command in enumerate(commands):
        if not 'params' in command:
            #raise Exception('Parameters not defined for ' + command['fun'] + '   Should be of length ' + str(param_length))
            continue # TODO
        if not command['params'] in parameters:
            raise Exception('Parameter configuration ' + command['params'] + ' not defined')

        params = parameters[command['params']]
        id = ((params['length']+1) << 0xA) + num

        print(f'.macro {command["fun"]} {params["param"]}')
        print(f'	.short {u16_to_hex(id)}')
        if params['expr'] != '':
            print(params['expr'])
        print('.endm')
        print('')

        #print('#define ' + command['fun'] + '(' + params['param'] + ') asm(".short '+u16_to_hex(id)+'");' + params['expr'])
    print('')

def main():

    # Read input
    input_data = input()

    if input_data.strip() == 'macros':
        generate_macros()
        return
    disassemble_script(bytearray.fromhex(input_data))
    
if __name__ == '__main__':
    main()