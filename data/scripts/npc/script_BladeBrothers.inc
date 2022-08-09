@ Blade Brothers
SCRIPT_START script_BladeBrothers
	BeginBlock
	Call SetPriorityMessage
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080161FE:
	Call sub_08068C28
script_08016204:
	CheckEntityInteractType
	JumpIfNot script_08016204
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	FacePlayer
	Call sub_08068CA0
	JumpIf script_0801633E
	Call sub_08068CFC
	JumpIfNot script_08016332
	Call sub_08068DB8
	WaitUntilTextboxCloses
	Call sub_08068DD0
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08016346
	StartPlayerScript script_PlayerAtBladeBrothers
	WaitForSyncFlagAndClear 0x00000001
	FacePlayer
	Call sub_08068C8C
	JumpIf script_08016262
	Call sub_08068DE8
	WaitUntilTextboxCloses
	Wait 0x001e
script_08016262:
	Call sub_08068E00
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0001
	Call WaitForAnimDone
	Call BladeBrothers_LearnSkill
	Call sub_08068C8C
	JumpIf script_0801631C
	Call sub_08068F00
	Call sub_08068F14
	Call sub_08068BB4
	CallWithArg EquipItem, 0x00010001
	Call BladeBrothers_StartPlayerDemonstration
	Call WaitForPlayerMacro
	Call sub_08068BD0
	Wait 0x001e
	Call sub_08068E18
	WaitUntilTextboxCloses
	Call BladeBrothers_ResetLastSwordMove
	Call EnablePauseMenu
	EnablePlayerControl
script_080162CC:
	EndBlock
	BeginBlock
	Call BladeBrothers_CheckLastSwordMove
	JumpIf script_080162F6
	CheckEntityInteractType
	JumpIf script_080162E4
	Jump script_080162CC
script_080162E4:
	EndBlock
	SetPlayerIdle
	Call sub_08068E78
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_080162CC
script_080162F6:
	EndBlock
	DisablePlayerControl
	Call WaitForPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	StopBgm
	PlaySound SFX_TASK_COMPLETE
	Wait 0x003c
	PlayBgm BGM_LEARN_SCROLL
	Call sub_08068F3C
script_0801631C:
	Call sub_08068E30
	WaitUntilTextboxCloses
	Call BladeBrothers_GetScroll
	WaitPlayerGetItem
	WaitUntilTextboxCloses
	Jump script_08016346
script_08016332:
	Call sub_08068E60
	WaitUntilTextboxCloses
	Jump script_08016346
script_0801633E:
	Call sub_08068E48
	WaitUntilTextboxCloses
script_08016346:
	Call EnablePauseMenu
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Jump script_080161FE
	.2byte 0x0000
