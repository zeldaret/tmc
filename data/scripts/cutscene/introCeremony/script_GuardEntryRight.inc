@ Intro Ceremony Entrace Guard right
SCRIPT_START script_GuardEntryRight
	BeginBlock
	SetEntitySpeed 0x0100
	_0807EB44 0x0006
	_0807E930 0x0003
	EndBlock
	WaitForSyncFlagAndClear 0x00200000
	_0807E930 0x0007
	PlaySound SFX_11C
	_0807EC94 0x0010
	_0807E930 0x0003
	SetSyncFlag 0x00400000
	WaitForSyncFlagAndClear 0x00200000
	DoPostScriptAction 0x0006
SCRIPT_END
