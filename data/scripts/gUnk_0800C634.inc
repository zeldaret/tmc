SCRIPT_START gUnk_0800C634
StartScript 
_0807EF80 0x000a
SetEntityNonPlanarMovement 0x0080
_0807EB44 0x0004
CheckLocalFlag 0x0082
JumpIfNot 0x0008
SetEntityPosition 0x0010, 0x0000
StopScript 
_0807E944 
_0807E864 
Call sub_0807DF28
CheckLocalFlag 0x0082
JumpIf 0x0022
CheckPlayerInRegion 0x00e8, 0x0028, 0x1810
JumpIfNot 0x0006
_0807EF80 0x000b
StartPlayerScript 0x0800c8c8
WaitForSomething2 0x00000001
_0807EF80 0x000a
CheckInventory1 0x0040
JumpIf 0x00a6
CheckInventory1 0x005b
JumpIf 0x0024
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f16
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
SetLocalFlag 0x0080
Call sub_0807DF50
_0807E878 
Jump 0xff9e
CheckLocalFlag 0x0081
JumpIf 0x0020
_0807EF80 0x0002
.short 0x085a
.short 0x1f1b
