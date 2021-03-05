SCRIPT_START gUnk_0800D278
StartScript 
_0807E9D4 
_0807EF80 0x000a
StopScript 
CheckInventory1 0x0041
JumpIf 0x000a
CheckLocalFlag 0x007e
JumpIf 0x005a
StartScript 
TestBit 0x00000001
JumpIf 0x002a
CheckEntityInteractType 
JumpIf 0x000e
Call sub_0806811C
StopScript 
Jump 0xffd4
StopScript 
_0807E864 
Call sub_08068190
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffbe
StopScript 
.short 0x0c28
.short 0x0004
.short 0x0000
