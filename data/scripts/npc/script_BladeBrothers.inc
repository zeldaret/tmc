@ Blade Brothers
SCRIPT_START script_BladeBrothers
	BeginBlock
	Call sub_0807F348
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080161FE:
	Call sub_08068C28
script_08016204:
	CheckEntityInteractType
	JumpIfNot script_08016204
	_0807E864
	Call sub_0807DF28
	_0807EB74
	Call sub_08068CA0
	JumpIf script_0801633E
	Call sub_08068CFC
	JumpIfNot script_08016332
	Call sub_08068DB8
	WaitUntilTextboxCloses
	Call sub_08068DD0
	WaitUntilTextboxCloses
	_0807E3E8
	JumpIfNot script_08016346
	StartPlayerScript script_PlayerAtBladeBrothers
	WaitForSomething2 0x00000001
	_0807EB74
	Call sub_08068C8C
	JumpIf script_08016262
	Call sub_08068DE8
	WaitUntilTextboxCloses
	Wait 0x001e
script_08016262:
	Call sub_08068E00
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0001
	Call sub_0807F2D4
	Call sub_08068E90
	Call sub_08068C8C
	JumpIf script_0801631C
	Call sub_08068F00
	Call sub_08068F14
	Call sub_08068BB4
	CallWithArg sub_0807F244, 0x00010001
	Call sub_08068B84
	Call sub_0807F2A8
	Call sub_08068BD0
	Wait 0x001e
	Call sub_08068E18
	WaitUntilTextboxCloses
	Call sub_08068EB4
	Call sub_0807DF50
	_0807E878
script_080162CC:
	EndBlock
	BeginBlock
	Call sub_08068EC4
	JumpIf script_080162F6
	CheckEntityInteractType
	JumpIf script_080162E4
	Jump script_080162CC
script_080162E4:
	EndBlock
	_0807E864
	Call sub_08068E78
	WaitUntilTextboxCloses
	_0807E878
	Jump script_080162CC
script_080162F6:
	EndBlock
	_0807E888
	Call sub_0807F594
	Call sub_0807DF28
	_0807E864
	StopBgm
	PlaySound SFX_TASK_COMPLETE
	Wait 0x003c
	PlayBgm BGM_LEARN_SCROLL
	Call sub_08068F3C
script_0801631C:
	Call sub_08068E30
	WaitUntilTextboxCloses
	Call sub_08068C6C
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
	Call sub_0807DF50
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_080161FE
	.2byte 0x0000
