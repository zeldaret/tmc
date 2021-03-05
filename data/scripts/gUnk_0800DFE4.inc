SCRIPT_START gUnk_0800DFE4
StartScript 
Call 0x0807df29
_0807E864 
StopScript 
SoundReq0x80100000 
TextboxNoOverlapFollowPos
.short 0x1632
.short 0x0002
@ End of 2 parameters
_0807EA94 
SetRoomFlag 0x0003
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
SoundReq2 0x0030
Call 0x0807df51
_0807E878 
CheckRoomFlag 0x0002
JumpIfNot 0xfffa
_0807E864 
Call 0x0807df29
SetLocalFlag 0x007b
TextboxNoOverlapFollowPos
.short 0x1639
.short 0x000c
@ End of 2 parameters
_0807EA94 
Wait 0x0096
SoundReq 0x00f6
CallWithArg
.short 0xda1d
.short 0x0806
.short 0x0005
.short 0x0000
@ End of 4 parameters
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
