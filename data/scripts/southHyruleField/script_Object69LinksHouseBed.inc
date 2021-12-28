@ Links house OBJECT_69 bed
SCRIPT_START script_Object69LinksHouseBed
	BeginBlock
	EndBlock
script_08009DF0:
	CheckPlayerInRegion 0x00a0, 0x0038, 0x1830
	JumpIfNot script_08009DF0
	_0807E864
	Call sub_0807F9A4
	Wait 0x0008
	_0807EB28 0x3207
	CheckTextboxResult
	JumpIfNot script_08009E4E
	Call sub_0807DF28
	_0807E778 0x0002
	DoFade5
	WaitForFadeFinish
	Call sub_0804E864
	Wait 0x001e
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	_0807EB28 0x3209
	Wait 0x000f
	WaitUntilTextboxCloses
	_0807E878
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
script_08009E4E:
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
