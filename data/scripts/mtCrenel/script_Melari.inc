@ Mines Melari
SCRIPT_START script_Melari
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0000
	EndBlock
	CheckInventory1 ITEM_FIRE_ELEMENT
	JumpIf script_0800CFD2
	CheckLocalFlag OYAKATA_DEMO
	JumpIfNot script_0800CFD2
	SetAnimation 0x0008
script_0800CFD2:
	CheckInventory1 ITEM_GREEN_SWORD
	JumpIf script_0800CFFA
	CheckInventory1 ITEM_FIRE_ELEMENT
	JumpIfNot script_0800CFEC
	SetSyncFlag 0x00000020
	Jump script_0800CFFA
script_0800CFEC:
	CheckLocalFlag OYAKATA_DEMO
	JumpIfNot script_0800CFFA
	SetSyncFlag 0x00000010
script_0800CFFA:
	EndBlock
	BeginBlock
	Call sub_08068910
	CheckEntityInteractType
	JumpIfNot script_0800CFFA
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	CheckInventory1 ITEM_GREEN_SWORD
	JumpIfNot script_0800D032
	FacePlayer
	SetIntVariable 0x00000000
	Call sub_0806C028
	MessageNoOverlap TEXT_MINISH2, 0x19
	Jump script_0800D17C
script_0800D032:
	CheckInventory1 ITEM_FIRE_ELEMENT
	JumpIfNot script_0800D098
	StartPlayerScript script_PlayerAtMelari
	WaitForSyncFlagAndClear 0x00000008
	FacePlayer
	SetIntVariable 0x00000000
	Call sub_0806C028
	MessageFromTargetPos TEXT_MINISH2, 0x5c, 0x0002
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerPlaceBrokenSword
	WaitForSyncFlagAndClear 0x00000008
	SetAnimationState 0x0002
	SetIntVariable 0x00000000
	Call sub_0806C028
	Wait 0x000f
	SetSyncFlag 0x00000020
	StartPlayerScript script_PlayerGetWhiteSword
	WaitForSyncFlagAndClear 0x00000008
	MessageFromTargetPos TEXT_MINISH2, 0x5d, 0x0002
	Jump script_0800D17C
script_0800D098:
	CheckLocalFlag OYAKATA_DEMO
	JumpIfNot script_0800D0A8
	MessageFromTarget TEXT_MINISH2, 0x3e
	Jump script_0800D17C
script_0800D0A8:
	StartPlayerScript script_PlayerAtMelari
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000004
	FacePlayer
	SetIntVariable 0x00000000
	Call sub_0806C028
	MessageFromTargetPos TEXT_MINISH2, 0x3d, 0x0002
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerPlaceBrokenSword
	WaitForSyncFlagAndClear 0x00000008
	SetAnimationState 0x0002
	SetIntVariable 0x00000000
	Call sub_0806C028
	PlaySound SFX_TASK_COMPLETE
	Call sub_08068964
script_0800D108:
	ComparePlayerAction PLAYER_ITEMGET
	JumpIf script_0800D108
	PlaySound SFX_F8
	SetSyncFlag 0x00000010
	SetLocalFlag OYAKATA_DEMO
	MessageFromTargetPos TEXT_MINISH2, 0x3e, 0x0002
	WaitUntilTextboxCloses
	Wait 0x000f
	SetAnimation 0x0009
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Wait 0x001e
	MessageFromTargetPos TEXT_MINISH2, 0x3f, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0008
	Wait 0x003c
	Call sub_08095164
	EzloMessage TEXT_MINISH2, 0x40
script_0800D17C:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Call EnablePauseMenu
	Jump script_0800CFFA
	.2byte 0x0000
