@ Western Wood Cutscene King Daltus
SCRIPT_START script_KingDaltusTakeover
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_VAATI, 0x19
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	MessageNoOverlap TEXT_VAATI, 0x1a
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	MessageNoOverlap TEXT_VAATI, 0x1d
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	MessageNoOverlap TEXT_VAATI, 0x1e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	WaitForSyncFlag 0x00000400
	DoPostScriptAction 0x0006
SCRIPT_END
