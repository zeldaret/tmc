@ Hyrule Town carpeter next to post
SCRIPT_START script_Carpenter
	BeginBlock
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	DoPostScriptAction 0x000a
	Call sub_08067314
	EndBlock
script_08010AB4:
	CheckEntityInteractType
	JumpIfNot script_08010AB4
	_0807E864
	_0807EB74
	CallWithArg sub_080672B0, 0x00000004
	Call sub_08067304
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	Jump script_08010AB4
