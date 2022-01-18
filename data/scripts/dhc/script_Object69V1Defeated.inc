@ DHC OBJECT_69 V1 defeated
SCRIPT_START script_Object69V1Defeated
	EndBlock
script_0800DFB6:
	CheckRoomFlag 0x0001
	JumpIfNot script_0800DFB6
	StopBgm
	SetPlayerIdle
	Call sub_0807DF28
	PlaySound SFX_EVAPORATE
	CallWithArg sub_0806DA1C, 0x00000004
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
