SCRIPT_START gUnk_08012024
StartScript 
Call sub_08064828
_0807EB44 0x0004
_0807EF80 0x0001
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0000
CheckLocalFlag 0x0094
JumpIf 0x0010
TextboxNoOverlap 0x3122
_0807EA94 
SetLocalFlag 0x0094
Jump 0x0042
_0807E48C 0x0031
JumpIfNot 0x000c
TextboxNoOverlap 0x3123
_0807EA94 
Jump 0x0030
TextboxNoOverlap 0x3124
_0807EA94 
_0807E3E8 
JumpIfNot 0x0024
_0807E48C 0x0020
JumpIfNot 0x0018
TextboxNoOverlap 0x3125
_0807EA94 
_0807F034 0x0031
WaitPlayerAction8 
.byte 0xb
