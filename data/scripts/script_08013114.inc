SCRIPT_START script_08013114
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EF80 0x0012
Call sub_0807F348
StopScript 
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000c
Call sub_0806AEE4
Jump 0xffee
_0807E864 
StopScript 
_0807EB74 
Call sub_0806AED8
CallWithArg sub_0806AA50, 0x00000000
_0807EA94 
CallWithArg sub_0806AA50, 0x00000001
_0807EA94 
CallWithArg sub_0806AA50, 0x00000002
_0807EA94 
JumpIf 0x0008
_0807E878 
Jump 0xffb4
_0807E914 0x00000403
Call sub_0807F420
_0807E878 
Jump 0xffa2
StartScript 
CheckLocalFlag 0x0062
JumpIfNot 0x000a
_0807EF80 0x0006
StopScript 
SCRIPT_END
