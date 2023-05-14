@ Din completely alone
SCRIPT_START script_DinAlone
	BeginBlock
	Call Din_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_080121DE:
	CheckEntityInteractType
	JumpIfNot script_080121DE
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x27
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_080121DE
