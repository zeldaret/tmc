@ Western Wood Cutscene CUTSCENE_ORCHESTRATOR in Castle
SCRIPT_START script_CutsceneOrchestratorTakeoverCutscene
	BeginBlock
	SetScrollSpeed 7
	SetEntityPositionRelative 0x0088, 0x0068
	CameraTargetEntity
	EndBlock
	SetFadeTime 0x0004
	SetFade4
	WaitForFadeFinish
	Wait 0x003c
	SetScrollSpeed 4
	SetEntityPositionRelative 0x0088, 0x00e0
	CameraTargetEntity
	Wait 0x003c
	PlayBgm BGM_VAATI_THEME
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	SetScrollSpeed 4
	SetEntityPositionRelative 0x0088, 0x0070
	CameraTargetEntity
	Wait 0x003c
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetScrollSpeed 4
	SetEntityPositionRelative 0x0088, 0x00e0
	CameraTargetEntity
	Wait 0x003c
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	SetScrollSpeed 4
	SetEntityPositionRelative 0x0088, 0x0070
	CameraTargetEntity
	Wait 0x003c
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	SetFadeTime 0x0004
	SetFade5
	WaitForFadeFinish
	SetSyncFlag 0x00000010
	LoadRoomEntityList gUnk_080FCE30
	StopBgm
	Wait 0x0078
	SetFadeTime 0x0004
	SetFade4
	WaitForFadeFinish
	PlayBgm BGM_DIGGING_CAVE
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000080
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000200
	Wait 0x003c
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetFadeTime 0x0004
	SetFade5
	WaitForFadeFinish
	StopBgm
	SetRoomFlag 0x0000
	DoPostScriptAction 0x0006
SCRIPT_END
