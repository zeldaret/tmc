@ DHC OBJECT_69 V2 intro
SCRIPT_START script_Object69V2Intro
	BeginBlock
	Call sub_0807DF28
	SetPlayerIdle
	EndBlock
	StopBgm
	MessageFromTargetPos 0x1632, 0x0002
	WaitUntilTextboxCloses
	SetRoomFlag 0x0003
script_0800DFFE:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800DFFE
	PlayBgm BGM_VAATI_TRANSFIGURED
	Call sub_0807DF50
	EnablePlayerControl
script_0800E012:
	@ Defeated
	CheckRoomFlag 0x0002
	JumpIfNot script_0800E012
	SetPlayerIdle
	Call sub_0807DF28
	SetLocalFlag 0x007b
	MessageFromTargetPos 0x1639, 0x000c
	WaitUntilTextboxCloses
	Wait 0x0096
	PlaySound SFX_EVAPORATE
	CallWithArg sub_0806DA1C, 0x00000005
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
