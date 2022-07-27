@ Graveyard Gina
SCRIPT_START script_Gina
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
	CheckLocalFlag 0x005f
	JumpIf script_0800B94E
script_0800B934:
	CheckEntityInteractType
	JumpIfNot script_0800B934
	SetPlayerIdle
	FacePlayer
	MessageFromTarget TEXT_TINGLE, 0x19
	WaitUntilTextboxCloses
	SetLocalFlag 0x005f
	EnablePlayerControl
	Jump script_0800B934
script_0800B94E:
	CheckEntityInteractType
	JumpIfNot script_0800B94E
	SetPlayerIdle
	FacePlayer
	MessageFromTarget TEXT_TINGLE, 0x1a
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800B94E
