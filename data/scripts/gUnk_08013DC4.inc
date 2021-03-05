SCRIPT_START gUnk_08013DC4
StartScript 
Call 0x0807f92d
_0807EF80 0x0008
CallWithArg
.short 0xda05
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
CallWithArg
.short 0x5d55
.short 0x0809
.short 0x0003
.short 0x0000
@ End of 4 parameters
SoundReq 0x01cd
_0807E5F8 0x40000000
Call 0x080791bd
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
