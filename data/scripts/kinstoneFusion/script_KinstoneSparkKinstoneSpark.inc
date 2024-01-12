@ KINSTONE_SPARK spark in all fusing kinstone cutscenes
SCRIPT_START script_KinstoneSparkKinstoneSpark
	BeginBlock
	SetEntitySpeed 0x0180
	SetAnimation 0x0004
	Call sub_080A0B28
	EndBlock
	Wait 0x000a
	DoPostScriptAction 0x0007
	PlaySound SFX_136
script_0800C47A:
	MoveTowardsTarget
	JumpIfNot script_0800C47A
	Wait 0x003c
	SetRoomFlag 0x00ff
	SetAnimation 0x0005
	Wait 0x000f
SCRIPT_END
	.2byte 0x0000
