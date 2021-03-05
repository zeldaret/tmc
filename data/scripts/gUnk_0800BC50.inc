SCRIPT_START gUnk_0800BC50
StartScript 
_0807EB44 0x0004
_0807E930 0x0008
Call 0x08054eb9
StopScript 
CheckRoomFlag 0x00ff
JumpIfNot 0xfffa
_0807E930 0x0000
Wait 0x001e
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlap 0x0e08
_0807EA94 
_0807EF80 0x000f
_0807E930 0x0008
Wait 0x00f0
Call 0x08054efd
_0807EB44 0x0000
_0807E930 0x0000
SetEntityNonPlanarMovement 0x0040
_0807EF80 0x000d
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf4f9
.short 0x0807
.short 0x0378
.short 0x0000
@ End of parameters
Wait 0x003c
_0807EF80 0x000c
Wait 0x003c
TextboxNoOverlap 0x0e09
_0807EA94 
Call 0x0807f159
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf4f9
.short 0x0807
.short 0x035c
.short 0x0000
@ End of parameters
Wait 0x001e
SoundReq 0x0188
_0807EF80 0x0008
Wait 0x0078
Call 0x08054969
SCRIPT_END
.short 0x0000
