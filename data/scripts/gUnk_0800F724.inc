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
Call sub_0807DF28
SetEntityPositionRelative 0x014800c8
Call sub_0807F844
_0807E778 0x0002
DoFade6 
WaitFor_2 
StartPlayerScript gUnk_0800FA54
_0807E5F8 0x00000002
_0807F0B4 0x0001
SetEntityPositionRelative 0x021800c8
Call sub_0807F5C0
Wait 0x0064
_0807F0B4 0x0002
SetEntityPositionRelative 0x036800c8
Call sub_0807F5C0
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
Call sub_0807DF50
_0807E878 
_0807E5F8 0x00000010
WaitForSomething2 0x00000004
_0807E864 
Call sub_0807DF28
StartPlayerScript gUnk_0800FA78
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
Call sub_0807DF50
_0807E878 
WaitForSomething2 0x00000004
_0807E864 
Call sub_0807DF28
StartPlayerScript gUnk_0800FA9C
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
Call sub_0807DF50
_0807E878 
WaitForSomething2 0x00000004
_0807E864 
Call sub_0807DF28
StartPlayerScript gUnk_0800FAC0
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
Call sub_0807DF50
_0807E878 
WaitForSomething2 0x00000004
_0807E864 
Call sub_0807DF28
Call sub_08063C5C
SoundReq 0x00e2
Wait 0x001e
_0807E8E4_0 
Call sub_0807F3F8
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1021
.short 0x000e
@ End of parameters
_0807EA94 
StartPlayerScript gUnk_0800FAE4
SetEntityPositionRelative 0x025800f0
_0807F0B4 0x0001
CameraTargetEntity 
Wait 0x001e
Call sub_08063C2C
WaitForSomething2 0x00000001
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1022
.short 0x000e
@ End of parameters
_0807EA94 
_0807E8E4_0 
Call sub_08063C14
Call sub_08094CDC
Wait 0x001e
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1023
.short 0x000e
@ End of parameters
_0807EA94 
Call sub_08063C14
Call sub_08094DD8
Wait 0x001e
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1024
.short 0x000e
@ End of parameters
_0807EA94 
Call sub_08063C14
Call sub_08094D34
Wait 0x001e
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1025
.short 0x000e
@ End of parameters
_0807EA94 
Call sub_08063C5C
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1026
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807E8E4_1 
Call sub_08063C2C
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1027
.short 0x0000
@ End of parameters
_0807EA94 
Call sub_08063C74
Wait 0x003c
Call sub_08063C14
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
Call sub_08063C14
Call sub_08094D70
SoundReq 0x0103
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
Call sub_08063C14
Call sub_08094D10
Wait 0x001e
Call sub_08094E0C
Wait 0x001e
_0807E8E4_1 
Call sub_0807F3F8
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x102b
.short 0x0000
@ End of parameters
_0807EA94 
_0807F034 0x000d
WaitPlayerAction8 
Call sub_0806DC3C
Call sub_080791BC
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F244
.short 0x000d
.short 0x0000
@ End of parameters
_0807E914 0x000000ff
Call sub_0807F5B0
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F29C
.short 0x49d6
.short 0x0800
@ End of parameters
Wait 0x00b7
_0807E914 0x00000000
Call sub_0807F5B0
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x102c
.short 0x0000
@ End of parameters
_0807EA94 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F29C
.short 0x0000
.short 0x0000
@ End of parameters
Call sub_0806DC58
_0807F0B4 0x0004
CameraTargetPlayer 
Wait 0x000a
_0807E5F8 0x00000002
Call sub_08063C44
SetLocalFlag 0x00cd
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
