@ Ezlo Cutscene OBJECT_69 Camera Target?
SCRIPT_START script_Object69CameraTarget
	_0807E5F8 0x00000800
	WaitForSomething2 0x00001000
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	_0807E5F8 0x00048000
	WaitForSomething2 0x00090000
	MessageFromTargetPos 0x1311, 0x0002
	WaitUntilTextboxCloses
	_0807E5F8 0x00008000
	WaitForSomething2 0x00010000
	_0807E5F8 0x00048000
	WaitForSomething2 0x00010000
	CallWithArg DeleteManager36, 0x00000001
	_0807F0C8 0x0000, 0x0000
	MessageFromTargetPos 0x1312, 0x000c
	WaitUntilTextboxCloses
	_0807E5F8 0x00000800
	WaitForSomething2 0x00001000
	StopBgm
	_0807E778 0x0004
	DoFade5
	WaitFor_2
	SetRoomFlag 0x0001
	DoPostScriptAction 0x0006
SCRIPT_END
