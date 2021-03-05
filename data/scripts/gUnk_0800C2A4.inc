SCRIPT_START gUnk_0800C2A4
StartScript 
_0807EB44 0x0000
_0807E930 0x0000
_0807EF80 0x0008
SetEntityNonPlanarMovement 0x0080
Call sub_0807F348
StopScript 
WaitForSomething2 0x00000002
_0807EF80 0x0007
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F4F8
.short 0x0128
.short 0x0000
@ End of parameters
Wait 0x001e
TextboxNoOverlap 0x0e17
_0807EA94 
_0807E5F8 0x0000007c
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x0100
_0807EDD4 0x0098, 0x00e8
_0807EDD4 0x00c8, 0x00e8
_0807EDD4 0x00c8, 0x00d8
Wait 0x000f
_0807E5F8 0x0000007c
_0807EF80 0x000f
_0807E930 0x0008
Wait 0x00b4
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0804BF38
.short 0x0002
.short 0x0000
@ End of parameters
Wait 0x00b4
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0804BF38
.short 0x0005
.short 0x0000
@ End of parameters
_0807EB44 0x0004
_0807E930 0x0000
Wait 0x003c
_0807E5F8 0x0000007c
SetEntityNonPlanarMovement 0x0080
_0807EEF4 0x0000, 0xffe0
Call sub_08054968
SCRIPT_END
