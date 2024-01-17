@ Castor Wilds CUTSCENE_ORCHESTRATOR?
SCRIPT_START script_CutsceneOrchestrator
	BeginBlock
	SetSyncFlag 0x00000000
	CheckLocalFlag HIKYOU_00_SEKIZOU
	JumpIf script_0800B252
	SetEntitySpeed 0x00c0
	EndBlock
script_0800B216:
	WaitForSyncFlagAndClear 0x00000001
	Call DisablePauseMenuAndPutAwayItems
	MoveEntityToPlayer
	CameraTargetEntity
	MoveTo 0x0068, 0x0380
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	Call EnablePauseMenu
	Wait 0x000c
	CameraTargetPlayer
	Wait 0x0008
	EnablePlayerControl
	CheckLocalFlag HIKYOU_00_SEKIZOU
	JumpIfNot script_0800B216
script_0800B252:
SCRIPT_END
