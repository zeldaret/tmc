@ Graveyard Great Fairy CUTSCENE_ORCHESTRATOR
SCRIPT_START script_GreatFairyArrows
	BeginBlock
	EndBlock
script_0800B618:
	CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
	JumpIfNot script_0800B618
	Call PlayerDropHeldObject
	SetPlayerIdle
	Call WaitForPlayerNormal
	StartPlayerScript script_PlayerAtGreatFairy
	WaitForSyncFlagAndClear 0x00000004
	SetRoomFlag 0x0000
	WaitForSyncFlagAndClear 0x00000004
	CheckLocalFlag 0x009e
	JumpIf script_0800B7A2
	MessageNoOverlap TEXT_ITEM_GET, 0x83
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0800B684
	Wait 0x000f
	MessageNoOverlap TEXT_ITEM_GET, 0x84
	CallWithArg CheckMessageEqual, 0x0000058b
	JumpIf script_0800B68E
	CallWithArg sub_08087424, 0x00000000
	Wait 0x00b4
	Jump script_0800B6A6
script_0800B684:
	MessageNoOverlap TEXT_ITEM_GET, 0x7d
	WaitUntilTextboxCloses
	Jump script_0800B6A6
script_0800B68E:
	WaitUntilTextboxCloses
	SetLocalFlag IZUMI_00_FAIRY
	GivePlayerItem ITEM_LARGE_QUIVER
script_0800B698:
	WaitPlayerGetItem
	FaceAwayFromPlayer
	Wait 0x001e
	MessageNoOverlap TEXT_ITEM_GET, 0x7f
	WaitUntilTextboxCloses
script_0800B6A6:
	SetFadeTime 0x0004
	SetFade7
	WaitForFadeFinish
	Call sub_080873FC
	SetFade6
	WaitForFadeFinish
	CameraTargetPlayer
	Wait 0x001e
	Call EnablePauseMenu
	EnablePlayerControl
SCRIPT_END
