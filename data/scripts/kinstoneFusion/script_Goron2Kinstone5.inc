@ 2nd, 3rd and 4th Goron during 5th Goron cutscene
SCRIPT_START script_Goron2Kinstone5
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0008
	Call sub_0807F348
	EndBlock
	WaitForFadeFinish
	Wait 0x00f0
	_0807E930 0x0000
	_0807EB44 0x0006
	Wait 0x003c
	WaitUntilTextboxCloses
	_0807E930 0x0008
	Wait 0x003c
	SetSyncFlag 0x00000001
script_0800C11C:
	_0807EB44 0x0004
script_0800C120:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800C120
	SetSyncFlag 0x00000002
	Call sub_08054F64
	_0807E930 0x0000
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap 0x0e15
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	Call sub_08054F64
	DoPostScriptAction 0x000f
	_0807E930 0x0008
	Wait 0x00f0
SCRIPT_END
