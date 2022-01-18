@ Player after ToD
SCRIPT_START script_PlayerAfterToD
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
