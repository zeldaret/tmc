SCRIPT_START script_0800FF18
StartScript 
CheckInventory1 0x0012
JumpIf 0x004a
_0807EB44 0x0006
_0807E9D4 
CallWithArg sub_0807F3D8, 0x00000008
StopScript 
StopScript 
StartScript 
_0807EF80 0x000b
Call sub_08064198
CheckEntityInteractType 
JumpIfNot 0xffee
StopScript 
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000008
Call sub_08064428
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffcc
_0807EF80 0x0008
_0807EF80 0x0006
SCRIPT_END
