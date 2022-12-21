@ Outro CUTSCENE_MISC_OBJECT Minish Cap
SCRIPT_START script_CutsceneMiscObjectMinishCapOutro
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	SetAnimation 0x0005
	Call SetPriorityMessage
	EndBlock
	WaitForSyncFlagAndClear 0x00000008
	PlaySound SFX_SPARKLES
	ClearSyncFlag 0x00000800
	CallWithArg sub_080960C4, script_CutsceneMiscObjectEzloDismounting
	SetAnimation 0x0002
	Call sub_08094B0C
	MoveTo 0x0068, 0x0088
	Call sub_08094B80
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000008
	Call sub_08094B3C
	SetAnimation 0x0004
	SetSyncFlag 0x00000800
	PlaySound SFX_143
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000008
	DoPostScriptAction 0x0008
	Call sub_080961B0
	PlaySound SFX_FA
	Wait 0x003c
	SetSyncFlag 0x00000100
SCRIPT_END
