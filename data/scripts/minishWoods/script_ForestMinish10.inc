@ Minish Village ForestMinish at the back of the pico flowers
SCRIPT_START script_ForestMinish10
	BeginBlock
	CheckInventory1 ITEM_JABBERNUT
	JumpIfNot script_0800C5FE
	Call ForestMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800CD92:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800CDA6
	Call sub_08060158
	Jump script_0800CD92
script_0800CDA6:
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	CheckLocalFlag 0x009d
	JumpIf script_0800CDC4
	SetLocalFlag 0x009d
	MessageNoOverlap TEXT_FOREST_MINISH, 0x3d
	Jump script_0800CF40
script_0800CDC4:
	CheckGlobalFlag DRUG_1
	JumpIf script_0800CE46
	CheckGlobalFlag DRUG_COUNT
	JumpIfNot script_0800CDEC
	CheckRoomFlag 0x0000
	JumpIfNot script_0800CF2A
	SetGlobalFlag DRUG_1
	ClearGlobalFlag DRUG_COUNT
	MessageNoOverlap TEXT_FOREST_MINISH, 0x41
	Jump script_0800CF40
script_0800CDEC:
	MessageNoOverlap TEXT_FOREST_MINISH, 0x3e
	WaitUntilTextboxCloses
	CheckBottleContaining ITEM_BOTTLE_HALF_MILK
	JumpIfNot script_0800CE14
	MessageNoOverlap TEXT_FOREST_MINISH, 0x4b
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	InitItemGetSequence ITEM_BOTTLE_HALF_MILK
	WaitPlayerGetItem
	Jump script_0800CE32
script_0800CE14:
	CheckBottleContaining ITEM_BOTTLE_MILK
	JumpIfNot script_0800CF40
	MessageNoOverlap TEXT_FOREST_MINISH, 0x4b
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	InitItemGetSequence ITEM_BOTTLE_MILK
	WaitPlayerGetItem
script_0800CE32:
	FaceAwayFromPlayer
	SetGlobalFlag DRUG_COUNT
	Call sub_08060340
	MessageNoOverlap TEXT_FOREST_MINISH, 0x3f
	Jump script_0800CF02
script_0800CE46:
	CheckGlobalFlag DRUG_2
	JumpIf script_0800CEA6
	CheckGlobalFlag DRUG_COUNT
	JumpIfNot script_0800CE6E
	CheckRoomFlag 0x0000
	JumpIfNot script_0800CF2A
	SetGlobalFlag DRUG_2
	ClearGlobalFlag DRUG_COUNT
	MessageNoOverlap TEXT_FOREST_MINISH, 0x45
	Jump script_0800CF40
script_0800CE6E:
	MessageNoOverlap TEXT_FOREST_MINISH, 0x42
	WaitUntilTextboxCloses
	CheckBottleContaining ITEM_BOTTLE_MINERAL_WATER
	JumpIfNot script_0800CF40
	MessageNoOverlap TEXT_FOREST_MINISH, 0x4c
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	InitItemGetSequence ITEM_BOTTLE_MINERAL_WATER
	WaitPlayerGetItem
	FaceAwayFromPlayer
	SetGlobalFlag DRUG_COUNT
	Call sub_08060340
	MessageNoOverlap TEXT_FOREST_MINISH, 0x43
	Jump script_0800CF02
script_0800CEA6:
	CheckGlobalFlag DRUG_3
	JumpIf script_0800CF3C
	CheckGlobalFlag DRUG_COUNT
	JumpIfNot script_0800CECE
	CheckRoomFlag 0x0000
	JumpIfNot script_0800CF2A
	SetGlobalFlag DRUG_3
	ClearGlobalFlag DRUG_COUNT
	MessageNoOverlap TEXT_FOREST_MINISH, 0x49
	Jump script_0800CF40
script_0800CECE:
	MessageNoOverlap TEXT_FOREST_MINISH, 0x46
	WaitUntilTextboxCloses
	CheckBottleContaining ITEM_BOTTLE_RED_POTION
	JumpIfNot script_0800CF40
	MessageNoOverlap TEXT_FOREST_MINISH, 0x4d
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	InitItemGetSequence ITEM_BOTTLE_RED_POTION
	WaitPlayerGetItem
	FaceAwayFromPlayer
	SetGlobalFlag DRUG_COUNT
	Call sub_08060340
	MessageNoOverlap TEXT_FOREST_MINISH, 0x47
script_0800CF02:
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
script_0800CF0C:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800CF20
	Call sub_08060158
	Jump script_0800CF0C
script_0800CF20:
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
script_0800CF2A:
	MessageNoOverlap TEXT_FOREST_MINISH, 0x40
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800CF0C
script_0800CF3C:
	MessageNoOverlap TEXT_FOREST_MINISH, 0x4a
script_0800CF40:
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800CD92
	.2byte 0x0000
