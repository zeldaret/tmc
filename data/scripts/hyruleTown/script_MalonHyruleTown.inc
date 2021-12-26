@ Hyrule Town Malon
SCRIPT_START script_MalonHyruleTown
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x000e
	EndBlock
	Call sub_08065914
script_08014F4A:
	CheckEntityInteractType
	JumpIfNot script_08014F4A
	_0807E864
	Call sub_0807DF28
	_0807EB74
	DoPostScriptAction 0x0000
	BeginBlock 
	MessageNoOverlap 0x3b0b
	CallWithArg sub_0807F854, 0x00010064
	EndBlock
	WaitUntilTextboxCloses
	_0807E3E8
	JumpIfNot script_08014FA6
	HasRupees 0x0064
	JumpIfNot script_08014F9A
	_0807E48C 0x0020
	JumpIfNot script_08014FA2
	ModRupees 0xff9c
	_0807F034 0x0022
	WaitPlayerGetItem 
	MessageNoOverlap 0x3b11
	Jump script_08014FA6
script_08014F9A:
	MessageNoOverlap 0x3b0e
	Jump script_08014FA6
script_08014FA2:
	MessageNoOverlap 0x3b0f
script_08014FA6:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
	_0807EB44 0x0004
	_0807E930 0x000e
	Jump script_08014F4A
