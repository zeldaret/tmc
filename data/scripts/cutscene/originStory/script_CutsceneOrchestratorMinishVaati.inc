@ Ezlo Cutscene CUTSCENE_ORCHESTRATOR MinishVaati
SCRIPT_START script_CutsceneOrchestratorMinishVaati
	BeginBlock
	SetScrollSpeed 7
	SetEntityPositionRelative 0x0078, 0x0068
	CameraTargetEntity
	EndBlock
	PlayBgm BGM_EZLO_STORY
	SetFadeTime 0x0004
	SetFade4
	WaitForFadeFinish
	Wait 0x003c
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000800
	WaitForSyncFlagAndClear 0x00001000
	SetSyncFlag 0x00000880
	WaitForSyncFlagAndClear 0x00001100
	SetScrollSpeed 4
	SetEntityPositionRelative 0x0078, 0x0090
	MessageFromTargetPos TEXT_VAATI, 0x30, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00008000
	WaitForSyncFlagAndClear 0x00010000
	SetSyncFlag 0x00000880
	WaitForSyncFlagAndClear 0x00001000
	Wait 0x003c
	MessageFromTargetPos TEXT_VAATI, 0x0d, 0x0002
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI, 0x0e, 0x000c
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI, 0x0f, 0x0002
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI, 0x10, 0x000c
	WaitUntilTextboxCloses
	CallWithArg CreateRepeatedSoundManager, 0x00000001
	_0807F0C8 0xffff, 0x0000
