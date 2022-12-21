@ Player at Melari place broken Sword
SCRIPT_START script_PlayerPlaceBrokenSword
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0170, 0x0120
	MoveTo 0x01a8, 0x0120
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
