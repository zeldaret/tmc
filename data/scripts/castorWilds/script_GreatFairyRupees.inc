@ Lake Hylia Great Fairy CUTSCENE_ORCHESTRATOR
SCRIPT_START script_GreatFairyRupees
	BeginBlock
	EndBlock
script_0800B6CC:
	HasRupees 1
	JumpIfNot script_0800B6CC
script_0800B6D4:
	CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
	JumpIfNot script_0800B6D4
	Call PlayerDropHeldObject
	SetPlayerIdle
	Call WaitForPlayerNormal
	StartPlayerScript script_PlayerAtGreatFairy
	WaitForSyncFlagAndClear 0x00000004
	SetRoomFlag 0x0000
	WaitForSyncFlagAndClear 0x00000004
	//30
	CheckLocalFlag 0x009f
	JumpIf script_0800B7A2
	MessageNoOverlap TEXT_ITEM_GET, 0x7b
	WaitUntilTextboxCloses
	CallWithArg CheckMessageEqual, TEXT_ITEM_GET << 8 | 0x7d
	JumpIf script_0800B6A6
	WaitUntilTextboxCloses
	SetLocalFlag IZUMI_01_FAIRY
	GivePlayerItem ITEM_WALLET
	Jump script_0800B698
	.2byte 0x0000
