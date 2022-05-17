@ Maybe also DHC Zelda stone? -> gUnk_080FCEBC
SCRIPT_START script_ZeldaStoneDHC
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0000
	DoPostScriptAction 0x0014
	EndBlock
	Wait 0x003c
	PlaySound SFX_105
	Wait 0x003c
	PlaySound SFX_9B
	Wait 0x001e
	MessageNoOverlap TEXT_VAATI2, 0x25
	WaitUntilTextboxCloses
	Wait 0x003c
	Call sub_08053C84
SCRIPT_END
	.2byte 0x0000
