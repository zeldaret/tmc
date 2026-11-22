@ DHC player at a dark nut fight
script_PlayerAtDarkNut2::
	BeginBlock
	SetEntitySpeed 0x0140
	SetEntityDirection 0x0008
	SetPlayerIdle
	Call SetPriorityPlayerEvent
	EndBlock
	WaitForPlayerEnterRoom
	PlayerIdleEast
	DoPostScriptAction 0x0001
	Call sub_080752AC
	EnablePlayerControl
	Call ResetPlayerAnimationAndAction
	EndScript
