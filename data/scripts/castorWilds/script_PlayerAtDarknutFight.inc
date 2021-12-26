@ Player at darknut in Castor Wilds
SCRIPT_START script_PlayerAtDarknutFight
	BeginBlock
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSomething2 0x00000002
	SetEntitySpeed 0x00e0
	_0807EDD4 0x0088, 0x0090
	ClearLocalFlag 0x0039
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0004
	Wait 0x002c
	LoadRoomEntityList gUnk_080DA260
	Wait 0x001e
	_0807E5F8 0x00000001
	Call sub_0807921C
SCRIPT_END
