SCRIPT_START gUnk_08013BA8
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095E7C
.short 0x4248
.short 0x0801
@ End of parameters
SoundReq 0x01d3
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F238
.short 0x08e3
.short 0x0000
@ End of parameters
Call sub_08096028
Wait 0x0078
_0807E5F8 0x00020000
Call sub_0807F304
Wait 0x0078
WaitForSomething2 0x00040000
Call sub_080791BC
SCRIPT_END
