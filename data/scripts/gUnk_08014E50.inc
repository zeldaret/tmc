SCRIPT_START gUnk_08014E50
StartScript 
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
_0807EB74 
CallWithArg sub_0807F78C, 0x00000022
_0807EA94 
_0807E3E8 
JumpIfNot 0x0038
CallWithArg sub_0807F7C4, 0x00000022
JumpIfNot 0x001e
_0807E48C 0x0020
JumpIfNot 0x001e
CallWithArg sub_0807F800, 0x00000022
WaitPlayerAction8 
TextboxNoOverlap 0x0a04
Jump 0x000e
TextboxNoOverlap 0x0a03
Jump 0x0006
TextboxNoOverlap 0x0a02
_0807EA94 
Call sub_0807DF50
_0807E878 
Jump 0xff9c
.short 0x0000
