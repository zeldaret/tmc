@ Player at intro outside castle
SCRIPT_START script_PlayerIntroBusinessScrub2
	SetEntitySpeed 0x0100
	MoveTo 0x0238, 0x0228
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000010
	Call SetPlayerActionNormal
SCRIPT_END
