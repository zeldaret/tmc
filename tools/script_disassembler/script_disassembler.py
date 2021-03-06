from dataclasses import dataclass
import struct

# Disassembler for tmc scripts
# Input 'macros' to generate the macros for the script commands
# Input the script bytes as hex to disassemble the script

# Build macros: echo "macros" | python script_disassembler.py > ~/git/tmc/github/asm/macros/scripts.inc 

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


# Functions that have already been renamed
POINTER_MAP = {
    'sub_08095458': 'nullsub_527',
    'sub_0805EBCC': 'DeleteAllEnemies',
    'sub_0806C23C': 'Simon_CreateChest',
    'sub_0801637C': 'script_0801637C+1',
    'sub_08016383': 'script_08016384',
    'sub_0806C598': 'FUN_0806c598',
    'sub_080A2138': 'Windcrest_Unlock',
    'sub_080A29BC': 'CreateDust'
}
# tries to directly reference the function this is pointing to
def get_pointer(barray):
    integers = struct.unpack('I', barray)
    pointer = 'sub_' + (struct.pack('>I', integers[0]-1).hex()).upper()
    if pointer in POINTER_MAP:
        return POINTER_MAP[pointer]
    return pointer

# Data pointers that actually point to a script location
DATA_MAP = {
    'gUnk_08016384': 'script_08016384'
}
def get_data_pointer(barray):
    integers = struct.unpack('I', barray)
    pointer = 'gUnk_' + (struct.pack('>I', integers[0]).hex()).upper()
    if pointer in DATA_MAP:
        return DATA_MAP[pointer]
    return pointer

def get_script_pointer(barray):
    integers = struct.unpack('I', barray)
    return 'script_' + (struct.pack('>I', integers[0]).hex()).upper()


