@ Player at Castle Collapsing
SCRIPT_START script_PlayerCastleCollapsing
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	MoveToOffset 0x0000, 0x0080
	SetSyncFlag 0x00000004
	Call SetPlayerActionNormal
SCRIPT_END
