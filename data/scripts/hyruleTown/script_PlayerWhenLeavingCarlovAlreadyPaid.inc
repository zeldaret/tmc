@ Player at Carlov when trying to leave when already paid
SCRIPT_START script_PlayerWhenLeavingCarlovAlreadyPaid
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	SetEntitySpeed 0x00e0
	MoveTo 0x0078, 0x0078
	DoPostScriptAction 0x0000
	Wait 0x0010
	SetSyncFlag 0x00000002
	Call PlayerSetNormalAndCollide
SCRIPT_END
