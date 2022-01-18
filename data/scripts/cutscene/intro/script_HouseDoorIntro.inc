@ Intro house door
SCRIPT_START script_HouseDoorIntro
	BeginBlock
	EndBlock
	WaitForSyncFlagAndClear 0x00000010
	@ Open door
	PlaySound SFX_F0
	DoPostScriptAction 0x0008
	Wait 0x001e
	@ Close door
	PlaySound SFX_F1
	DoPostScriptAction 0x0007
	Wait 0x005a
	SetFadeTime 0x0004
	@ Circle transition
	_0807E80C 0x00000000
	WaitForFadeFinish @ Wait for end of transition
	Call sub_0805367C
SCRIPT_END
	.2byte 0x0000
