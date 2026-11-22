@ After ToD King Gustaf
script_KingGustafHologram::
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_08012368:
	CheckLocalFlag 0x0004
	JumpIfNot script_08012368
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	StopBgm
	BeginBlock
	SetFadeTime 0x0004
	SetFadeMask 0x00007fff
	SetFade5
	SetFadeProgress 0x0080
	EndBlock
	WaitForFadeFinish
	PlayBgm BGM_ELEMENTAL_SANCTUARY
	EzloMessage TEXT_GUSTAF, 0x01
	WaitUntilTextboxCloses
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0007
	PlaySound SFX_ELEMENT_FLOAT
	SetEntityVelocity 0xffff8000
	Wait 0x003c
	PlayerIdleNorth
	StartPlayerScript script_PlayerAfterToD
	WaitForSyncFlagAndClear 0x00000001
	MessageNoOverlap TEXT_GUSTAF, 0x02
	WaitUntilTextboxCloses
	StopBgm
	SetEntityVelocity 0x00010000
	Wait 0x003c
	BeginBlock
	SetFadeTime 0x0004
	SetFadeMask 0xffffffff
	SetFade4
	SetFadeProgress 0x0080
	EndBlock
	WaitForFadeFinish
	PlayBGM
	EzloMessage TEXT_GUSTAF, 0x03
	WaitUntilTextboxCloses
	SetIntVariable 0x00000203
	Call LoadMenu
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
