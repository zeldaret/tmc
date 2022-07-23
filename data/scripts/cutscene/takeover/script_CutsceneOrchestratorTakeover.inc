@ Western Wood CUTSCENE_ORCHESTRATOR Cutscene
SCRIPT_START script_CutsceneOrchestratorTakeover
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
script_08015BF0:
	CheckPlayerInRegion 0x0160, 0x0020, 0x3040
	JumpIfNot script_08015BF0
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	Call sub_0807FBC4
	StartPlayerScript script_PlayerAtTakeover
	WaitForSyncFlagAndClear 0x00000100
	CameraTargetPlayer
	SetFadeTime 0x0004
	_0807E80C 0x00000000
	WaitForFadeFinish
	StopBgm
	Call sub_08053BE8
	BeginBlock
	SetPlayerIdle
	Call sub_0807FBC4
	CameraTargetPlayer
	SetFadeTime 0x0100
	SetFade4
	_0807E80C 0x00000000
	EndBlock
	SetFadeTime 0x0004
	_0807E800 0x00000000
	WaitForFadeFinish
	PlayBGM
	EzloMessage TEXT_VAATI, 0x1f
	WaitUntilTextboxCloses
	SetLocalFlag SOUGEN_08_TORITSUKI
	Call sub_0807FBCC
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
