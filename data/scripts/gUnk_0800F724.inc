SCRIPT_START gUnk_0800F724
StartScript 
_0807EF80 0x0008
StopScript 
CheckLocalFlag 0x00cd
JumpIfNot 0xfffa
_0807EF80 0x0007
Jump 0xfe4a
CheckLocalFlag 0x00cd
JumpIf 0x030a
_0807E864 
Call 0x0807df29
SetEntityPositionRelative 0x014800c8
Call 0x0807f845
_0807E778 0x0002
DoFade6 
WaitFor_2 
StartPlayerScript 0x0800fa54
_0807E5F8 0x00000002
_0807F0B4 0x0001
SetEntityPositionRelative 0x021800c8
Call 0x0807f5c1
Wait 0x0064
_0807F0B4 0x0002
SetEntityPositionRelative 0x036800c8
Call 0x0807f5c1
WaitForSomething2 0x00000001
WaitForSomething2 0x00000004
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x2501
.short 0x0000
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807F0B4 0x0004
CameraTargetPlayer 
Call 0x0807df51
_0807E878 
_0807E5F8 0x00000010
WaitForSomething2 0x00000004
_0807E864 
Call 0x0807df29
StartPlayerScript 0x0800fa78
WaitForSomething2 0x00000001
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x2503
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
Call 0x0807df51
_0807E878 
WaitForSomething2 0x00000004
_0807E864 
Call 0x0807df29
StartPlayerScript 0x0800fa9c
WaitForSomething2 0x00000001
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x2504
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
Call 0x0807df51
_0807E878 
WaitForSomething2 0x00000004
_0807E864 
Call 0x0807df29
StartPlayerScript 0x0800fac0
WaitForSomething2 0x00000001
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x2505
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
Call 0x0807df51
_0807E878 
WaitForSomething2 0x00000004
_0807E864 
Call 0x0807df29
Call 0x08063c5d
SoundReq 0x00e2
Wait 0x001e
_0807E8E4_0 
Call 0x0807f3f9
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1021
.short 0x000e
@ End of parameters
_0807EA94 
StartPlayerScript 0x0800fae4
SetEntityPositionRelative 0x025800f0
_0807F0B4 0x0001
CameraTargetEntity 
Wait 0x001e
Call 0x08063c2d
WaitForSomething2 0x00000001
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1022
.short 0x000e
@ End of parameters
_0807EA94 
_0807E8E4_0 
Call 0x08063c15
Call 0x08094cdd
Wait 0x001e
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1023
.short 0x000e
@ End of parameters
_0807EA94 
Call 0x08063c15
Call 0x08094dd9
Wait 0x001e
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1024
.short 0x000e
@ End of parameters
_0807EA94 
Call 0x08063c15
Call 0x08094d35
Wait 0x001e
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1025
.short 0x000e
@ End of parameters
_0807EA94 
Call 0x08063c5d
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1026
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807E8E4_1 
Call 0x08063c2d
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1027
.short 0x0000
@ End of parameters
_0807EA94 
Call 0x08063c75
Wait 0x003c
Call 0x08063c15
_0807E8E4_0 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1028
.short 0x000e
@ End of parameters
_0807EA94 
_0807E8E4_1 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1029
.short 0x0000
@ End of parameters
_0807EA94 
_0807E8E4_0 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x102a
.short 0x000e
@ End of parameters
_0807EA94 
Call 0x08063c15
Call 0x08094d71
SoundReq 0x0103
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
Call 0x08063c15
Call 0x08094d11
Wait 0x001e
Call 0x08094e0d
Wait 0x001e
_0807E8E4_1 
Call 0x0807f3f9
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x102b
.short 0x0000
@ End of parameters
_0807EA94 
_0807F034 0x000d
WaitPlayerAction8 
Call 0x0806dc3d
Call 0x080791bd
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf245
.short 0x0807
.short 0x000d
.short 0x0000
@ End of parameters
_0807E914 0x000000ff
Call 0x0807f5b1
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf29d
.short 0x0807
.short 0x49d6
.short 0x0800
@ End of parameters
Wait 0x00b7
_0807E914 0x00000000
Call 0x0807f5b1
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x102c
.short 0x0000
@ End of parameters
_0807EA94 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf29d
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Call 0x0806dc59
_0807F0B4 0x0004
CameraTargetPlayer 
Wait 0x000a
_0807E5F8 0x00000002
Call 0x08063c45
SetLocalFlag 0x00cd
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
