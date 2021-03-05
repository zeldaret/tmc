SCRIPT_START gUnk_0800DDD0
StartScript 
SetEntityNonPlanarMovement 0x0100
StopScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F4F8
.short 0x00a0
.short 0x0000
@ End of parameters
_0807EDD4 0x0078, 0x00a0
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000004
Call sub_080791BC
SCRIPT_END
.short 0x0000
