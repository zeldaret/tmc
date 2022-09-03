@ Graveyard King Gustav
SCRIPT_START script_KingGustav
	BeginBlock
	DoPostScriptAction 0x0008
	Call SetCollisionLayer2
	EndBlock
script_0800D962:
	CheckPlayerInRegion 0x0118, 0x0038, 0x3050
	JumpIfNot script_0800D962
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtKingGustav
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0007
	PlaySound SFX_ELEMENT_FLOAT
	SetEntityVelocity 0xffff8000
	MessageNoOverlap TEXT_GUSTAF2, 0x01
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	MessageNoOverlap TEXT_GUSTAF2, 0x02
	WaitUntilTextboxCloses
	SetEntityVelocity 0x00010000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	GiveKinstone 0x006d
	WaitPlayerGetItem
	EzloMessage TEXT_GUSTAF2, 0x03
	WaitUntilTextboxCloses
	Wait 0x003c
	SetLocalFlag 0x0032
	PlaySound SFX_113
	SetIntVariable 1
	Call NPC4E_DoScreenTransition
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
