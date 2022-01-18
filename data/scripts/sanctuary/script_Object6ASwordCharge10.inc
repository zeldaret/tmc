@ Sanctuary OBJECT_6A Sword charging 5?
SCRIPT_START script_Object6ASwordCharge10
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0015
	Call sub_0807F714
	Call sub_0807F714
	CallWithArg SetSpriteOffset, 0x0000fffc
	EndBlock
	WaitForSyncFlag 0x00000020
	Wait 0x0078
	Call WaitForFrameHiBit
	DoPostScriptAction 0x0006
SCRIPT_END
