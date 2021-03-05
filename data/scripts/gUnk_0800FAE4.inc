SCRIPT_START gUnk_0800FAE4
StartScript 
SetEntityNonPlanarMovement 0x0100
StopScript 
Call sub_0807F584
.short 0x1406 @ _0807E078 with 4 parameters
.short 0x0012
.short 0x001a
.short 0x000e
.short 0x0002
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F4F8
.short 0x027c
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F464
.short 0x00e8
.short 0x0000
@ End of parameters
_0807EDD4 0x00e8, 0x0270
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call sub_080791BC
SCRIPT_END
