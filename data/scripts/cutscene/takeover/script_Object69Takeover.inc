@ Western Wood OBJECT_69 Cutscene
SCRIPT_START script_Object69Takeover
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
script_08015BF0:
	CheckPlayerInRegion 0x0160, 0x0020, 0x3040
	JumpIfNot script_08015BF0
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	Call sub_0807FBC4
	StartPlayerScript script_PlayerAtTakeover
	WaitForSomething2 0x00000100
	CameraTargetPlayer
	_0807E778 0x0004
	_0807E80C 0x00000000
	WaitFor_2
	StopBgm
	Call sub_08053BE8
	BeginBlock
	_0807E864
	Call sub_0807FBC4
	CameraTargetPlayer
	_0807E778 0x0100
	DoFade4
	_0807E80C 0x00000000
	EndBlock
	_0807E778 0x0004
	_0807E800 0x00000000
	WaitFor_2
	PlayBGM
	_0807EB28 0x131f
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
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
