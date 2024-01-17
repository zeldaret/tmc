@ Player at Carlov
SCRIPT_START script_PlayerAtCarlov
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x00e0
	MoveTo 0x0078, 0x0068
	DoPostScriptAction 0x0000
	Wait 0x0010
	SetSyncFlag 0x00000001
	Call PlayerSetNormalAndCollide
SCRIPT_END
