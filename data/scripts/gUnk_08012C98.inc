SCRIPT_START gUnk_08012C98
CheckGlobalFlag 0x0014
JumpIfNot 0xfffa
StopScript 
StartScript 
CheckPlayerInRegion 0x0398, 0x03b0, 0x2040
JumpIfNot 0xfff2
_0807E564 
JumpIf 0x001e
StopScript 
_0807E864 
Call sub_0807DF28
_0807EB28 0x2202
_0807EA94 
SetLocalFlag 0x003b
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
