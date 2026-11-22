@ Veil Falls NPC4E Source of the Flow during opening Kinstone cutscene
SCRIPT_START script_NPC4ESouurceOfTheFlowOpening
	SetSyncFlag 0x00000003
	WaitForSyncFlagAndClear 0x0000000c
	InitScreenShake 0x0000, 0x0000
	PlaySound SFX_SECRET
	EzloMessage TEXT_EZLO, 0x1f
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
script_08016028:
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
