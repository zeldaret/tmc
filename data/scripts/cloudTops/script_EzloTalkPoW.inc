@ Ezlo talk after getting wind element
SCRIPT_START script_EzloTalkPoW
	_0807E864
	Call sub_0807DF28
	_0807EB28 0x1c05
	WaitUntilTextboxCloses
	SetLocalFlagByBank 0x0100, 0x0005
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
