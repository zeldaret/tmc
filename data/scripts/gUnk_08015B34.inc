SCRIPT_START gUnk_08015B34
StopScript 
StartScript 
CheckLocalFlag 0x008b
JumpIf 0x0040
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F6B4
.short 0x0318
.short 0x0000
@ End of parameters
JumpIfNot 0xffe8
StopScript 
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x2506
.short 0x0002
@ End of parameters
_0807EA94 
StartPlayerScript gUnk_08015B84
WaitForSomething2 0x00000004
Call sub_0807DF50
_0807E878 
Jump 0xffb8
_0807EF80 0x0006
SCRIPT_END
