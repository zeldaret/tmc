SCRIPT_START gUnk_0800B7C4
StartScript 
SetEntityNonPlanarMovement 0x0100
StopScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F6B4
.short 0x0090
.short 0x0000
@ End of parameters
JumpIfNot 0x0024
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F464
.short 0x0078
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F4F8
.short 0x0090
.short 0x0000
@ End of parameters
_0807E8E4_0 
_0807EF80 0x0000
_0807E5F8 0x00000004
SCRIPT_END
