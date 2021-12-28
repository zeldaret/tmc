@ Intro Smith 2
SCRIPT_START script_SmithIntro2
	BeginBlock
	SetAnimationState 0x0006
	SetEntitySpeed 0x0080
	_0807E9D4
	Call SetPriorityMessage
	EndBlock
	CheckGlobalFlag 0x0013
	JumpIf script_08009C4C
	DisablePlayerControl
	Wait 0x000a
	SetPlayerIdle
	StartPlayerScript script_PlayerMoveToSmith
	Call sub_0807DF28
	WaitForSyncFlagAndClear 0x00000008
	_0807EDD4 0x0080, 0x005c
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	Wait 0x000f
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x1009, 0x0000
	_0807E8E4_1 
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	FaceAwayFromPlayer
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x100b, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000008
	_0807EDD4 0x007c, 0x005c
	Wait 0x000f
	DoPostScriptAction 0x000d
	_0807EDD4 0x0084, 0x005c
	SetAnimationState 0x0006
	DoPostScriptAction 0x000c
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000008
	Call sub_08053250
	@ Give player rusty sword
	GivePlayerItem 0x0034
	WaitPlayerGetItem
	_0807E8E4_1
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x100c, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
script_08009C4C:
	@ Talk to Smith
	DoPostScriptAction 0x000a
script_08009C50:
	CheckEntityInteractType
	JumpIfNot script_08009C50
	SetPlayerIdle 
	FacePlayer 
	MessageNoOverlap 0x100e
	EnablePlayerControl 
	Jump script_08009C50
SCRIPT_END
	.2byte 0x0000
