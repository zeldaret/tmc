SCRIPT_START gUnk_080095F2
CheckEntityInteractType 
JumpIfNot 0xffe8
_0807E864 
_0807EB74 
_0807EF80 0x0001
Call sub_0806BE84
_0807EA94 
JumpIfNot 0x0018
SoundReq 0x0109
_0807F088 0x003c
TextboxNoOverlapFollow 0x053c
WaitPlayerAction8 
_0807EA94 
_0807F078 0x003c, 0x0001
_0807E878 
_0807EF80 0x0000
Jump 0xffb4
StartScript 
_0807EF80 0x000b
_0807EF80 0x0008
StopScript 
StopScript 
StartScript 
CheckGlobalFlag 0x0020
JumpIfNot 0xfff6
StopScript 
Call sub_0806BF44
JumpIf 0xfff8
StopScript 
Call sub_0806BE3C
_0807EF80 0x000a
_0807EF80 0x0007
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0001
Call sub_0806BEC8
_0807EA94 
JumpIfNot 0x0016
SoundReq 0x0111
SoundReq 0x0072
_0807F078 0x003c, 0x0002
Call sub_0806BEFC
_0807E878 
_0807EF80 0x0000
Jump 0xffca
StartScript 
_0807EF80 0x0007
Jump 0x005c
CheckGlobalFlag 0x0020
JumpIf 0x0054
StopScript 
CheckPlayerInRegion 0x0188, 0x01c0, 0x1020
JumpIfNot 0xfff6
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
StartPlayerScript gUnk_08009704
WaitForSomething2 0x00000001
SoundReq 0x0111
_0807EF80 0x0008
LoadRoomEntityList 0x080d9048
Wait 0x000f
SoundReq 0x0111
_0807EF80 0x0007
CheckGlobalFlag 0x0020
JumpIfNot 0xfffa
Call sub_0807DF50
_0807E878 
Call sub_0808692C
SCRIPT_END
