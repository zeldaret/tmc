@ Cloud Tops CUTSCENE_ORCHESTRATOR great whirlwind revealed
SCRIPT_START script_CutsceneOrchestratorGreatWhirlwindRevealed
	BeginBlock
	Call SetPriorityHighest
	SetEntitySpeed 0x0700
	SetScrollSpeed 7
	CameraTargetEntity
	Call sub_0807FBC4
	EndBlock
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x0000000a
	WaitForSyncFlagAndClear 0x00000004
	MoveToPlayer
	SetScrollSpeed 4
	CameraTargetPlayer
	Call sub_0807FBCC
	EnablePlayerControl
	Call EnablePauseMenu
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
