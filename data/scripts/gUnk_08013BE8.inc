SCRIPT_START gUnk_08013BE8
StartScript 
CheckLocalFlag 0x007a
JumpIf 0x003a
CheckInventory1 0x0003
JumpIf 0x0032
CheckInventory1 0x0002
JumpIfNot 0x0098
CheckInventory1 0x0040
JumpIfNot 0x0090
CheckInventory1 0x0041
JumpIfNot 0x0088
StopScript 
_0807EF80 0x0008
WaitForSomething2 0x00000004
_0807E908 0x0002
SoundReq 0x0134
Jump 0x000a
CheckLocalFlag 0x007c
JumpIf 0x0068
StartScript 
_0807EF80 0x0007
Call sub_0807F934
_0807EF80 0x000a
CallWithArg sub_080962F8, 0x00000000
CallWithArg sub_0807F8E8, 0x00000004
StopScript 
StopScript 
StartScript 
TestBit 0x00000008
JumpIf 0x002e
CheckEntityInteractType 
JumpIfNot 0xffee
StopScript 
_0807E864 
_0807EB74 
CheckLocalFlag 0x007d
JumpIf 0x000a
_0807EB28 0x1501
Jump 0x0006
_0807EB28 0x1506
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffc8
StopScript 
_0807E908 0x0004
_0807EF80 0x0008
_0807EF80 0x0006
SCRIPT_END
.short 0x0000