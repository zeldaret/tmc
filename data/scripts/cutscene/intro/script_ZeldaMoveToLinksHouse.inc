@ Intro Zelda moves to links house
SCRIPT_START script_ZeldaMoveToLinksHouse
	BeginBlock
	SetEntityPositionRelative 0x01e8, 0x0110
	SetEntitySpeed 0x00c0
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0007
	MoveTo 0x01e8, 0x0200
	MoveTo 0x01f8, 0x0218
	MoveTo 0x0220, 0x0228
	MoveTo 0x0240, 0x0228
	@ Now the camera follows Zelda
	CameraTargetEntity
	MoveTo 0x0290, 0x0228
	MoveTo 0x0290, 0x01f8
	SetEntitySpeed 0x0080
	MoveTo 0x0290, 0x01c8
	SetEntitySpeed 0x00c0
	MoveTo 0x0290, 0x0198
	Wait 0x001e
	@ Door is opening
	SetSyncFlag 0x00000010 @ Send signal to door
	MoveTo 0x0290, 0x0190
	DoPostScriptAction 0x0008
	MoveTo 0x0290, 0x0188
SCRIPT_END
	.2byte 0x0000
