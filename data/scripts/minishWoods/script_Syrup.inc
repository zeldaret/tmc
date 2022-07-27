@ Syrup
SCRIPT_START script_Syrup
	BeginBlock
	_0807E9D4
	SetAnimation 0x0008
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
	FacePlayer
	WaitForSyncFlagAndClear 0x00000004
	Jump script_080160B0
script_080160E0:
	SetPlayerIdle
	FacePlayer
	EndBlock
	HasRoomItemForSale
	JumpIfNot script_0801611A
	MessageFromTarget TEXT_SYRUP, 0x07
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08016132
	BuyItem ITEM_NONE, 0x0000
	JumpIf script_0801610C
	MessageFromTarget TEXT_SYRUP, 0x0b
	WaitUntilTextboxCloses
	Jump script_08016132
script_0801610C:
	WaitPlayerGetItem
.ifndef EU
	FaceAwayFromPlayer
	MessageFromTarget TEXT_SYRUP, 0x0d
.else
	MessageFromTarget TEXT_SYRUP, 0x08
.endif
	WaitUntilTextboxCloses
	Jump script_08016132
script_0801611A:
	CheckKinstoneFused KINSTONE_14
	JumpIfNot script_0801612C
	MessageFromTarget TEXT_SYRUP, 0x09
	WaitUntilTextboxCloses
	Jump script_08016132
script_0801612C:
	MessageFromTarget TEXT_SYRUP, 0x01
	WaitUntilTextboxCloses
script_08016132:
	EnablePlayerControl
	SetAnimationState 0x0004
	Jump script_080160B0
	.align 2, 0

