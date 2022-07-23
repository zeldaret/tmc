@ Zelda intro in front of links house
SCRIPT_START script_ZeldaOutsideLinksHouse
	BeginBlock
	SetEntitySpeed 0x0180
	DoPostScriptAction 0x000a
	Call sub_08066D04
	Call sub_08066D14
	SetEntityPositionRelative 0x01e8, 0x0180
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	Call sub_08066E08
	SetPlayerIdle
	MessageFromTargetPos TEXT_PROLOGUE, 0x10, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
script_08014D1E:
	EndBlock
	BeginBlock
	@ Left of links house
	CheckPlayerInRegion 0x01d8, 0x0160, 0x3050
	JumpIfNot script_08014D1E
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	MessageNoOverlap TEXT_PROLOGUE, 0x12
	WaitUntilTextboxCloses
	WalkNorth 0x0040
	SetAnimationState 0x0004
	Call sub_08066E08
	SetEntityPositionRelative 0x01f8, 0x00c8
	Call EnablePauseMenu
	EnablePlayerControl
script_08014D60:
	@ Between trees
	CallWithArg sub_0807F6B4, 0x000000e8
	JumpIf script_08014D60
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	MessageNoOverlap TEXT_PROLOGUE, 0x13
	WaitUntilTextboxCloses
	WalkNorth 0x0040
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetEntityPositionRelative 0x01e8, 0x0028
	Call EnablePauseMenu
	EnablePlayerControl
script_08014D96:
	@ Before hyrule town entry
	CheckPlayerInRegion 0x01f8, 0x0028, 0x2040
	JumpIfNot script_08014D96
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	MessageNoOverlap TEXT_PROLOGUE, 0x14
	WaitUntilTextboxCloses
	WalkNorth 0x0018
	SetLocalFlag SOUGEN_01_ZELDA
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
