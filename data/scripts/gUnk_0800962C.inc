SCRIPT_START gUnk_0800962C
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
.short 0x0803
.short 0xffca
