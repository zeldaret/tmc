@ DHC Player trying to escape the collapsing castle
SCRIPT_START script_PlayerCastleEscape
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0198, 0x01c8
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
