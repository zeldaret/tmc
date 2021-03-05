SCRIPT_START gUnk_0800FD0C
CheckLocalFlag 0x00cd
JumpIf 0x003e
WaitForSomething2 0x00000010
CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
JumpIfNot 0xfff6
CheckLocalFlag 0x00cd
JumpIf 0x0030
_0807E864 
Call 0x0807f9a5
TextboxNoOverlapFollowPos
.short 0x2506
.short 0x0000
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800fd80
WaitForSomething2 0x00000008
_0807E878 
Jump 0xffcc
CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
TextboxNoOverlapFollowPos
.short 0x106c
.short 0x0000
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800fd80
WaitForSomething2 0x00000008
_0807E878 
Jump 0xffd4
.short 0x0000
SetEntityNonPlanarMovement 0x0080
_0807EC64 0x0020
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000008
Call 0x080791bd
SCRIPT_END
.short 0x0000
