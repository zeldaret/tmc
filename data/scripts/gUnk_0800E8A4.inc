SCRIPT_START gUnk_0800E8A4
StartScript 
TextboxNoOverlapFollow 0x4504
CallWithArg
.short 0xf855
.short 0x0807
.short 0x00c8
.short 0x0001
@ End of 4 parameters
StopScript 
_0807EA94 
HasRupees 0x00c8
JumpIfNot 0x004a
ModRupees 0xff38
SetLocalFlag 0x0091
TextboxNoOverlapFollow 0x4508
_0807EA94 
Call 0x0806c589
SCRIPT_END
