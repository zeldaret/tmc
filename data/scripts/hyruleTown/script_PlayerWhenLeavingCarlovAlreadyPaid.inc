@ Player at Carlov when trying to leave when already paid
SCRIPT_START script_PlayerWhenLeavingCarlovAlreadyPaid
	EndBlock
	WaitForSomething2 0x00000001
	SetEntitySpeed 0x00e0
	_0807EDD4 0x0078, 0x0078
	DoPostScriptAction 0x0000
	Wait 0x0010
	_0807E5F8 0x00000002
	Call sub_0807921C
SCRIPT_END
