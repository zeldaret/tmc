@ Hyrule Town Cat person talking to Dog person
SCRIPT_START script_CatPersonTalkingToDogPerson
	BeginBlock
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0002
	Call sub_08061FD8
	EndBlock
script_0800EC2C:
	CheckEntityInteractType
	JumpIfNot script_0800EC2C
	_0807E864
	_0807EB74
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0002
	Call sub_08061FD8
	Jump script_0800EC2C
