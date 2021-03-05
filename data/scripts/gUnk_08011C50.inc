SCRIPT_START gUnk_08011C50
StartScript 
_0807E864 
StopScript 
Wait 0x003c
.short 0x140c @ CallWithArg with 4 parameters
.short 0xc2a1
.short 0x0806
.short 0x0001
.short 0x0000
@ End of parameters
WaitFor_2 
Wait 0x003c
_0807EF80 0x0014
Wait 0x001e
_0807E5F8 0x00000004
SCRIPT_END
.short 0x0000
