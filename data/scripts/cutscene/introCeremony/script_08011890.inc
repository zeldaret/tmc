@ Something during Intro Ceremony? Called via script_VaatiIntroCeremony
SCRIPT_START script_08011890
	BeginBlock
	SetAnimation 0x0000
	SetEntitySpeed 0x0200
	Call nullsub_527
	Call sub_08094B80
	EndBlock
	Wait 0x00f0
	Call sub_08094B6C
	MoveTo 0x01f8, 0x0088
	Call sub_08094B80
	PlaySound SFX_1CC
	SetSyncFlag 0x10000000
	WaitForSyncFlagAndClear 0x08000000
	DoPostScriptAction 0x0006
SCRIPT_END
