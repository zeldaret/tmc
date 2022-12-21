@ Intro Hyrule Castle Zelda
SCRIPT_START script_ZeldaIntroCastle
	BeginBlock
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	Call sub_08066D04
	EndBlock
	Call DeleteHitbox
	WaitForSyncFlagAndClear 0x00000010
	Call sub_08066D14
	JumpIf script_080111F6
	MoveEntityToPlayer
script_080111F6:
	Call CheckEntityOnScreen
	JumpIf script_08011206
	SetEntityPositionRelative 0x01f8, 0x00b8
script_08011206:
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x0001
	MoveTo 0x01f8, 0x0050
	FacePlayer
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0001
	MoveTo 0x01f8, 0x0020
	DoPostScriptAction 0x0008
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x0040
	MoveTo 0x01e8, 0x0040
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000010
	Call sub_08095810
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0001
	MoveTo 0x01d8, 0x0058
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000010
	PlaySound SFX_1C9
	DoPostScriptAction 0x0010
	Wait 0x0014
	Call sub_08066E20
	Wait 0x0014
	DoPostScriptAction 0x0010
	Call WaitForAnimDone
	PlaySound SFX_1CA
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
