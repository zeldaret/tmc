SCRIPT_START gUnk_0800DFB4
StopScript 
CheckRoomFlag 0x0001
JumpIfNot 0xfffa
SoundReq0x80100000 
_0807E864 
Call sub_0807DF28
SoundReq 0x00f6
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA1C
.short 0x0004
.short 0x0000
@ End of parameters
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
