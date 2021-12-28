@ 1st Goron during 3rd Goron Kinstone cutscene
SCRIPT_START script_Goron1Kinstone3
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0008
	Call sub_0807F348
	EndBlock
	WaitForFadeFinish
	Wait 0x00f0
	_0807E930 0x0000
	_0807EB44 0x0002
	Wait 0x003c
	MessageNoOverlap 0x0e0d
	WaitUntilTextboxCloses
	_0807E930 0x0008
	Wait 0x003c
	Jump script_0800BE88
	.2byte 0x0000
