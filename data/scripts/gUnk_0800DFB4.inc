SCRIPT_START gUnk_0800DFB4
StopScript 
CheckRoomFlag 0x0001
JumpIfNot 0xfffa
SoundReq0x80100000 
_0807E864 
Call 0x0807df29
SoundReq 0x00f6
CallWithArg
.short 0xda1d
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
