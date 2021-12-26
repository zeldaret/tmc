@ DHC Player entering yet another Dark Nut fight
SCRIPT_START script_PlayerAtDarkNut1
	BeginBlock
	SetEntitySpeed 0x0140
	SetEntityDirection 0x0000
	_0807E864
	Call sub_0807F354
	EndBlock
	WaitForPlayerAction0x17
	_0807E8E4_0
	DoPostScriptAction 0x0001
	Call sub_080752AC
	_0807E878
	Call sub_080791D0
SCRIPT_END
