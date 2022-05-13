#!/usr/bin/env python3

import argparse
import pycparser

class EnumVisitor(pycparser.c_ast.NodeVisitor):
    def __init__(self, file):
        self.file = file
    def visit_Enum(self, enum):
        if enum.coord.file != self.file:
            return
        next_value = 0
        for enum_value in enum.values.enumerators:
            if enum_value.value is not None:
                # Unsure how to handle assignment of non-numerical value - maybe leave as is?
                if isinstance(enum_value.value, pycparser.c_ast.Constant):
                    next_value_str = enum_value.value.value
                    next_value = int(next_value_str, 16) if "x" in next_value_str else int(next_value_str)
                    print(f".set {enum_value.name}, {next_value}")
                    next_value += 1
            else:
                print(f".set {enum_value.name}, {next_value}")
                next_value += 1

def main():
    parser = argparse.ArgumentParser(description="Prints out enum values for assembler.", prefix_chars='+')
    parser.add_argument("file", help="input include file")
    parser.add_argument("cpp", help="c pre-processor")
    parser.add_argument("cppflags", help="c pre-processor flags", nargs="*")

    args = parser.parse_args()
    ast = pycparser.parse_file(args.file, True, args.cpp, args.cppflags) 

    # print guard
    guard_prefix = args.file.replace("include/", "")
    guard_prefix = guard_prefix.replace(".", "_")
    guard_name = guard_prefix.upper() + "_ASM_INC"
    print(f".ifndef {guard_name}")
    print(f".set {guard_name}, 1\n")

    visitor = EnumVisitor(args.file)
    visitor.visit(ast)

    print(f"\n.endif @ {guard_name}")


if __name__ == '__main__':
    main()
