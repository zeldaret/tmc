SCRIPT_START gUnk_08009698
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
Call sub_0807DF50
_0807E878 
Call sub_0808692C
SCRIPT_END
