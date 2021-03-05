SCRIPT_START gUnk_0800CFAC
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0000
StopScript 
CheckInventory1 0x0041
JumpIf 0x000e
CheckLocalFlag 0x007e
JumpIfNot 0x0006
_0807E930 0x0008
CheckInventory1 0x0002
JumpIf 0x0022
CheckInventory1 0x0041
JumpIfNot 0x000c
_0807E5F8 0x00000020
Jump 0x0010
CheckLocalFlag 0x007e
JumpIfNot 0x0008
_0807E5F8 0x00000010
StopScript 
StartScript 
Call sub_08068910
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
.byte 0xb
.byte 0xc
.byte 0x29
