@ Mines Mountain Minish at exit
SCRIPT_START script_MountainMinish4
	BeginBlock
	Call MountainMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800D35E:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800D372
	Call sub_0806811C
	EndBlock
	Jump script_0800D35E
script_0800D372:
	EndBlock
	SetPlayerIdle
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	CheckLocalFlag 0x007f
	JumpIf script_0800D3E4
	CheckLocalFlag 0x007e
	JumpIfNot script_0800D3E4
	DoPostScriptAction 0x000b
	SetEntitySpeed 0x0100
	CheckPlayerInRegion 0x0090, 0x0130, 0x0810
	JumpIfNot script_0800D3B2
	StartPlayerScript script_PlayerAtMountainMinishExit
	WaitForSyncFlagAndClear 0x00000001
script_0800D3B2:
	SetAnimationState 0x0002
	SetAnimation 0x0005
	MoveTo 0x00a0, 0x0130
	SetAnimationState 0x0006
	SetAnimation 0x0003
	SetIntVariable 0x00000004
	Call sub_080681D8
	PlaySound SFX_TASK_COMPLETE
	Wait 0x001e
	DoPostScriptAction 0x000a
	SetLocalFlag 0x007f
script_0800D3E4:
	EnablePlayerControl
	Jump script_0800D35E
	.2byte 0x0000
