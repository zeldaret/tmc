SCRIPT_START gUnk_08013FE8
StartScript 
_0807EF80 0x0008
StopScript 
StopScript 
StartScript 
CheckLocalFlag 0x007d
JumpIf 0x0052
CheckLocalFlag 0x007a
JumpIfNot 0xffee
CheckInventory1 0x0003
JumpIfNot 0xffe6
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf6b5
.short 0x0807
.short 0x00d0
.short 0x0000
@ End of parameters
JumpIfNot 0xffd8
StopScript 
Call 0x0807f9a5
StartScript 
_0807E864 
Call 0x0807df29
StopScript 
_0807EB28 0x1508
_0807EA94 
StartPlayerScript 0x08010a14
WaitForSomething2 0x00000001
Call 0x0807df51
_0807E878 
Jump 0xffa6
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
