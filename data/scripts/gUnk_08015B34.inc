SCRIPT_START gUnk_08015B34
StopScript 
StartScript 
CheckLocalFlag 0x008b
JumpIf 0x0040
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf6b5
.short 0x0807
.short 0x0318
.short 0x0000
@ End of parameters
JumpIfNot 0xffe8
StopScript 
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x2506
.short 0x0002
@ End of parameters
_0807EA94 
StartPlayerScript 0x08015b84
WaitForSomething2 0x00000004
Call 0x0807df51
_0807E878 
Jump 0xffb8
_0807EF80 0x0006
SCRIPT_END
