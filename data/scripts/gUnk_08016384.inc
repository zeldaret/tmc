SCRIPT_START gUnk_08016384
StartScript 
StopScript 
Jump 0xfffa
JumpIf 0xfff6
JumpIfNot 0xfff2
.short 0x0c06 @ _0807E078 with 2 parameters
.short 0xffee
.short 0xffec
@ End of parameters
JumpAbsolute gUnk_08016384
JumpAbsoluteIf gUnk_08016384
JumpAbsoluteIfNot gUnk_08016384
_0807E0E0 gUnk_08016384, gUnk_08016384
Call 0x08016384
.short 0x140c @ CallWithArg with 2 parameters
.word 0x08016384
.short 0x5678
.short 0x1234
@ End of parameters
LoadRoomEntityList gUnk_08016384
TestBit 0x00000001
CheckInventory1 0x0001
CheckInventory2 0x0001
.short 0x0411 @ HasRoomItemForSale with 0 parameters
CheckLocalFlag 0x0067
CheckLocalFlagByOffset 0x0100, 0x006b
CheckGlobalFlag 0x0013
CheckRoomFlag 0x0000
CheckPlayerInRegion 0x0000, 0x0000, 0x0000
CheckPlayerInRegion2 0x0000
CheckEntityInteractType 
_0807E30C 
HasRupees 0x00c8
_0807E3E8 
CheckKinstoneFused 0x0001
BuyItem 0x006c, 0x0000
_0807E48C 0x0020
_0807E4CC 0x00000000
_0807E4EC 0x00000000
_0807E514 0x00000000
CheckPlayerFlags 0x00000080
_0807E564 
EntityHasHeight 
ComparePlayerAction 0x0001
ComparePlayerAnimationState 0x0004
_0807E5F8 0x00000001
_0807E610 0x00000002
SetLocalFlag 0x0067
SetLocalFlagByOffset 0x0100, 0x0001
ClearLocalFlag 0x0067
SetGlobalFlag 0x0013
ClearGlobalFlag 0x0013
SetRoomFlag 0x0000
ClearRoomFlag 0x0000
Wait 0x001e
WaitForSomething 0x00000001
WaitForSomething2 0x00000002
WaitPlayerAction8 
WaitForPlayerAction0x17 
WaitFor_1 
WaitFor_2 
_0807E778 0x0004
_0807E788 0x0000ffff
