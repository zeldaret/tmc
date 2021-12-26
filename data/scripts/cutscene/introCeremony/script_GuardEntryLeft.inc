@ Intro Ceremony Entrance Guard left
SCRIPT_START script_GuardEntryLeft
	BeginBlock
	SetEntitySpeed 0x0100
	_0807EB44 0x0002
	_0807E930 0x0001
	EndBlock
	WaitForSyncFlagAndClear 0x00080000
	_0807E930 0x0005
	PlaySound SFX_11C
	_0807ECF4 0x0010
	_0807E930 0x0001
	SetSyncFlag 0x00100000
	WaitForSyncFlagAndClear 0x00080000
	DoPostScriptAction 0x0006
SCRIPT_END
