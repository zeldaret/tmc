@ DHC Vaati defeated CUTSCENE_MISC_OBJECT Minish Cap?
SCRIPT_START script_CutsceneMiscObjectV3DefeatedMinishCap2
	BeginBlock
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	CallWithArg SetSpriteOffset, 0x0000fff8
	EndBlock
	WaitForSyncFlag 0x00000002
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
