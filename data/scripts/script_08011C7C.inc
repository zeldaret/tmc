SCRIPT_START script_08011C7C
	BeginBlock
	Call sub_08064828
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
	JumpIf script_08011CC2
	EndBlock
script_08011C9A:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011C9A
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4515
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011C9A
script_08011CC2:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002c
	JumpIf script_08011C9A
	CheckGlobalFlag 0x002d
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011CC2
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3105
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011D0E
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011CC2
script_08011D00:
	CheckEntityInteractType
	JumpIfNot script_08011D00
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011D0E:
	MessageNoOverlap 0x3108
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002b
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D00
	.2byte 0x0000
SCRIPT_START script_08011D28
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
	JumpIf script_08011D6E
	EndBlock
script_08011D46:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011D46
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4513
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D46
script_08011D6E:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002b
	JumpIf script_08011D46
	CheckGlobalFlag 0x002d
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011D6E
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3103
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011DBA
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D6E
script_08011DAC:
	CheckEntityInteractType
	JumpIfNot script_08011DAC
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011DBA:
	MessageNoOverlap 0x3106
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002c
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DAC
	.2byte 0x0000
SCRIPT_START script_08011DD4
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
	JumpIf script_08011E1A
	EndBlock
script_08011DF2:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011DF2
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4514
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DF2
script_08011E1A:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002b
	JumpIf script_08011DF2
	CheckGlobalFlag 0x002c
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011E1A
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3104
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011E66
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E1A
script_08011E58:
	CheckEntityInteractType
	JumpIfNot script_08011E58
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011E66:
	MessageNoOverlap 0x3107
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002d
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E58
	.2byte 0x0000
SCRIPT_START script_08011E80
	BeginBlock
	Call sub_08064828
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011E96:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002f
	JumpIf script_08011C9A
	CheckGlobalFlag 0x0030
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011E96
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckGlobalFlag 0x0048
	JumpIf script_08011ECC
	MessageNoOverlap 0x4524
	WaitUntilTextboxCloses
	Jump script_08011ED8
script_08011ECC:
	MessageNoOverlap 0x3111
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011EF4
script_08011ED8:
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E96
script_08011EE6:
	CheckEntityInteractType
	JumpIfNot script_08011EE6
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011EF4:
	MessageNoOverlap 0x3114
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002e
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011EE6
SCRIPT_START script_08011F0C
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011F22:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002e
	JumpIf script_08011D46
	CheckGlobalFlag 0x0030
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011F22
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckGlobalFlag 0x0048
	JumpIf script_08011F58
	MessageNoOverlap 0x4522
	WaitUntilTextboxCloses
	Jump script_08011F64
script_08011F58:
	MessageNoOverlap 0x310f
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011F80
script_08011F64:
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011F22
script_08011F72:
	CheckEntityInteractType
	JumpIfNot script_08011F72
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011F80:
	MessageNoOverlap 0x3112
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002f
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011F72
SCRIPT_START script_08011F98
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011FAE:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002e
	JumpIf script_08011DF2
	CheckGlobalFlag 0x002f
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011FAE
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckGlobalFlag 0x0048
	JumpIf script_08011FE4
	MessageNoOverlap 0x4523
	WaitUntilTextboxCloses
	Jump script_08011FF0
script_08011FE4:
	MessageNoOverlap 0x3110
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_0801200C
script_08011FF0:
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011FAE
script_08011FFE:
	CheckEntityInteractType
	JumpIfNot script_08011FFE
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_0801200C:
	MessageNoOverlap 0x3113
	WaitUntilTextboxCloses
	SetGlobalFlag 0x0030
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011FFE


SCRIPT_START script_08012024
	BeginBlock
	Call sub_08064828
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_0801203A:
	CheckEntityInteractType
	JumpIfNot script_0801203A
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckLocalFlag 0x0094
	JumpIf script_0801205E
	MessageNoOverlap 0x3122
	WaitUntilTextboxCloses
	SetLocalFlag 0x0094
	Jump script_0801209E
script_0801205E:
	_0807E48C 0x0031
	JumpIfNot script_08012070
	MessageNoOverlap 0x3123
	WaitUntilTextboxCloses
	Jump script_0801209E
script_08012070:
	MessageNoOverlap 0x3124
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0801209E
	_0807E48C 0x0020
	JumpIfNot script_0801209A
	MessageNoOverlap 0x3125
	WaitUntilTextboxCloses
	_0807F034 0x0031
	WaitPlayerGetItem
.ifdef USA
	Call sub_0807FC24
