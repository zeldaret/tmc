@ Sanctuary NPC4E Intro Cutscene
SCRIPT_START script_Npc4ESanctuaryIntro
	EndBlock
script_08013CA6:
	CheckPlayerInRegion 0x00e8, 0x01e8, 0x4080
	JumpIfNot script_08013CA6
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	Call CreatePlayerExclamationMark
	Wait 0x003c
	_0807F0B4 0x0001
	SetEntityPositionRelative 0x00e8, 0x0138
	CameraTargetEntity
	Call WaitForCameraTouchRoomBorder
	Wait 0x0078
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call WaitForCameraTouchRoomBorder
	EzloMessage 0x1504
	WaitUntilTextboxCloses
	SetLocalFlag 0x0079
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
