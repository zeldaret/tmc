@ Mines Mountain Minish running
SCRIPT_START script_MountainMinish5
	BeginBlock
	SetEntitySpeed 0x0100
	Call MountainMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800D426:
	SetAnimationState 0x0002
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	SetAnimationState 0x0004
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	SetAnimationState 0x0006
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	SetAnimationState 0x0006
	SetIntVariable 0x00000004
	Call sub_0806AF60
	MoveTo 0x00a8, 0x01e8
	SetAnimationState 0x0006
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	SetAnimationState 0x0004
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	SetAnimationState 0x0002
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	SetAnimationState 0x0002
	SetIntVariable 0x00000004
	Call sub_0806AF60
	MoveTo 0x0228, 0x01e8
	Jump script_0800D426
	.2byte 0x0000
	BeginBlock
	DoPostScriptAction 0x000a
	Call Kid_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
script_0800D4E4:
	EndBlock
	Call sub_08062698
	Call sub_080626AC
	CallWithArg GetRandomInt, 0x00000009
	JumpTable script_0800D510, script_0800D51A, script_0800D524, script_0800D52E, script_0800D538, script_0800D542, script_0800D54C, script_0800D556, script_0800D560
script_0800D510:
	LookAt 0x0038, 0x0068
	Jump script_0800D566
script_0800D51A:
	LookAt 0x0078, 0x0068
	Jump script_0800D566
script_0800D524:
	LookAt 0x00b8, 0x0068
	Jump script_0800D566
script_0800D52E:
	LookAt 0x0038, 0x0090
	Jump script_0800D566
script_0800D538:
	LookAt 0x0078, 0x0090
	Jump script_0800D566
script_0800D542:
	LookAt 0x00b8, 0x0090
	Jump script_0800D566
script_0800D54C:
	LookAt 0x0038, 0x00b8
	Jump script_0800D566
script_0800D556:
	LookAt 0x0078, 0x00b8
	Jump script_0800D566
script_0800D560:
	LookAt 0x00b8, 0x00b8
script_0800D566:
	EndBlock
	BeginBlock
	Call sub_080626C0
	JumpIf script_0800D4E4
	CheckEntityInteractType
	JumpIf script_0800D584
	MoveTowardsTarget
	JumpIfNot script_0800D566
	Jump script_0800D4E4
script_0800D584:
	EndBlock
	SetPlayerIdle
	FacePlayer
	Call sub_0806265C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800D4E4
