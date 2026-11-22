@ Player tries to enter DrLeft
script_PlayerAtDrLeftDoor::
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	WalkSouth 0x0008
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
	EndScript
	.2byte 0x0000
