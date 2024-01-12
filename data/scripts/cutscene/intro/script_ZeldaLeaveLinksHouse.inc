@ Intro Zelda leaving
SCRIPT_START script_ZeldaLeaveLinksHouse
	BeginBlock
	SetEntitySpeed 0x0100
	SetAnimationState 0x0006
	EndBlock
	MoveTo 0x0078, 0x0060
	MoveTo 0x0078, 0x007c
	Wait 0x001e
	Call sub_0805368C
	Wait 0x0008
	MoveTo 0x0078, 0x0098
	DoPostScriptAction 0x0008
	SetFadeTime 0x0010
	SetFade5
	WaitForFadeFinish
	Call sub_08053634
	DoPostScriptAction 0x0006
SCRIPT_END
