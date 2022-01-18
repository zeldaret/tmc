@ Ezlo being bullied Player
SCRIPT_START script_PlayerEzloBeingBullied
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
