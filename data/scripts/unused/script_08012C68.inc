@ TODO UNUSED?
SCRIPT_START script_08012C68
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000000
	Call sub_0806DA04
	EndBlock
script_08012C7E:
	CheckEntityInteractType
	JumpIfNot script_08012C7E
	_0807E864 
	_0807E8E4_0 
	MessageFromTarget 0x111d
	WaitUntilTextboxCloses
	SetGlobalFlag 0x0022
	_0807E878
	Jump script_08012C7E

