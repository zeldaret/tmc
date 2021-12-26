@ DHC OBJECT_69 After defeating V2
SCRIPT_START script_Object69V2Defeated
	BeginBlock
	Call sub_0807DF28
	_0807E864
	EndBlock
	StopBgm
	StopBgm
	Wait 0x0078
	_0807EB28 0x1638
	WaitUntilTextboxCloses
	SetRoomFlag 0x0000
	Wait 0x001e
	_0807E5F8 0x00000001
	StartPlayerScript script_PlayerV2Defeated
	WaitForSomething2 0x00000002
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
