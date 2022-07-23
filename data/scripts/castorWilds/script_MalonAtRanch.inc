@ Lon Lon Ranch Malon
SCRIPT_START script_MalonAtRanch
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	_0807E9D4
	EndBlock
script_0800B5FA:
	CheckEntityInteractType
	JumpIfNot script_0800B5FA
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_LON_LON, 0x09
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	Jump script_0800B5FA
