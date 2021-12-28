@ Hyrule Town Wheaton
SCRIPT_START script_Wheaton
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08010686:
	CheckEntityInteractType
	JumpIfNot script_08010686
	_0807E864
	_0807EB74
	HasRoomItemForSale
	Call sub_0807F77C
	MessageFromTargetTable 0x3c08, 0x3c09
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	Jump script_08010686
	.2byte 0x0000
