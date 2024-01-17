@ Player trying to follow Vaati outside castle
SCRIPT_START script_PlayerTryToFollowVaati
	BeginBlock
	SetEntitySpeed 0x0200
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x01f8, 0x0148
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
