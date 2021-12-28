@ Minish Woods Bomb Minish
SCRIPT_START script_BombMinish
	BeginBlock
	SetAnimationState 0x0004
	Call sub_08060090
	DoPostScriptAction 0x000a
	CheckKinstoneFused 0x001c
	JumpIf script_08009FD2
	CheckInventory1 0x0007
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
	Call sub_0807DF28
	DoPostScriptAction 0x000b
	StartPlayerScript script_PlayerAtBombMinish
	WaitForSyncFlagAndClear 0x00000002
	Call sub_0806014C
	MessageFromTargetPos 0x1f01, 0x0000
	WaitUntilTextboxCloses
	Wait 0x001e
	GivePlayerItem 0x0065
	WaitPlayerGetItem
	DoPostScriptAction 0x000a
	Call sub_0807DF50
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
	CallWithArg CheckMessageEqual, 0x00001f03
	JumpIf script_08009FB6
	EnablePlayerControl
	Jump script_08009F86
script_08009FB6:
	Wait 0x0008
	PlaySound SFX_103
	CallWithArg sub_0806030C, 0x00000063
	Wait 0x0008
	EnablePlayerControl
	Jump script_08009F86
script_08009FD2:
	EndBlock
	CheckLocalFlag 0x00b0
	JumpIf script_0800A024
script_08009FDC:
	EndBlock
	BeginBlock
	Call sub_08060158
	CheckEntityInteractType
	JumpIfNot script_08009FDC
	EndBlock 
	SetPlayerIdle 
	MessageNoOverlap 0x1f0e
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIf script_0800A002
	EnablePlayerControl
	Jump script_08009FDC
script_0800A002:
	Wait 0x0008
	GivePlayerItem 0x0008
	Call sub_08060318
	WaitPlayerGetItem
	Wait 0x0008
	FaceAwayFromPlayer 
	MessageFromTarget 0x1f13
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
	CheckInventory1 0x0008
	JumpIf script_0800A052
	MessageNoOverlap 0x1f14
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIf script_0800A002
	EnablePlayerControl
	Jump script_0800A024
script_0800A052:
	MessageNoOverlap 0x1f11
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIf script_0800A064
	EnablePlayerControl
	Jump script_0800A024
script_0800A064:
	Wait 0x0008
	GivePlayerItem 0x0007
	Call sub_08060318
	WaitPlayerGetItem
	Wait 0x0008
	FaceAwayFromPlayer 
	MessageFromTarget 0x1f10
	WaitUntilTextboxCloses
	EnablePlayerControl 
	Jump script_0800A024
	.2byte 0x0000
