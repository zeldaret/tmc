SCRIPT_START gUnk_0800D1E0
_0807F078 0x0002, 0x0001
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F918
.short 0x0002
.short 0x0000
@ End of parameters
SoundReq 0x0109
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F238
.short 0x01e2
.short 0x0000
@ End of parameters
Call sub_0807F304
TextboxNoOverlap 0x0502
_0807EA94 
_0807E5F8 0x00000008
Call sub_080791BC
SCRIPT_END
