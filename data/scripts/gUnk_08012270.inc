SCRIPT_START gUnk_08012270
StartScript 
_0807EB44 0x0004
Call sub_08061FD8
_0807E9D4 
_0807EF80 0x000a
StopScript 
StopScript 
StartScript 
CheckGlobalFlag 0x001e
JumpIfNot 0x000a
CheckInventory1 0x0015
JumpIf 0x0024
CheckEntityInteractType 
JumpIfNot 0xffe8
StopScript 
_0807EB74 
_0807E864 
Call sub_08061FD8
TextboxNoOverlapFollow 0x2302
_0807EA94 
_0807E878 
SetGlobalFlag 0x001e
Jump 0xffcc
StopScript 
StartScript 
CheckRoomFlag 0x0000
JumpIfNot 0x000a
CheckRoomFlag 0x0001
JumpIf 0x0020
CheckEntityInteractType 
JumpIfNot 0xffe8
StopScript 
_0807EB74 
_0807E864 
Call sub_08061FD8
TextboxNoOverlapFollow 0x2303
_0807EA94 
_0807E878 
Jump 0xffd0
StopScript 
_0807EB74 
_0807E864 
Call sub_08061FD8
_0807EF80 0x000b
Call sub_08061FB0
Call sub_08061F94
LoadRoomEntityList 0x080f2758
_0807EF80 0x0008
Wait 0x003c
SoundReq 0x0072
SetLocalFlag 0x0043
Wait 0x001e
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
