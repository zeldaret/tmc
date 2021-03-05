SCRIPT_START gUnk_0800DFE4
StartScript 
Call sub_0807DF28
_0807E864 
StopScript 
SoundReq0x80100000 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1632
.short 0x0002
@ End of parameters
_0807EA94 
SetRoomFlag 0x0003
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
SoundReq2 0x0030
Call sub_0807DF50
_0807E878 
CheckRoomFlag 0x0002
JumpIfNot 0xfffa
_0807E864 
Call sub_0807DF28
SetLocalFlag 0x007b
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1639
.short 0x000c
@ End of parameters
_0807EA94 
Wait 0x0096
SoundReq 0x00f6
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA1C
.short 0x0005
.short 0x0000
@ End of parameters
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
