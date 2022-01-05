@ Ezlo Cutscene OBJECT_69 Camera Target?
SCRIPT_START script_Object69CameraTarget
	SetSyncFlag 0x00000800
	WaitForSyncFlagAndClear 0x00001000
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	SetSyncFlag 0x00048000
	WaitForSyncFlagAndClear 0x00090000
	MessageFromTargetPos 0x1311, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00008000
	WaitForSyncFlagAndClear 0x00010000
	SetSyncFlag 0x00048000
	WaitForSyncFlagAndClear 0x00010000
	CallWithArg DeleteManager36, 0x00000001
	_0807F0C8 0x0000, 0x0000
	MessageFromTargetPos 0x1312, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000800
	WaitForSyncFlagAndClear 0x00001000
	StopBgm
	SetFadeTime 0x0004
	SetFade5
	WaitForFadeFinish
	SetRoomFlag 0x0001
	DoPostScriptAction 0x0006
SCRIPT_END
