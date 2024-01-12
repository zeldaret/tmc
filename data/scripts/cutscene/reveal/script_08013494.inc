@ Something during Sanctuary Vaati cutscene? Called from script_VaatiSanctuary
SCRIPT_START script_08013494
	BeginBlock
	SetAnimation 0x0000
	SetEntitySpeed 0x0200
	Call nullsub_527
	Call sub_08094B80
	EndBlock
	Wait 0x005a
	Call sub_08094B6C
	MoveTo 0x0098, 0x0080
	BeginBlock
	Call sub_08094B80
	PlaySound SFX_1CC
	Call sub_0807F36C
	SetSyncFlag 0x00000080
	EndBlock
	DoPostScriptAction 0x0006
SCRIPT_END
