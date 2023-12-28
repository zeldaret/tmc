@ Rem falling asleep
SCRIPT_START script_RemFallingAsleep
	BeginBlock
	CheckLocalFlag 0x0060
	JumpIf script_08012FD2
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtRem
	SetLocalFlag 0x0060
	ClearLocalFlag 0x0061
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	SetAction 0x0004
	Call sub_0806A958
	CallWithArg sub_0807F93C, 0x0000f2f4
	Call EnablePauseMenu
	EnablePlayerControl
	SetLocalFlag 0x0062
	Jump script_08012FFA
script_08012FD2:
	BeginBlock
	SetAnimation 0x000d
	SetAction 0x0005
	SetLocalFlag 0x0062
	CallWithArg sub_0807F93C, 0x0000f2f4
	Call sub_0806AA10
	EndBlock
	CheckInventory1 ITEM_QST_MUSHROOM
	JumpIf script_08013006
script_08012FFA:
	TriggerInteract
	MessageNoOverlap TEXT_REM, 0x03
	WaitUntilTextboxCloses
	Jump script_08012FFA
script_08013006:
	TriggerInteract
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EndBlock
	PlaySound SFX_TASK_COMPLETE
	InitItemGetSequence ITEM_QST_MUSHROOM
	WaitPlayerGetItem
	Wait 0x001e
	_0807E8E4_0
	Call DeleteNpcRem
	SetAnimation 0x000b
	Wait 0x003c
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_REM, 0x04
	WaitUntilTextboxCloses
	Wait 0x001e
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_REM, 0x0e
	WaitUntilTextboxCloses
	Wait 0x001e
	Call sub_0806A9E8
	SetAnimation 0x000f
	Wait 0x00f0
	MessageNoOverlap TEXT_REM, 0x05
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000200
	GivePlayerItem ITEM_PEGASUS_BOOTS
	WaitPlayerGetItem
	FaceAwayFromPlayer
	MessageNoOverlap TEXT_REM, 0x06
	WaitUntilTextboxCloses
	SetAction 0x0001
	Call EnablePauseMenu
	EnablePlayerControl
script_0801308A:
	Call sub_0806A96C
	JumpIfNot script_0801308A
	MessageNoOverlap TEXT_REM, 0x07
	WaitUntilTextboxCloses
	SetAction 0x0001
script_0801309E:
	Call sub_0806A96C
	JumpIfNot script_0801309E
	MessageNoOverlap TEXT_REM, 0x0d
	WaitUntilTextboxCloses
	SetAction 0x0001
	Jump script_0801308A
script_080130B6:
	CheckLocalFlag NPC37_REM_SLEEP
	JumpIfNot script_080130C4
	Call sub_0806A9B0
script_080130C4:
	EndBlock
script_080130C6:
	Call sub_0806A96C
	JumpIfNot script_080130C6
	SetPlayerIdle
	Call sub_0806AA18
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAction 0x0001
	Jump script_080130C6
