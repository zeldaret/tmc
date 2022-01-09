@ Sanctuary Player move back from Vaati
SCRIPT_START script_PlayerDistanceFromVaati
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000d
	EndBlock
	DoPostScriptAction 0x0001
	WalkSouth 0x0020
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000c
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
