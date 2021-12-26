@ Hyrule Town Pita
SCRIPT_START script_Pita
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080106BE:
	CheckEntityInteractType
	JumpIfNot script_080106BE
	_0807E864
	_0807EB74
	Call sub_0807F2D4
	DoPostScriptAction 0x0000
	HasRoomItemForSale
	JumpIf script_080106E0
	MessageNoOverlap 0x3c07
	Jump script_08010726
script_080106E0:
	Call sub_08062EB8
	CallWithArg sub_0807F78C, 0x00000000
	WaitUntilTextboxCloses
	_0807E3E8
	JumpIfNot script_08010726
	WaitUntilTextboxCloses
	BuyItem 0x0000, 0x0000
	JumpIf script_0801070C
	MessageNoOverlap 0x3c04
	Jump script_08010726
script_0801070C:
	WaitPlayerGetItem
	ModHealth 0x0008
	Call sub_08062EDC
	JumpIf script_08010724
	MessageNoOverlap 0x3c06
	Jump script_08010726
script_08010724:
	WaitPlayerGetItem
script_08010726:
	WaitUntilTextboxCloses
	_0807E878
	DoPostScriptAction 0x0001
	Jump script_080106BE
	.2byte 0x0000
