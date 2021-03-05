SCRIPT_START gUnk_0800D7DC
StartScript 
Call sub_0807F360
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
Call sub_0806CA5C
SetEntity0x20 0x00040000
SoundReq 0x00f5
CallWithArg sub_0807F8D0, 0xffffe000
Call sub_0807F8BC
JumpIf 0xffee
_0807E5F8 0x00000004
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
.short 0x0401
.short 0x0402
.short 0x0815
.short 0x0000
.short 0x0805
.short 0xfffa
.short 0x0443
.short 0x0c0b
.short 0xdf29
.short 0x0807
.short 0x0831
.short 0x003c
.short 0x0c0b
.short 0xdf51
.short 0x0807
.short 0x0444
.short 0x0879
.short 0x0006
.short 0xffff
.short 0x0000
