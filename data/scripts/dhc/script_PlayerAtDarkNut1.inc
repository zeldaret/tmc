@ DHC Player entering yet another Dark Nut fight
script_PlayerAtDarkNut1::
	BeginBlock
	SetEntitySpeed 0x0140
	SetEntityDirection 0x0000
	SetPlayerIdle
	Call SetPriorityPlayerEvent
	EndBlock
	WaitForPlayerEnterRoom
	PlayerIdleNorth
	DoPostScriptAction 0x0001
	Call sub_080752AC
	EnablePlayerControl
	Call ResetPlayerAnimationAndAction
	EndScript
