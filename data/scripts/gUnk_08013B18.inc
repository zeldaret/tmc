SCRIPT_START gUnk_08013B18
StartScript 
_0807EF80 0x0008
StopScript 
StartScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F6B4
.short 0x01c8
.short 0x0000
@ End of parameters
JumpIfNot 0xfff0
CheckInventory1 0x0006
JumpIfNot 0xffe8
CheckLocalFlag 0x0078
JumpIf 0xffe0
StopScript 
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
_0807EB28 0x1507
_0807EA94 
StartPlayerScript gUnk_08010A14
WaitForSomething2 0x00000001
Call sub_0807DF50
_0807E878 
Jump 0xffb2
.short 0x0000
