SCRIPT_START gUnk_0800E154
StartScript 
_0807EB44 0x0004
_0807EF80 0x000a
CheckLocalFlag 0x0094
JumpIf 0x006c
_0807E930 0x0010
CallWithArg sub_0807F8E8, 0x00000001
StopScript 
CheckRoomFlag 0x0001
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
.byte 0x31
.byte 0x8
.byte 0xa