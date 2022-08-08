@ TODO UNUSED?
SCRIPT_START script_08012B7C
	BeginBlock
	SetEntitySpeed 0x0100
	SetAnimationState 0x0002
	EndBlock
	DoPostScriptAction 0x0001
	WalkEast 0x0008
	SetSyncFlag 0x00000002
	CallWithArg SetPlayerIFrames, -30
	Call SetPlayerActionNormal
SCRIPT_END
