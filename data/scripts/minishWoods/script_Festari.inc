@ Festari at beginning
SCRIPT_START script_Festari
	BeginBlock
	DoPostScriptAction 0x000a
	SetEntitySpeed 0x0080
	_0807EB44 0x0004
	CheckLocalFlag 0x0082
	JumpIfNot script_0800C650
	OffsetEntityPosition 0x0010, 0x0000
script_0800C650:
	EndBlock
script_0800C652:
	_0807E944
	_0807E864
	Call sub_0807DF28
	CheckLocalFlag 0x0082
	JumpIf script_0800C684
	CheckPlayerInRegion 0x00e8, 0x0028, 0x1810
	JumpIfNot script_0800C674
	DoPostScriptAction 0x000b
script_0800C674:
	StartPlayerScript script_PlayerAtFestari
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x000a
script_0800C684:
	CheckInventory1 0x0040
	JumpIf script_0800C730
	CheckInventory1 0x005b
	JumpIf script_0800C6B6
	DoPostScriptAction 0x0002
	MessageFromTarget 0x1f16
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0015
	Wait 0x000a
	SetLocalFlag 0x0080
	Call sub_0807DF50
	_0807E878
	Jump script_0800C652
script_0800C6B6:
	CheckLocalFlag 0x0081
	JumpIf script_0800C6DC
	DoPostScriptAction 0x0002
	MessageFromTarget 0x1f1b
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878
	Jump script_0800C652
script_0800C6DC:
	CheckLocalFlag 0x0082
	JumpIf script_0800C712
	DoPostScriptAction 0x0002
	MessageFromTarget 0x1f17
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0015
	Wait 0x000a
	_0807EB44 0x0002
	DoPostScriptAction 0x0001
	_0807EC94 0x0020
	_0807EB44 0x0004
	Wait 0x000f
	PlaySound SFX_SECRET
	SetLocalFlag 0x0082
script_0800C712:
	DoPostScriptAction 0x0002
	MessageFromTarget 0x1f18
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878
	Jump script_0800C652
script_0800C730:
	CheckLocalFlag 0x0083
	JumpIf script_0800C756
	DoPostScriptAction 0x0002
	MessageFromTarget 0x1f19
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878
	Jump script_0800C652
script_0800C756:
	DoPostScriptAction 0x0002
	MessageFromTarget 0x1f1a
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878
	Jump script_0800C652
