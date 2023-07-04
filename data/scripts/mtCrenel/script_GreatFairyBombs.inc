@ Mountain Great Fairy CUTSCENE_ORCHESTRATOR
SCRIPT_START script_GreatFairyBombs
	BeginBlock
	EndBlock
script_0800B734:
	Call sub_0808747C
	JumpIfNot script_0800B734
	Call PlayerDropHeldObject
	SetPlayerIdle
	Wait 0x000a
	Call WaitForPlayerNormal
	StartPlayerScript script_PlayerAtGreatFairy
	WaitForSyncFlagAndClear 0x00000004
	SetRoomFlag 0x0000
	WaitForSyncFlagAndClear 0x00000004
	CheckLocalFlag 0x00a0
	JumpIf script_0800B7A2
	MessageNoOverlap TEXT_ITEM_GET, 0x80
	WaitUntilTextboxCloses
	CallWithArg CheckMessageEqual, 0x00000582
	JumpIf script_0800B794
	CallWithArg sub_08087424, 0x00000001
	Wait 0x00b4
	Jump script_0800B6A6
script_0800B794:
	WaitUntilTextboxCloses
	SetLocalFlag IZUMI_02_FAIRY
	GivePlayerItem ITEM_BOMBBAG
	Jump script_0800B698
script_0800B7A2:
	MessageNoOverlap TEXT_ITEM_GET, 0x90
	WaitUntilTextboxCloses
	SetFadeTime 0x0010
	SetFade7
	WaitForFadeFinish
	ModHealth 0x00a0
	SetFade6
	WaitForFadeFinish
	MessageNoOverlap TEXT_ITEM_GET, 0x7f
	WaitUntilTextboxCloses
	Jump script_0800B6A6
	.2byte 0x0000
