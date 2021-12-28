@ Player after Ezlo Cutscene
SCRIPT_START script_PlayerSeenOriginStory
	BeginBlock
	SetEntitySpeed 0x0100
	SetEntityPositionRelative 0x0208, 0x0148
	EndBlock
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
