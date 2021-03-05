SCRIPT_START gUnk_08015FC0
StartScript 
Call 0x0806db85
CheckKinstoneFused 0x0009
JumpIf 0x005a
_0807EA88 0x0009
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda05
.short 0x0806
.short 0x0007
.short 0x0000
@ End of parameters
_0807EF80 0x000a
StopScript 
_0807EA4C 
_0807E9F0 
_0807E864 
CheckKinstoneFused 0x0009
JumpIf 0x000e
Call 0x0807df51
_0807E878 
Jump 0xffe8
_0807F0C8 0xffff, 0x0000
