@ Outside Caste CUTSCENE_ORCHESTRATOR Fix bridge
script_CutsceneOrchestratorFixBridge::
	BeginBlock
	SetLocalFlag SOUGEN_06_SLIDE
	SetPlayerIdle
	MoveEntityToPlayer
	CameraTargetEntity
	SetEntitySpeed 0x0200
	EndBlock
	Wait 0x000f
	PlayerIdleSouth
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
	EndScript
