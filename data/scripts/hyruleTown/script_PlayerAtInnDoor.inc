@ Hyrule Town player tries to enter Inn
SCRIPT_START script_PlayerAtInnDoor
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	_0807ECC4 0x0010
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call sub_080791BC
SCRIPT_END
	.2byte 0x0000
