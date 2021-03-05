SCRIPT_START gUnk_0801550C
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0007
_0807EB44 0x0000
Call 0x0807f339
StopScript 
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
WaitForSomething2 0x00008000
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
_0807EDD4 0x0078, 0x00b8
_0807EB44 0x0000
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807E5F8 0x00010000
WaitForSomething2 0x00008000
_0807EF80 0x000d
_0807EB44 0x0000
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
_0807EDD4 0x0078, 0x00c8
_0807E5F8 0x00010000
WaitForSomething2 0x00008000
_0807EB44 0x0000
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807EF80 0x0010
Wait 0x0028
SoundReq 0x0125
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
Wait 0x000a
SoundReq 0x0125
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
Wait 0x000a
_0807EF80 0x0010
_0807E5F8 0x00010000
WaitForSomething2 0x00008000
_0807E930 0x000d
Call 0x0807f2d5
_0807E5F8 0x00010000
Wait 0x003c
_0807EF80 0x0005
Wait 0x003c
CheckRoomFlag 0x0001
JumpIfNot 0xfffa
_0807EF80 0x0006
SCRIPT_END
