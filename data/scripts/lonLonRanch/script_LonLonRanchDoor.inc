@ Lon Lon Ranch Door
SCRIPT_START script_LonLonRanchDoor
	BeginBlock
	DoPostScriptAction 0x0007
	CheckGlobalFlag INLOCK
	JumpIf script_0800B5BC
	EndBlock
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0008
	PlaySound SFX_111
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0007
	PlaySound SFX_111
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0008
	PlaySound SFX_111
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0007
	PlaySound SFX_111
script_0800B5BC:
	Call sub_0808692C
SCRIPT_END
