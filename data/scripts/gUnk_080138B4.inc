SCRIPT_START gUnk_080138B4
StartScript 
_0807EF80 0x0008
StopScript 
StartScript 
Call sub_0807F92C
CallWithArg sub_0806DA04, 0x00000003
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
StartPlayerScript 0x080136d8
WaitForSomething2 0x00000001
CallWithArg sub_08095A1C, 0x08013f64
SoundReq 0x01cd
Wait 0x005a
StartScript 
SoundReq 0x01ce
CallWithArg sub_08095D54, 0x08013e70
StopScript 
WaitForSomething2 0x40000000
StartScript 
SoundReq 0x01cf
CallWithArg sub_08095D8C, 0x08014054
CallWithArg sub_08095D8C, 0x08014074
CallWithArg sub_08095D8C, 0x08014094
CallWithArg sub_08095D8C, 0x080140b8
StopScript 
Wait 0x001e
StartScript 
SoundReq 0x01d0
CallWithArg sub_08095D8C, 0x080140dc
CallWithArg sub_08095D8C, 0x08014118
CallWithArg sub_08095D8C, 0x08014154
CallWithArg sub_08095D8C, 0x08014198
StopScript 
Wait 0x003c
CallWithArg sub_0805DDEC, 0x00000000
_0807E5F8 0x00000200
WaitForSomething2 0x00002000
SoundReq 0x01d2
CallWithArg sub_08095D8C, 0x080141dc
CallWithArg sub_08095D8C, 0x08014210
_0807E5F8 0x00000400
WaitForSomething2 0x00004000
_0807E5F8 0x00000800
WaitForSomething2 0x00008000
_0807E5F8 0x00001000
WaitForSomething2 0x00010000
Wait 0x0078
_0807E5F8 0x00000060
CallWithArg sub_0805DE18, 0x00000000
Wait 0x0078
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
Wait 0x003c
StartPlayerScript 0x08013ba8
_0807E5F8 0x00000080
_0807F078 0x0006, 0x0001
Call sub_0807AEE4
Call sub_0806DC3C
Call sub_0806DC58
Call sub_0807F304
Wait 0x003c
_0807E778 0x0004
DoFade7 
SoundReq 0x00f6
WaitFor_2 
Wait 0x003c
_0807E5F8 0x00000010
_0807E778 0x0002
DoFade6 
WaitFor_2 
SoundReq 0x0109
TextboxNoOverlapFollowPos 0x0505, 0x000c
_0807EA94 
_0807E5F8 0x00040000
_0807F0B4 0x0002
SetEntityPositionRelative 0x00d800e8
CameraTargetEntity 
Call sub_0806DC3C
CallWithArg sub_0807F244, 0x00010001
CallWithArg sub_0807F29C, 0x080049fe
Wait 0x00c8
CallWithArg sub_0807F29C, 0x00000000
Call sub_0806DC58
CheckRoomFlag 0x0004
JumpIfNot 0xfffa
CallWithArg sub_0805DDEC, 0x00000001
_0807F0C8 0xffff, 0x0000
Call sub_0807F3F8
Wait 0x003c
_0807E5F8 0x00000008
Wait 0x0078
CallWithArg sub_0805DE18, 0x00000001
_0807F0C8 0x0000, 0x0000
Wait 0x003c
_0807F0B4 0x0004
SetEntityPositionRelative 0x005000e8
CameraTargetEntity 
Wait 0x003c
LoadRoomEntityList 0x080f55d8
Wait 0x0078
_0807F0B4 0x0007
MoveEntityToPlayer 
CameraTargetEntity 
Wait 0x003c
_0807EB28 0x1502
_0807EA94 
_0807F0B4 0x0004
CameraTargetPlayer 
SetLocalFlag 0x007c
Call sub_08053250
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END