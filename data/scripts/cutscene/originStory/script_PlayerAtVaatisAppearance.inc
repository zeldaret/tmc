@ Player outside castle for Vaati appearance
SCRIPT_START script_PlayerAtVaatisAppearance
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x00b8
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call sub_080791BC
SCRIPT_END
