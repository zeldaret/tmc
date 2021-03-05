SCRIPT_START gUnk_0801319A
StopScript 
StartScript 
CameraTargetEntity 
MoveEntityToPlayer 
Call 0x0806ab75
Jump 0xfff0
CheckPlayerInRegion 0x0098, 0x0038, 0x2060
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
StartPlayerScript 0x080132e4
WaitForSomething2 0x00000002
_0807EB28 0x1601
_0807EA94 
StartPlayerScript 0x0801330c
WaitForSomething2 0x00000002
_0807E778 0x0004
DoFade5 
WaitFor_2 
LoadRoomEntityList 0x080f5680
StartPlayerScript 0x08013330
WaitForSomething2 0x00000002
MoveEntityToPlayer 
SetEntityPosition 0x0000, 0xfff0
Call 0x0807f845
CameraTargetEntity 
Call 0x080536b9
_0807E864 
Call 0x0807df29
WaitFor_2 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1602
.short 0x000c
@ End of parameters
_0807EA94 
_0807E5F8 0x00000008
WaitForSomething2 0x00000010
_0807E5F8 0x00000020
WaitForSomething2 0x00000040
SoundReq2 0x000d
StartPlayerScript 0x0801334c
WaitForSomething2 0x00000002
_0807E5F8 0x00000020
WaitForSomething2 0x00000040
StartPlayerScript 0x08013378
_0807E5F8 0x00000020
WaitForSomething2 0x00000042
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1603
.short 0x000c
@ End of parameters
_0807EA94 
_0807E5F8 0x00000020
WaitForSomething2 0x00000040
_0807E788 0xffff7fff
_0807E778 0x0004
DoFade5 
WaitFor_2 
SoundReq0x80100000 
.short 0x0842 @ _0807E858 with 1 parameters
.short 0x0000
@ End of parameters
Wait 0x003c
CameraTargetPlayer 
Call 0x0807f5c1
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1604
.short 0x0007
@ End of parameters
_0807EA94 
_0807E788 0xffffffff
_0807E778 0x0004
DoFade4 
WaitFor_2 
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807EB28 0x1605
_0807EA94 
SetLocalFlag 0x0078
SoundReq2 0x0031
SetGlobalFlag 0x005d
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
