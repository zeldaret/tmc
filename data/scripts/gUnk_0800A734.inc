SCRIPT_START gUnk_0800A734
StartScript 
_0807E864 
Call sub_0807DF28
SetEntityPositionRelative 0x01c800d8
Call sub_0807F844
SoundReq 0x00f7
StopScript 
Wait 0x003c
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA1C
.short 0x000b
.short 0x0000
@ End of parameters
_0807EF80 0x0006
SCRIPT_END
