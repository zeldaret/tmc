@ Hyrule Town Cat person talking to Dog person
SCRIPT_START script_CatPersonTalkingToDogPerson
	BeginBlock
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0002
	Call sub_08061FD8
	EndBlock
script_0800EC2C:
	CheckEntityInteractType
	JumpIfNot script_0800EC2C
	SetPlayerIdle
	FacePlayer
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0002
	Call sub_08061FD8
	Jump script_0800EC2C
