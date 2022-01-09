@ Intro Ceremony Player
SCRIPT_START script_PlayerAtIntroCeremony
	SetEntityPositionRelative 0x01a8, 0x0058
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000400
	ClearSyncFlag 0x00000002
	EndBlock
	Call SetPlayerActionNormal
SCRIPT_END
