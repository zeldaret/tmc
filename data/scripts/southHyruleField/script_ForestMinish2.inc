@ Hyrule Fields? ForestMinish with Beanstock left to Minish Woods
SCRIPT_START script_ForestMinish2
	BeginBlock
	Call ForestMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800C592:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800C5A6
	Call sub_08060158
	EndBlock
	Jump script_0800C592
script_0800C5A6:
	EndBlock
	SetPlayerIdle
	CheckInventory1 ITEM_KINSTONE_BAG
	JumpIfNot script_0800C5BC
	Call sub_08060208
	Jump script_0800C5C0
script_0800C5BC:
	MessageNoOverlap 0x4710
script_0800C5C0:
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800C592
