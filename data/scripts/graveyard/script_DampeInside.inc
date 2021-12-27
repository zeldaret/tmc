@ Graveyard Dampe in house
SCRIPT_START script_DampeInside
	CheckEntityInteractType
	JumpIfNot script_080095DE
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0001
	Call sub_0806BE84
	WaitUntilTextboxCloses
	JumpIfNot script_08009622
	PlaySound SFX_109
	_0807F088 0x003c
	MessageFromTarget 0x053c
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	_0807F078 0x003c, 0x0001
script_08009622:
	_0807E878
	DoPostScriptAction 0x0000
	Jump script_080095DE
