@ Hyrule Town Kid in school
SCRIPT_START script_Kid5
	BeginBlock
	_0807E930 0x0008
script_08010622:
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock
script_0801062E:
	CheckEntityInteractType
	JumpIfNot script_0801062E
	_0807E864
	Call sub_0806265C
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0801062E
