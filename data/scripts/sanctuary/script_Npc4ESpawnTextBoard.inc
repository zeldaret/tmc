@ Sanctuary NPC4E spawn text board
SCRIPT_START script_Npc4ESpawnTextBoard
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetScrollSpeed 7
	SetEntityPositionRelative 0x00e8, 0x00a8
	CameraTargetEntity
	Wait 0x003c
	SetSyncFlag 0x00000004
	Wait 0x0078
	CallWithArg DeleteRepeatedSoundManager, 0x00000001
	_0807F0C8 0x0000, 0x0000
	StartPlayerScript script_PlayerTextBoardAppears
	WaitForSyncFlagAndClear 0x00000002
	EzloMessage TEXT_PANEL_TUTORIAL, 0x01
	WaitUntilTextboxCloses
	SetScrollSpeed 4
	CameraTargetPlayer
	SetLocalFlag 0x007a
	Call sub_08053250
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
