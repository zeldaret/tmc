@ Syrup during Kinstone cutscene
SCRIPT_START script_SyrupKinstone
	BeginBlock
	EndBlock
script_0800BB04:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BB04
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x02
	WaitUntilTextboxCloses
	Wait 0x003c
	DoPostScriptAction 0x000f
	Wait 0x00b4
	Call sub_08054968
SCRIPT_END
	.2byte 0x0000
