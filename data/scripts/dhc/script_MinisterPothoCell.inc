@ DHC Minister Potho in King cell
SCRIPT_START script_MinisterPothoCell
	BeginBlock
	SetAnimationState 0x0002
	DoPostScriptAction 0x000a
	Call sub_080668F0
	EndBlock
script_0800E41A:
	CheckEntityInteractType
	JumpIfNot script_0800E41A
	SetPlayerIdle 
	FacePlayer 
	MessageNoOverlap 0x2406
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800E41A
