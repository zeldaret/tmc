@ Goron in fusing kinstone cutscene
SCRIPT_START script_GoronKinstone
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0008
	Call sub_08054EB8
	EndBlock
script_0800BC62:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BC62
	SetAnimation 0x0000
	Wait 0x001e
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x08
	WaitUntilTextboxCloses
	DoPostScriptAction 0x000f
	SetAnimation 0x0008
	Wait 0x00f0
	Call sub_08054EFC
	SetAnimationState 0x0000
	SetAnimation 0x0000
	SetEntitySpeed 0x0040
	DoPostScriptAction 0x000d
	CallWithArg sub_0807F4F8, 0x00000378
	Wait 0x003c
	DoPostScriptAction 0x000c
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x09
	WaitUntilTextboxCloses
	Call SetCollisionLayer1
	CallWithArg sub_0807F4F8, 0x0000035c
	Wait 0x001e
	PlaySound SFX_STAIRS_DESCEND
	DoPostScriptAction 0x0008
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
	.2byte 0x0000
