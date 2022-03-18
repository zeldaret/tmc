@ DHC Vaati V1 intro
SCRIPT_START script_Vaati1Intro
	BeginBlock
	DoPostScriptAction 0x0008
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StopBgm
	_0807E8E4_2
	Wait 0x005a
	Call CreatePlayerExclamationMark
	Wait 0x003c
	_0807E8E4_0
	_0807F0B4 0x0001
	CameraTargetEntity
	Call WaitForCameraTouchRoomBorder
	Call sub_08066C94
	Wait 0x00e9
	DoPostScriptAction 0x0007
	MessageFromTargetPos 0x162f, 0x0002
	WaitUntilTextboxCloses
	PlayBgm BGM_VAATI_REBORN
	DoPostScriptAction 0x0019
	PlaySound SFX_198
	Call WaitForAnimDone
	SetRoomFlag 0x0000
	DoPostScriptAction 0x0008
	Wait 0x0080
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call WaitForCameraTouchRoomBorder
	SetLocalFlag 0x0078
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
