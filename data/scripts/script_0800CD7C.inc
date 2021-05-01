SCRIPT_START script_0800CD7C
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
	TextboxNoOverlap 0x213d
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
	TextboxNoOverlap 0x2141
	Jump script_0800CF40
script_0800CDEC:
	TextboxNoOverlap 0x213e
	_0807EA94 
	_0807E48C 0x0023
	JumpIfNot script_0800CE14
	TextboxNoOverlap 0x214b
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0023
	WaitPlayerAction8 
	Jump script_0800CE32
script_0800CE14:
	_0807E48C 0x0022
	JumpIfNot script_0800CF40
	TextboxNoOverlap 0x214b
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0022
	WaitPlayerAction8 
script_0800CE32:
	_0807EB8C 
	SetGlobalFlag 0x0054
	Call sub_08060340
	TextboxNoOverlap 0x213f
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
	TextboxNoOverlap 0x2145
	Jump script_0800CF40
script_0800CE6E:
	TextboxNoOverlap 0x2142
	_0807EA94 
	_0807E48C 0x0027
	JumpIfNot script_0800CF40
	TextboxNoOverlap 0x214c
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0027
	WaitPlayerAction8 
	_0807EB8C 
	SetGlobalFlag 0x0054
	Call sub_08060340
	TextboxNoOverlap 0x2143
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
	TextboxNoOverlap 0x2149
	Jump script_0800CF40
script_0800CECE:
	TextboxNoOverlap 0x2146
	_0807EA94 
	_0807E48C 0x0024
	JumpIfNot script_0800CF40
	TextboxNoOverlap 0x214d
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_0800CF40
	PlaySound SFX_TASK_COMPLETE
	_0807F088 0x0024
	WaitPlayerAction8 
	_0807EB8C 
	SetGlobalFlag 0x0054
	Call sub_08060340
	TextboxNoOverlap 0x2147
script_0800CF02:
	_0807EA94 
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
	TextboxNoOverlap 0x2140
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Jump script_0800CF0C
script_0800CF3C:
	TextboxNoOverlap 0x214a
script_0800CF40:
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Jump script_0800CD92
	.2byte 0x0000
SCRIPT_START script_0800CF50
	BeginBlock 
	Call sub_08068104
	DoPostScriptAction 0x000a
	EndBlock 
script_0800CF5E:
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800CF72
	Call sub_0806811C
	EndBlock 
	Jump script_0800CF5E
script_0800CF72:
	EndBlock 
	_0807E864 
	Call sub_08068190
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800CF5E
SCRIPT_START script_0800CF88
	BeginBlock 
	Call sub_08068104
	DoPostScriptAction 0x000a
	EndBlock 
script_0800CF96:
	_0807E944 
	_0807E864 
	Call sub_08068190
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800CF96
SCRIPT_START script_0800CFAC
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	EndBlock 
	CheckInventory1 0x0041
	JumpIf script_0800CFD2
	CheckLocalFlag 0x007e
	JumpIfNot script_0800CFD2
	_0807E930 0x0008
script_0800CFD2:
	CheckInventory1 0x0002
	JumpIf script_0800CFFA
	CheckInventory1 0x0041
	JumpIfNot script_0800CFEC
	_0807E5F8 0x00000020
	Jump script_0800CFFA
script_0800CFEC:
	CheckLocalFlag 0x007e
	JumpIfNot script_0800CFFA
	_0807E5F8 0x00000010
script_0800CFFA:
	EndBlock 
	BeginBlock 
	Call sub_08068910
	CheckEntityInteractType 
	JumpIfNot script_0800CFFA
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	CheckInventory1 0x0002
	JumpIfNot script_0800D032
	_0807EB74 
	SetIntVariable 0x00000000
	Call sub_0806C028
	TextboxNoOverlap 0x1219
	Jump script_0800D17C
script_0800D032:
	CheckInventory1 0x0041
	JumpIfNot script_0800D098
	StartPlayerScript script_0800D190
	WaitForSomething2 0x00000008
	_0807EB74 
	SetIntVariable 0x00000000
	Call sub_0806C028
	TextboxNoOverlapFollowPos 0x125c, 0x0002
	_0807EA94 
	StartPlayerScript script_0800D1B4
	WaitForSomething2 0x00000008
	_0807EB44 0x0002
	SetIntVariable 0x00000000
	Call sub_0806C028
	Wait 0x000f
	_0807E5F8 0x00000020
	StartPlayerScript script_0800D1E0
	WaitForSomething2 0x00000008
	TextboxNoOverlapFollowPos 0x125d, 0x0002
	Jump script_0800D17C
script_0800D098:
	CheckLocalFlag 0x007e
	JumpIfNot script_0800D0A8
	TextboxNoOverlapFollow 0x123e
	Jump script_0800D17C
script_0800D0A8:
	StartPlayerScript script_0800D190
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000004
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000004
	_0807EB74 
	SetIntVariable 0x00000000
	Call sub_0806C028
	TextboxNoOverlapFollowPos 0x123d, 0x0002
	_0807EA94 
	StartPlayerScript script_0800D1B4
	WaitForSomething2 0x00000008
	_0807EB44 0x0002
	SetIntVariable 0x00000000
	Call sub_0806C028
	PlaySound SFX_TASK_COMPLETE
	Call sub_08068964
script_0800D108:
	ComparePlayerAction 0x0008
	JumpIf script_0800D108
	PlaySound SFX_F8
	_0807E5F8 0x00000010
	SetLocalFlag 0x007e
	TextboxNoOverlapFollowPos 0x123e, 0x0002
	_0807EA94 
	Wait 0x000f
	_0807E930 0x0009
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	Wait 0x001e
	TextboxNoOverlapFollowPos 0x123f, 0x0002
	_0807EA94 
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000004
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000004
	_0807E930 0x0008
	Wait 0x003c
	Call sub_08095164
	_0807EB28 0x1240
script_0800D17C:
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Call sub_0807DF50
	Jump script_0800CFFA
	.2byte 0x0000
