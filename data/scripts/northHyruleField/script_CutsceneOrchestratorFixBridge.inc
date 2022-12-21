@ Outside Caste CUTSCENE_ORCHESTRATOR Fix bridge
SCRIPT_START script_CutsceneOrchestratorFixBridge
	BeginBlock
	SetLocalFlag SOUGEN_06_SLIDE
	SetPlayerIdle
	MoveEntityToPlayer
	CameraTargetEntity
	SetEntitySpeed 0x0200
	EndBlock
	Wait 0x000f
	_0807E8E4_2
	Call CreatePlayerExclamationMark
	Wait 0x001e
	MoveTo 0x00b8, 0x0258
	Wait 0x001e
	SetRoomFlag 0x0065
	Wait 0x0078
	MoveToPlayer
	CameraTargetPlayer
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
