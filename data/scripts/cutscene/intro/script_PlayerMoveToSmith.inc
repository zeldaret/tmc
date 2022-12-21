@ Player at Smith during intro
SCRIPT_START script_PlayerMoveToSmith
	BeginBlock
	_0807E8E4_1
	SetEntitySpeed 0x00c0
	EndBlock
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	MoveTo 0x0040, 0x0060
	MoveTo 0x0060, 0x0068
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x0000
	_0807E8E4_0
	Wait 0x000f
	PlaySound SFX_VO_ZELDA1
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000002
	MoveTo 0x0070, 0x005c
	_0807E8E4_1
	DoPostScriptAction 0x0000
	Wait 0x000f
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000002
	SetSyncFlag 0x00000008
SCRIPT_END
