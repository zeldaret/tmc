SCRIPT_START gUnk_0800E4A4
StartScript 
Call sub_0807F354
StopScript 
CheckLocalFlag 0x007c
JumpIf 0x0046
CheckPlayerInRegion 0x0088, 0x00f8, 0x0820
JumpIfNot 0xfff6
StartScript 
_0807E864 
StopScript 
Call sub_0807F3F8
Wait 0x003c
TextboxNoOverlapFollow 0x160c
_0807EA94 
Wait 0x001e
TextboxNoOverlapFollow 0x160d
_0807EA94 
.byte 0x31
