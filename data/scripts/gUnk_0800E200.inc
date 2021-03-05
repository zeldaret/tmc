SCRIPT_START gUnk_0800E200
StartScript 
SetEntityNonPlanarMovement 0x0100
_0807EB44 0x0004
_0807EF80 0x000a
CheckLocalFlag 0x0073
JumpIfNot 0x001e
_0807E9D4 
SetEntityPositionRelative 0x01680070
_0807EB44 0x0002
CallWithArg sub_0807F3D8, 0x00000000
StopScript 
Jump 0x00fe
CheckLocalFlag 0x0095
JumpIf 0x0062
_0807E930 0x0010
CallWithArg sub_0807F8E8, 0x00000002
StopScript 
CheckRoomFlag 0x0002
JumpIfNot 0xfffa
_0807E864 
Wait 0x001e
_0807EF80 0x0010
SoundReq 0x01c9
_0807E930 0x0015
Wait 0x003c
SoundReq 0x01ca
_0807EF80 0x0010
Wait 0x001e
SoundReq 0x0072
Wait 0x0078
_0807EF80 0x0004
Wait 0x001e
_0807EF80 0x0000
_0807EB8C 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000000
SetLocalFlag 0x0095
_0807EF80 0x0000
CallWithArg sub_0807F3D8, 0x00000000
_0807E9D4 
_0807E878 
StopScript 
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x005c
CheckLocalFlag 0x0093
JumpIfNot 0xfff0
CheckLocalFlag 0x0094
JumpIfNot 0xffe8
CheckLocalFlag 0x0095
JumpIfNot 0xffe0
_0807E9DC 
SetLocalFlag 0x0073
StopScript 
_0807EB44 0x0000
CallWithArg sub_0807F3D8, 0x00000004
_0807EDD4 0x0088, 0x0168
_0807EB44 0x0006
CallWithArg sub_0807F3D8, 0x00000004
.short 0x0c73
.short 0x0070
.short 0x0168
