SCRIPT_START script_08010A98
StartScript 
_0807EB44 0x0004
CallWithArg sub_080672B0, 0x00000000
_0807EF80 0x000a
Call sub_08067314
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_080672B0, 0x00000004
Call sub_08067304
_0807EA94 
_0807E878 
_0807EB44 0x0004
CallWithArg sub_080672B0, 0x00000000
Jump 0xffd2
StartScript 
CheckInventory1 0x0067
JumpIfNot 0x0076
_0807EB44 0x0004
_0807EF80 0x0000
SetEntityNonPlanarMovement 0x0180
CallWithArg_p sub_0807F348
Call sub_0806075C
StopScript 
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
