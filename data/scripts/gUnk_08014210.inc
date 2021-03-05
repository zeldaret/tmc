SCRIPT_START gUnk_08014210
StartScript 
_0807EF80 0x0007
_0807E930 0x0015
Call 0x0807f715
Call 0x0807f715
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf995
.short 0x0807
.short 0xfffc
.short 0x0000
@ End of parameters
StopScript 
WaitForSomething 0x00000020
Wait 0x0078
Call 0x0807f2d5
_0807EF80 0x0006
SCRIPT_END
