@ Hyrule Town Kid running in school garden
SCRIPT_START script_Kid3
	BeginBlock
	DoPostScriptAction 0x0000
	EndBlock
script_08010314:
	EndBlock
	Call sub_08062698
	Call sub_080626AC
	CallWithArg GetRandomInt, 0x00000009
	JumpTable script_08010340, script_0801034A, script_08010354, script_0801035E, script_08010368, script_08010372, script_0801037C, script_08010386, script_08010390
script_08010340:
	LookAt 0x0358, 0x0078
	Jump script_08010396
script_0801034A:
	LookAt 0x0390, 0x0078
	Jump script_08010396
script_08010354:
	LookAt 0x03c8, 0x0078
	Jump script_08010396
script_0801035E:
	LookAt 0x0358, 0x0098
	Jump script_08010396
script_08010368:
	LookAt 0x0390, 0x0098
	Jump script_08010396
script_08010372:
	LookAt 0x03c8, 0x0098
	Jump script_08010396
script_0801037C:
	LookAt 0x0358, 0x00b8
	Jump script_08010396
script_08010386:
	LookAt 0x0390, 0x00b8
	Jump script_08010396
script_08010390:
	LookAt 0x03c8, 0x00b8
script_08010396:
	EndBlock
	BeginBlock
	Call sub_080626C0
	JumpIf script_08010314
	MoveTowardsTarget
	JumpIfNot script_08010396
	Jump script_08010314
	.2byte 0x0000
