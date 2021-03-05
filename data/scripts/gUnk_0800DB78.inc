SCRIPT_START gUnk_0800DB78
StartScript 
StopScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F6B4
.short 0x00a0
.short 0x0000
@ End of parameters
JumpIf 0xfff4
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
_0807F0B4 0x0001
SetEntityPositionRelative 0x00780078
CameraTargetEntity 
Call sub_0807F5C0
_0807EB28 0x1648
_0807EA94 
Call sub_0804D7EC
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call sub_0807DF50
_0807E878 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
Call sub_0804D810
Call sub_0807F3F8
Wait 0x003c
StartPlayerScript gUnk_0800DDD0
WaitForSomething2 0x00000004
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807E5F8 0x00000001
StartPlayerScript gUnk_0800DE00
WaitForSomething2 0x00000006
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1643
.short 0x0002
@ End of parameters
_0807EA94 
_0807EB28 0x1645
_0807EA94 
Call sub_0807F3F8
_0807E5F8 0x00000001
SoundReq0x80100000 
Call sub_08094F98
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DDEC
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0xffff, 0x0000
