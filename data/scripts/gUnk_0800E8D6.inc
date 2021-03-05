SCRIPT_START gUnk_0800E8D6
StartScript 
TextboxNoOverlapFollow 0x4503
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf855
.short 0x0807
.short 0x0032
.short 0x0001
@ End of parameters
StopScript 
_0807EA94 
HasRupees 0x0032
JumpIfNot 0x0018
ModRupees 0xffce
SetLocalFlag 0x0091
TextboxNoOverlapFollow 0x4508
_0807EA94 
Call 0x0806c599
SCRIPT_END
