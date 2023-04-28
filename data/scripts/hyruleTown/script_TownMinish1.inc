@ Hyrule Town TownMinish above carpenters
@ also in library, cafe
SCRIPT_START script_TownMinish1
	BeginBlock
	Call TownMinish_MakeInteractable
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
	SetPlayerIdle
	Call sub_0806AFE8
	JumpIf script_0800E722
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800E6F4
script_0800E722:
	WaitUntilTextboxCloses
	GivePlayerItem ITEM_RUPEE50
	WaitPlayerGetItem
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800E6F4
	.2byte 0x0000
