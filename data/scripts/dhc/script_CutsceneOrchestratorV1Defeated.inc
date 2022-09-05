@ DHC CUTSCENE_ORCHESTRATOR V1 defeated
SCRIPT_START script_CutsceneOrchestratorV1Defeated
	EndBlock
script_0800DFB6:
	CheckRoomFlag 0x0001
	JumpIfNot script_0800DFB6
	StopBgm
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	PlaySound SFX_EVAPORATE
	CallWithArg NPC4E_DoScreenTransition, 4
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
