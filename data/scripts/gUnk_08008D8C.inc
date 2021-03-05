SCRIPT_START gUnk_08008D8C
StartScript 
Call 0x08061fd9
Call 0x08061e71
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Call 0x080643d9
_0807EA94 
_0807E878 
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Jump 0xffd2
StartScript 
SetEntityPositionRelative 0x00780088
StopScript 
CheckPlayerInRegion 0x00d8, 0x0098, 0x4020
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807F0B4 0x0001
CameraTargetEntity 
WaitForPlayerAction0x17 
Wait 0x003c
StartPlayerScript 0x08008f74
WaitForSomething2 0x00000020
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Wait 0x003c
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Wait 0x000f
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1053
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000040
WaitForSomething2 0x00000020
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807F034 0x0035
WaitPlayerAction8 
StartPlayerScript 0x08008fc0
WaitForSomething2 0x00000020
_0807E8E4_0 
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000010
Wait 0x0078
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E8E4_1 
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807F034 0x0047
WaitPlayerAction8 
_0807E914 0x00000003
Call 0x0807f421
_0807E8E4_0 
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807F0B4 0x0004
CameraTargetPlayer 
SetGlobalFlag 0x0015
Call 0x0806dcc1
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
