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
	CheckSyncFlagAndClear 0x00000001
	JumpIf script_0800EE12
	Call sub_0806AEE4
	Jump script_0800ED98
script_0800EDB6:
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	CheckLocalFlag 0x00ae
	JumpIf script_0800EE3E
	Wait 0x000a
	SetSyncFlag 0x00000001
	MessageFromTarget TEXT_HAGEN, 0x07
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000010
	MessageFromTarget TEXT_HAGEN, 0x08
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000020
	MessageFromTarget TEXT_HAGEN, 0x09
	WaitUntilTextboxCloses
	SetIntVariable 0x00000503
	Call LoadMenu
	SetSyncFlag 0x00000040
	Call EnablePauseMenu
	EnablePlayerControl
	SetLocalFlag 0x00ae
	Jump script_0800ED98
script_0800EE12:
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	SetAnimationState 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	Call sub_0806AED8
	WaitForSyncFlagAndClear 0x00000008
	Jump script_0800ED98
script_0800EE3E:
	MessageFromTarget TEXT_HAGEN, 0x16
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800ED98
