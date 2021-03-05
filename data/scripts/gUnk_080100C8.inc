SCRIPT_START gUnk_080100C8
StartScript 
Call 0x08061fe5
Call 0x08061e71
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fe5
Call 0x08062049
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
Call 0x08061fe5
Call 0x08061e71
_0807EF80 0x000a
StopScript 
Wait 0x003c
Call 0x08061e91
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
Call 0x0806c355
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CheckRoomFlag 0x0001
JumpIf 0x0034
TextboxNoOverlapFollowPos
.short 0x3001
.short 0x0000
@ End of 2 parameters
_0807EA94 
_0807E3E8 
JumpIfNot 0x002e
Call 0x080a1609
_0807EA94 
_0807E878 
CallWithArg
.short 0x1551
.short 0x080a
.short 0x01ac
.short 0x0801
@ End of 4 parameters
JumpIfNot 0xffca
SoundReq2 0x0015
SetRoomFlag 0x0001
Jump 0xffbe
Call 0x080a1609
_0807EA94 
_0807E878 
Jump 0xffb0
StartScript 
_0807EF80 0x0008
Call 0x080a1649
StopScript 
Call 0x080a1271
_0807E864 
Call 0x0807df29
TextboxNoOverlapFollowPos
.short 0x3004
.short 0x0007
@ End of 2 parameters
_0807EA94 
SoundReq0x80100000 
_0807E778 0x0004
DoFade5 
WaitFor_2 
CallWithArg
.short 0xf75d
.short 0x0807
.short 0x0378
.short 0x0340
@ End of 4 parameters
Call 0x080791bd
Call 0x0807fb75
_0807E8E4_1 
Call 0x0807f169
Call 0x080a1389
Call 0x0806ec39
StartScript 
MoveEntityToPlayer 
Call 0x0807f845
CameraTargetPlayer 
StopScript 
_0807E778 0x0004
DoFade4 
WaitFor_2 
SoundReq2 0xffff
Call 0x080a13b5
_0807EA94 
JumpIfNot 0x0018
Call 0x080a13e9
WaitPlayerAction8 
Call 0x080a1461
_0807EA94 
Call 0x080a14a9
Call 0x0807df51
_0807E878 
CallWithArg
.short 0xf5b1
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
ClearRoomFlag 0x0001
Call 0x080a169d
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
