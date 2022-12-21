@ BigGoron Kinstone cutscene 4
SCRIPT_START script_BigGoronKinstone4
	MoveToOffset 0xfff8, 0x0000
	MoveToOffset 0x0010, 0x0000
	MoveToOffset 0xfff0, 0x0000
	MoveToOffset 0x0010, 0x0000
	MoveToOffset 0xfff8, 0x0000
	_0807F0C8 0x0000, 0x0000
	Wait 0x001e
	MessageNoOverlap TEXT_GORONS, 0x00
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000006
	WaitForSyncFlagAndClear 0x00000001
	_0807F0C8 0xffff, 0x0000
