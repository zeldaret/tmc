@ Cloud Tops Windtribespeople Leader Siroc
SCRIPT_START script_Siroc
	BeginBlock
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock
script_08014AD2:
	_0807E30C
	JumpIfNot script_08014AD2
	_0807E864
	_0807EB74
	StartPlayerScript script_PlayerAtSiroc
	WaitForSomething2 0x00000001
	_0807EB74
	CheckLocalFlag 0x0064
	JumpIf script_08014AFE
	SetLocalFlag 0x0064
	MessageNoOverlap 0x2f0b
	Jump script_08014B02
script_08014AFE:
	MessageNoOverlap 0x2f0c
script_08014B02:
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_08014AD2
	.2byte 0x0000
