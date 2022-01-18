@ Goron Merchant in arriving Kinstone cutscene
SCRIPT_START script_GoronMerchantArriving
	BeginBlock
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0040
	Call SetPriorityMessage
	EndBlock
script_0800BB7A:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BB7A
	_0807EDD4 0x03a0, 0x00f8
	Wait 0x001e
	MessageNoOverlap 0x0e06
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807EDD4 0x0380, 0x00f8
	Call sub_08054968
SCRIPT_END
