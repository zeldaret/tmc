@ Hyrule Castle OBJECT_69 Sanctuary Entrance
SCRIPT_START script_Object69SanctuaryEntrance
	CheckPlayerInRegion 0x0088, 0x0048, 0x3030
	JumpIfNot script_Object69SanctuaryEntrance
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtSanctuaryEntrance
	WaitForSyncFlagAndClear 0x00000001
	_0807EB28 0x132d
	WaitUntilTextboxCloses
.ifdef JP
	SetLocalFlag 0x0015
.else
.ifdef EU
	SetLocalFlag 0x0015
.else
.ifdef DEMO_JP
	SetLocalFlag 0x0015 @ TODO deduplicate
.else
	SetLocalFlag 0x0014
.endif
.endif
.endif
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
