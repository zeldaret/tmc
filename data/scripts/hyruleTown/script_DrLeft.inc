@ Dr Left
SCRIPT_START script_DrLeft
	BeginBlock
	_0807E9D4
	Call sub_0806C09C
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	_0807EB44 0x0004
	EndBlock
script_0800EABC:
	CheckEntityInteractType
	JumpIfNot script_0800EABC
	BeginBlock
	_0807E864
	_0807EB74
	CallWithArg sub_0806C028, 0x00000004
	EndBlock
script_0800EAD4:
	Call sub_0806C00C
	JumpIfNot script_0800EAD4
	_0807E930 0x0008
	Call sub_0806C038
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	_0807E930 0x0000
	Jump script_0800EABC
