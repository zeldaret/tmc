@ Hyrule Town CUTSCENE_ORCHESTRATOR at Carlov. Prevent from leaving if already paid.
SCRIPT_START script_CutsceneMiscObjectPreventPlayerLeaveCarlov
	BeginBlock
	EndBlock
script_0801454C:
	CheckPlayerInRegion 0x0078, 0x0088, 0x0810
	JumpIfNot script_0801454C
	CheckRoomFlag 0x0000
	JumpIfNot script_0801454C
	SetPlayerIdle
	EzloMessage TEXT_BURLOV, 0x17
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerWhenLeavingCarlovAlreadyPaid
	Wait 0x0010
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	EnablePlayerControl
	Jump script_0801454C
SCRIPT_END
	.2byte 0x0000
