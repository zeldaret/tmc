SCRIPT_START gUnk_0800E760
StartScript 
_0807E9D4 
_0807EF80 0x000a
SetEntityNonPlanarMovement 0x0200
CheckGlobalFlag 0x0029
JumpIfNot 0x000a
CheckGlobalFlag 0x002a
JumpIfNot 0x000c
SetEntityPositionRelative 0x00980188
Jump 0xff70
StopScript 
StartScript 
CheckGlobalFlag 0x002a
JumpIf 0x002a
CheckEntityInteractType 
JumpIf 0x000e
Call sub_0806AEE4
StopScript 
Jump 0xffe6
StopScript 
_0807E864 
Call sub_0806AFE8
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffd0
_0807EF80 0x000f
_0807EB44 0x0002
CallWithArg sub_0806AF60, 0x00000004
Call sub_0806AF70
_0807EE04 0x0188, 0x0058
.byte 0x2
