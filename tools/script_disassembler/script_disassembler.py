from dataclasses import dataclass
import struct
from utils import barray_to_u16_hex, u16_to_hex
from definitions import get_pointer, commands, parameters, get_script_label, used_labels


# Disassembler for tmc scripts
# Input 'macros' to generate the macros for the script commands
# Input the script bytes as hex to disassemble the script

# Build macros: echo "macros" | python script_disassembler.py > ~/git/tmc/github/asm/macros/scripts.inc

@dataclass
class Context:
    ptr: int
    data: bytes
    script_addr: int


# Remove the ScriptCommand_ prefix for the asm macros
def build_script_command(name: str):
    name = name.replace("ScriptCommand_", "")
    if name[0].isdigit():  # asm macros cannot start with an _
        return f'_{name}'
    return name


def print_rest_bytes(ctx):
    print('\n'.join(['.byte ' + hex(x) for x in ctx.data[ctx.ptr:]]))


def disassemble_command(ctx: Context, add_all_annotations=False):
    global used_labels
    if (add_all_annotations or ctx.script_addr + ctx.ptr in used_labels) and ctx.ptr != 0:
        # print offsets to debug when manually inserting labels
        print(f'{get_script_label(ctx.script_addr + ctx.ptr)}:')
    cmd = struct.unpack('H', ctx.data[ctx.ptr:ctx.ptr + 2])[0]
    if cmd == 0:
        # this does not need to be the end of the script
        print('\t.2byte 0x0000')
        ctx.ptr += 2
        return 1

    if cmd == 0xffff:
        ctx.ptr += 2
        print('SCRIPT_END')
        cmd = struct.unpack('H', ctx.data[ctx.ptr:ctx.ptr + 2])[0]
        if cmd == 0x0000:
            # This is actually the end of the script
            print('\t.2byte 0x0000')
            ctx.ptr += 2
            return 2
        return 3  # There is a SCRIPT_END without 0x0000 afterwards, but still split into a new file, please

    commandSize = cmd >> 0xA
    if commandSize == 0:
        raise Exception(f'Zero commandSize not allowed')
    commandId = cmd & 0x3FF
    if commandId >= len(commands):
        raise Exception(f'Invalid commandId {commandId} / {len(commands)} {cmd}')
    command = commands[commandId]
    param_length = commandSize - 1
    if commandSize > 1:
        if ctx.ptr + 2 * commandSize > len(ctx.data):
            raise Exception(f'Not enough data to fetch {commandSize-1} params')

    # Handle parameters
    if not 'params' in command:
        raise Exception(f'Parameters not defined for {command["fun"]}. Should be of length {str(param_length)}')

    params = None
    suffix = ''
    # When there are multiple variants of parameters, choose the one with the correct count for this
    if isinstance(command['params'], list):
        for i, param in enumerate(command['params']):
            if not param in parameters:
                raise Exception(f'Parameter configuration {param} not defined')
            candidate = parameters[param]
            if candidate['length'] == commandSize - 1:
                params = candidate
                if i != 0:
                    # We need to add a suffix to distinguish the correct parameter variant
                    suffix = f'_{params["length"]}'
                break
        if params is None:
            raise Exception(
                f'No suitable parameter configuration with length {commandSize-1} found for {command["fun"]}')
    else:
        if not command['params'] in parameters:
            raise Exception(f'Parameter configuration {command["params"]} not defined')
        params = parameters[command['params']]

    command_name = f'{command["fun"]}{suffix}'

    if params['length'] == -1:  # variable parameter length
        print(f'\t.2byte {u16_to_hex(cmd)} @ {build_script_command(command_name)} with {commandSize-1} parameters')
        if commandSize > 1:
            print('\n'.join(['\t.2byte ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr + 2:ctx.ptr + commandSize * 2])]))
            print(f'@ End of parameters')
        ctx.ptr += commandSize * 2
        return 1
    elif params['length'] == -2:  # point and var
        print(f'\t.2byte {u16_to_hex(cmd)} @ {build_script_command(command_name)} with {commandSize-3} parameters')

        print('\t.4byte ' + get_pointer(ctx.data[ctx.ptr + 2:ctx.ptr + 6]))
        if commandSize > 3:
            print('\n'.join(['\t.2byte ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr + 6:ctx.ptr + commandSize * 2])]))
            print(f'@ End of parameters')
        ctx.ptr += commandSize * 2
        return 1

    if commandSize-1 != params['length']:
        raise Exception(f'Call {command_name} with {commandSize-1} length, while length of {params["length"]} defined')

    print(f'\t{build_script_command(command_name)} {params["read"](ctx)}')

    # Execute script
    ctx.ptr += commandSize * 2
    return 1


def disassemble_script(input_bytes, script_addr, add_all_annotations=False):
    ctx = Context(0, input_bytes, script_addr)

    foundEnd = False
    while True:
        # End of file (there need to be at least two bytes remaining for the next operation id)
        if ctx.ptr >= len(ctx.data) - 1:
            break
        res = disassemble_command(ctx, add_all_annotations)
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
            raise Exception(f'There is extra data at the end {ctx.ptr} / {len(ctx.data)}')
        print('\n'.join(['.2byte ' + x for x in barray_to_u16_hex(ctx.data[ctx.ptr:])]))
        raise Exception(f'There is extra data at the end {ctx.ptr} / {len(ctx.data)}')

    if not foundEnd:
        # Sadly, there are script files without and end?
        return 0
        #print('\033[93mNo end found\033[0m')
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
    print('	.2byte 0xffff')
    print('.endm')

    print('')
    for num, command in enumerate(commands):
        if not 'params' in command:
            raise Exception(f'Parameters not defined for {command["fun"]}')

        def emit_macro(command_name, id, params):
            print(f'.macro {command_name} {params["param"]}')
            print(f'	.2byte {u16_to_hex(id)}')
            if params['expr'] != '':
                print(params['expr'])
            print('.endm')
            print('')

        if isinstance(command['params'], list):
            # emit macros for all variants
            for i, variant in enumerate(command['params']):
                if not variant in parameters:
                    raise Exception(f'Parameter configuration {variant} not defined')
                params = parameters[variant]
                id = ((params['length'] + 1) << 0xA) + num
                suffix = ''
                if i != 0:
                    suffix = f'_{params["length"]}'
                emit_macro(f'{build_script_command(command["fun"])}{suffix}', id, params)
        else:
            if not command['params'] in parameters:
                raise Exception(f'Parameter configuration {command["params"]} not defined')
            params = parameters[command['params']]
            id = ((params['length'] + 1) << 0xA) + num

            if params['length'] < 0:  # Don't emit anything for variable parameters
                continue

            emit_macro(build_script_command(command['fun']), id, params)

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
