SCRIPT_START gUnk_08013114
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EF80 0x0012
Call 0x0807f349
StopScript 
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000c
Call 0x0806aee5
Jump 0xffee
_0807E864 
StopScript 
_0807EB74 
Call 0x0806aed9
CallWithArg
.short 0xaa51
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807EA94 
CallWithArg
.short 0xaa51
.short 0x0806
.short 0x0001
.short 0x0000
@ End of 4 parameters
_0807EA94 
CallWithArg
.short 0xaa51
.short 0x0806
.short 0x0002
.short 0x0000
@ End of 4 parameters
_0807EA94 
JumpIf 0x0008
_0807E878 
Jump 0xffb4
_0807E914 0x00000403
Call 0x0807f421
_0807E878 
Jump 0xffa2
StartScript 
CheckLocalFlag 0x0062
JumpIfNot 0x000a
_0807EF80 0x0006
StopScript 
SCRIPT_END
