@ DWS Player entering Madderpiller fight
@ also DHC Player entering a Dark Nut fight
SCRIPT_START script_PlayerAtMadderpillar
	BeginBlock
	SetEntitySpeed 0x0140
	SetEntityDirection 0x0018
	SetPlayerIdle
	Call SetPriorityPlayerEvent
	EndBlock
	WaitForPlayerEnterRoom
	_0807E8E4_3
	DoPostScriptAction 0x0001
	Call sub_080752AC
	EnablePlayerControl
	Call ResetPlayerAnimationAndAction
SCRIPT_END
