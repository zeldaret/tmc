SCRIPT_START gUnk_0800AB08
StartScript 
_0807E864 
Call sub_0807DF28
SetEntityPositionRelative 0x01480088
Call sub_0807F844
_0807E8E4_3 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F6E8
.short 0x0008
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F75C
.short 0x0088
.short 0x00a8
@ End of parameters
SoundReq 0x00f7
StopScript 
Wait 0x0078
_0807F0B4 0x0001
SetEntityPositionRelative 0x00780088
Call sub_0807F5C0
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1664
.short 0x0000
@ End of parameters
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x165e
.short 0x000e
@ End of parameters
_0807EA94 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DDEC
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0xffff, 0x0000
