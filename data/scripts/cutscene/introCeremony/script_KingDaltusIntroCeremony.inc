@ Intro Ceremony King Daltus
SCRIPT_START script_KingDaltusIntroCeremony
	BeginBlock
	DoPostScriptAction 0x0008
	SetAnimationState 0x0004
	SetEntitySpeed 0x0100
	EndBlock
	Call DeleteHitbox
	WaitForSyncFlagAndClear 0x00000040
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x0040
	MoveTo 0x01f8, 0x0048
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000040
	DoPostScriptAction 0x0010
	Wait 0x001e
	DoPostScriptAction 0x0010
	Call sub_0807F3C8
	SetEntitySpeed 0x0400
	SetEntityDirection 0x0008
	WalkForward 0x003c
	SetSyncFlag 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
