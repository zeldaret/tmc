SCRIPT_START gUnk_0800A1B4
StartScript 
_0807EF80 0x0007
_0807EF80 0x000b
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F994
.short 0xfff8
.short 0x0000
@ End of parameters
StopScript 
WaitForSomething 0x00000002
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
