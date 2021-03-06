SCRIPT_START gUnk_08013FE8
StartScript 
_0807EF80 0x0008
StopScript 
StopScript 
StartScript 
CheckLocalFlag 0x007d
JumpIf 0x0052
CheckLocalFlag 0x007a
JumpIfNot 0xffee
CheckInventory1 0x0003
JumpIfNot 0xffe6
CallWithArg sub_0807F6B4, 0x000000d0
JumpIfNot 0xffd8
StopScript 
Call sub_0807F9A4
StartScript 
_0807E864 
Call sub_0807DF28
StopScript 
_0807EB28 0x1508
_0807EA94 
StartPlayerScript gUnk_08010A14
WaitForSomething2 0x00000001
Call sub_0807DF50
_0807E878 
Jump 0xffa6
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
