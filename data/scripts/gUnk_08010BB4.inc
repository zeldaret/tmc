SCRIPT_START gUnk_08010BB4
StartScript 
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0008
Call 0x0806e441
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0000
Call 0x0806e419
_0807EA94 
_0807E878 
_0807E930 0x0008
Jump 0xffe2
.short 0x0000
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
StartPlayerScript 0x08011074
WaitForSomething2 0x00000400
_0807F078 0x0034, 0x0002
TextboxNoOverlapFollowPos
.short 0x1036
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000010
WaitForSomething2 0x00000020
TextboxNoOverlapFollowPos
.short 0x1037
.short 0x0002
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000010
WaitForSomething2 0x00000020
TextboxNoOverlapFollowPos
.short 0x1038
.short 0x000c
@ End of 2 parameters
_0807EA94 
SoundReq0x80100000 
_0807E778 0x0004
DoFade5 
WaitFor_2 
Call 0x08064181
Call 0x08064181
Call 0x08064181
Call 0x08064181
Call 0x08064181
Call 0x08064181
Call 0x08064181
Call 0x08064181
LoadRoomEntityList 0x080f06e0
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
StartPlayerScript 0x08011098
WaitForSomething2 0x00000400
SetEntityPositionRelative 0x005001f8
_0807F0B4 0x0007
CameraTargetEntity 
Wait 0x000a
_0807F0B4 0x0001
_0807E778 0x0001
DoFade4 
_0807E5F8 0x0002a800
WaitForSomething2 0x00055000
SetEntityPositionRelative 0x007801f8
Wait 0x003c
_0807E5F8 0x00800000
WaitForSomething2 0x01000000
_0807E5F8 0x0002a800
WaitForSomething2 0x00055000
_0807E8E4_1 
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
TextboxNoOverlapFollowPos
.short 0x1039
.short 0x000c
@ End of 2 parameters
_0807EA94 
SoundReq2 0x0001
_0807E8E4_2 
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
_0807E5F8 0x00000010
_0807E5F8 0x00000040
WaitForSomething2 0x00000020
WaitForSomething2 0x00000080
Wait 0x012c
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
TextboxNoOverlapFollowPos
.short 0x103a
.short 0x000c
@ End of 2 parameters
_0807EA94 
SetEntityPositionRelative 0x01c001f8
_0807F0B4 0x0004
Wait 0x0078
_0807E5F8 0x00280000
WaitForSomething2 0x00500000
_0807E5F8 0x00000100
SetEntityPositionRelative 0x022001f8
SetEntityNonPlanarMovement 0x0100
_0807EDD4 0x01f8, 0x0098
Wait 0x003c
WaitForSomething2 0x00000200
_0807E5F8 0x00280000
SoundReq0x80100000 
SoundReq 0x009b
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
TextboxNoOverlapFollowPos
.short 0x1043
.short 0x0000
@ End of 2 parameters
_0807EA94 
SoundReq2 0x000d
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
_0807E5F8 0x0002a800
WaitForSomething2 0x00055000
SoundReq 0x01c7
SoundReq 0x00e5
_0807E5F8 0x00000100
_0807E5F8 0x00002800
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
WaitForSomething2 0x00000200
WaitForSomething2 0x00005000
_0807E5F8 0x00028000
WaitForSomething2 0x00050000
TextboxNoOverlapFollowPos
.short 0x1044
.short 0x0000
@ End of 2 parameters
_0807EA94 
SetEntityPositionRelative 0x009801f8
SoundReq0x80100000 
Wait 0x003c
SoundReq2 0x002f
_0807E5F8 0x00028000
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
WaitForSomething2 0x00050000
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
SoundReq 0x00e5
_0807E5F8 0x00028000
WaitForSomething2 0x00050000
SoundReq 0x0125
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
_0807E5F8 0x08000000
_0807E5F8 0x00800000
WaitForSomething2 0x01000000
CallWithArg
.short 0xdded
.short 0x0805
.short 0x0002
.short 0x0000
@ End of 4 parameters
_0807F0C8 0xffff, 0x0000
