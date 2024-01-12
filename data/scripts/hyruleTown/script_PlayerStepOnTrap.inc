@ Player at Librari move on trap
SCRIPT_START script_PlayerStepOnTrap
	BeginBlock
	SetAnimationState 0x0004
	SetEntitySpeed 0x0100
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x0078, 0x0080
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
