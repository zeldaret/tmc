@ Outro Zelda after fixing everything
SCRIPT_START script_ZeldaGoodbye
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000040
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x80000000
	DoPostScriptAction 0x0006
SCRIPT_END
