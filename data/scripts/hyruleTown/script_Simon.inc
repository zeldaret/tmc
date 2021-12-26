@ Simon
SCRIPT_START script_Simon
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	CheckGlobalFlag 0x0050
	JumpIfNot script_08011B84
	WaitForSyncFlagAndClear 0x00000004
	_0807EB44 0x0006
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB8C 
	MessageNoOverlap 0x3d07
	WaitUntilTextboxCloses
	_0807EB44 0x0004
	ClearGlobalFlag 0x0050
	Call sub_0807DF50
	_0807E878
script_08011B84:
	CheckEntityInteractType
	JumpIfNot script_08011B84
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x3d01
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIf script_08011BA4
script_08011B9A:
	_0807E878
	_0807EB44 0x0004
	Jump script_08011B84
script_08011BA4:
	HasRupees 0x000a
	JumpIf script_08011BBC
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap 0x3d05
	Jump script_08011B9A
script_08011BBC:
	ModRupees 0xfff6
	Wait 0x001e
	MessageNoOverlap 0x3d06
	WaitUntilTextboxCloses
	CallWithArg sub_0806C2A0, 0x00000000
	WaitForFadeFinish
	Wait 0x003c
	Call sub_0806C224
	Jump script_08011B9A
