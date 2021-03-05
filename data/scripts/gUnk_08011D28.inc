SCRIPT_START gUnk_08011D28
StartScript 
Call sub_08064928
_0807EB44 0x0004
_0807EF80 0x0001
_0807EF80 0x000a
CheckGlobalFlag 0x0047
JumpIf 0x002c
StopScript 
StopScript 
StartScript 
CheckEntityInteractType 
JumpIfNot 0xfff8
StopScript 
_0807E864 
_0807EB74 
_0807EF80 0x0000
TextboxNoOverlap 0x4513
_0807EA94 
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0001
Jump 0xffda
StopScript 
StartScript 
CheckGlobalFlag 0x002b
JumpIf 0xffce
CheckGlobalFlag 0x002d
JumpIf 0xffc6
CheckEntityInteractType 
JumpIfNot 0xffe8
StopScript 
_0807E864 
_0807EB74 
_0807EF80 0x0000
TextboxNoOverlap 0x3103
_0807EA94 
_0807E3E8 
JumpIf 0x001e
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0001
Jump 0xffc4
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0000
TextboxNoOverlap 0x3106
_0807EA94 
SetGlobalFlag 0x002c
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0001
Jump 0xffdc
.short 0x0000
