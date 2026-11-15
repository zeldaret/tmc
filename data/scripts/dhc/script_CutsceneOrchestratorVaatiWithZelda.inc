@ DHC CUTSCENE_ORCHESTRATOR Vaati with Zelda
SCRIPT_START script_CutsceneOrchestratorVaatiWithZelda
	BeginBlock
	EndBlock
script_0800DA64:
	CheckPlayerInRegion 0x0078, 0x0148, 0x4040
	JumpIfNot script_0800DA64
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	PlayerIdleNorth
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetScrollSpeed 4
	SetEntityPositionRelative 0x0078, 0x0080
	CameraTargetEntity
	Call WaitForCameraTouchRoomBorder
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	MessageFromTargetPos TEXT_VAATI2, 0x2d, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000001
	Wait 0x001e
	MessageFromTargetPos TEXT_VAATI2, 0x2e, 0x0002
	WaitUntilTextboxCloses
	PlayerIdleNorth
	CallWithArg SetPlayerPos, 0x00780138
	SetScrollSpeed 4
	CameraTargetPlayer
	Call WaitForCameraTouchRoomBorder
	SetRoomFlag 0x0000
	Call CreatePlayerQuestionMark
	Wait 0x001e
	PlayerIdleEast
	Wait 0x000a
	PlayerIdleWest
	Wait 0x000a
	PlayerIdleSouth
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetRoomFlag 0x0001
	SetLocalFlag 0x0077
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
