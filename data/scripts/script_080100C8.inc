SCRIPT_START script_080100C8
StartScript 
Call sub_08061FE4
Call sub_08061E70
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call sub_08061FE4
Call sub_08062048
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
Call sub_08061FE4
Call sub_08061E70
_0807EF80 0x000a
StopScript 
Wait 0x003c
Call sub_08061E90
Jump 0xfff4
.short 0x0000
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlapFollow 0x4f22
_0807EA94 
_0807E878 
Jump 0xffec
StartScript 
_0807EF80 0x0001
Call sub_0806C354
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CheckRoomFlag 0x0001
JumpIf 0x0034
TextboxNoOverlapFollowPos 0x00003001
_0807EA94 
_0807E3E8 
JumpIfNot 0x002e
Call sub_080A1608
_0807EA94 
_0807E878 
CallWithArg sub_080A1550, 0x080101ac
JumpIfNot 0xffca
SoundReq2 0x0015
SetRoomFlag 0x0001
Jump 0xffbe
Call sub_080A1608
_0807EA94 
_0807E878 
Jump 0xffb0
StartScript 
_0807EF80 0x0008
Call sub_080A1648
StopScript 
Call sub_080A1270
_0807E864 
Call sub_0807DF28
TextboxNoOverlapFollowPos 0x00073004
_0807EA94 
SoundReq0x80100000 
_0807E778 0x0004
DoFade5 
WaitFor_2 
CallWithArg sub_0807F75C, 0x03400378
Call sub_080791BC
Call sub_0807FB74
_0807E8E4_1 
Call sub_0807F168
Call sub_080A1388
Call sub_0806EC38
StartScript 
MoveEntityToPlayer 
Call sub_0807F844
CameraTargetPlayer 
StopScript 
_0807E778 0x0004
DoFade4 
WaitFor_2 
SoundReq2 0xffff
Call sub_080A13B4
_0807EA94 
JumpIfNot 0x0018
Call sub_080A13E8
WaitPlayerAction8 
Call sub_080A1460
_0807EA94 
Call sub_080A14A8
Call sub_0807DF50
_0807E878 
CallWithArg sub_0807F5B0, 0x00000000
ClearRoomFlag 0x0001
Call sub_080A169C
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
