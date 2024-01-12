@ Player after defeating V2
SCRIPT_START script_PlayerV2Defeated
	BeginBlock
	SetEntitySpeed 0x00c0
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x0001
	MoveTo 0x00a8, 0x002c
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
