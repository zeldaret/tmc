SCRIPT_START script_08014B34
	BeginBlock
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	EndBlock
	CheckLocalFlag 0x0063
	JumpIf script_08014BE8
script_08014B48:
	EndBlock
	BeginBlock
	CheckRoomFlag 0x0000
	JumpIf script_08014B70
	CheckEntityInteractType
	JumpIfNot script_08014B48
	EndBlock 
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x2f01
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_08014B48
script_08014B70:
	EndBlock
	_0807E864
	Call sub_0807DF28
	_0807E5F8 0x00000001
	DoPostScriptAction 0x0004
	WaitForSomething2 0x00000002
	_0807E930 0x0010
	Call sub_0806CCF8
	Wait 0x0014
	Call sub_0806CD04
	Wait 0x0014
	Call sub_0806CD14
	Wait 0x0014
	Call sub_0806CD20
	Wait 0x0014
	Call sub_0806CD30
	Wait 0x0014
	Call sub_0806CD3C
	Wait 0x0014
	Call sub_0806CD4C
	PlaySound SFX_SECRET
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	Call sub_0807DF50
	_0807E878
script_08014BE8:
	_0807E930 0x0010
	Call sub_0806CD4C
script_08014BF2:
	CheckEntityInteractType
	JumpIfNot script_08014BF2
	_0807E864
	CheckLocalFlag 0x0065
	JumpIf script_08014C1C
	SetLocalFlag 0x0065
	MessageNoOverlap 0x2f07
	WaitUntilTextboxCloses
	SetIntVariable 0x00000064
	_0807F034 0x003f
	WaitPlayerGetItem
	Jump script_08014C22
script_08014C1C:
	MessageNoOverlap 0x2f08
	WaitUntilTextboxCloses
script_08014C22:
	Wait 0x000f
	_0807E878
	Jump script_08014BF2
SCRIPT_START script_08014C2C
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
SCRIPT_START script_08014C94
	BeginBlock
	CheckGlobalFlag 0x0024
	JumpIf script_08014CD4
	Call sub_0806C870
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0000
	EndBlock
script_08014CAE:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x0024
	JumpIf script_08014CD4
	_0807E30C
	JumpIfNot script_08014CAE
	EndBlock
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	_0807E878
	Jump script_08014CAE
script_08014CD4:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
