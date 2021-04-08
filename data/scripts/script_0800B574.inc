SCRIPT_START script_0800B574
	BeginBlock 
	DoPostScriptAction 0x0007
	CheckGlobalFlag 0x001d
	JumpIf script_0800B5BC
	EndBlock 
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0008
	PlaySound SFX_111
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0007
	PlaySound SFX_111
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0008
	PlaySound SFX_111
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0007
	PlaySound SFX_111
script_0800B5BC:
	Call sub_0808692C
SCRIPT_END
