@ Player at Graveyard house door
SCRIPT_START script_PlayerAtGraveyardHouseDoor
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0001
	MoveTo 0x01a0, 0x01b0
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	Wait 0x000a
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000001
	DoPostScriptAction 0x000d
	SetEntitySpeed 0x0100
	WalkSouth 0x0010
	Call SetPlayerActionNormal
SCRIPT_END
