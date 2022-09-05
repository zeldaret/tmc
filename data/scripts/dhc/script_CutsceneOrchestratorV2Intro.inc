@ DHC CUTSCENE_ORCHESTRATOR V2 intro
SCRIPT_START script_CutsceneOrchestratorV2Intro
	BeginBlock
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	EndBlock
	StopBgm
	MessageFromTargetPos TEXT_VAATI2, 0x32, 0x0002
	WaitUntilTextboxCloses
	SetRoomFlag 0x0003
script_0800DFFE:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800DFFE
	PlayBgm BGM_VAATI_TRANSFIGURED
	Call EnablePauseMenu
	EnablePlayerControl
script_0800E012:
	@ Defeated
	CheckRoomFlag 0x0002
	JumpIfNot script_0800E012
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetLocalFlag 0x007b
	MessageFromTargetPos TEXT_VAATI2, 0x39, 0x000c
	WaitUntilTextboxCloses
	Wait 0x0096
	PlaySound SFX_EVAPORATE
	CallWithArg NPC4E_DoScreenTransition, 5
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
