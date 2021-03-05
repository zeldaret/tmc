SCRIPT_START gUnk_0800A1D8
StartScript 
_0807E864 
Call sub_0807DF28
SetEntityPositionRelative 0x00800088
Call sub_0807F844
_0807E8E4_3 
CallWithArg sub_0807F75C, 0x00a80088
StopScript 
Wait 0x003c
StartPlayerScript 0x0800a310
WaitForSomething2 0x00000001
_0807E5F8 0x00000004
WaitForSomething2 0x00000080
TextboxNoOverlapFollowPos 0x1659, 0x0000
_0807EA94 
.short 0x0831
.short 0x003c
