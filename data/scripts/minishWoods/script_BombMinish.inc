@ Minish Woods Bomb Minish
SCRIPT_START script_BombMinish
	BeginBlock
	SetAnimationState 0x0004
	Call ForestMinish_MakeInteractable
	DoPostScriptAction 0x000a
	CheckKinstoneFused KINSTONE_1C
	JumpIf script_08009FD2
	CheckInventory1 ITEM_BOMBS
	JumpIf script_08009F84
	EndBlock
script_08009F36:
	EndBlock
	BeginBlock
	Call sub_08060158
	CheckEntityInteractType
	JumpIfNot script_08009F36
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	DoPostScriptAction 0x000b
	StartPlayerScript script_PlayerAtBombMinish
	WaitForSyncFlagAndClear 0x00000002
	Call sub_0806014C
	MessageFromTargetPos TEXT_BELARI, 0x01, 0x0000
	WaitUntilTextboxCloses
	Wait 0x001e
	GivePlayerItem ITEM_BOMBBAG
	WaitPlayerGetItem
	DoPostScriptAction 0x000a
	Call EnablePauseMenu
	EnablePlayerControl
script_08009F84:
	EndBlock
script_08009F86:
	EndBlock
	BeginBlock
	Call sub_08060158
	CheckEntityInteractType
	JumpIfNot script_08009F86
	EndBlock
	SetPlayerIdle
	Call sub_080602BC
	WaitUntilTextboxCloses
	CallWithArg CheckMessageEqual, (TEXT_BELARI << 8) | 0x3
	JumpIf script_08009FB6
	EnablePlayerControl
	Jump script_08009F86
script_08009FB6:
	Wait 0x0008
	PlaySound SFX_103
	CallWithArg script_ModBombs, 0x00000063
	Wait 0x0008
	EnablePlayerControl
	Jump script_08009F86
script_08009FD2:
	EndBlock
	CheckLocalFlag KHOUSE26_REMOCON
	JumpIf script_0800A024
script_08009FDC:
	EndBlock
	BeginBlock
	Call sub_08060158
	CheckEntityInteractType
	JumpIfNot script_08009FDC
	EndBlock
	SetPlayerIdle
	MessageNoOverlap TEXT_BELARI, 0x0e
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_0800A002
	EnablePlayerControl
	Jump script_08009FDC
script_0800A002:
	Wait 0x0008
	GivePlayerItem ITEM_REMOTE_BOMBS
	Call sub_08060318
	WaitPlayerGetItem
	Wait 0x0008
	FaceAwayFromPlayer
	MessageFromTarget TEXT_BELARI, 0x13
	WaitUntilTextboxCloses
	SetLocalFlag 0x00b0
	EnablePlayerControl
script_0800A024:
	EndBlock
	BeginBlock
	Call sub_08060158
	CheckEntityInteractType
	JumpIfNot script_0800A024
	EndBlock
	SetPlayerIdle
	CheckInventory1 ITEM_REMOTE_BOMBS
	JumpIf script_0800A052
	MessageNoOverlap TEXT_BELARI, 0x14
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_0800A002
	EnablePlayerControl
	Jump script_0800A024
script_0800A052:
	MessageNoOverlap TEXT_BELARI, 0x11
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_0800A064
	EnablePlayerControl
	Jump script_0800A024
script_0800A064:
	Wait 0x0008
	GivePlayerItem ITEM_BOMBS
	Call sub_08060318
	WaitPlayerGetItem
	Wait 0x0008
	FaceAwayFromPlayer
	MessageFromTarget TEXT_BELARI, 0x10
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800A024
	.2byte 0x0000
