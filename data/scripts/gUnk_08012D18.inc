SCRIPT_START gUnk_08012D18
StopScript 
StartScript 
CheckGlobalFlag 0x0014
JumpIfNot 0xfff6
CheckLocalFlagByOffset 0x0200, 0x008d
JumpIf 0x003c
CheckPlayerInRegion 0x0000, 0x01a8, 0x2010
JumpIfNot 0xffe0
StopScript 
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
_0807EB28 0x111a
_0807EA94 
StartPlayerScript 0x08010a38
WaitForSomething2 0x00000001
Call sub_0807DF50
_0807E878 
Jump 0xffb2
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
