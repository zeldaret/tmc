SCRIPT_START script_0800FF18
	BeginBlock
	CheckInventory1 0x0012
	JumpIf script_0800FF6A
	_0807EB44 0x0006
	_0807E9D4
	CallWithArg sub_0807F3D8, 0x00000008
	EndBlock
script_0800FF34:
	EndBlock
	BeginBlock
	DoPostScriptAction 0x000b
	Call sub_08064198
	CheckEntityInteractType
	JumpIfNot script_0800FF34
	EndBlock
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_08064428
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800FF34
script_0800FF6A:
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
