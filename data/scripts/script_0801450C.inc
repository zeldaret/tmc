SCRIPT_START script_0801450C
StartScript 
_0807E9D4 
_0807EB44 0x0000
SetEntityNonPlanarMovement 0x01c0
_0807EF80 0x000a
StopScript 
_0807E864 
Call sub_0807DF28
Call sub_0806E20C
_0807EA94 
Call sub_0806E23C
ClearLocalFlag 0x0093
ClearLocalFlag 0x0092
Call sub_0807DF50
Jump 0xffb8
.short 0x0000
StartScript 
StopScript 
CheckPlayerInRegion 0x0078, 0x0088, 0x0810
JumpIfNot 0xfff6
CheckRoomFlag 0x0000
JumpIfNot 0xffee
_0807E864 
_0807EB28 0x4217
_0807EA94 
StartPlayerScript script_08014588
Wait 0x0010
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
_0807E878 
Jump 0xffca
SCRIPT_END
.short 0x0000
