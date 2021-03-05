SCRIPT_START gUnk_08014F30
StartScript 
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0004
_0807E930 0x000e
StopScript 
Call sub_08065914
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
_0807EB74 
_0807EF80 0x0000
StartScript 
TextboxNoOverlap 0x3b0b
CallWithArg sub_0807F854, 0x00010064
StopScript 
_0807EA94 
_0807E3E8 
JumpIfNot 0x0030
HasRupees 0x0064
JumpIfNot 0x001c
_0807E48C 0x0020
JumpIfNot 0x001c
ModRupees 0xff9c
_0807F034 0x0022
WaitPlayerAction8 
TextboxNoOverlap 0x3b11
Jump 0x000e
TextboxNoOverlap 0x3b0e
Jump 0x0006
TextboxNoOverlap 0x3b0f
_0807EA94 
Call sub_0807DF50
_0807E878 
_0807EB44 0x0004
_0807E930 0x000e
.short 0x0803
.short 0xff90
