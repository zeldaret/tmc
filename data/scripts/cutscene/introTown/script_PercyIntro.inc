@ Intro Hyrule Town Percy
SCRIPT_START script_PercyIntro
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4
	EndBlock
script_0800F662:
	CheckEntityInteractType
	JumpIfNot script_0800F662
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0001
	Call sub_0806B4F0
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	DoPostScriptAction 0x0000
	Jump script_0800F662
	.2byte 0x0000


