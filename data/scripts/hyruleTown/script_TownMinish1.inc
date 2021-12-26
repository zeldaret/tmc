@ Hyrule Town TownMinish above carpenters
@ also in library, cafe
SCRIPT_START script_TownMinish1
	BeginBlock
	Call sub_0806ADFC
	DoPostScriptAction 0x000a
script_0800E6F4:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800E708
	Call sub_0806AEE4
	Jump script_0800E6F4
script_0800E708:
	EndBlock
	_0807E864
	Call sub_0806AFE8
	JumpIf script_0800E722
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800E6F4
script_0800E722:
	WaitUntilTextboxCloses
	_0807F034 0x0057
	WaitPlayerGetItem
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800E6F4
	.2byte 0x0000
