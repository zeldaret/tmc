SCRIPT_START gUnk_0800A1D8
StartScript 
_0807E864 
Call 0x0807df29
SetEntityPositionRelative 0x00800088
Call 0x0807f845
_0807E8E4_3 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf75d
.short 0x0807
.short 0x0088
.short 0x00a8
@ End of parameters
StopScript 
Wait 0x003c
StartPlayerScript 0x0800a310
WaitForSomething2 0x00000001
_0807E5F8 0x00000004
WaitForSomething2 0x00000080
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1659
.short 0x0000
@ End of parameters
_0807EA94 
Wait 0x003c
_0807E5F8 0x00000010
WaitForSomething2 0x00000200
_0807E5F8 0x00000004
_0807E8E4_0 
WaitForSomething2 0x00000080
_0807E5F8 0x00000010
WaitForSomething2 0x00000200
_0807E5F8 0x00000002
WaitForSomething2 0x00000040
_0807E5F8 0x00000004
Call 0x0807f3f9
WaitForSomething2 0x00000080
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x165a
.short 0x000e
@ End of parameters
_0807EA94 
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x165b
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000040
_0807E5F8 0x00000008
WaitForSomething2 0x00000100
Wait 0x003c
_0807E8E4_3 
_0807E5F8 0x00000004
WaitForSomething2 0x00000080
Wait 0x003c
_0807E5F8 0x00000008
WaitForSomething2 0x00000100
_0807E5F8 0x00000006
WaitForSomething2 0x000000c0
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x165c
.short 0x000e
@ End of parameters
_0807EA94 
SoundReq0x80100000 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x165d
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000006
WaitForSomething2 0x000000c0
_0807E5F8 0x00000006
WaitForSomething2 0x00000080
_0807E5F8 0x00000008
WaitForSomething2 0x00000100
SoundReq2 0x0008
SoundReq 0x00f7
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda1d
.short 0x0806
.short 0x0007
.short 0x0000
@ End of parameters
_0807EF80 0x0006
SCRIPT_END
