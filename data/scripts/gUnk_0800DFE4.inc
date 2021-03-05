SCRIPT_START gUnk_0800DFE4
StartScript 
Call sub_0807DF28
_0807E864 
StopScript 
SoundReq0x80100000 
TextboxNoOverlapFollowPos 0x1632, 0x0002
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
TextboxNoOverlapFollowPos 0x1639, 0x000c
_0807EA94 
Wait 0x0096
SoundReq 0x00f6
CallWithArg sub_0806DA1C, 0x00000005
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
