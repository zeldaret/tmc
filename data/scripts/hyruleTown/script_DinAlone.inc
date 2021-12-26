@ Din completely alone
SCRIPT_START script_DinAlone
	BeginBlock
	Call sub_08064828
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_080121DE:
	CheckEntityInteractType
	JumpIfNot script_080121DE
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4527
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_080121DE
