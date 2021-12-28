@ 1st Goron during Kinstone cutscene for 2nd Goron
SCRIPT_START script_Goron1Kinstone2
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0008
	Call sub_0807F348
	EndBlock
	WaitForFadeFinish
	Wait 0x00f0
	_0807E930 0x0000
	Wait 0x003c
	MessageNoOverlap 0x0e0a
	WaitUntilTextboxCloses
	_0807E930 0x0008
	Wait 0x003c
	SetSyncFlag 0x00000001
script_0800BD1C:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BD1C
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	_0807E930 0x0000
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap 0x0e0c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x000f
	_0807E930 0x0008
	Wait 0x0168
	_0807E930 0x0000
	Wait 0x003c
	_0807EB44 0x0002
	WaitForSyncFlagAndClear 0x00000004
	SetEntitySpeed 0x0080
	_0807EEF4 0x0000, 0xffe0
SCRIPT_END
