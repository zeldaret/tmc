@ Intro Outside Castle CUTSCENE_ORCHESTRATOR 1?
SCRIPT_START script_080157AC
	CheckPlayerInRegion 0x01f8, 0x0310, 0x2020
	JumpIfNot script_080157AC
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	Call EnablePauseMenu
	EnablePlayerControl
script_080157DA:
	CheckPlayerInRegion 0x0250, 0x0230, 0x3040
	JumpIfNot script_080157DA
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	StartPlayerScript script_PlayerIntroBusinessScrub1
	SetScrollSpeed 1
	SetEntityPositionRelative 0x0248, 0x0218
	CameraTargetEntity
	Call WaitForCameraTouchRoomBorder
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000020
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	StartPlayerScript script_PlayerIntroBusinessScrub2
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	MessageFromTargetPos TEXT_PROLOGUE, 0x66, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	Call EnablePauseMenu
	EnablePlayerControl
	Call sub_08066F94
	SetSyncFlag 0x00000008
script_08015880:
	CheckRoomFlag 0x0000
	JumpIfNot script_08015880
script_08015888:
	WaitUntilTextboxCloses
	ComparePlayerAction PLAYER_SLEEP
	JumpIf script_08015888
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetScrollSpeed 2
	SetEntityPositionRelative 0x0248, 0x0208
	CameraTargetEntity
	StartPlayerScript script_PlayerIntroBusinessScrub3
	WaitForSyncFlagAndClear 0x00000010
	MessageFromTargetPos TEXT_PROLOGUE, 0x6a, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	Wait 0x0078
	_0807E8E4_2
	MessageFromTargetPos TEXT_PROLOGUE, 0x68, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	SetLocalFlag SOUGEN_06_AKINDO
	Call sub_08066FB8
	Call EnablePauseMenu
	EnablePlayerControl
	SetScrollSpeed 4
	CameraTargetPlayer
	DoPostScriptAction 0x0006
SCRIPT_END
