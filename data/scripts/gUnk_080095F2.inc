SCRIPT_START gUnk_080095F2
CheckEntityInteractType 
JumpIfNot 0xffe8
_0807E864 
_0807EB74 
_0807EF80 0x0001
Call 0x0806be85
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
Call 0x0806bf45
JumpIf 0xfff8
StopScript 
Call 0x0806be3d
_0807EF80 0x000a
_0807EF80 0x0007
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0001
Call 0x0806bec9
_0807EA94 
JumpIfNot 0x0016
SoundReq 0x0111
SoundReq 0x0072
_0807F078 0x003c, 0x0002
Call 0x0806befd
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
Call 0x0807f9a5
Call 0x0807df29
StartPlayerScript 0x08009704
WaitForSomething2 0x00000001
SoundReq 0x0111
_0807EF80 0x0008
LoadRoomEntityList 0x080d9048
Wait 0x000f
SoundReq 0x0111
_0807EF80 0x0007
CheckGlobalFlag 0x0020
JumpIfNot 0xfffa
Call 0x0807df51
_0807E878 
Call 0x0808692d
SCRIPT_END
