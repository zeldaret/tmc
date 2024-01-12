@ Ezlo Cutscene CUTSCENE_MISC_OBJECT dark magic
SCRIPT_START script_CutsceneMiscObjectDarkMagic
	BeginBlock
	SetAnimation 0x0000
	SetEntitySpeed 0x0200
	Call sub_08094B80
	EndBlock
	Wait 0x0078
	PlaySound SFX_1C5
	Call sub_08094B6C
	MoveTo 0x0078, 0x00b8
	PlaySound SFX_1C6
	Call sub_08094B80
	SetSyncFlag 0x00020000
	SetEntitySpeed 0x0080
	WaitForSyncFlagAndClear 0x00040000
	MoveTo 0x0078, 0x00c8
	SetSyncFlag 0x00080000
	WaitForSyncFlagAndClear 0x00040000
	DoPostScriptAction 0x0006
SCRIPT_END
