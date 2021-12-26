@ Minish Village ForestMinish at the back of the pico flowers
SCRIPT_START script_ForestMinish10
	BeginBlock
	CheckInventory1 0x005b
	JumpIfNot script_0800C5FE
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock
script_0800CD92:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800CDA6
	Call sub_08060158
	Jump script_0800CD92
script_0800CDA6:
	EndBlock
	_0807E864
	Call sub_0807DF28
	CheckLocalFlag 0x009d
	JumpIf script_0800CDC4
	SetLocalFlag 0x009d
	MessageNoOverlap 0x213d
	Jump script_0800CF40
script_0800CDC4:
	CheckGlobalFlag 0x003b
	JumpIf script_0800CE46
	CheckGlobalFlag 0x0054
	JumpIfNot script_0800CDEC
	CheckRoomFlag 0x0000
	JumpIfNot script_0800CF2A
	SetGlobalFlag 0x003b
	ClearGlobalFlag 0x0054
	MessageNoOverlap 0x2141
	Jump script_0800CF40
script_0800CDEC:
	MessageNoOverlap 0x213e
	WaitUntilTextboxCloses
	_0807E48C 0x0023
	JumpIfNot script_0800CE14
	MessageNoOverlap 0x214b
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0023
	WaitPlayerGetItem
	Jump script_0800CE32
script_0800CE14:
	_0807E48C 0x0022
	JumpIfNot script_0800CF40
	MessageNoOverlap 0x214b
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0022
	WaitPlayerGetItem
script_0800CE32:
	_0807EB8C
	SetGlobalFlag 0x0054
	Call sub_08060340
	MessageNoOverlap 0x213f
	Jump script_0800CF02
script_0800CE46:
	CheckGlobalFlag 0x003c
	JumpIf script_0800CEA6
	CheckGlobalFlag 0x0054
	JumpIfNot script_0800CE6E
	CheckRoomFlag 0x0000
	JumpIfNot script_0800CF2A
	SetGlobalFlag 0x003c
	ClearGlobalFlag 0x0054
	MessageNoOverlap 0x2145
	Jump script_0800CF40
script_0800CE6E:
	MessageNoOverlap 0x2142
	WaitUntilTextboxCloses
	_0807E48C 0x0027
	JumpIfNot script_0800CF40
	MessageNoOverlap 0x214c
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0027
	WaitPlayerGetItem
	_0807EB8C
	SetGlobalFlag 0x0054
	Call sub_08060340
	MessageNoOverlap 0x2143
	Jump script_0800CF02
script_0800CEA6:
	CheckGlobalFlag 0x003d
	JumpIf script_0800CF3C
	CheckGlobalFlag 0x0054
	JumpIfNot script_0800CECE
	CheckRoomFlag 0x0000
	JumpIfNot script_0800CF2A
	SetGlobalFlag 0x003d
	ClearGlobalFlag 0x0054
	MessageNoOverlap 0x2149
	Jump script_0800CF40
script_0800CECE:
	MessageNoOverlap 0x2146
	WaitUntilTextboxCloses
	_0807E48C 0x0024
	JumpIfNot script_0800CF40
	MessageNoOverlap 0x214d
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0024
	WaitPlayerGetItem
	_0807EB8C
	SetGlobalFlag 0x0054
	Call sub_08060340
	MessageNoOverlap 0x2147
script_0800CF02:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
script_0800CF0C:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800CF20
	Call sub_08060158
	Jump script_0800CF0C
script_0800CF20:
	EndBlock
	_0807E864
	Call sub_0807DF28
script_0800CF2A:
	MessageNoOverlap 0x2140
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
	Jump script_0800CF0C
script_0800CF3C:
	MessageNoOverlap 0x214a
script_0800CF40:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
	Jump script_0800CD92
	.2byte 0x0000
