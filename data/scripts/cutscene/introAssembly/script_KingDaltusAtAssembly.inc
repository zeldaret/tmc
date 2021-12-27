@ Intro Assembly King Daltus
SCRIPT_START script_KingDaltusAtAssembly
	BeginBlock
	Call sub_0807F348
	SetEntitySpeed 0x0100
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
	WaitForSyncFlagAndClear 0x00000080
	_0807EB44 0x0004
	_0807ECC4 0x0008
	_0807E930 0x0004
	MessageFromTargetPos 0x1050, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807E930 0x0004
	MessageFromTargetPos 0x1052, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807EB44 0x0006
	_0807E930 0x0005
	MessageFromTargetPos 0x1054, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807EB44 0x0004
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807E930 0x0004
	MessageFromTargetPos 0x1056, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807E930 0x0004
	MessageFromTargetPos 0x1057, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807E930 0x0004
	MessageFromTargetPos 0x1058, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807E930 0x0004
	MessageFromTargetPos 0x105c, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
script_0800917C:
	CheckEntityInteractType
	JumpIfNot script_0800917C
	_0807E864
	_0807EB74
	Call sub_0806673C
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800917C
