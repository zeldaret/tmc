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
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
_0807E5F8 0x00000004
_0807E930 0x000c
WaitForSomething2 0x00000001
_0807E5F8 0x00000004
_0807E930 0x000b
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_08068190
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffe8
StartScript 
Call sub_08068884
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0000
StopScript 
StopScript 
StartScript 
Call sub_08068910
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
_0807EB74 
_0807E914 0x00000000
Call sub_0806C028
TextboxNoOverlapFollow 0x1219
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffd0
StartScript 
Call sub_08068104
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000e
Call sub_0806811C
StopScript 
Jump 0xffee
StopScript 
_0807E864 
Call sub_08068190
_0807EA94 
Wait 0x000f
CheckLocalFlag 0x007f
JumpIf 0x005c
CheckLocalFlag 0x007e
JumpIfNot 0x0054
_0807EF80 0x000b
SetEntityNonPlanarMovement 0x0100
CheckPlayerInRegion 0x0090, 0x0130, 0x0810
JumpIfNot 0x000e
StartPlayerScript gUnk_0800D3EC
WaitForSomething2 0x00000001
_0807EB44 0x0002
_0807E930 0x0005
_0807EDD4 0x00a0, 0x0130
_0807EB44 0x0006
_0807E930 0x0003
_0807E914 0x00000004
Call sub_080681D8
SoundReq 0x00cd
Wait 0x001e
_0807EF80 0x000a
SetLocalFlag 0x007f
_0807E878 
Jump 0xff76
.short 0x0000
