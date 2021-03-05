SCRIPT_START gUnk_08008FC0
_0807F078 0x0001, 0x0001
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F918
.short 0x0001
.short 0x0000
@ End of parameters
SoundReq 0x0109
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F238
.short 0x045f
.short 0x0000
@ End of parameters
Call sub_0807F304
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x0501
.short 0x000e
@ End of parameters
_0807EA94 
_0807E5F8 0x00000020
Call sub_080791BC
SCRIPT_END
.short 0x0000
