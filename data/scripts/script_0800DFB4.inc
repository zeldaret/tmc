SCRIPT_START script_0800DFB4
	EndBlock 
script_0800DFB6:
	CheckRoomFlag 0x0001
	JumpIfNot script_0800DFB6
	StopBgm
	_0807E864 
	Call sub_0807DF28
	PlaySound SFX_EVAPORATE
	CallWithArg sub_0806DA1C, 0x00000004
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
