@ Library CUTSCENE_ORCHESTRATOR all books collected
SCRIPT_START script_CutsceneOrchestratorAllBooksCollected
	BeginBlock
	SetEntityPositionRelative 0x0068, 0x0068
	SetScrollSpeed 4
	CameraTargetEntity
	EndBlock
	Wait 0x001e
	SetSyncFlag 0x00000002
	WaitForSyncFlag 0x00000001
	Wait 0x000f
	SetScrollSpeed 4
	CameraTargetPlayer
	Wait 0x001e
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
