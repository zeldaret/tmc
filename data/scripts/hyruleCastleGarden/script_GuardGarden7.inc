@ Hyrule Castle Guard kicking Link out
SCRIPT_START script_GuardGarden7
	CheckRoomFlag 0x000f
	JumpIfNot script_GuardGarden7
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
script_08011AFA:
	MessageFromTargetPos TEXT_VAATI, 0x21, 0x0007
	WaitUntilTextboxCloses
	SetLocalFlag MAENIWA_00_WARP
	CallWithArg NPC4E_DoScreenTransition, 3
	EnablePlayerControl
	Call EnablePauseMenu
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
