SCRIPT_START gUnk_08010148
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
TextboxNoOverlapFollowPos 0x3001, 0x0000
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
TextboxNoOverlapFollowPos 0x3004, 0x0007
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
.short 0x0c0b
