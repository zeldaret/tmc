SCRIPT_START gUnk_08015FC0
StartScript 
Call sub_0806DB84
CheckKinstoneFused 0x0009
JumpIf 0x005a
_0807EA88 0x0009
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA04
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
Call sub_0807DF50
_0807E878 
Jump 0xffe8
_0807F0C8 0xffff, 0x0000
