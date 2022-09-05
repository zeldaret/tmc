@ Sanctuary NPC4E Intro Cutscene
SCRIPT_START script_Npc4ESanctuaryIntro
	EndBlock
script_08013CA6:
	CheckPlayerInRegion 0x00e8, 0x01e8, 0x4080
	JumpIfNot script_08013CA6
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetScrollSpeed 1
	SetEntityPositionRelative 0x00e8, 0x0138
	CameraTargetEntity
	Call WaitForCameraTouchRoomBorder
	Wait 0x0078
	SetScrollSpeed 4
	CameraTargetPlayer
	Call WaitForCameraTouchRoomBorder
	EzloMessage TEXT_PANEL_TUTORIAL, 0x04
	WaitUntilTextboxCloses
	SetLocalFlag 0x0079
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
