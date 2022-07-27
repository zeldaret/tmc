@ TODO UNUSED?
SCRIPT_START script_0800B828
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0800B836:
	TriggerInteract
	SetPlayerIdle
	MessageFromTarget TEXT_EMPTY, 0x01
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800B836
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0800B85E:
	Wait 0x003c
	Call sub_080646A4
	Jump script_0800B85E
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	SetAnimation 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0800B87E:
	Wait 0x003c
	Call sub_0806407C
	Jump script_0800B87E
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0800B89E:
	CheckEntityInteractType
	JumpIfNot script_0800B89E
	SetPlayerIdle
	FacePlayer
	MessageFromTarget TEXT_EMPTY, 0x01
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800B89E
