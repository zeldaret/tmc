@ OBJECT_B3 during Goron cutscene
@ blue from top
SCRIPT_START script_ObjectB3KinstoneSparkGoron
	BeginBlock
	SetEntitySpeed 0x0100
	_0807E930 0x0004
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x000a
	DoPostScriptAction 0x0007
	PlaySound SFX_136
	_0807EEF4 0x0000, 0x0060
	Wait 0x003c
	_0807EEF4 0x0000, 0x0060
	Wait 0x001e
	SetRoomFlag 0x00ff
	_0807E930 0x0005
	Wait 0x000f
SCRIPT_END
