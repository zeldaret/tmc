SCRIPT_START gUnk_0800AD54
StartScript 
SetEntityNonPlanarMovement 0x0080
StopScript 
_0807EC64 0x0020
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call sub_080791BC
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0007
_0807EF80 0x000b
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F3D8
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
WaitForSomething2 0x00000002
_0807EF80 0x0004
Wait 0x001e
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F3D8
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x0006
_0807EB44 0x0000
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F3D8
.short 0x0000
.short 0x0000
@ End of parameters
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F3D8
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x0014
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F3D8
.short 0x0000
.short 0x0000
@ End of parameters
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807E930 0x000c
Call sub_0807F2D4
Call sub_08094B94
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807E930 0x000f
Call sub_0807F2D4
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
.short 0x140c @ CallWithArg with 2 parameters
.word sub_080960C4
.short 0xaf18
.short 0x0800
@ End of parameters
_0807E930 0x0012
Call sub_0807F2D4
Wait 0x001e
_0807E5F8 0x00000020
SoundReq0x80100000 
Call CreateDust
Call sub_0806305C
Call sub_080630A4
_0807EF3C 0x0000, 0x0020
Wait 0x001e
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x0080
_0807EEF4 0x0000, 0xfff0
Wait 0x003c
_0807EEF4 0x0000, 0xfff0
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807EDD4 0x0088, 0x0040
_0807E5F8 0x00000004
_0807EF80 0x0006
SCRIPT_END
