@ Town Minish above Mayor right
SCRIPT_START script_TownMinish5
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
script_0800EE58:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800EE76
	CheckSyncFlagAndClear 0x00000001
	JumpIf script_0800EED2
	Call sub_0806AEE4
	Jump script_0800EE58
script_0800EE76:
	EndBlock
	_0807E864
	Call sub_0807DF28
	CheckLocalFlag 0x00ae
	JumpIf script_0800EEFE
	Wait 0x000a
	SetSyncFlag 0x00000001
	MessageFromTarget 0x4c07
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	MessageFromTarget 0x4c08
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000004
	MessageFromTarget 0x4c09
	WaitUntilTextboxCloses
	SetIntVariable 0x00000503
	Call sub_0807F420
	SetSyncFlag 0x00000008
	Call sub_0807DF50
	_0807E878
	SetLocalFlag 0x00ae
	Jump script_0800EE58
script_0800EED2:
	EndBlock
	WaitForSyncFlagAndClear 0x00000010
	_0807EB44 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	WaitForSyncFlagAndClear 0x00000020
	Call sub_0806AED8
	WaitForSyncFlagAndClear 0x00000040
	Jump script_0800EE58
script_0800EEFE:
	MessageFromTarget 0x4c15
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
	Jump script_0800EE58
	MessageFromTarget 0x4c07
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000012
	Wait 0x000a
	MessageFromTarget 0x4c08
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000024
	MessageFromTarget 0x4c09
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000048
	Call sub_080791BC
SCRIPT_END
