SCRIPT_START gUnk_0800CD7C
StartScript 
CheckInventory1 0x005b
JumpIfNot 0xf87a
Call sub_08060090
_0807EF80 0x000a
StopScript 
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000c
Call sub_08060158
Jump 0xffee
StopScript 
_0807E864 
Call sub_0807DF28
CheckLocalFlag 0x009d
JumpIf 0x000e
SetLocalFlag 0x009d
TextboxNoOverlap 0x213d
Jump 0x017e
CheckGlobalFlag 0x003b
JumpIf 0x007c
CheckGlobalFlag 0x0054
JumpIfNot 0x001a
CheckRoomFlag 0x0000
JumpIfNot 0x0150
SetGlobalFlag 0x003b
ClearGlobalFlag 0x0054
TextboxNoOverlap 0x2141
Jump 0x0156
TextboxNoOverlap 0x213e
_0807EA94 
_0807E48C 0x0023
JumpIfNot 0x001c
TextboxNoOverlap 0x214b
_0807EA94 
_0807E3E8 
JumpIfNot 0x013c
.byte 0x7b
