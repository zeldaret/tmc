@ Intro Ceremony Vaati Dark magic?
SCRIPT_START script_VaatiDarkMagic
	BeginBlock
	SetAnimation 0x0000
	SetEntitySpeed 0x0200
	Call nullsub_527
	Call sub_08094B80
	EndBlock
	WaitForSyncFlagAndClear 0x08000000
	Call sub_08094B6C
	MoveTo 0x01d8, 0x0078
	StartPlayerScript script_PlayerFainting
	MoveTo 0x01d8, 0x0058
	Call sub_08094B80
	PlaySound SFX_VO_ZELDA7
	PlaySound SFX_1C6
	SetSyncFlag 0x10000000
	WaitForSyncFlagAndClear 0x08000000
	PlaySound SFX_11D
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
