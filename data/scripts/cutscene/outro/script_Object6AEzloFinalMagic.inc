@ Outro OBJECT_6A Ezlo final magic shrinking
SCRIPT_START script_Object6AEzloFinalMagic
	BeginBlock
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	CallWithArg SetSpriteOffset, 0x0000fff8
	PlaySound SFX_SPARKLES
	EndBlock
	WaitForSyncFlag 0x00000020
	PlaySound SFX_143
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
