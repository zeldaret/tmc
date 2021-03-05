SCRIPT_START gUnk_0800ACBC
StartScript 
SetEntityNonPlanarMovement 0x0100
StopScript 
_0807EDD4 0x0088, 0x0080
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call 0x080791bd
.short 0x0000
StartScript 
Call 0x08094be1
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf239
.short 0x0807
.short 0x045b
.short 0x0000
@ End of parameters
SoundReq 0x0109
StopScript 
Call 0x0807f305
Wait 0x005a
_0807E5F8 0x00000008
StartScript 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf6f9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf239
.short 0x0807
.short 0x08e4
.short 0x0000
@ End of parameters
StopScript 
Call 0x0807f305
_0807EB44 0x0004
_0807EF80 0x0000
Wait 0x003c
_0807EB44 0x0002
_0807EF80 0x0000
Wait 0x0004
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call 0x080791bd
.short 0x0000
StartScript 
SetEntityNonPlanarMovement 0x0080
StopScript 
_0807EC64 0x0020
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call 0x080791bd
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0007
_0807EF80 0x000b
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
WaitForSomething2 0x00000002
_0807EF80 0x0004
Wait 0x001e
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x0006
_0807EB44 0x0000
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x0014
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807E930 0x000c
Call 0x0807f2d5
Call 0x08094b95
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807E930 0x000f
Call 0x0807f2d5
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
.short 0x140c @ CallWithArg with 4 parameters
.short 0x60c5
.short 0x0809
.short 0xaf18
.short 0x0800
@ End of parameters
_0807E930 0x0012
Call 0x0807f2d5
Wait 0x001e
_0807E5F8 0x00000020
SoundReq0x80100000 
Call 0x080a29bd
Call 0x0806305d
Call 0x080630a5
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
