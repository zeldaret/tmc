@ CUTSCENE_ORCHESTRATOR in Rems shoe shop ?
SCRIPT_START script_CutsceneOrchestratorRem
	BeginBlock
	CheckLocalFlag 0x0062
	JumpIfNot script_0801319A
	DoPostScriptAction 0x0006
	EndBlock
SCRIPT_END
SCRIPT_START script_0801319A
	EndBlock
	BeginBlock
	CameraTargetEntity
	MoveEntityToPlayer
	Call sub_0806AB74
	Jump script_0801319A
