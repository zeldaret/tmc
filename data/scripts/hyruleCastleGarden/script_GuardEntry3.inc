@ Hyrule Castle Guard guarding entry to garden
SCRIPT_START script_GuardEntry3
	BeginBlock
	_0807EB44 0x0002
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011A7C:
	CheckEntityInteractType
	JumpIfNot script_08011A7C
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	CallWithArg sub_080644B4, 0x00000006
	JumpIf script_08011AFA
	MessageFromTarget 0x1320
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08011A7C
	.2byte 0x0000
	BeginBlock
	_0807EB44 0x0004
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011AC4:
	CheckEntityInteractType
	JumpIfNot script_08011AC4
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	MessageFromTarget 0x1322
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08011AC4

