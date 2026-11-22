@ Ezlo being bullied Player
script_PlayerEzloBeingBullied::
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
	EndScript
	.2byte 0x0000
