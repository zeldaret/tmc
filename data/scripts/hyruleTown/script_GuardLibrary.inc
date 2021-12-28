@ Hyrule Town Guard closing Library
SCRIPT_START script_GuardLibrary
	BeginBlock
	_0807E9D4
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08010410:
	CheckEntityInteractType
	JumpIfNot script_08010410
	_0807E864
	_0807EB74
	Call sub_08064428
	WaitUntilTextboxCloses
	_0807E878
	Jump script_08010410
