SCRIPT_START gUnk_08015390
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0007
StopScript 
_0807E930 0x001f
Call sub_0806D944
WaitForSomething2 0x00000008
_0807E930 0x0010
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1314
.short 0x000c
@ End of parameters
_0807EA94 
_0807E930 0x0018
Call sub_0806D8A0
_0807EE30 
JumpIfNot 0xfffc
_0807E930 0x001f
StartPlayerScript gUnk_08015384
Call sub_0806D9A4
_0807EF80 0x0008
Wait 0x0078
_0807E5F8 0x00000010
_0807EF80 0x0006
SCRIPT_END
