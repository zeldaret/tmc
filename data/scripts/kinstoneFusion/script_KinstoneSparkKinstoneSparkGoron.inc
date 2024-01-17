@ KINSTONE_SPARK during Goron cutscene
@ blue from top
SCRIPT_START script_KinstoneSparkKinstoneSparkGoron
	BeginBlock
	SetEntitySpeed 0x0100
	SetAnimation 0x0004
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x000a
	DoPostScriptAction 0x0007
	PlaySound SFX_136
	MoveToOffset 0x0000, 0x0060
	Wait 0x003c
	MoveToOffset 0x0000, 0x0060
	Wait 0x001e
	SetRoomFlag 0x00ff
	SetAnimation 0x0005
	Wait 0x000f
SCRIPT_END