.else
.ifdef DEMO_USA
	Call sub_0807FC24
.else
.ifdef DEMO_JP
	Call sub_0807FC24
.endif
.endif
.endif
	Jump script_0801209E
script_0801209A:
	MessageNoOverlap 0x3127
script_0801209E:
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_0801203A
	.align 2, 0

SCRIPT_START script_080120B0
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_080120C6:
	CheckEntityInteractType
	JumpIfNot script_080120C6
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckLocalFlag 0x0095
	JumpIf script_080120EA
	MessageNoOverlap 0x3116
	WaitUntilTextboxCloses
	SetLocalFlag 0x0095
	Jump script_0801212A
script_080120EA:
	_0807E48C 0x002f
	JumpIfNot script_080120FC
	MessageNoOverlap 0x3117
	WaitUntilTextboxCloses
	Jump script_0801212A
script_080120FC:
	MessageNoOverlap 0x3118
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0801212A
	_0807E48C 0x0020
	JumpIfNot script_08012126
	MessageNoOverlap 0x3119
	WaitUntilTextboxCloses
	_0807F034 0x002f
	WaitPlayerGetItem
.ifdef USA
	Call sub_0807FC24
.else
.ifdef DEMO_USA
	Call sub_0807FC24
.else
.ifdef DEMO_JP
	Call sub_0807FC24
.endif
.endif
.endif
	Jump script_0801212A
script_08012126:
	MessageNoOverlap 0x311b
script_0801212A:
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_080120C6
	.align 2, 0

SCRIPT_START script_0801213C
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08012152:
	CheckEntityInteractType
	JumpIfNot script_08012152
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckLocalFlag 0x0096
	JumpIf script_08012176
	MessageNoOverlap 0x311c
	WaitUntilTextboxCloses
	SetLocalFlag 0x0096
	Jump script_080121B6
script_08012176:
	_0807E48C 0x0030
	JumpIfNot script_08012188
	MessageNoOverlap 0x311d
	WaitUntilTextboxCloses
	Jump script_080121B6
script_08012188:
	MessageNoOverlap 0x311e
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_080121B6
	_0807E48C 0x0020
	JumpIfNot script_080121B2
	MessageNoOverlap 0x311f
	WaitUntilTextboxCloses
	_0807F034 0x0030
	WaitPlayerGetItem
.ifdef USA
	Call sub_0807FC24
.else
.ifdef DEMO_USA
	Call sub_0807FC24
.else
.ifdef DEMO_JP
	Call sub_0807FC24
.endif
.endif
.endif
	Jump script_080121B6
script_080121B2:
	MessageNoOverlap 0x3121
script_080121B6:
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08012152
	.align 2, 0

SCRIPT_START script_080121C8
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
SCRIPT_START script_08012200
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08012216:
	CheckEntityInteractType
	JumpIfNot script_08012216
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4525
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08012216
SCRIPT_START script_08012238
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_0801224E:
	CheckEntityInteractType
	JumpIfNot script_0801224E
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4526
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_0801224E
SCRIPT_START script_08012270
	BeginBlock
	_0807EB44 0x0004
	Call sub_08061FD8
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_08012284:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x001e
	JumpIfNot script_08012298
	CheckInventory1 0x0015
	JumpIf script_080122BA
script_08012298:
	CheckEntityInteractType
	JumpIfNot script_08012284
	EndBlock
	_0807EB74
	_0807E864
	Call sub_08061FD8
	MessageFromTarget 0x2302
	WaitUntilTextboxCloses
	_0807E878 
	SetGlobalFlag 0x001e
	Jump script_08012284
script_080122BA:
	EndBlock
	BeginBlock
	CheckRoomFlag 0x0000
	JumpIfNot script_080122CE
	CheckRoomFlag 0x0001
	JumpIf script_080122EC
script_080122CE:
	CheckEntityInteractType
	JumpIfNot script_080122BA
	EndBlock
	_0807EB74
	_0807E864
	Call sub_08061FD8
	MessageFromTarget 0x2303
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_080122BA
script_080122EC:
	EndBlock
	_0807EB74
	_0807E864
	Call sub_08061FD8
	DoPostScriptAction 0x000b
	Call sub_08061FB0
	Call sub_08061F94
	LoadRoomEntityList gUnk_additional_a_HouseInteriors2_Percy
	DoPostScriptAction 0x0008
	Wait 0x003c
	PlaySound SFX_SECRET
	SetLocalFlag 0x0043
	Wait 0x001e
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.align 2, 0
