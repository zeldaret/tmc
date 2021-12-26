@ Intro Hyrule Town Beedle
SCRIPT_START script_BeedleIntro
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0000
	_0807E9D4
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock
script_0800F604:
	CheckEntityInteractType
	JumpIfNot script_0800F604
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000008
	MessageNoOverlap 0x2511
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800F604
