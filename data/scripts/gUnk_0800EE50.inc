SCRIPT_START gUnk_0800EE50
StartScript 
_0807E9D4 
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x0016
TestBit 0x00000001
JumpIf 0x0068
Call sub_0806AEE4
Jump 0xffe4
StopScript 
_0807E864 
Call sub_0807DF28
CheckLocalFlag 0x00ae
JumpIf 0x0078
.short 0x0831
.short 0x000a
