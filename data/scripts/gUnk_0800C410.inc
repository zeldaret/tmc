SCRIPT_START gUnk_0800C410
StartScript 
Call 0x0806d661
SetEntityNonPlanarMovement 0x0080
StopScript 
WaitForSomething2 0x00000004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf4f9
.short 0x0807
.short 0x0048
.short 0x0000
@ End of parameters
Call 0x0806d66d
Wait 0x000f
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf4f9
.short 0x0807
.short 0x0068
.short 0x0000
@ End of parameters
Call 0x0806d67d
_0807F0C8 0x001e, 0x0000
SoundReq 0x010b
_0807E5F8 0x00000001
SCRIPT_END
.short 0x0000
