@ Hyrule Town Wheaton
SCRIPT_START script_Wheaton
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08010686:
	CheckEntityInteractType
	JumpIfNot script_08010686
	SetPlayerIdle
	FacePlayer
	HasRoomItemForSale
	Call GetConditionSet
	MessageFromTargetTable 0x3c08, 0x3c09
	WaitUntilTextboxCloses
	EnablePlayerControl 
	SetAnimationState 0x0004
	Jump script_08010686
	.2byte 0x0000
