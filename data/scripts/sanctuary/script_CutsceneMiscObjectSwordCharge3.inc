@ Sanctuary second time CUTSCENE_MISC_OBJECT sword charging?
SCRIPT_START script_CutsceneMiscObjectSwordCharge3
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0002
	Call sub_0807F738
	OffsetEntityPosition 0, -16
	EndBlock
	WaitForSyncFlag 0x00000040
	DoPostScriptAction 0x0006
SCRIPT_END
