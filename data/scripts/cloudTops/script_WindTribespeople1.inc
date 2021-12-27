@ Cloud Tops WindTribespeople blocking exit
SCRIPT_START script_WindTribespeople1
	BeginBlock
	Call sub_0806C870
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0058
	JumpIf script_08014976
	_0807EB44 0x0004
	SetEntityPositionRelative 0x0078, 0x0128
script_08014976:
	EndBlock
script_08014978:
	_0807E30C
	JumpIfNot script_08014978
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_08014978
