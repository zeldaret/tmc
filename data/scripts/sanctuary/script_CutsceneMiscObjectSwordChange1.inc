@ Sanctuary CUTSCENE_MISC_OBJECT Sword charging?
script_CutsceneMiscObjectSwordChange1::
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0000
	Call sub_0807F738
	EndBlock
	WaitForSyncFlag 0x00000040
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
