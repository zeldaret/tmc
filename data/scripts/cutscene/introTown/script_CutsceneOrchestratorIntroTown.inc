@ Intro Hyrule Town CUTSCENE_ORCHESTRATOR ?
SCRIPT_START script_CutsceneOrchestratorIntroTown
	CheckLocalFlag MACHI_01_DEMO
	JumpIf script_0800FD50
	WaitForSyncFlagAndClear 0x00000010
script_0800FD1A:
	@ Prevent Link from leaving
	CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
	JumpIfNot script_0800FD1A
	CheckLocalFlag MACHI_01_DEMO
	JumpIf script_0800FD5C
	SetPlayerIdle
	Call WaitForPlayerNormal
	MessageFromTargetPos TEXT_FESTIVAL, 0x06, 0x0000
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerIntroTown
	WaitForSyncFlagAndClear 0x00000008
	EnablePlayerControl
	Jump script_0800FD1A
script_0800FD50:
	CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
	JumpIfNot script_0800FD50
script_0800FD5C:
	SetPlayerIdle
	Call WaitForPlayerNormal
	MessageFromTargetPos TEXT_PROLOGUE, 0x6c, 0x0000
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerIntroTown
	WaitForSyncFlagAndClear 0x00000008
	EnablePlayerControl
	Jump script_0800FD50
	.2byte 0x0000
