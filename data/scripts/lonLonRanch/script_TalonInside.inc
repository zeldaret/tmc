@ Lon Lon Farm Talon in ranch house?
SCRIPT_START script_TalonInside
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08014E64:
	CheckEntityInteractType
	JumpIfNot script_08014E64
	_0807E864
	Call sub_0807DF28
	_0807EB74
	CallWithArg sub_0807F78C, 0x00000022
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08014EBC
	CallWithArg sub_0807F7C4, 0x00000022
	JumpIfNot script_08014EB0
	CheckBottleContaining 0x0020
	JumpIfNot script_08014EB8
	CallWithArg sub_0807F800, 0x00000022
	WaitPlayerGetItem 
	MessageNoOverlap 0x0a04
	Jump script_08014EBC
script_08014EB0:
	MessageNoOverlap 0x0a03
	Jump script_08014EBC
script_08014EB8:
	MessageNoOverlap 0x0a02
script_08014EBC:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
	Jump script_08014E64
	.2byte 0x0000
