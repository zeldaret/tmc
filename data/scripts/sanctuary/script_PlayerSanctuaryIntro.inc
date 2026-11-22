@ Player in Sanctuary during intro cutscene
script_PlayerSanctuaryIntro::
	BeginBlock
	SetAnimationState 0x0000
	SetEntityPositionRelative 0x0098, 0x0070
	EndBlock
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
	EndScript
