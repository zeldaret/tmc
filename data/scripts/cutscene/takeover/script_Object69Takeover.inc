@ Western Wood OBJECT_69 Cutscene
SCRIPT_START script_Object69Takeover
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
script_08015BF0:
	CheckPlayerInRegion 0x0160, 0x0020, 0x3040
	JumpIfNot script_08015BF0
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	Call sub_0807FBC4
	StartPlayerScript script_PlayerAtTakeover
	WaitForSyncFlagAndClear 0x00000100
	CameraTargetPlayer
	SetFadeTime 0x0004
	_0807E80C 0x00000000
	WaitForFadeFinish
	StopBgm
	Call sub_08053BE8
	BeginBlock
	SetPlayerIdle
	Call sub_0807FBC4
	CameraTargetPlayer
	SetFadeTime 0x0100
	DoFade4
	_0807E80C 0x00000000
	EndBlock
	SetFadeTime 0x0004
	_0807E800 0x00000000
	WaitForFadeFinish
	PlayBGM
	EzloMessage 0x131f
	WaitUntilTextboxCloses
.ifdef JP
	SetLocalFlag 0x009b
.else
.ifdef EU
	SetLocalFlag 0x009b
.else
.ifdef DEMO_JP
	SetLocalFlag 0x009b @ TODO deduplicate
.else
	SetLocalFlag 0x009c
.endif
.endif
.endif
	Call sub_0807FBCC
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
