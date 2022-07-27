@ Outro CUTSCENE_MISC_OBJECT The Little Hat (Green)
SCRIPT_START script_CutsceneMiscObjectTheLittleHat
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	SetAnimation 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000008
	Call sub_08094B80
	_0807EF3C 0x0000, 0x0001
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000008
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
