@ CUTSCENE_ORCHESTRATOR somewhere in DHC?
script_CutsceneOrchestratorDHC::
	BeginBlock
	CheckLocalFlag 0x0086
	JumpIfNot script_CutsceneOrchestratorKillDarkNut
	DoPostScriptAction 0x0006
	EndBlock
	EndScript
