@ Syrup
SCRIPT_START script_Syrup
	BeginBlock
	_0807E9D4
	_0807E930 0x0008
script_080160B0:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_080160E0
	CheckSyncFlagAndClear 0x00000008
	JumpIf script_080160D2
	CheckSyncFlagAndClear 0x00000010
	JumpIf script_080160D2
	Jump script_080160B0
script_080160D2:
	EndBlock
	_0807EB74
	WaitForSyncFlagAndClear 0x00000004
	Jump script_080160B0
script_080160E0:
	_0807E864
	_0807EB74
	EndBlock
	HasRoomItemForSale
	JumpIfNot script_0801611A
	MessageFromTarget 0x2d07
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_08016132
	BuyItem 0x0000, 0x0000
	JumpIf script_0801610C
	MessageFromTarget 0x2d0b
	WaitUntilTextboxCloses
	Jump script_08016132
script_0801610C:
	WaitPlayerGetItem
.ifndef EU
	_0807EB8C 
	MessageFromTarget 0x2d0d
.else
	MessageFromTarget 0x2d08
.endif
	WaitUntilTextboxCloses
	Jump script_08016132
script_0801611A:
	CheckKinstoneFused 0x0014
	JumpIfNot script_0801612C
	MessageFromTarget 0x2d09
	WaitUntilTextboxCloses
	Jump script_08016132
script_0801612C:
	MessageFromTarget 0x2d01
	WaitUntilTextboxCloses
script_08016132:
	_0807E878
	_0807EB44 0x0004
	Jump script_080160B0
	.align 2, 0

