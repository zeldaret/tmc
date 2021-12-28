@ Outro NPC4E
SCRIPT_START script_Npc4EOutro
	BeginBlock
	SetPlayerIdle
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0080
	Call sub_0807F844
	_0807E8E4_3
	CallWithArg SetPlayerPos, 0x00a80088
	EndBlock
	Wait 0x003c
	StartPlayerScript script_PlayerAtOutro
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000080
	MessageFromTargetPos 0x1659, 0x0000
	WaitUntilTextboxCloses
	Wait 0x003c
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000200
	SetSyncFlag 0x00000004
	_0807E8E4_0
	WaitForSyncFlagAndClear 0x00000080
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000200
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000040
	SetSyncFlag 0x00000004
	Call CreatePlayerExclamationMark
	WaitForSyncFlagAndClear 0x00000080
	MessageFromTargetPos 0x165a, 0x000e
	WaitUntilTextboxCloses
	Wait 0x003c
	MessageFromTargetPos 0x165b, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000040
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000100
	Wait 0x003c
	_0807E8E4_3
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000080
	Wait 0x003c
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000006
	WaitForSyncFlagAndClear 0x000000c0
	MessageFromTargetPos 0x165c, 0x000e
	WaitUntilTextboxCloses
	StopBgm
	MessageFromTargetPos 0x165d, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000006
	WaitForSyncFlagAndClear 0x000000c0
	SetSyncFlag 0x00000006
	WaitForSyncFlagAndClear 0x00000080
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000100
	PlayBgm BGM_INTRO_CUTSCENE
	PlaySound SFX_APPARATE
	CallWithArg sub_0806DA1C, 0x00000007
	DoPostScriptAction 0x0006
SCRIPT_END
