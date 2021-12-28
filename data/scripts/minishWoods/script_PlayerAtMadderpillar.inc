@ DWS Player entering Madderpiller fight
@ also DHC Player entering a Dark Nut fight
SCRIPT_START script_PlayerAtMadderpillar
	BeginBlock
	SetEntitySpeed 0x0140
	SetEntityDirection 0x0018
	_0807E864
	Call sub_0807F354
	EndBlock
	WaitForPlayerAction0x17
	_0807E8E4_3
	DoPostScriptAction 0x0001
	Call sub_080752AC
	_0807E878
	Call sub_080791D0
SCRIPT_END
