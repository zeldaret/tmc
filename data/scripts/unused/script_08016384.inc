@ TODO UNUSED?
SCRIPT_START script_08016384
	BeginBlock
	EndBlock
	Jump script_08016384
	JumpIf script_08016384
	JumpIfNot script_08016384
	JumpTable script_08016384, script_08016384
	JumpAbsolute script_08016384
	JumpAbsoluteIf script_08016384
	JumpAbsoluteIfNot script_08016384
	JumpAbsoluteTable script_08016384, script_08016384
	Call script_08016384
	CallWithArg script_08016384, 0x12345678
	LoadRoomEntityList script_08016384
	CheckSyncFlagAndClear 0x00000001
	CheckInventory1 0x0001
	CheckInventory2 0x0001
	HasRoomItemForSale
	CheckLocalFlag 0x0067
.ifdef JP
	CheckLocalFlagByBank 0x0100, 0x0069
.else
.ifdef EU
	CheckLocalFlagByBank 0x0100, 0x0069
.else
.ifdef DEMO_JP
	CheckLocalFlagByBank 0x0100, 0x0069 @ TODO deduplicate
.else
	CheckLocalFlagByBank 0x0100, 0x006b
.endif
.endif
.endif
	CheckGlobalFlag 0x0013
	CheckRoomFlag 0x0000
	CheckPlayerInRegion 0x0000, 0x0000, 0x0000
	CheckPlayerInRegion2 0x0000
	CheckEntityInteractType
	FacePlayerAndCheckDist
	HasRupees 0x00c8
	CheckTextboxResult
	CheckKinstoneFused 0x0001
	BuyItem 0x006c, 0x0000
	CheckBottleContaining 0x0020
	VariableBitSet 0x00000000
	VariableOnlyBitSet 0x00000000
	VariableEqual 0x00000000
	CheckPlayerFlags 0x00000080
	CheckPlayerMinish
	EntityHasHeight
	ComparePlayerAction 0x0001
	ComparePlayerAnimationState 0x0004
	SetSyncFlag 0x00000001
	ClearSyncFlag 0x00000002
	SetLocalFlag 0x0067
	SetLocalFlagByBank 0x0100, 0x0001
	ClearLocalFlag 0x0067
	SetGlobalFlag 0x0013
	ClearGlobalFlag 0x0013
	SetRoomFlag 0x0000
	ClearRoomFlag 0x0000
	Wait 0x001e
	WaitForSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	WaitPlayerGetItem
	WaitForPlayerEnterRoom
	WaitFor_1
	WaitForFadeFinish
	SetFadeTime 0x0004
	SetFadeMask 0x0000ffff
