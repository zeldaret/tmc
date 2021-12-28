@ Hyrule Castle Guard guarding entry to castle
SCRIPT_START script_GuardEntry2
	BeginBlock
	_0807EB44 0x0004
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011A44:
	CheckEntityInteractType
	JumpIfNot script_08011A44
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	MessageFromTarget 0x1320
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08011A44
