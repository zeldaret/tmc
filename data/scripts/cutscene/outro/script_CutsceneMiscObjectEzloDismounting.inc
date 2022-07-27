@ Outro CUTSCENE_MISC_OBJECT Ezlo moving from Links head
SCRIPT_START script_CutsceneMiscObjectEzloDismounting
	BeginBlock
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	CallWithArg SetSpriteOffset, 0x0000fff8
	EndBlock
	WaitForSyncFlag 0x00000800
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
