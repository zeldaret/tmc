@ DHC Zelda trying to escape the collapsing castle
SCRIPT_START script_ZeldaCastleEscape
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000b
	Call sub_08066D04
	EndBlock
	BeginBlock
	Call sub_08066D14
	SetEntityPositionRelative 0x0198, 0x0148
	DoPostScriptAction 0x0007
	EndBlock
	MoveTo 0x0198, 0x01a8
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	Call sub_08066D4C
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
