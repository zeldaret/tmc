@ Ezlo octoroks defeated Player
SCRIPT_START script_PlayerDefeatedOctoroks
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x0388, 0x0180
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
