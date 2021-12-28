@ Minish Village OBJECT_69 Intro Cutscene?
SCRIPT_START script_Object69VillageIntro
	BeginBlock
	_0807EB44 0x0004
	SetEntitySpeed 0x0300
	EndBlock
script_0800C928:
	CheckPlayerInRegion 0x0208, 0x0360, 0x2040
	JumpIfNot script_0800C928
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtVillageIntro
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x003c
	_0807EB28 0x1125
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000800
	_0807E8E4_3
	Wait 0x003c
	SetSyncFlag 0x00000200
	_0807E8E4_0
	Wait 0x001e
	SetSyncFlag 0x00002000
	_0807E8E4_1
	Wait 0x0014
	SetSyncFlag 0x00020000
	_0807E8E4_1
	Wait 0x000a
	SetSyncFlag 0x00008000
	_0807E8E4_3
	Wait 0x001e
	WaitForSyncFlagAndClear 0x00000400
	WaitForSyncFlagAndClear 0x00001000
	WaitForSyncFlagAndClear 0x00004000
	WaitForSyncFlagAndClear 0x00010000
	WaitForSyncFlagAndClear 0x00040000
	_0807E8E4_0
	Wait 0x003c
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000400
	_0807E8E4_0 
	MessageFromTarget 0x1126
	Call sub_0807F40C
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000200
	SetSyncFlag 0x00000800
	SetSyncFlag 0x00002000
	SetSyncFlag 0x00008000
	SetSyncFlag 0x00020000
	WaitForSyncFlagAndClear 0x00000400
	WaitForSyncFlagAndClear 0x00001000
	WaitForSyncFlagAndClear 0x00004000
	WaitForSyncFlagAndClear 0x00010000
	WaitForSyncFlagAndClear 0x00040000
	SetSyncFlag 0x00008000
	WaitForSyncFlagAndClear 0x00010000
	_0807E8E4_3 
	MessageFromTarget 0x1127
	WaitUntilTextboxCloses
	SetSyncFlag 0x00002000
	WaitForSyncFlagAndClear 0x00004000
	_0807E8E4_1 
	MessageFromTarget 0x1128
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000200
	SetSyncFlag 0x00000800
	SetSyncFlag 0x00002000
	SetSyncFlag 0x00008000
	SetSyncFlag 0x00020000
	WaitForSyncFlagAndClear 0x00000400
	WaitForSyncFlagAndClear 0x00001000
	WaitForSyncFlagAndClear 0x00004000
	WaitForSyncFlagAndClear 0x00010000
	WaitForSyncFlagAndClear 0x00040000
	_0807E8E4_0
	_0807EB28 0x1129
	WaitUntilTextboxCloses
	SetLocalFlag 0x008d
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
