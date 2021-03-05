SCRIPT_START gUnk_0800BD78
StartScript 
_0807EB44 0x0000
_0807E930 0x0000
_0807EF80 0x0008
SetEntityNonPlanarMovement 0x0080
Call 0x0807f349
StopScript 
WaitForSomething2 0x00000002
_0807EF80 0x0007
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf4f9
.short 0x0807
.short 0x0270
.short 0x0000
@ End of parameters
Wait 0x001e
TextboxNoOverlap 0x0e0b
_0807EA94 
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x0100
_0807EDD4 0x0088, 0x0228
Wait 0x000f
_0807E5F8 0x00000004
_0807EF80 0x000f
_0807E930 0x0008
Wait 0x00b4
.short 0x140c @ CallWithArg with 4 parameters
.short 0xbf39
.short 0x0804
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x00b4
.short 0x140c @ CallWithArg with 4 parameters
.short 0xbf39
.short 0x0804
.short 0x0003
.short 0x0000
@ End of parameters
_0807EB44 0x0004
_0807E930 0x0000
Wait 0x003c
_0807EB44 0x0006
_0807E5F8 0x00000004
SetEntityNonPlanarMovement 0x0080
_0807EEF4 0x0000, 0xffe0
Call 0x08054969
SCRIPT_END
