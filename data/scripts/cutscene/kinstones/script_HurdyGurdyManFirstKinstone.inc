@ Hyrule Town Kinstone cutscene HurdyGurdyMan
SCRIPT_START script_HurdyGurdyManFirstKinstone
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x000a
	EndBlock
	Call sub_0807F348
	_0807EB44 0x0002
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x0007
	_0807EDD4 0x01b8, 0x0328
	SetSyncFlag 0x00000040
	_0807EDD4 0x01f8, 0x0328
	_0807EB44 0x0004
	_0807E930 0x0008
	_0807E8E4_0
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
	Call sub_0806E440
	Wait 0x0078
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
script_0800F1E6:
	EndBlock
	BeginBlock
	CallWithArg sub_0807F680, 0x000001c0
	JumpIf script_0800F22A
	EndBlock
	_0807E864
	Call sub_0807F9A4
	_0807EB74
	_0807E930 0x0008
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageFromTargetPos 0x1206, 0x000c
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtHurdyGurdyManFirstKinstone1
	WaitForSyncFlagAndClear 0x00000400
	_0807E878
	Jump script_0800F1E6
script_0800F22A:
	CallWithArg sub_0807F680, 0x00000230
	JumpIfNot script_0800F26A
	EndBlock
	_0807E864
	Call sub_0807F9A4
	_0807EB74
	_0807E930 0x0008
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageFromTargetPos 0x1206, 0x000c
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtHurdyGurdyManFirstKinstone2
	WaitForSyncFlagAndClear 0x00000400
	_0807E878
	Jump script_0800F1E6
script_0800F26A:
	CallWithArg sub_0807F6B4, 0x00000310
	JumpIf script_0800F2AA
	EndBlock
	_0807E864
	Call sub_0807F9A4
	_0807EB74
	_0807E930 0x0008
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageFromTargetPos 0x1206, 0x000c
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtHurdyGurdyManFirstKinstone3
	WaitForSyncFlagAndClear 0x00000400
	_0807E878
	Jump script_0800F1E6
script_0800F2AA:
	CallWithArg sub_0807F6B4, 0x00000340
	JumpIfNot script_0800F2EA
	EndBlock
	_0807E864
	Call sub_0807F9A4
	_0807EB74
	_0807E930 0x0008
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageFromTargetPos 0x1206, 0x000c
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtHurdyGurdyManFirstKinstone4
	WaitForSyncFlagAndClear 0x00000400
	_0807E878
	Jump script_0800F1E6
script_0800F2EA:
	EndBlock
	BeginBlock
	CheckKinstoneFused 0x0032
	JumpIf script_0800F314
	CheckEntityInteractType
	JumpIfNot script_0800F2EA
	EndBlock
	_0807E864
	_0807EB74
	_0807E930 0x0008
	MessageFromTargetPos 0x1208, 0x000c
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_0800F1E6
script_0800F314:
	EndBlock
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0100
	_0807EB44 0x0002
	_0807EEF4 0x00c0, 0x0000
	SetSyncFlag 0x00000040
	DoPostScriptAction 0x0006
SCRIPT_END
