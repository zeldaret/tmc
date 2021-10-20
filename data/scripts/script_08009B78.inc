SCRIPT_START script_08009B78
	BeginBlock
	_0807EB44 0x0006
	SetEntitySpeed 0x0080
	_0807E9D4
	Call sub_0807F348
	EndBlock
	CheckGlobalFlag 0x0013
	JumpIf script_08009C4C
	_0807E888
	Wait 0x000a
	_0807E864
	StartPlayerScript script_08009CFC
	Call sub_0807DF28
	WaitForSomething2 0x00000008
	_0807EDD4 0x0080, 0x005c
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	Wait 0x000f
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x1009, 0x0000
	_0807E8E4_1
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807EB8C
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x100b, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000008
	_0807EDD4 0x007c, 0x005c
	Wait 0x000f
	DoPostScriptAction 0x000d
	_0807EDD4 0x0084, 0x005c
	_0807EB44 0x0006
	DoPostScriptAction 0x000c
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000008
	Call sub_08053250
	_0807F034 0x0034
	WaitPlayerAction8
	_0807E8E4_1
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x100c, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000004
script_08009C4C:
	DoPostScriptAction 0x000a
script_08009C50:
	CheckEntityInteractType
	JumpIfNot script_08009C50
	_0807E864
	_0807EB74
	TextboxNoOverlap 0x100e
	_0807E878
	Jump script_08009C50
SCRIPT_END
	.2byte 0x0000
