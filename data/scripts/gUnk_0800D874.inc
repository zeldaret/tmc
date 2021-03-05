SCRIPT_START gUnk_0800D874
StartScript 
Call sub_0807F934
_0807EF80 0x0008
_0807E914 0x00000001
Call sub_0806DA04
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
CheckLocalFlag 0x0045
JumpIf 0x000e
StartPlayerScript 0x0800d92c
WaitForSomething2 0x00000001
_0807E8E4_0 
TextboxNoOverlap 0x1324
_0807EA94 
CheckInventory1 0x0017
JumpIf 0x0018
CheckLocalFlag 0x0045
JumpIf 0x0010
LoadRoomEntityList 0x080e3830
CheckLocalFlag 0x0045
JumpIfNot 0xfffa
Call sub_0807DF50
_0807E878 
Jump 0xffae
.short 0x0000
