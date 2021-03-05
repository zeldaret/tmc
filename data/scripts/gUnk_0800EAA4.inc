SCRIPT_START gUnk_0800EAA4
StartScript 
_0807E9D4 
Call sub_0806C09C
_0807EF80 0x000a
_0807E930 0x0000
_0807EB44 0x0004
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
StartScript 
_0807E864 
_0807EB74 
CallWithArg sub_0806C028, 0x00000004
StopScript 
Call sub_0806C00C
JumpIfNot 0xfff8
_0807E930 0x0008
Call sub_0806C038
_0807EA94 
.byte 0x31
