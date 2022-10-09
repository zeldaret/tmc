@ Outside Castle CUTSCENE_ORCHESTRATOR Vaati appearance
SCRIPT_START script_CutsceneOrchestratorVaatiAppears
	BeginBlock
	SetEntityPositionRelative 0x01f8, 0x00e0
	Call DisableRandomDrops
	EndBlock
script_08014FCC:
	CheckPlayerInRegion 0x01f8, 0x00a0, 0x2040
	JumpIfNot script_08014FCC
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StopBgm
	SetScrollSpeed 1
	CameraTargetEntity
	StartPlayerScript script_PlayerAtVaatisAppearance
	WaitForSyncFlagAndClear 0x00000001
	MessageFromTargetPos TEXT_VAATI, 0x01, 0x0002
	WaitUntilTextboxCloses
	Call CreatePlayerExclamationMark
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	PlayBgm BGM_VAATI_THEME
	EzloMessage TEXT_VAATI, 0x02
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI, 0x03, 0x0002
	WaitUntilTextboxCloses
	EzloMessage TEXT_VAATI, 0x04
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI, 0x05, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	EzloMessage TEXT_VAATI, 0x06
	WaitUntilTextboxCloses
	StopBgm
	StartPlayerScript script_PlayerTryToFollowVaati
	CameraTargetEntity
	SetScrollSpeed 3
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
	Call EnablePauseMenu
	EnablePlayerControl
script_08015104:
	CheckRoomFlag 0x0000
	JumpIfNot script_08015104
	@ Defeated Moblins
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
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
	SetScrollSpeed 4
	CameraTargetPlayer
	SetLocalFlag SOUGEN_06_SAIKAI
	EzloMessage TEXT_VAATI, 0x0c
	WaitUntilTextboxCloses
	@ Ezlo cutscene starts
	CameraTargetPlayer
	SetFadeTime 0x0004
	_0807E80C 0x00000000
	WaitForFadeFinish
	Call sub_08053B3C
	BeginBlock
	SetPlayerIdle
	CallWithArg SetPlayerFlag, PL_NO_CAP
	MoveEntityToPlayer
	SetScrollSpeed 4
	CameraTargetEntity
	SetFadeTime 0x0100
	SetFade4
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
	EzloMessage TEXT_VAATI, 0x15
	EndBlock
	WaitUntilTextboxCloses
	SetScrollSpeed 4
	CameraTargetPlayer
	Call EnableRandomDrops
	PlayBGM
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
