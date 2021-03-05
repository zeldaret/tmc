SCRIPT_START gUnk_0800D76C
StartScript 
Call 0x0807f361
_0807EF80 0x000b
SetEntityNonPlanarMovement 0x0200
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
WaitForSomething2 0x00000008
_0807EF80 0x0004
Wait 0x003c
SoundReq 0x0123
CallWithArg
.short 0xf465
.short 0x0807
.short 0x01e0
.short 0x0000
@ End of 4 parameters
_0807EDD4 0x01e0, 0x01d8
_0807EB44 0x0002
_0807EF80 0x0000
_0807E5F8 0x00000010
SoundReq 0x007c
_0807EF3C 0x0180, 0x0030
SoundReq 0x007c
_0807EF3C 0x0180, 0x0030
_0807EB44 0x0002
_0807EF80 0x0001
WaitForSomething2 0x00000008
Jump 0x0032
StartScript 
Call 0x0807f361
_0807EF80 0x000b
SetEntityPositionRelative 0x01d80268
SetEntityNonPlanarMovement 0x0100
StopScript 
WaitForSomething2 0x00000002
_0807EDD4 0x01f0, 0x01d8
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x0100
_0807EEF4 0x0000, 0xffe0
_0807EF80 0x000e
Call 0x0806ca5d
SetEntity0x20 0x00040000
SoundReq 0x00f5
CallWithArg
.short 0xf8d1
.short 0x0807
.short 0xe000
.short 0xffff
@ End of 4 parameters
Call 0x0807f8bd
JumpIf 0xffee
_0807E5F8 0x00000004
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
