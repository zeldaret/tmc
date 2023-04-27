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
	CheckInventory1 ITEM_SMITH_SWORD
	CheckInventory2 ITEM_SMITH_SWORD
	HasRoomItemForSale
	CheckLocalFlag 0x0067
	CheckLocalFlagByBank FLAG_BANK_1, SOUGEN_01_00
	CheckGlobalFlag START
	CheckRoomFlag 0x0000
	CheckPlayerInRegion 0x0000, 0x0000, 0x0000
	CheckPlayerInRegion2 0x0000
	CheckEntityInteractType
	FacePlayerAndCheckDist
	HasRupees 200
	CheckTextboxResult
	CheckKinstoneFused KINSTONE_MYSTERIOUS_CLOUD_TOP_RIGHT
	BuyItem ITEM_BOMBS10, 0x0000
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	VariableBitSet 0x00000000
	VariableOnlyBitSet 0x00000000
	VariableEqual 0x00000000
	CheckPlayerFlags PL_MINISH
	CheckPlayerMinish
	EntityHasHeight
	ComparePlayerAction PLAYER_NORMAL
	ComparePlayerAnimationState 0x0004
	SetSyncFlag 0x00000001
	ClearSyncFlag 0x00000002
	SetLocalFlag 0x0067
	SetLocalFlagByBank FLAG_BANK_1, 0x0001
	ClearLocalFlag 0x0067
	SetGlobalFlag START
	ClearGlobalFlag START
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
