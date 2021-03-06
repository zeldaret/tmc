SCRIPT_START script_08009464
Wait 0x003c
_0807F0C8 0x0000, 0x0000
LoadRoomEntityList gUnk_080F9C58
Wait 0x003c
Call sub_0806D70C
Wait 0x003c
ClearLocalFlag 0x00ae
Call sub_0806D620
Wait 0x003c
WaitPlayerAction8 
_0807EB8C 
TextboxNoOverlap 0x1d0c
_0807EA94 
Wait 0x000a
Jump 0xfed6
.short 0x0000
StartScript 
Call sub_0806D7C4
SetEntityNonPlanarMovement 0x0080
StopScript 
Wait 0x003c
SetEntity0x20 0x00018000
_0807EE30 
JumpIfNot 0xfffc
Wait 0x003c
_0807EF80 0x0006
SCRIPT_END
