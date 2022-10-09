@ DHC Vaati V1 intro
SCRIPT_START script_Vaati1Intro
	BeginBlock
	DoPostScriptAction 0x0008
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StopBgm
	_0807E8E4_2
	Wait 0x005a
	Call CreatePlayerExclamationMark
	Wait 0x003c
	_0807E8E4_0
	SetScrollSpeed 1
	CameraTargetEntity
	Call WaitForCameraTouchRoomBorder
	Call Vaati_Apparate
	Wait 0x00e9
	DoPostScriptAction 0x0007
	MessageFromTargetPos TEXT_VAATI2, 0x2f, 0x0002
	WaitUntilTextboxCloses
	PlayBgm BGM_VAATI_REBORN
	DoPostScriptAction 0x0019
	PlaySound SFX_198
	Call WaitForAnimDone
	SetRoomFlag 0x0000
	DoPostScriptAction 0x0008
	Wait 0x0080
	SetScrollSpeed 4
	CameraTargetPlayer
	Call WaitForCameraTouchRoomBorder
	SetLocalFlag 0x0078
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
