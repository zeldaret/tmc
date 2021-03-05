SCRIPT_START gUnk_08013D84
StartScript 
Call 0x0807f92d
_0807EF80 0x0008
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda05
.short 0x0806
.short 0x0004
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
.short 0x140c @ CallWithArg with 4 parameters
.short 0x5d55
.short 0x0809
.short 0x0002
.short 0x0000
@ End of parameters
SoundReq 0x01cd
_0807E5F8 0x20000000
Call 0x080791bd
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
