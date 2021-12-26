@ Town Minish above Mayor left
SCRIPT_START script_TownMinish4
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
script_0800ED98:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800EDB6
	TestBit 0x00000001
	JumpIf script_0800EE12
	Call sub_0806AEE4
	Jump script_0800ED98
script_0800EDB6:
	EndBlock
	_0807E864
	Call sub_0807DF28
	CheckLocalFlag 0x00ae
	JumpIf script_0800EE3E
	Wait 0x000a
	_0807E5F8 0x00000001
	MessageFromTarget 0x4c07
	WaitUntilTextboxCloses
	_0807E5F8 0x00000010
	MessageFromTarget 0x4c08
	WaitUntilTextboxCloses
	_0807E5F8 0x00000020
	MessageFromTarget 0x4c09
	WaitUntilTextboxCloses
	SetIntVariable 0x00000503
	Call sub_0807F420
	_0807E5F8 0x00000040
	Call sub_0807DF50
	_0807E878
	SetLocalFlag 0x00ae
	Jump script_0800ED98
script_0800EE12:
	EndBlock
	WaitForSomething2 0x00000002
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	WaitForSomething2 0x00000004
	Call sub_0806AED8
	WaitForSomething2 0x00000008
	Jump script_0800ED98
script_0800EE3E:
	MessageFromTarget 0x4c16
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
	Jump script_0800ED98
