@ Hyrule Castle Smith
SCRIPT_START script_SmithAtCastle
	BeginBlock
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
script_080092B2:
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_080092BA:
	CheckEntityInteractType
	JumpIfNot script_080092BA
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_PROLOGUE, 0x5e
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_080092BA
