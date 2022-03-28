@ Lon Lon Ranch Malon lost key
SCRIPT_START script_MalonLostKey
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x00c0
	_0807E9D4
script_0800B4BC:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800B4D4
	CheckSyncFlagAndClear 0x00000008
	JumpIf script_0800B4F0
	Jump script_0800B4BC
script_0800B4D4:
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageFromTarget 0x200b
	EndBlock 
	EnablePlayerControl 
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_0800B4BC
script_0800B4F0:
	EndBlock
	ClearSyncFlag 0x00000008
	_0807EDD4 0x0134, 0x0288
	SetAnimationState 0x0004
	WaitForSyncFlagAndClear 0x00000008
	MessageFromTarget 0x2016
	WaitUntilTextboxCloses
	_0807EDD4 0x0158, 0x0288
	DoPostScriptAction 0x0000
	SetAnimationState 0x0000
	Wait 0x000a
	SetSyncFlag 0x00000010
	DoPostScriptAction 0x0008
	Wait 0x001e
	SetSyncFlag 0x00000010
	SetGlobalFlag 0x001d
	Call PlayerSetNormalAndCollide
	EnablePlayerControl
	Call sub_0807FBCC
	DoPostScriptAction 0x0006
SCRIPT_END
