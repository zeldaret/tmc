@ Rem falling asleep
SCRIPT_START script_RemFallingAsleep
	BeginBlock
	CheckLocalFlag 0x0060
	JumpIf script_08012FD2
	_0807E864
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtRem
	SetLocalFlag 0x0060
	ClearLocalFlag 0x0061
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	_0807E908 0x0004
	Call sub_0806A958
	CallWithArg sub_0807F93C, 0x0000f2f4
	Call sub_0807DF50
	_0807E878
	SetLocalFlag 0x0062
	Jump script_08012FFA
script_08012FD2:
	BeginBlock
	_0807E930 0x000d
	_0807E908 0x0005
	SetLocalFlag 0x0062
	CallWithArg sub_0807F93C, 0x0000f2f4
	Call sub_0806AA10
	EndBlock
	CheckInventory1 0x0038
	JumpIf script_08013006
script_08012FFA:
	_0807E944
	MessageNoOverlap 0x4403
	WaitUntilTextboxCloses
	Jump script_08012FFA
script_08013006:
	_0807E944
	BeginBlock
	_0807E864
	Call sub_0807DF28
	EndBlock
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0038
	WaitPlayerGetItem
	Wait 0x001e
	_0807E8E4_0
	Call sub_0806AB9C
	_0807E930 0x000b
	Wait 0x003c
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap 0x4404
	WaitUntilTextboxCloses
	Wait 0x001e
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap 0x440e
	WaitUntilTextboxCloses
	Wait 0x001e
	Call sub_0806A9E8
	_0807E930 0x000f
	Wait 0x00f0
	MessageNoOverlap 0x4405
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000200
	GivePlayerItem 0x0015
	WaitPlayerGetItem
	_0807EB8C
	MessageNoOverlap 0x4406
	WaitUntilTextboxCloses
	_0807E908 0x0001
	Call sub_0807DF50
	_0807E878
script_0801308A:
	Call sub_0806A96C
	JumpIfNot script_0801308A
	MessageNoOverlap 0x4407
	WaitUntilTextboxCloses
	_0807E908 0x0001
script_0801309E:
	Call sub_0806A96C
	JumpIfNot script_0801309E
	MessageNoOverlap 0x440d
	WaitUntilTextboxCloses
	_0807E908 0x0001
	Jump script_0801308A
script_080130B6:
	CheckLocalFlag 0x0062
	JumpIfNot script_080130C4
	Call sub_0806A9B0
script_080130C4:
	EndBlock
script_080130C6:
	Call sub_0806A96C
	JumpIfNot script_080130C6
	_0807E864
	Call sub_0806AA18
	WaitUntilTextboxCloses
	_0807E878
	_0807E908 0x0001
	Jump script_080130C6
