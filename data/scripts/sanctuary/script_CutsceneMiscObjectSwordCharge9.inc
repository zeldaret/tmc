@ Sanctuary CUTSCENE_MISC_OBJECT Sword charging 4?
SCRIPT_START script_CutsceneMiscObjectSwordCharge9
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0014
	Call sub_0807F714
	CallWithArg SetSpriteOffset, 0x0000fffc
	EndBlock
	WaitForSyncFlag 0x00000020
	Wait 0x0078
	Call WaitForAnimDone
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
