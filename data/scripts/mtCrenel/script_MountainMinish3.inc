@ Mines Mountain Minish helpers
SCRIPT_START script_MountainMinish3
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_0800D282:
	CheckInventory1 ITEM_FIRE_ELEMENT
	JumpIf script_0800D292
	CheckLocalFlag OYAKATA_DEMO
	JumpIf script_0800D2EA
script_0800D292:
	BeginBlock
	CheckSyncFlagAndClear 0x00000001
	JumpIf script_0800D2C6
	CheckEntityInteractType
	JumpIf script_0800D2B0
	Call sub_0806811C
	EndBlock
	Jump script_0800D282
script_0800D2B0:
	EndBlock
	SetPlayerIdle
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800D282
script_0800D2C6:
	EndBlock
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetSyncFlag 0x00000004
	SetAnimation 0x000c
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x00000004
script_0800D2EA:
	SetAnimation 0x000b
script_0800D2EE:
	CheckEntityInteractType
	JumpIfNot script_0800D2EE
	SetPlayerIdle
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800D2EE
