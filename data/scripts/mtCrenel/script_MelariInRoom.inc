@ Mines Melari in his room
SCRIPT_START script_MelariInRoom
	BeginBlock
	Call Melari_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0000
	EndBlock
script_0800D31E:
	EndBlock
	BeginBlock
	Call sub_08068910
	CheckEntityInteractType
	JumpIfNot script_0800D31E
	EndBlock
	SetPlayerIdle
	FacePlayer
	SetIntVariable 0x00000000
	Call sub_0806C028
	MessageFromTarget TEXT_MINISH2, 0x19
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800D31E
