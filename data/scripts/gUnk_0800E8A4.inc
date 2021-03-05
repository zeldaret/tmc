SCRIPT_START gUnk_0800E8A4
StartScript 
TextboxNoOverlapFollow 0x4504
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F854
.short 0x00c8
.short 0x0001
@ End of parameters
StopScript 
_0807EA94 
HasRupees 0x00c8
JumpIfNot 0x004a
ModRupees 0xff38
SetLocalFlag 0x0091
TextboxNoOverlapFollow 0x4508
_0807EA94 
Call sub_0806C588
SCRIPT_END
