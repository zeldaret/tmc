@ DHC CUTSCENE_ORCHESTRATOR Towards Vaati room with Dark Nuts
SCRIPT_START script_CutsceneOrchestratorDarkNutsRoom
	BeginBlock
	EndBlock
	CheckLocalFlag 0x007e
	JumpIf script_0800E582
script_0800E550:
	CheckPlayerInRegion 0x00a8, 0x00c0, 0x0880
	JumpIfNot script_0800E550
	SetPlayerIdle
	Wait 0x001e
	Call CreatePlayerExclamationMark
	Wait 0x003c
	PlaySound SFX_105
	Wait 0x001e
	EzloMessage TEXT_VAATI2, 0x22
	Call StartDarkNutTimer
	SetLocalFlag 0x007e
script_0800E582:
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
