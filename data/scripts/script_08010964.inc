SCRIPT_START script_08010964
CheckPlayerInRegion2 0x0808
JumpIfNot 0xfffa
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
StartPlayerScript script_08010A38
WaitForSomething2 0x00000001
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b63
_0807EA94 
Call sub_0807DF50
_0807E878 
Jump 0xffc6
StartScript 
StopScript 
CheckLocalFlag 0x00d1
JumpIf 0x0040
CheckPlayerInRegion2 0x0808
JumpIfNot 0xffee
StopScript 
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
StartPlayerScript script_08010A38
WaitForSomething2 0x00000001
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b64
_0807EA94 
Call sub_0807DF50
_0807E878 
Jump 0xffb8
_0807EF80 0x0006
SCRIPT_END
