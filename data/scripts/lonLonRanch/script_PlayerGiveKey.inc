@ Player at Lon Lon Ranch give key
SCRIPT_START script_PlayerGiveKey
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0128, 0x0298
	Wait 0x000a
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
SCRIPT_END
