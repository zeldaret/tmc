@ Minish Woods Ezlo Cutscene NPC4E
SCRIPT_START script_Npc4EEzloCutscene
	BeginBlock
	Call sub_08054564
	EndBlock
script_0801248A:
	CheckPlayerInRegion 0x0208, 0x02c8, 0x4020
	JumpIfNot script_0801248A
	StopBgm
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtFirstLookAtEzlo
	MessageFromTargetPos 0x1101, 0x0007
	WaitUntilTextboxCloses
	CameraTargetPlayer 
	SetFadeTime 0x0004
	_0807E80C 0x00000000
	WaitForFadeFinish
	_0807E858 0x0000
	Call sub_080791BC
	LoadRoomEntityList gUnk_080F4D70
	Call DeleteAllEnemies
	SetEntityPositionRelative 0x0388, 0x0168
	Call sub_0807F844
	SetFadeTime 0x0004
	_0807E800 0x00000000
	WaitForFadeFinish
	PlayBgm BGM_EZLO_THEME
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	StopBgm
	SetFadeTime 0x0004
	_0807E80C 0x00000000
	WaitForFadeFinish
	MoveEntityToPlayer
	Call sub_0807F844
	CameraTargetPlayer
	SetFadeMask 0xffffffff
	SetFadeTime 0x0004
	_0807E800 0x00000000
	WaitForFadeFinish
	Call sub_0807DF50
	EnablePlayerControl
	PlayBGM
script_08012566:
	CheckPlayerInRegion 0x03a0, 0x01a0, 0x1020
	JumpIfNot script_08012566
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	Call sub_0806DC7C
	StopBgm
	StartPlayerScript script_PlayerEzloBeingBullied
	WaitForSyncFlagAndClear 0x00000001
	SetEntityPositionRelative 0x0388, 0x0168
	_0807F0B4 0x0001
	CameraTargetEntity
	Wait 0x005a
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	PlayBgm BGM_EZLO_THEME
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	StopBgm
	PlayBgm BGM_FIGHT_THEME2
	Call sub_0807DF50
	EnablePlayerControl
	SetSyncFlag 0x00000050
	LoadRoomEntityList gUnk_080F51D0
	WaitForSyncFlagAndClear 0x00000008
	SetPlayerIdle
	Call WaitForPlayerNormalOrTalkEzlo
	Call sub_0807DF28
	PlaySound SFX_SECRET
	StopBgm
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	StartPlayerScript script_PlayerDefeatedOctoroks
	WaitForSyncFlagAndClear 0x00000001
	_0807E8E4_0
	PlayBgm BGM_EZLO_THEME
	Wait 0x001e
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	StopBgm
	Wait 0x003c
	PlayBGM
	Call sub_0806DCA0
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call sub_0807DF50
	EnablePlayerControl
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	StopBgm
	Wait 0x003c
	PlayBGM
	Call sub_08054570
	SetGlobalFlag 0x0014
	CallWithArg ResetPlayerFlag, 0x00000008
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
