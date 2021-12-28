@ Hyrule Town Intro Player
SCRIPT_START script_PlayerIntroTown
	SetEntitySpeed 0x0080
	WalkNorth 0x0020
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
	Call sub_080791BC
SCRIPT_END
	.2byte 0x0000
