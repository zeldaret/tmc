SCRIPT_START gUnk_08014CDC
StartScript 
SetEntityNonPlanarMovement 0x0180
_0807EF80 0x000a
Call 0x08066d05
Call 0x08066d15
SetEntityPositionRelative 0x018001e8
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
WaitForSomething2 0x00000001
Call 0x08066e09
_0807E864 
TextboxNoOverlapFollowPos
.short 0x1010
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000002
StopScript 
StartScript 
CheckPlayerInRegion 0x01d8, 0x0160, 0x3050
JumpIfNot 0xfff2
StopScript 
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
TextboxNoOverlap 0x1012
_0807EA94 
_0807EC64 0x0040
_0807EB44 0x0004
Call 0x08066e09
SetEntityPositionRelative 0x00c801f8
Call 0x0807df51
_0807E878 
CallWithArg
.short 0xf6b5
.short 0x0807
.short 0x00e8
.short 0x0000
@ End of 4 parameters
JumpIf 0xfff4
_0807E864 
Call 0x0807df29
TextboxNoOverlap 0x1013
_0807EA94 
_0807EC64 0x0040
_0807EB44 0x0004
_0807EF80 0x0000
SetEntityPositionRelative 0x002801e8
Call 0x0807df51
_0807E878 
CheckPlayerInRegion 0x01f8, 0x0028, 0x2040
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
TextboxNoOverlap 0x1014
_0807EA94 
_0807EC64 0x0018
SetLocalFlag 0x006d
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
