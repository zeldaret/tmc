SCRIPT_START gUnk_08010B04
_0807E078 0x0402
_0807EA94 
Call sub_080606C0
StopScript 
Call sub_0806076C
_0807EF80 0x0007
Call sub_08060700
StopScript 
StartScript 
_0807E564 
JumpIf 0x0010
CallWithArg sub_080608E4, 0x00000000
JumpIf 0x000c
_0807EE30 
JumpIfNot 0xffe4
Jump 0xffce
StopScript 
_0807EF80 0x0000
StopScript 
StartScript 
CallWithArg sub_080608E4, 0x00000001
JumpIf 0xfff0
StopScript 
Jump 0xffbc
_0807EF80 0x0006
SCRIPT_END
