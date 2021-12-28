@ Sanctuary OBJECT_3E Look at picture in back room
SCRIPT_START script_Object3EPictureBackRoom
	CheckPlayerInRegion 0x0098, 0x0038, 0x2060
	JumpIfNot script_Object3EPictureBackRoom
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtPicture
	WaitForSyncFlagAndClear 0x00000002
	EzloMessage 0x1601
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerMoveToPicture
	WaitForSyncFlagAndClear 0x00000002
	SetFadeTime 0x0004
	DoFade5
	WaitForFadeFinish
	LoadRoomEntityList gUnk_080F5680
	StartPlayerScript script_PlayerSanctuaryIntro
	WaitForSyncFlagAndClear 0x00000002
	MoveEntityToPlayer
	OffsetEntityPosition 0x0000, 0xfff0
	Call sub_0807F844
	CameraTargetEntity
	Call sub_080536B8
	SetPlayerIdle
	Call sub_0807DF28
	WaitForFadeFinish
	MessageFromTargetPos 0x1602, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000040
	PlayBgm BGM_VAATI_THEME
	StartPlayerScript script_PlayerDistanceFromVaati
	WaitForSyncFlagAndClear 0x00000002
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000040
	StartPlayerScript script_PlayerFaintAgain
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000042
	MessageFromTargetPos 0x1603, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000040
	SetFadeMask 0xffff7fff
	SetFadeTime 0x0004
	DoFade5
	WaitForFadeFinish
	StopBgm
	_0807E858 0x0000
	Wait 0x003c
	CameraTargetPlayer
	Call WaitForCameraTouchRoomBorder
	MessageFromTargetPos 0x1604, 0x0007
	WaitUntilTextboxCloses
	SetFadeMask 0xffffffff
	SetFadeTime 0x0004
	DoFade4
	WaitForFadeFinish
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	EzloMessage 0x1605
	WaitUntilTextboxCloses
	SetLocalFlag 0x0078
	PlayBgm BGM_CASTLE_COLLAPSE
	SetGlobalFlag 0x005d
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
