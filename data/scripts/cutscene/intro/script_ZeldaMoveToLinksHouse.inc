@ Intro Zelda moves to links house
SCRIPT_START script_ZeldaMoveToLinksHouse
	BeginBlock
	SetEntityPositionRelative 0x01e8, 0x0110
	SetEntitySpeed 0x00c0
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0007
	_0807EDD4 0x01e8, 0x0200
	_0807EDD4 0x01f8, 0x0218
	_0807EDD4 0x0220, 0x0228
	_0807EDD4 0x0240, 0x0228
	@ Now the camera follows Zelda
	CameraTargetEntity
	_0807EDD4 0x0290, 0x0228
	_0807EDD4 0x0290, 0x01f8
	SetEntitySpeed 0x0080
	_0807EDD4 0x0290, 0x01c8
	SetEntitySpeed 0x00c0
	_0807EDD4 0x0290, 0x0198
	Wait 0x001e
	@ Door is opening
	SetSyncFlag 0x00000010 @ Send signal to door
	_0807EDD4 0x0290, 0x0190
	DoPostScriptAction 0x0008
	_0807EDD4 0x0290, 0x0188
SCRIPT_END
	.2byte 0x0000
