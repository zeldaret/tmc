@ Outside Castle OBJECT_69 Vaati appearance
SCRIPT_START script_Object69VaatiAppears
	BeginBlock
	SetEntityPositionRelative 0x01f8, 0x00e0
	Call sub_08054564
	EndBlock
script_08014FCC:
	CheckPlayerInRegion 0x01f8, 0x00a0, 0x2040
	JumpIfNot script_08014FCC
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StopBgm
	_0807F0B4 0x0001
	CameraTargetEntity
	StartPlayerScript script_PlayerAtVaatisAppearance
	WaitForSyncFlagAndClear 0x00000001
	MessageFromTargetPos 0x1301, 0x0002
	WaitUntilTextboxCloses
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	PlayBgm BGM_VAATI_THEME
	EzloMessage 0x1302
	WaitUntilTextboxCloses
	MessageFromTargetPos 0x1303, 0x0002
	WaitUntilTextboxCloses
	EzloMessage 0x1304
	WaitUntilTextboxCloses
	MessageFromTargetPos 0x1305, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	EzloMessage 0x1306
	WaitUntilTextboxCloses
	StopBgm
	StartPlayerScript script_PlayerTryToFollowVaati
	CameraTargetEntity
	_0807F0B4 0x0003
	SetEntityPositionRelative 0x01f8, 0x0148
	WaitForSyncFlagAndClear 0x00000001
	Call sub_0804F6A8
	Wait 0x0004
	Call sub_0804F808
	PlaySound SFX_10B
	StartPlayerScript script_PlayerStoneWallsAppear
	Call sub_0804F6C8
	Wait 0x0004
	Call sub_0804F830
	PlaySound SFX_10B
	Call sub_0804F6E8
	Wait 0x0004
	Call sub_0804F854
	PlaySound SFX_10B
	Call sub_0804F724
	Wait 0x0004
	Call sub_0804F89C
	PlaySound SFX_10B
	Call sub_0804F760
	Wait 0x0004
	Call sub_0804F8E0
	PlaySound SFX_10B
	Wait 0x003c
	WaitForSyncFlagAndClear 0x00000001
	PlaySound SFX_1B0
	Call sub_0804F79C
	Wait 0x000a
	LoadRoomEntityList gUnk_080F7FC0
	PlayBgm BGM_FIGHT_THEME
	Call sub_0807DF50
	EnablePlayerControl
script_08015104:
	CheckRoomFlag 0x0000
	JumpIfNot script_08015104
	@ Defeated Moblins
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StopBgm
	StartPlayerScript script_PlayerDefeatedMoblins
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	Call sub_0804F6A8
	Wait 0x0004
	Call sub_0804F928
	PlaySound SFX_10B
	Call sub_0804F6C8
	Wait 0x0004
	Call sub_0804F944
	PlaySound SFX_10B
	Call sub_0804F6E8
	Wait 0x0004
	Call sub_0804F960
	PlaySound SFX_10B
	Call sub_0804F724
	Wait 0x0004
	Call sub_0804F994
	PlaySound SFX_10B
	Call sub_0804F760
	Wait 0x0004
	Call sub_0804F9C8
	PlaySound SFX_10B
	Wait 0x003c
	PlaySound SFX_SECRET
	_0807F0B4 0x0004
	CameraTargetPlayer
.ifdef JP
	SetLocalFlag 0x008a
.else
.ifdef EU
	SetLocalFlag 0x008a
.else
.ifdef DEMO_JP
	SetLocalFlag 0x008a @ TODO deduplicate
.else
	SetLocalFlag 0x008c
.endif
.endif
.endif
	EzloMessage 0x130c
	WaitUntilTextboxCloses
	@ Ezlo cutscene starts
	CameraTargetPlayer
	SetFadeTime 0x0004
	_0807E80C 0x00000000
	WaitForFadeFinish
	Call sub_08053B3C
	BeginBlock
	SetPlayerIdle
	CallWithArg SetPlayerFlag, 0x00000008
	MoveEntityToPlayer
	_0807F0B4 0x0004
	CameraTargetEntity
	SetFadeTime 0x0100
	DoFade4
	_0807E80C 0x00000000
	EndBlock
	StartPlayerScript script_PlayerSeenOriginStory
	WaitForSyncFlagAndClear 0x00000001
	LoadRoomEntityList gUnk_080F7CB0
	SetFadeTime 0x0004
	_0807E800 0x00000000
	WaitForFadeFinish
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000010
	BeginBlock
	_0807E8E4_2
	EzloMessage 0x1315
	EndBlock
	WaitUntilTextboxCloses
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call sub_08054570
	PlayBGM
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
