SCRIPT_START gUnk_08015390
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0007
StopScript 
_0807E930 0x001f
Call 0x0806d945
WaitForSomething2 0x00000008
_0807E930 0x0010
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1314
.short 0x000c
@ End of parameters
_0807EA94 
_0807E930 0x0018
Call 0x0806d8a1
_0807EE30 
JumpIfNot 0xfffc
_0807E930 0x001f
StartPlayerScript 0x08015384
Call 0x0806d9a5
_0807EF80 0x0008
Wait 0x0078
_0807E5F8 0x00000010
_0807EF80 0x0006
SCRIPT_END
