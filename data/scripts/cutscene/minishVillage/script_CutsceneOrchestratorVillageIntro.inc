@ Minish Village CUTSCENE_ORCHESTRATOR Intro Cutscene?
SCRIPT_START script_CutsceneOrchestratorVillageIntro
	BeginBlock
	SetAnimationState 0x0004
	SetEntitySpeed 0x0300
	EndBlock
script_0800C928:
	CheckPlayerInRegion 0x0208, 0x0360, 0x2040
	JumpIfNot script_0800C928
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtVillageIntro
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x003c
	EzloMessage TEXT_FINDING_EZLO, 0x25
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000800
	_0807E8E4_3
	Wait 0x003c
	SetSyncFlag 0x00000200
	_0807E8E4_0
	Wait 0x001e
	SetSyncFlag 0x00002000
	_0807E8E4_1
	Wait 0x0014
	SetSyncFlag 0x00020000
	_0807E8E4_1
	Wait 0x000a
	SetSyncFlag 0x00008000
	_0807E8E4_3
	Wait 0x001e
	WaitForSyncFlagAndClear 0x00000400
	WaitForSyncFlagAndClear 0x00001000
	WaitForSyncFlagAndClear 0x00004000
	WaitForSyncFlagAndClear 0x00010000
	WaitForSyncFlagAndClear 0x00040000
	_0807E8E4_0
	Wait 0x003c
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000400
	_0807E8E4_0
	MessageFromTarget TEXT_FINDING_EZLO, 0x26
	Call CreatePlayerQuestionMark
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000200
	SetSyncFlag 0x00000800
	SetSyncFlag 0x00002000
	SetSyncFlag 0x00008000
	SetSyncFlag 0x00020000
	WaitForSyncFlagAndClear 0x00000400
	WaitForSyncFlagAndClear 0x00001000
	WaitForSyncFlagAndClear 0x00004000
	WaitForSyncFlagAndClear 0x00010000
	WaitForSyncFlagAndClear 0x00040000
	SetSyncFlag 0x00008000
	WaitForSyncFlagAndClear 0x00010000
	_0807E8E4_3
	MessageFromTarget TEXT_FINDING_EZLO, 0x27
	WaitUntilTextboxCloses
	SetSyncFlag 0x00002000
	WaitForSyncFlagAndClear 0x00004000
	_0807E8E4_1
	MessageFromTarget TEXT_FINDING_EZLO, 0x28
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000200
	SetSyncFlag 0x00000800
	SetSyncFlag 0x00002000
	SetSyncFlag 0x00008000
	SetSyncFlag 0x00020000
	WaitForSyncFlagAndClear 0x00000400
	WaitForSyncFlagAndClear 0x00001000
	WaitForSyncFlagAndClear 0x00004000
	WaitForSyncFlagAndClear 0x00010000
	WaitForSyncFlagAndClear 0x00040000
	_0807E8E4_0
	EzloMessage TEXT_FINDING_EZLO, 0x29
	WaitUntilTextboxCloses
	SetLocalFlag 0x008d
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
