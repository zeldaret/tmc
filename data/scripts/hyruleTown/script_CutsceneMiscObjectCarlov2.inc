@ Hyrule Town CUTSCENE_ORCHESTRATOR at Carlov
SCRIPT_START script_CutsceneMiscObjectCarlov2
	BeginBlock
	DoPostScriptAction 0x0008
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080145F8:
.ifdef EU
	CheckPlayerInRegion 0x00a8, 0x0054, 0x080c
	JumpIfNot script_080145F8
	ComparePlayerAnimationState 0x0000
	JumpIfNot script_080145F8
	CheckRoomFlag 0x0009
	JumpIf script_08014632
	SetPlayerIdle
	Wait 0x0018
	_0807E8E4_3
	SetAnimationState 0x0002
	MessageFromTargetPos TEXT_CARLOV, 0x2b, 0x000c
	WaitUntilTextboxCloses
	Wait 0x0018
	EnablePlayerControl
	Jump script_080145F8
.endif
script_08014632:
	CheckRoomFlag 0x0000
	JumpIfNot script_08014632
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
script_08014642:
.ifdef EU
	CheckRoomFlag 0x0009
.else
	CheckRoomFlag 0x0004
.endif
	JumpIf script_08014642
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_080145F8
	.align 2, 0

