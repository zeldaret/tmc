@ DHC CUTSCENE_ORCHESTRATOR Towards Vaati in room with Keatons
SCRIPT_START script_CutsceneOrchestratorKeatonsRoom
	BeginBlock
	EndBlock
	CheckLocalFlag 0x007d
	JumpIf script_0800E53C
script_0800E510:
	CheckPlayerInRegion 0x00a8, 0x0178, 0x1080
	JumpIfNot script_0800E510
	SetPlayerIdle
	Wait 0x001e
	Call CreatePlayerExclamationMark
	Wait 0x003c
	PlaySound SFX_105
	Wait 0x001e
	EzloMessage TEXT_VAATI2, 0x17
	SetLocalFlag 0x007d
script_0800E53C:
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
