from utils import barray_to_u16_hex, barray_to_u32_hex, barray_to_s16
import struct

ROM_OFFSET = 0x08000000
SCRIPTS_START = 0x08008B5C
SCRIPTS_END = 0x08016984

# A list of all the commands, their correspondingScriptCommand_  functions and what kind of parameters they take
commands = [
    {'fun': 'ScriptCommandNop', 'params': ''},
    {'fun': 'ScriptCommand_BeginBlock', 'params': ''},
    {'fun': 'ScriptCommand_EndBlock', 'params': ''},
    {'fun': 'ScriptCommand_Jump', 'params': 'j'},
    {'fun': 'ScriptCommand_JumpIf', 'params': 'j'},
    {'fun': 'ScriptCommand_JumpIfNot', 'params': 'j'},
    {'fun': 'ScriptCommand_JumpTable', 'params': ['jj', 'jjj', 'jjjj', 'jjjjjjj', 'jjjjjjjjj']},
    {'fun': 'ScriptCommand_JumpAbsolute', 'params': 'x'},
    {'fun': 'ScriptCommand_JumpAbsoluteIf', 'params': 'x'},
    {'fun': 'ScriptCommand_JumpAbsoluteIfNot', 'params': 'x'},
    {'fun': 'ScriptCommand_JumpAbsoluteTable', 'params': 'xx'},
    {'fun': 'ScriptCommand_Call', 'params': 'p'},
    {'fun': 'ScriptCommand_CallWithArg', 'params': ['px', 'p']},
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
    {'fun': 'ScriptCommand_CheckPlayerFlags', 'params': 'w'},
    {'fun': 'ScriptCommand_0807E564', 'params': ''},
    {'fun': 'ScriptCommand_EntityHasHeight', 'params': ''},
    {'fun': 'ScriptCommand_ComparePlayerAction', 'params': 's'},
    {'fun': 'ScriptCommand_ComparePlayerAnimationState', 'params': 's'},
    {'fun': 'ScriptCommand_0807E5F8', 'params': 'w'},
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
    {'fun': 'ScriptCommand_0807E8E4_0', 'params': ''},  # duplicate
    {'fun': 'ScriptCommand_0807E8E4_1', 'params': ''},  # duplicate
    {'fun': 'ScriptCommand_0807E8E4_2', 'params': ''},  # duplicate
    {'fun': 'ScriptCommand_0807E8E4_3', 'params': ''},  # duplicate
    {'fun': 'ScriptCommand_0807E908', 'params': 's'},
    {'fun': 'ScriptCommand_SetIntVariable', 'params': 'w'},
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
    {'fun': 'ScriptCommand_TextboxNoOverlapFollowPos', 'params': ['ss', 's']},
    {'fun': 'ScriptCommand_TextboxNoOverlapFollowTable', 'params': ['ss', 'sss', 'ssss']},
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
    {'fun': 'ScriptCommand_SetEntityPositionRelative', 'params': 'ss'},
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
    {'fun': 'ScriptCommandDoPostScriptAction', 'params': 's'},
    {'fun': 'ScriptCommandDoPostScriptAction2', 'params': 's'},
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

# Functions that have already been renamed
POINTER_MAP = {
    'sub_08095458': 'nullsub_527',
    'sub_0805EBCC': 'DeleteAllEnemies',
    'sub_0806C23C': 'Simon_CreateChest',
    'sub_0801637C': 'script_0801637C+1',
    'sub_08016383': 'script_08016384',
    'sub_0806C598': 'sub_0806C598',
    'sub_080A2138': 'Windcrest_Unlock',
    'sub_080A29BC': 'CreateDust'
}


def get_pointer(barray):
    # tries to directly reference the function this is pointing to
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
    val = integers[0]
    if val >= SCRIPTS_START and val <= SCRIPTS_END:
        return use_script_label(val)
#        return 'script_' + (struct.pack('>I', val).hex()).upper()
    else:
        return '0x'+struct.pack('>I', val).hex()


def get_script_label(u32):
    return hex(u32).upper().replace('0X', 'script_0')

# Collects a set of all the labels that were jumped to
used_labels = set()
def use_script_label(u32):
    global used_labels
    used_labels.add(u32)
    label = get_script_label(u32)
    return label


# definitions for parameter types
parameters = {
    '': {
        'length': 0,
        'param': '',
        'expr': '',
        'read': lambda ctx: ''
    },
    's': {
        'length': 1,
        'param': 's',
        'expr': '	.2byte \s',
        'read': lambda ctx: barray_to_u16_hex(ctx.data[ctx.ptr + 2:ctx.ptr + 4])[0]
    },
    'ss': {
        'length': 2,
        'param': 'a,b',
        'expr': '	.2byte \\a\n	.2byte \\b',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr + 2:ctx.ptr + 6]))
    },
    'sss': {
        'length': 3,
        'param': 'a,b,c',
        'expr': '	.2byte \\a\n	.2byte \\b\n	.2byte \\c',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr + 2:ctx.ptr + 8]))
    },
    'ssss': {
        'length': 4,
        'param': 'a,b,c,d',
        'expr': '	.2byte \\a\n	.2byte \\b\n	.2byte \\c\n	.2byte \\d',
        'read': lambda ctx: ', '.join(barray_to_u16_hex(ctx.data[ctx.ptr + 2:ctx.ptr + 10]))
    },

    'w': {
        'length': 2,
        'param': 'w',
        'expr': '	.4byte \w',
        'read': lambda ctx: barray_to_u32_hex(ctx.data[ctx.ptr + 2:ctx.ptr + 6])[0]
    },
    'ww': {
        'length': 4,
        'param': 'a,b',
        'expr': '	.4byte \\a\n	.4byte \\b',
        'read': lambda ctx: ', '.join(barray_to_u32_hex(ctx.data[ctx.ptr + 2:ctx.ptr + 10]))
    },

    'j': {  # Relative jump target
        'length': 1,
        'param': 's',
        'expr': '1:	.2byte \s - 1b',
        'read': lambda ctx: use_script_label(ctx.script_addr + ctx.ptr + 2 + barray_to_s16(ctx.data[ctx.ptr + 2:ctx.ptr + 4]))
    },
    'jj': {
        'length': 2,
        'param': 'a,b',
        'expr': '1:	.2byte \\a - 1b\n	.2byte \\b - 1b - 2',
        'read': lambda ctx: ', '.join([use_script_label(ctx.script_addr + ctx.ptr + 2 + barray_to_s16(ctx.data[ctx.ptr + x * 2 + 2:ctx.ptr + x * 2 + 4]) + x * 2) for x in range(0, 2)])
    },
    'jjj': {
        'length': 3,
        'param': 'a,b,c',
        'expr': '1:	.2byte \\a - 1b\n	.2byte \\b - 1b - 2\n	.2byte \\c - 1b - 4',
        'read': lambda ctx: ', '.join([use_script_label(ctx.script_addr + ctx.ptr + 2 + barray_to_s16(ctx.data[ctx.ptr + x * 2 + 2:ctx.ptr + x * 2 + 4]) + x*2) for x in range(0, 3)])
    },
    'jjjj': {
        'length': 4,
        'param': 'a,b,c,d',
        'expr': '1:	.2byte \\a - 1b\n	.2byte \\b - 1b - 2\n	.2byte \\c - 1b - 4\n	.2byte \\d - 1b - 6',
        'read': lambda ctx: ', '.join([use_script_label(ctx.script_addr + ctx.ptr + 2 + barray_to_s16(ctx.data[ctx.ptr + x * 2 + 2:ctx.ptr + x * 2 + 4]) + x*2) for x in range(0, 4)])
    },
    'jjjjjjj': {
        'length': 7,
        'param': 'a,b,c,d,e,f,g',
        'expr': '1:	.2byte \\a - 1b\n	.2byte \\b - 1b - 2\n	.2byte \\c - 1b - 4\n	.2byte \\d - 1b - 6\n	.2byte \\e - 1b - 8\n	.2byte \\f - 1b - 10\n	.2byte \\g - 1b - 12',
        'read': lambda ctx: ', '.join([use_script_label(ctx.script_addr + ctx.ptr + 2 + barray_to_s16(ctx.data[ctx.ptr + x * 2 + 2:ctx.ptr + x * 2 + 4]) + x*2) for x in range(0, 7)])
    },
    'jjjjjjjjj': {
        'length': 9,
        'param': 'a,b,c,d,e,f,g,h,i',
        'expr': '1:	.2byte \\a - 1b\n	.2byte \\b - 1b - 2\n	.2byte \\c - 1b - 4\n	.2byte \\d - 1b - 6\n	.2byte \\e - 1b - 8\n	.2byte \\f - 1b - 10\n	.2byte \\g - 1b - 12\n	.2byte \\h - 1b - 14\n	.2byte \\i - 1b - 16',
        'read': lambda ctx: ', '.join([use_script_label(ctx.script_addr + ctx.ptr + 2 + barray_to_s16(ctx.data[ctx.ptr + x * 2 + 2:ctx.ptr + x * 2 + 4]) + x*2) for x in range(0, 9)])
    },
    'p': {
        'length': 2,
        'param': 'w',
        'expr': '	.4byte \w',
        'read': lambda ctx: get_pointer(ctx.data[ctx.ptr + 2:ctx.ptr + 6])
    },

    'px': {
        'length': 4,
        'param': 'a,b',
        'expr': '	.4byte \\a\n	.4byte \\b',
        'read': lambda ctx: get_pointer(ctx.data[ctx.ptr + 2:ctx.ptr + 6]) + ', ' + get_script_pointer(ctx.data[ctx.ptr + 6:ctx.ptr + 10])
    },
    'd': {  # Data pointer
        'length': 2,
        'param': 'w',
        'expr': '	.4byte \w',
        'read': lambda ctx: get_data_pointer(ctx.data[ctx.ptr + 2:ctx.ptr + 6])
    },
    'x': {  # Script pointer
        'length': 2,
        'param': 'w',
        'expr': '	.4byte \w',
        'read': lambda ctx: get_script_pointer(ctx.data[ctx.ptr + 2:ctx.ptr + 6])
    },
    'xx': {
        'length': 4,
        'param': 'a, b',
        'expr': '	.4byte \\a\n	.4byte \\b',
        'read': lambda ctx: get_script_pointer(ctx.data[ctx.ptr + 2:ctx.ptr + 6]) + ', ' + get_script_pointer(ctx.data[ctx.ptr + 6:ctx.ptr + 10])
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
    #     'expr': '	.4byte \w',
    #     'read': lambda ctx: ''
    # },
}
