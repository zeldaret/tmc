SCRIPT_START gUnk_0800A590
StartScript 
SetEntityNonPlanarMovement 0x0080
SetEntity0x20 0x00000000
_0807EF80 0x0008
_0807EB44 0x0000
Call 0x0807f715
MoveEntityToPlayer 
CallWithArg
.short 0xf98d
.short 0x0807
.short 0x0000
.short 0xfff0
@ End of 4 parameters
StopScript 
_0807E930 0x0023
WaitForSomething2 0x00000010
CallWithArg
.short 0xf6e9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
_0807EF80 0x0007
SoundReq 0x0142
_0807E610 0x00000800
CallWithArg
.short 0x60c5
.short 0x0809
.short 0xa65c
.short 0x0800
@ End of 4 parameters
Wait 0x003c
_0807EDD4 0x0088, 0x0068
Wait 0x0078
_0807E5F8 0x00000800
SoundReq 0x0143
_0807EF3C 0x0000, 0x0020
_0807E930 0x001f
_0807E5F8 0x00000200
WaitForSomething2 0x00000010
Wait 0x0078
_0807EF80 0x0004
Wait 0x003c
_0807E5F8 0x00000200
Wait 0x0001
_0807EF80 0x0008
WaitForSomething2 0x00000010
_0807EF80 0x0006
SCRIPT_END
