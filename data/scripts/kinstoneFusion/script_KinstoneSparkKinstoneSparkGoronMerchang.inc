@ KINSTONE_SPARK in Goron Merchant arriving Kinstone cutscene
@ blue from left to right
SCRIPT_START script_KinstoneSparkKinstoneSparkGoronMerchang
	BeginBlock
	SetEntitySpeed 0x0180
	SetAnimation 0x0004
	EndBlock
	Wait 0x000a
	DoPostScriptAction 0x0007
	PlaySound SFX_136
	MoveToOffset 0x00c0, 0x0000
	Wait 0x001e
	MoveToOffset 0x0070, 0x0000
	Wait 0x003c
	SetRoomFlag 0x00ff
	SetAnimation 0x0005
	Wait 0x000f
SCRIPT_END
	.2byte 0x0000
