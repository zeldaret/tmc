SCRIPT_START script_08012C68
StartScript 
_0807E9D4 
_0807EF80 0x0008
_0807E914 0x00000000
Call sub_0806DA04
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807E8E4_0 
TextboxNoOverlapFollow 0x111d
_0807EA94 
SetGlobalFlag 0x0022
_0807E878 
Jump 0xffe8
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
