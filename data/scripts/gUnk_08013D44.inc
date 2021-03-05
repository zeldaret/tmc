SCRIPT_START gUnk_08013D44
StartScript 
Call sub_0807F92C
_0807EF80 0x0008
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA04
.short 0x0004
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D54
.short 0x0001
.short 0x0000
@ End of parameters
SoundReq 0x01cd
_0807E5F8 0x10000000
Call sub_080791BC
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
