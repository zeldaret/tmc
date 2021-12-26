@ Hyrule Town NPC4E Kinstone Cutscene
SCRIPT_START script_Npc4EFirstKinstone
	BeginBlock
	_0807F0B4 0x0001
	CameraTargetPlayer
	EndBlock
script_0800F09A:
	CheckPlayerInRegion 0x01f8, 0x0338, 0x1030
	JumpIfNot script_0800F09A
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	LoadRoomEntityList gUnk_080EE8AC
	StartPlayerScript script_PlayerAtFirstKinstone
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x0000001e
	WaitForSyncFlagAndClear 0x00000040
	MessageFromTargetPos 0x1201, 0x000c
	WaitUntilTextboxCloses
	WaitForSyncFlagAndClear 0x000003c0
	_0807E8E4_0 
	MessageFromTargetPos 0x1202, 0x000c
	WaitUntilTextboxCloses
	GivePlayerItem 0x0067
	WaitPlayerGetItem
	_0807E8E4_0
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000040
	MessageFromTargetPos 0x1203, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	Call sub_0807DF50
	_0807E878
	WaitForSyncFlagAndClear 0x00000040
script_0800F11A:
	CheckKinstoneFused 0x0032
	JumpIfNot script_0800F11A
	_0807E864
	Call sub_0807DF28
	SetSyncFlag 0x0000001e
	Wait 0x003c
	_0807E8E4_1
	WaitForSyncFlagAndClear 0x000003c0
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
