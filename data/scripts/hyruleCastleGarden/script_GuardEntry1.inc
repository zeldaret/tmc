@ Intro Hyrule Castle Entrance Guard
SCRIPT_START script_GuardEntry1
	BeginBlock
	_0807EB44 0x0006
script_080119F6:
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011A08:
	CheckEntityInteractType
	JumpIfNot script_08011A08
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	Call sub_08064428
	WaitUntilTextboxCloses
	_0807E878
	Jump script_08011A08
	.2byte 0x0000
