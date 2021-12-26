@ Cloud Tops Gregal sick
SCRIPT_START script_GregalSick
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
	SetSyncFlag 0x00000001
	DoPostScriptAction 0x0004
	WaitForSyncFlagAndClear 0x00000002
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
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
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
	GivePlayerItem 0x003f
	WaitPlayerGetItem
	Jump script_08014C22
script_08014C1C:
	MessageNoOverlap 0x2f08
	WaitUntilTextboxCloses
script_08014C22:
	Wait 0x000f
	_0807E878
	Jump script_08014BF2
