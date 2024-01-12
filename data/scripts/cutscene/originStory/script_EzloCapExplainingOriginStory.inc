@ Outside Castle after ezlo cutscene EzloCap
SCRIPT_START script_EzloCapExplainingOriginStory
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	EndBlock
	SetAnimation 0x001f
	Call sub_0806D944
	WaitForSyncFlagAndClear 0x00000008
	SetAnimation 0x0010
	MessageFromTargetPos TEXT_VAATI, 0x14, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0018
	Call sub_0806D8A0
script_080153C2:
	MoveTowardsTarget
	JumpIfNot script_080153C2
	SetAnimation 0x001f
	StartPlayerScript script_PlayerReceivedExposition
	Call sub_0806D9A4
	DoPostScriptAction 0x0008
	Wait 0x0078
	SetSyncFlag 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
