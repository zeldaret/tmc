@ Library OBJECT_69 all books collected
SCRIPT_START script_Object69AllBooksCollected
	BeginBlock
	SetEntityPositionRelative 0x0068, 0x0068
	_0807F0B4 0x0004
	CameraTargetEntity
	EndBlock
	Wait 0x001e
	_0807E5F8 0x00000002
	WaitForSomething 0x00000001
	Wait 0x000f
	_0807F0B4 0x0004
	CameraTargetPlayer
	Wait 0x001e
	_0807E5F8 0x00000004
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
