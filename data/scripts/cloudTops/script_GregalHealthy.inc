@ Cloud Tops Gregal healthy
SCRIPT_START script_GregalHealthy
	BeginBlock
	Call sub_0806CD58
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0006
	EndBlock
script_08014C42:
	CheckEntityInteractType
	JumpIfNot script_08014C42
	_0807E864
	_0807EB74
script_08014C4C:
	Call sub_0806CCD0
	JumpIfNot script_08014C4C
script_08014C56:
	Call sub_0806CCB4
	JumpIfNot script_08014C56
	CheckLocalFlag 0x0066
	JumpIf script_08014C7C
	SetLocalFlag 0x0066
	MessageNoOverlap 0x2f0d
	WaitUntilTextboxCloses
	_0807F034 0x000a
	WaitPlayerGetItem
	Jump script_08014C82
script_08014C7C:
	MessageNoOverlap 0x2f09
	WaitUntilTextboxCloses
script_08014C82:
	Wait 0x000f
	_0807E878
	_0807EB44 0x0004
	_0807E930 0x0006
	Jump script_08014C42
