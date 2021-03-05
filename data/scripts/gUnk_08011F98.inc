SCRIPT_START gUnk_08011F98
StartScript 
Call sub_08064A28
_0807EB44 0x0004
_0807EF80 0x0001
_0807EF80 0x000a
StopScript 
StopScript 
StartScript 
CheckGlobalFlag 0x002e
JumpIf 0xfe3a
CheckGlobalFlag 0x002f
JumpIf 0xfe32
CheckEntityInteractType 
JumpIfNot 0xffe8
StopScript 
_0807E864 
_0807EB74 
_0807EF80 0x0000
CheckGlobalFlag 0x0048
JumpIf 0x000c
TextboxNoOverlap 0x4523
_0807EA94 
Jump 0x000e
TextboxNoOverlap 0x3110
_0807EA94 
_0807E3E8 
JumpIf 0x001e
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0001
Jump 0xffb2
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0000
TextboxNoOverlap 0x3113
_0807EA94 
SetGlobalFlag 0x0030
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0001
.short 0x0803
.short 0xffdc
