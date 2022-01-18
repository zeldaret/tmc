@ Hyrule Town Kid in school
SCRIPT_START script_Kid5
	BeginBlock
	SetAnimation 0x0008
script_08010622:
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock
script_0801062E:
	CheckEntityInteractType
	JumpIfNot script_0801062E
	SetPlayerIdle
	Call sub_0806265C
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0801062E
