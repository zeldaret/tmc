SCRIPT_START gUnk_0800DB78
StartScript 
StopScript 
CallWithArg
.short 0xf6b5
.short 0x0807
.short 0x00a0
.short 0x0000
@ End of 4 parameters
JumpIf 0xfff4
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807F0B4 0x0001
SetEntityPositionRelative 0x00780078
CameraTargetEntity 
Call 0x0807f5c1
_0807EB28 0x1648
_0807EA94 
Call 0x0804d7ed
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call 0x0807df51
_0807E878 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
Call 0x0804d811
Call 0x0807f3f9
Wait 0x003c
StartPlayerScript 0x0800ddd0
WaitForSomething2 0x00000004
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807E5F8 0x00000001
StartPlayerScript 0x0800de00
WaitForSomething2 0x00000006
TextboxNoOverlapFollowPos
.short 0x1643
.short 0x0002
@ End of 2 parameters
_0807EA94 
_0807EB28 0x1645
_0807EA94 
Call 0x0807f3f9
_0807E5F8 0x00000001
SoundReq0x80100000 
Call 0x08094f99
CallWithArg
.short 0xdded
.short 0x0805
.short 0x0001
.short 0x0000
@ End of 4 parameters
_0807F0C8 0xffff, 0x0000
