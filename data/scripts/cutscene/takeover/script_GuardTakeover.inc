@ Western Wood Cutscene Guard
SCRIPT_START script_GuardTakeover
	BeginBlock
	SetEntitySpeed 0x0080
	SetAnimationState 0x0000
	SetAnimation 0x0000
	EndBlock
	WaitForSyncFlag 0x00000040
	SetAnimation 0x0004
	WalkNorth 0x00c0
	SetAnimation 0x0000
	Wait 0x003c
	SetSyncFlag 0x00000080
	WaitForSyncFlag 0x00000200
	DoPostScriptAction 0x0005
	WaitForSyncFlag 0x00000400
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
