SCRIPT_START gUnk_0800A704
StartScript 
_0807E864 
Call sub_0807DF28
SetEntityPositionRelative 0x01c80198
Call sub_0807F844
StopScript 
Wait 0x003c
SoundReq 0x00f6
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA1C
.short 0x000a
.short 0x0000
@ End of parameters
_0807EF80 0x0006
SCRIPT_END
