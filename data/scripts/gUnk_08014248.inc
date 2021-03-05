SCRIPT_START gUnk_08014248
TestBit 0x00020000
JumpIf 0x0014
Wait 0x0008
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095EAC
.short 0x0000
.short 0x0000
@ End of parameters
Jump 0xffe6
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095EAC
.short 0x0001
.short 0x0000
@ End of parameters
Jump 0xfff4
.short 0x0000
StartScript 
_0807EF80 0x0008
StopScript 
CheckLocalFlag 0x0078
JumpIfNot 0xfffa
StartScript 
Call sub_0807F934
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA04
.short 0x0008
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x0647
.short 0x000c
@ End of parameters
_0807EA94 
_0807E878 
Jump 0xffec
.short 0x0000
