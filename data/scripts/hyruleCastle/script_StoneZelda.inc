@ Hyrule Castle Stone Zelda
SCRIPT_START script_StoneZelda
	BeginBlock
	DoPostScriptAction 0x000a
	Call sub_08066E38
	_0807E9D4
	EndBlock
script_08009300:
	CheckEntityInteractType
	JumpIfNot script_08009300
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x1071
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08009300
	.2byte 0x0000
