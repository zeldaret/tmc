SCRIPT_START gUnk_08013B70
SoundReq 0x01d3
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F238
.short 0x08bf
.short 0x0000
@ End of parameters
Call sub_08096028
Wait 0x003c
_0807E5F8 0x00020000
Call sub_0807F304
Wait 0x0078
WaitForSomething2 0x00040000
Call sub_080791BC
SCRIPT_END
.short 0x0000
