SCRIPT_START gUnk_08015C7C
StartScript 
SetEntityNonPlanarMovement 0x0080
StopScript 
_0807EF80 0x0001
_0807EDD4 0x0168, 0x0058
_0807EB44 0x0004
_0807EF80 0x0000
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf239
.short 0x0807
.short 0x03c5
.short 0x0000
@ End of parameters
Call 0x0807f305
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1318
.short 0x000c
@ End of parameters
_0807EA94 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf239
.short 0x0807
.short 0x03c9
.short 0x0000
@ End of parameters
Call 0x0807f305
_0807EB44 0x0004
_0807EF80 0x0000
_0807E5F8 0x00000100
Call 0x080791bd
SCRIPT_END