commands = [
    {'fun': 'ScriptCommandNop', 'params': ''},
    {'fun': 'ScriptCommand_StartScript', 'params': '', 'name': 'start executing scripts'},
    {'fun': 'ScriptCommand_StopScript', 'params': '', 'name': 'stop executing scripts'},
    {'fun': 'ScriptCommand_Jump', 'params': 's', 'name': 'jump by offset'},
    {'fun': 'ScriptCommand_JumpIf', 'params': 's', 'name': 'jump if'},
    {'fun': 'ScriptCommand_JumpIfNot', 'params': 's', 'name': 'jump if not'},
    {'fun': 'ScriptCommand_0807E078', 'params': ['ss', 'sss', 'ssss', 'sssssss', 'sssssssss']},
    {'fun': 'ScriptCommand_JumpAbsolute', 'params': 'x','name': 'abs jump' },
    {'fun': 'ScriptCommand_JumpAbsoluteIf', 'params': 'x', 'name': 'abs jump if'},
    {'fun': 'ScriptCommand_JumpAbsoluteIfNot', 'params': 'x', 'name': 'abs jump if not'},
    {'fun': 'ScriptCommand_0807E0E0', 'params': 'xx'},
    {'fun': 'ScriptCommand_Call', 'params':'p', 'name': 'Execute function via pointer'},# 'exec': ScriptCommand_Call},
    {'fun': 'ScriptCommand_CallWithArg', 'params': ['pw', 'p']},
    {'fun': 'ScriptCommand_LoadRoomEntityList', 'params': 'd'},
    {'fun': 'ScriptCommand_TestBit', 'params': 'w'},
    {'fun': 'ScriptCommand_CheckInventory1', 'params': 's'},
    {'fun': 'ScriptCommand_CheckInventory2', 'params': 's'},
    {'fun': 'ScriptCommand_HasRoomItemForSale', 'params': ''},
    {'fun': 'ScriptCommand_CheckLocalFlag', 'params': 's'},
    {'fun': 'ScriptCommand_CheckLocalFlagByOffset', 'params': 'ss'},
    {'fun': 'ScriptCommand_CheckGlobalFlag', 'params': 's'},
    {'fun': 'ScriptCommand_CheckRoomFlag', 'params': 's'},
    {'fun': 'ScriptCommand_CheckPlayerInRegion', 'params': 'sss'},
    {'fun': 'ScriptCommand_CheckPlayerInRegion2', 'params': 's'},
    {'fun': 'ScriptCommand_CheckEntityInteractType', 'params': ''},
    {'fun': 'ScriptCommand_0807E30C', 'params': ''},
    {'fun': 'ScriptCommand_HasRupees', 'params': 's'},
    {'fun': 'ScriptCommand_0807E3BC', 'params': 's'},
    {'fun': 'ScriptCommand_0807E3E8', 'params': ''},
    {'fun': 'ScriptCommand_CheckKinstoneFused', 'params': 's'},
    {'fun': 'ScriptCommand_BuyItem', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807E48C', 'params': 's'},
    {'fun': 'ScriptCommand_0807E4CC', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E4EC', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E514', 'params': 'w'},
    {'fun': 'ScriptCommand_CheckPlayerFlags', 'params':'w'},
    {'fun': 'ScriptCommand_0807E564', 'params': ''},
    {'fun': 'ScriptCommand_EntityHasHeight', 'params': ''},
    {'fun': 'ScriptCommand_ComparePlayerAction', 'params': 's'},
    {'fun': 'ScriptCommand_ComparePlayerAnimationState', 'params': 's'},
    {'fun': 'ScriptCommand_0807E5F8', 'params': 'w'},# 'exec': ScriptCommand_0807E5F8},
    {'fun': 'ScriptCommand_0807E610', 'params': 'w'},
    {'fun': 'ScriptCommand_SetLocalFlag', 'params': 's'},
    {'fun': 'ScriptCommand_SetLocalFlagByOffset', 'params': 'ss'},
    {'fun': 'ScriptCommand_ClearLocalFlag', 'params': 's'},
    {'fun': 'ScriptCommand_SetGlobalFlag', 'params': 's'},
    {'fun': 'ScriptCommand_ClearGlobalFlag', 'params': 's'},
    {'fun': 'ScriptCommand_SetRoomFlag', 'params': 's'},
    {'fun': 'ScriptCommand_ClearRoomFlag', 'params': 's'},
    {'fun': 'ScriptCommand_Wait', 'params': 's'},
    {'fun': 'ScriptCommand_WaitForSomething', 'params': 'w'},
    {'fun': 'ScriptCommand_WaitForSomething2', 'params': 'w'},
    {'fun': 'ScriptCommand_WaitPlayerAction8', 'params': ''},
    {'fun': 'ScriptCommand_WaitForPlayerAction0x17', 'params': ''},
    {'fun': 'ScriptCommand_WaitFor_1', 'params': ''},
    {'fun': 'ScriptCommand_WaitFor_2', 'params': ''},
    {'fun': 'ScriptCommand_0807E778', 'params': 's'},
    {'fun': 'ScriptCommand_0807E788', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E79C', 'params': ''},
    {'fun': 'ScriptCommandNop2', 'params': 's'},
    {'fun': 'ScriptCommand_DoFade4', 'params': ''},
    {'fun': 'ScriptCommand_DoFade5', 'params': ''},
    {'fun': 'ScriptCommand_DoFade6', 'params': ''},
    {'fun': 'ScriptCommand_DoFade7', 'params': ''},
    {'fun': 'ScriptCommand_0807E800', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E80C', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E858', 'params': ['s', '']},
    {'fun': 'ScriptCommand_0807E864', 'params': ''},
    {'fun': 'ScriptCommand_0807E878', 'params': ''},
    {'fun': 'ScriptCommand_0807E888', 'params': ''},
    {'fun': 'ScriptCommand_SetPlayerAction', 'params': 'w'},
    {'fun': 'ScriptCommand_StartPlayerScript', 'params': 'x'},
    {'fun': 'ScriptCommand_0807E8D4', 'params': 's'},
    {'fun': 'ScriptCommand_0807E8E4_0', 'params': ''}, # duplicate
    {'fun': 'ScriptCommand_0807E8E4_1', 'params': ''}, # duplicate
    {'fun': 'ScriptCommand_0807E8E4_2', 'params': ''}, # duplicate
    {'fun': 'ScriptCommand_0807E8E4_3', 'params': ''}, # duplicate
    {'fun': 'ScriptCommand_0807E908', 'params': 's'},
    {'fun': 'ScriptCommand_0807E914', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E924', 'params': ''},
    {'fun': 'ScriptCommand_0807E930', 'params': 's'},
    {'fun': 'ScriptCommand_0807E944', 'params': ''},
    {'fun': 'ScriptCommand_0807E974', 'params': 's'},
    {'fun': 'ScriptCommand_0807E9D4', 'params': ''},
    {'fun': 'ScriptCommand_0807E9DC', 'params': ''},
    {'fun': 'ScriptCommand_0807E9E4', 'params': 's'},
    {'fun': 'ScriptCommand_0807E9F0', 'params': ''},
    {'fun': 'ScriptCommand_0807EA4C', 'params': ''},
    {'fun': 'ScriptCommand_0807EA88', 'params': 's'},
    {'fun': 'ScriptCommand_0807EA94', 'params': ''},
    {'fun': 'ScriptCommand_TextboxNoOverlapFollow', 'params': 's'},
    {'fun': 'ScriptCommand_TextboxNoOverlap', 'params': 's'},
    {'fun': 'ScriptCommand_TextboxNoOverlapFollowPos', 'params': ['w', 's']}, # TODO w or ss?
    {'fun': 'ScriptCommand_0807EAF0', 'params': ['ss', 'sss', 'ssss']},
    {'fun': 'ScriptCommand_TextboxNoOverlapVar', 'params': ''},
    {'fun': 'ScriptCommand_0807EB28', 'params': 's'},
    {'fun': 'ScriptCommand_0807EB38', 'params': ''},
    {'fun': 'ScriptCommand_0807EB44', 'params': 's'},
    {'fun': 'ScriptCommand_0807EB4C', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807EB74', 'params': ''},
    {'fun': 'ScriptCommand_0807EB8C', 'params': ''},
    {'fun': 'ScriptCommand_SetEntityDirection', 'params': 's'},
    {'fun': 'ScriptCommand_SetEntityDirectionWithAnimationState', 'params': 's'},
    {'fun': 'ScriptCommand_SetEntityNonPlanarMovement', 'params': 's'},
    {'fun': 'ScriptCommand_SetEntity0x20', 'params': 'w'},
    {'fun': 'ScriptCommand_SetEntityPositionRelative', 'params': 'w'},
    {'fun': 'ScriptCommand_SetEntityPosition', 'params': 'ss'},
    {'fun': 'ScriptCommand_MoveEntityToPlayer', 'params': ''},
    {'fun': 'ScriptCommandNop3', 'params': ''},
    {'fun': 'ScriptCommand_0807EC1C', 'params': 's'},
    {'fun': 'ScriptCommand_0807EC64', 'params': 's'},
    {'fun': 'ScriptCommand_0807EC94', 'params': 's'},
    {'fun': 'ScriptCommand_0807ECC4', 'params': 's'},
    {'fun': 'ScriptCommand_0807ECF4', 'params': 's'},
    {'fun': 'ScriptCommand_0807ED24', 'params': 'sss'},
    {'fun': 'ScriptCommand_0807EDD4', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807EE04', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807EE30', 'params': ''},
    {'fun': 'ScriptCommand_0807EEB4', 'params': ''},
    {'fun': 'ScriptCommand_0807EEF4', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807EF3C', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807EF80', 'params': 's'},
    {'fun': 'ScriptCommand_0807EF90', 'params': 's'},
    {'fun': 'ScriptCommand_SoundReq', 'params': 's'},
    {'fun': 'ScriptCommand_SoundReq2', 'params': 's'},
    {'fun': 'ScriptCommand_SoundReq3', 'params': 'w'},
    {'fun': 'ScriptCommand_SoundReq0x80100000', 'params': ''},
    {'fun': 'ScriptCommand_ModRupees', 'params': 's'},
    {'fun': 'ScriptCommand_ModHealth', 'params': 's'},
    {'fun': 'ScriptCommand_IncreaseMaxHealth', 'params': 's'},
    {'fun': 'ScriptCommand_0807F034', 'params': 's'},
    {'fun': 'ScriptCommand_0807F050', 'params': 's'},
    {'fun': 'ScriptCommand_GetInventoryValue', 'params': 's'},
    {'fun': 'ScriptCommand_0807F078', 'params': 'ss'},
    {'fun': 'ScriptCommand_0807F088', 'params': 's'},
    {'fun': 'ScriptCommand_CameraTargetEntity', 'params': ''},
    {'fun': 'ScriptCommand_CameraTargetPlayer', 'params': ''},
    {'fun': 'ScriptCommand_0807F0B4', 'params': 's'},
    {'fun': 'ScriptCommand_0807F0C8', 'params': 'ss'}
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
    'ssss': {
        'length': 4,
        'param': 'a,b,c,d',
        'expr': '	.short \\a\n	.short \\b\n	.short \\c\n	.short \\d',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+10]))
    },    
    'sssssss': {
        'length': 7,
        'param': 'a,b,c,d,e,f,g',
        'expr': '	.short \\a\n	.short \\b\n	.short \\c\n	.short \\d\n	.short \\e\n	.short \\f\n	.short \\g',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+16]))
    },  
    'sssssssss': {
        'length': 9,
        'param': 'a,b,c,d,e,f,g,h,i',
        'expr': '	.short \\a\n	.short \\b\n	.short \\c\n	.short \\d\n	.short \\e\n	.short \\f\n	.short \\g\n	.short \\h\n	.short \\i',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+20]))
    }, 
    'p': {
        'length': 2,
        'param': 'w',
        'expr': '	.word \w',
        'read': lambda ctx: get_pointer(ctx.data[ctx.ptr+2:ctx.ptr+6])
    },
    'd': { # Data pointer
        'length': 2,
        'param': 'w',
        'expr': '	.word \w',
        'read': lambda ctx: get_data_pointer(ctx.data[ctx.ptr+2:ctx.ptr+6])
    },
    'x': { # Script pointer
        'length': 2,
        'param': 'w',
        'expr': '	.word \w',
        'read': lambda ctx: get_script_pointer(ctx.data[ctx.ptr+2:ctx.ptr+6])
    },

    'pw': {
        'length': 4,
        'param': 'a,b',
        'expr': '	.word \\a\n	.word \\b',
        'read': lambda ctx: get_pointer(ctx.data[ctx.ptr+2:ctx.ptr+6]) + ', ' + barray_to_u32_hex(ctx.data[ctx.ptr+6:ctx.ptr+14])[0]
    },
    'xx': {
        'length': 4,
        'param': 'a, b',
        'expr': '	.word \\a\n	.word \\b',
        'read': lambda ctx: get_script_pointer(ctx.data[ctx.ptr+2:ctx.ptr+6]) + ', ' + get_script_pointer(ctx.data[ctx.ptr+6:ctx.ptr+10])
    },
    # Commands with variable parameter count are now handled by explicitely defining all used parameter configurations
    # 'v': { 
    #     'length': -1,
    #     'param': '',
    #     'expr': '',
    #     'read': lambda ctx: ''
    # },
    # 'pv': {
    #     'length': -2,
    #     'param': 'w',
    #     'expr': '	.word \w',
    #     'read': lambda ctx: ''
    # },
}

