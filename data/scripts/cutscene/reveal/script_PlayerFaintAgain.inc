@ Sanctuary Player faint from Vaati attack
script_PlayerFaintAgain::
	Call sub_0807F1C4
	Call WaitForAnimDone
	Call sub_0807F1E8
	Call WaitForAnimDone
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	PlaySound SFX_PLY_JUMP
	SetAnimationState 0x0004
	Call sub_0807F210
	Fall 0x0200, 0x0020
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
	EndScript
	.2byte 0x0000
