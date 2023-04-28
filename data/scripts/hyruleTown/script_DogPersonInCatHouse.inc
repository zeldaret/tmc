@ Hyrule Town Dog person talking to Cat person
SCRIPT_START script_DogPersonInCatHouse
	BeginBlock
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0006
	Call sub_08061FD8
	EndBlock
script_0800EB7C:
	CheckEntityInteractType
	JumpIfNot script_0800EB7C
	SetPlayerIdle
	FacePlayer
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0006
	Call sub_08061FD8
	Jump script_0800EB7C
	BeginBlock
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0002
	Call sub_08061FD8
	EndBlock
	Jump script_0800EBF4
