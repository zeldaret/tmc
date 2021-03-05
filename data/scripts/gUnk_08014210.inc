SCRIPT_START gUnk_08014210
StartScript 
_0807EF80 0x0007
_0807E930 0x0015
Call sub_0807F714
Call sub_0807F714
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F994
.short 0xfffc
.short 0x0000
@ End of parameters
StopScript 
WaitForSomething 0x00000020
Wait 0x0078
Call sub_0807F2D4
_0807EF80 0x0006
SCRIPT_END
