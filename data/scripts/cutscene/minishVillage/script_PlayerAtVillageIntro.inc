@ Minish Village Intro Player
SCRIPT_START script_PlayerAtVillageIntro
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x0208, 0x0358
	SetEntitySpeed 0x0080
	MoveTo 0x0208, 0x0340
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
