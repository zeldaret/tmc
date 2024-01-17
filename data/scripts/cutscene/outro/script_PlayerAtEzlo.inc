@ Outro Player move to Ezlo
SCRIPT_START script_PlayerAtEzlo
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0088, 0x0080
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
	.2byte 0x0000
