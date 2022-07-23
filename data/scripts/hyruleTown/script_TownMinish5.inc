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
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	CheckLocalFlag 0x00ae
	JumpIf script_0800EEFE
	Wait 0x000a
	SetSyncFlag 0x00000001
	MessageFromTarget TEXT_HAGEN, 0x07
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	MessageFromTarget TEXT_HAGEN, 0x08
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000004
	MessageFromTarget TEXT_HAGEN, 0x09
	WaitUntilTextboxCloses
	SetIntVariable 0x00000503
	Call LoadMenu
	SetSyncFlag 0x00000008
	Call EnablePauseMenu
	EnablePlayerControl
	SetLocalFlag 0x00ae
	Jump script_0800EE58
script_0800EED2:
	EndBlock
	WaitForSyncFlagAndClear 0x00000010
	SetAnimationState 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	WaitForSyncFlagAndClear 0x00000020
	Call sub_0806AED8
	WaitForSyncFlagAndClear 0x00000040
	Jump script_0800EE58
script_0800EEFE:
	MessageFromTarget TEXT_HAGEN, 0x15
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800EE58
	MessageFromTarget TEXT_HAGEN, 0x07
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000012
	Wait 0x000a
	MessageFromTarget TEXT_HAGEN, 0x08
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000024
	MessageFromTarget TEXT_HAGEN, 0x09
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000048
	Call SetPlayerActionNormal
SCRIPT_END
