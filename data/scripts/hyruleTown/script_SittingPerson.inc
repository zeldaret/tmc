@ Hyrule Town SittingPerson
SCRIPT_START script_SittingPerson
	BeginBlock
	Call sub_080639D0
	DoPostScriptAction 0x000a
	EndBlock
	BeginBlock
	CallWithArg sub_08063850, 0x00000000
	EndBlock
script_0800ED20:
	CheckEntityInteractType
	JumpIfNot script_0800ED20
	_0807E864
	_0807EB74
	CallWithArg sub_08063850, 0x00000000
	Call sub_08063944
	WaitUntilTextboxCloses
	JumpIfNot script_0800ED46
	_0807F050 0x0070
	WaitPlayerGetItem
script_0800ED46:
	_0807E878
	Call sub_08063874
	CallWithArg sub_08063850, 0x00000000
	Jump script_0800ED20
