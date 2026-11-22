@ Outro CUTSCENE_MISC_OBJECT Zelda glowing?
script_CutsceneMiscObjectZeldaMagic::
	BeginBlock
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	CallWithArg SetSpriteOffset, 0x0000fff8
	EndBlock
	WaitForSyncFlag 0x00001000
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
