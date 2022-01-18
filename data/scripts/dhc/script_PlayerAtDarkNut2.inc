@ DHC player at a dark nut fight
SCRIPT_START script_PlayerAtDarkNut2
	BeginBlock
	SetEntitySpeed 0x0140
	SetEntityDirection 0x0008
	SetPlayerIdle
	Call SetPriorityPlayerEvent
	EndBlock
	WaitForPlayerEnterRoom
	_0807E8E4_1
	DoPostScriptAction 0x0001
	Call sub_080752AC
	EnablePlayerControl
	Call ResetPlayerAnimationAndAction
SCRIPT_END
