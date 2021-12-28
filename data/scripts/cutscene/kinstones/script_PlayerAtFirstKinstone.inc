@ Hyrule Town Kinstone cutscene Player
SCRIPT_START script_PlayerAtFirstKinstone
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0000
	_0807EB44 0x0006
	DoPostScriptAction 0x0004
	Wait 0x003c
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x0338
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call sub_080791BC
SCRIPT_END
