SCRIPT_START gUnk_080157AC
CheckPlayerInRegion 0x01f8, 0x0310, 0x2020
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call 0x0807df51
_0807E878 
CheckPlayerInRegion 0x0250, 0x0230, 0x3040
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
Call 0x0807f3f9
Wait 0x003c
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
StartPlayerScript 0x080158f8
_0807F0B4 0x0001
SetEntityPositionRelative 0x02180248
CameraTargetEntity 
Call 0x0807f5c1
WaitForSomething2 0x00000010
_0807E5F8 0x00000008
WaitForSomething2 0x00000020
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
StartPlayerScript 0x08015918
WaitForSomething2 0x00000010
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
TextboxNoOverlapFollowPos
.short 0x1066
.short 0x0002
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call 0x0807df51
_0807E878 
Call 0x08066f95
_0807E5F8 0x00000008
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807EA94 
ComparePlayerAction 0x001c
JumpIf 0xfff8
_0807E864 
Call 0x0807df29
_0807F0B4 0x0002
SetEntityPositionRelative 0x02080248
CameraTargetEntity 
StartPlayerScript 0x08015938
WaitForSomething2 0x00000010
TextboxNoOverlapFollowPos
.short 0x106a
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000008
Wait 0x0078
_0807E8E4_2 
TextboxNoOverlapFollowPos
.short 0x1068
.short 0x0002
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
SetLocalFlag 0x008b
Call 0x08066fb9
Call 0x0807df51
_0807E878 
_0807F0B4 0x0004
CameraTargetPlayer 
_0807EF80 0x0006
SCRIPT_END
