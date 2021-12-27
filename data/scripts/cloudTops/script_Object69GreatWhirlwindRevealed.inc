@ Cloud Tops OBJECT_69 great whirlwind revealed
SCRIPT_START script_Object69GreatWhirlwindRevealed
	BeginBlock
	Call sub_0807F360
	SetEntitySpeed 0x0700
	_0807F0B4 0x0007
	CameraTargetEntity
	Call sub_0807FBC4
	EndBlock
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x0000000a
	WaitForSyncFlagAndClear 0x00000004
	_0807EEB4
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call sub_0807FBCC
	_0807E878
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
