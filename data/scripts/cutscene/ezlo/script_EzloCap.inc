@ First look at Ezlo EzloCap
SCRIPT_START script_EzloCap
	BeginBlock
	SetEntitySpeed 0x0040
	DoPostScriptAction 0x0007
	EndBlock
	SetAnimation 0x0020
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0022
	Call sub_0807F3C8
	MessageFromTargetPos 0x1102, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0020
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0021
	Call sub_0807F3C8
	MessageFromTargetPos 0x1103, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0020
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0011
	SetAnimation 0x001c
	MessageFromTargetPos 0x1105, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0020
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0022
	Call sub_0807F3C8
	MessageFromTargetPos 0x1106, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x001c
	Call sub_0806D96C
	MessageFromTargetPos 0x1107, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0020
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0021
	Call sub_0807F3C8
	MessageFromTargetPos 0x1108, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x001c
	Call sub_0806D96C
	MessageFromTargetPos 0x1109, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0020
	DoPostScriptAction 0x000a
	_0807E9D4
	SetSyncFlag 0x00000008
script_080127F2:
	EndBlock
	BeginBlock
	CheckRoomFlag 0x0000
	JumpIf script_08012824
	CheckEntityInteractType
	JumpIfNot script_080127F2
	EndBlock
	SetPlayerIdle
	Call sub_0806D944
	SetAnimation 0x0010
	MessageFromTargetPos 0x1114, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0020
	EnablePlayerControl
	Jump script_080127F2
script_08012824:
	SetPlayerIdle
	_0807E9DC
	CallWithArg sub_0807F5B0, 0x0000003c
	Call sub_080791D0
	EndBlock
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x000b
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	Call sub_0806D944
	SetAnimation 0x0010
	MessageFromTargetPos 0x110a, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x001f
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0010
	MessageFromTargetPos 0x110b, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x001f
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetAnimation 0x0010
	MessageFromTargetPos 0x110c, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x001f
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0010
	MessageFromTargetPos 0x110d, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x001f
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0010
	MessageFromTargetPos 0x110e, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D908
	WalkForward 0x0010
	DoPostScriptAction 0x000a
	_0807E9D4
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
script_08012904:
	EndBlock
	BeginBlock
	Call sub_0806D944
	CheckEntityInteractType
	JumpIf script_08012920
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_0801293A
	Jump script_08012904
script_08012920:
	SetPlayerIdle
	SetAnimation 0x0010
	EndBlock 
	MessageFromTargetPos 0x1115, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0018
	EnablePlayerControl
	Jump script_08012904
script_0801293A:
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	FaceAwayFromPlayer
	Call sub_0806D944
	SetAnimation 0x0010
	MessageFromTargetPos 0x110f, 0x000c
	SetAnimation 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D908
	WalkForward 0x0050
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
script_08012984:
	EndBlock
	BeginBlock
	Call sub_0806D944
	CheckEntityInteractType
	JumpIf script_080129A0
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080129BA
	Jump script_08012984
script_080129A0:
	SetPlayerIdle
	SetAnimation 0x0010
	EndBlock 
	MessageFromTargetPos 0x1115, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0018
	EnablePlayerControl
	Jump script_08012984
script_080129BA:
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	FaceAwayFromPlayer
	Call sub_0806D944
	SetAnimation 0x0010
	MessageFromTargetPos 0x1110, 0x000c
	SetAnimation 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D908
	WalkForward 0x0050
	SetAnimation 0x0018
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
script_08012A08:
	EndBlock
	BeginBlock
	Call sub_0806D944
	CheckEntityInteractType
	JumpIf script_08012A24
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_08012A3E
	Jump script_08012A08
script_08012A24:
	SetPlayerIdle
	SetAnimation 0x0010
	EndBlock 
	MessageFromTargetPos 0x1115, 0x000c
	WaitUntilTextboxCloses
	SetAnimation 0x0018
	EnablePlayerControl
	Jump script_08012A08
script_08012A3E:
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StopBgm
	DoPostScriptAction 0x000b
	FaceAwayFromPlayer
	Call sub_0806D944
	SetAnimation 0x0010
	MessageFromTargetPos 0x1111, 0x000c
	SetAnimation 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D8A0
script_08012A74:
	_0807EE30
	JumpIfNot script_08012A74
	SetAnimation 0x001f
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerGetEzloCap
	Call sub_0806D9A4
	DoPostScriptAction 0x0008
	Wait 0x0078
	PlayBgm BGM_EZLO_THEME
	BeginBlock
	_0807E8E4_2
	EzloMessage 0x1112
	EndBlock
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	DoPostScriptAction 0x0006
SCRIPT_END