# Remove the ScriptCommand_ prefix for the asm macros
def build_script_command(name: str): 
    name = name.replace("ScriptCommand_", "")
    if name[0].isdigit(): # asm macros cannot start with an _
        return '_' + name
    return name

def print_rest_bytes(ctx):
     print('\n'.join(['.byte ' + hex(x) for x in ctx.data[ctx.ptr:]]))

def ExecuteScriptCommandSet(ctx: Context, add_annotations=False):
    if add_annotations:
        print(f'@{ctx.ptr}') # print offsets to debug when manually inserting labels
    cmd = struct.unpack('H', ctx.data[ctx.ptr:ctx.ptr+2])[0]
    if cmd == 0:
        # this does not need to be the end of the script
        print('.short 0x0000')
        ctx.ptr += 2
        return 1

    if cmd == 0xffff:
        ctx.ptr += 2
        print('SCRIPT_END')
        cmd = struct.unpack('H', ctx.data[ctx.ptr:ctx.ptr+2])[0]
        if cmd == 0x0000:
            # This is actually the end of the script
            print('.short 0x0000')
            ctx.ptr += 2
            return 2
        return 3 # There is a SCRIPT_END without 0x0000 afterwards, but still split into a new file, please

    commandSize = cmd >> 0xA
    if commandSize == 0:
        raise Exception(f'Zero commandSize')
        # TODO error
        return 0
    commandId = cmd & 0x3FF
    if commandId >= len(commands):
        #print_rest_bytes(ctx)
        print(f'.short {u16_to_hex(cmd)}')
        ctx.ptr += 2
        #raise Exception(f'Invalid commandId {commandId} / {len(commands)} {cmd}')
        # TODO error
        return 1
    command = commands[commandId]
    param_length = commandSize - 1 
    if commandSize > 1:
        if ctx.ptr+2*commandSize > len(ctx.data):
            raise Exception(f'Not enough data to fetch {commandSize-1} params')
            return 0
        #meta = struct.unpack(
        #    'H'*(unk_06-1), ctx.data[ctx.ptr+2:ctx.ptr+2*unk_06])
        #print('meta', meta)

    # Handle parameters
    if not 'params' in command:
        raise Exception('Parameters not defined for ' + command['fun'] + '   Should be of length ' + str(param_length))

    params = None
    suffix = '' 
    # When there are multiple variants of parameters, choose the one with the correct count for this
    if isinstance(command['params'], list):
        for i,param in enumerate(command['params']):
            if not param in parameters:
                raise Exception(f'Parameter configuration {param} not defined')
            candidate = parameters[param]
            if candidate['length'] == commandSize -1:
                params = candidate
                if i != 0:
                    suffix = f'_{param}'# We need to add a suffix to distinguish the correct parameter variant
                break
        if params is None:
            raise Exception(f'No suitable parameter configuration with length {commandSize-1} found for {command["fun"]}')
    else:
        if not command['params'] in parameters:
            raise Exception('Parameter configuration ' + command['params'] + ' not defined')
        params = parameters[command['params']]

    command_name = f'{command["fun"]}{suffix}'

    if params['length'] == -1: # variable parameter length
        print(f'.short {u16_to_hex(cmd)} @ {build_script_command(command_name)} with {commandSize-1} parameters')
        if commandSize > 1:
            print('\n'.join(['.short ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr+2:ctx.ptr+commandSize*2])]))
            print(f'@ End of parameters')
        ctx.ptr += commandSize*2
        return 1
    elif params['length'] == -2: # point and var
        print(f'.short {u16_to_hex(cmd)} @ {build_script_command(command_name)} with {commandSize-3} parameters')

        print('.word '+ get_pointer(ctx.data[ctx.ptr+2:ctx.ptr+6]))
        if commandSize > 3:
            print('\n'.join(['.short ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr+6:ctx.ptr+commandSize*2])]))
            print(f'@ End of parameters')
        ctx.ptr += commandSize*2
        return 1

    if commandSize-1 != params['length']:
        raise Exception(f'Call {command_name} with ' + str(commandSize-1) +' length, while length of ' + str(params['length'])+' defined')

    print(build_script_command(command_name) + ' ' + params['read'](ctx))

    # Execute script
    ctx.ptr += commandSize*2
    return 1


# TODO
# JumpAbsolute 0x08016384
# JumpAbsoluteIf 0x08016384
# JumpAbsoluteIfNot 0x08016384

def disassemble_script(input_bytes, add_annotations=False):

    ctx = Context(0, input_bytes)


    foundEnd = False
    while True:
        if ctx.ptr >= len(ctx.data) - 1: # End of file (there need to be at least two bytes remaining for the next operation id)
            break
        res = ExecuteScriptCommandSet(ctx, add_annotations)
        if res == 0:
            break
        elif res == 2:
            foundEnd = True
            break
        elif res == 3:
            # End in the middle of the script, please create a new file
            return ctx.ptr

    


    # Print rest (did not manage to get there)
    if ctx.ptr < len(ctx.data):
        if (len(ctx.data) - ctx.ptr) % 2 != 0:
            print_rest_bytes(ctx)
            # TODO error
            raise Exception('DONT WANT EXTRA after '+ str(ctx.ptr) + ' / ' + str(len(ctx.data)))
            return
        print('\n'.join(['.short ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr:])]))
        raise Exception('DONT WANT EXTRA after '+ str(ctx.ptr) + ' / ' + str(len(ctx.data)))

    if not foundEnd:
        # Seems to happen, sadly
        return 0
        #print('\033[93mNo end found\033[0m')
        #raise Exception('No end found')
    return 0

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
            raise Exception('Parameters not defined for ' + command['fun'] + '!')

        def emit_macro(command_name, id, params):
            print(f'.macro {command_name} {params["param"]}')
            print(f'	.short {u16_to_hex(id)}')
            if params['expr'] != '':
                print(params['expr'])
            print('.endm')
            print('')

        if isinstance(command['params'], list):
            # emit macros for all variants
            for i,variant in enumerate(command['params']):
                if not variant in parameters:
                    raise Exception('Parameter configuration ' + variant + ' not defined')
                params = parameters[variant]
                id = ((params['length']+1) << 0xA) + num    
                suffix = ''
                if i != 0:
                    suffix = f'_{variant}'
                emit_macro(f'{build_script_command(command["fun"])}{suffix}', id, params)
        else:
            if not command['params'] in parameters:
                raise Exception('Parameter configuration ' + command['params'] + ' not defined')
            params = parameters[command['params']]
            id = ((params['length']+1) << 0xA) + num

            if params['length'] < 0: # Don't emit anything for variable parameters
                continue

            emit_macro(build_script_command(command['fun']), id, params)

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