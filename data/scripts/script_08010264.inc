SCRIPT_START script_08010264
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	EndBlock 
script_0801027A:
	CheckEntityInteractType 
	JumpIfNot script_0801027A
	_0807E864 
	_0807EB74 
	Call sub_08065F64
	_0807EA94 
	_0807E878 
	Jump script_0801027A
	.2byte 0x0000
SCRIPT_START script_08010294
	BeginBlock 
	DoPostScriptAction 0x0000
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock 
script_080102A6:
	CheckEntityInteractType 
	JumpIfNot script_080102A6
	CheckRoomFlag 0x0009
	JumpIfNot script_080102CC
	_0807E864 
	_0807EB74 
	Call sub_0806265C
	_0807EA94 
	_0807E878 
	Call sub_08062500
	Jump script_080102A6
script_080102CC:
	_0807E864 
	_0807EB74 
	Call sub_0806265C
	_0807EA94 
	_0807E878 
	Jump script_080102A6
	.2byte 0x0000
SCRIPT_START script_080102E0
	BeginBlock 
	DoPostScriptAction 0x0000
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock 
script_080102F2:
	CheckEntityInteractType 
	JumpIfNot script_080102F2
	_0807E864 
	_0807EB74 
	Call sub_0806265C
	_0807EA94 
	_0807E878 
	Jump script_080102F2
	.2byte 0x0000
SCRIPT_START script_0801030C
	BeginBlock 
	DoPostScriptAction 0x0000
	EndBlock 
script_08010314:
	EndBlock 
	Call sub_08062698
	Call sub_080626AC
	CallWithArg sub_0807F0EC, 0x00000009
	JumpTable script_08010340, script_0801034A, script_08010354, script_0801035E, script_08010368, script_08010372, script_0801037C, script_08010386, script_08010390
script_08010340:
	_0807EE04 0x0358, 0x0078
	Jump script_08010396
script_0801034A:
	_0807EE04 0x0390, 0x0078
	Jump script_08010396
script_08010354:
	_0807EE04 0x03c8, 0x0078
	Jump script_08010396
script_0801035E:
	_0807EE04 0x0358, 0x0098
	Jump script_08010396
script_08010368:
	_0807EE04 0x0390, 0x0098
	Jump script_08010396
script_08010372:
	_0807EE04 0x03c8, 0x0098
	Jump script_08010396
script_0801037C:
	_0807EE04 0x0358, 0x00b8
	Jump script_08010396
script_08010386:
	_0807EE04 0x0390, 0x00b8
	Jump script_08010396
script_08010390:
	_0807EE04 0x03c8, 0x00b8
script_08010396:
	EndBlock 
	BeginBlock 
	Call sub_080626C0
	JumpIf script_08010314
	_0807EE30 
	JumpIfNot script_08010396
	Jump script_08010314
	.2byte 0x0000
SCRIPT_START script_080103B0
	BeginBlock 
	DoPostScriptAction 0x0000
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock 
script_080103C2:
	Wait 0x001e
	Call sub_08062948
	Jump script_080103C2
SCRIPT_START script_080103D0
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000004
	EndBlock 
script_080103E8:
	Wait 0x003c
	Call sub_0806407C
	Jump script_080103E8
	.2byte 0x0000
SCRIPT_START script_080103F8
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08010410:
	CheckEntityInteractType 
	JumpIfNot script_08010410
	_0807E864 
	_0807EB74 
	Call sub_08064428
	_0807EA94 
	_0807E878 
	Jump script_08010410
SCRIPT_START script_08010428
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	SetIntVariable sub_08064688
	Call sub_08064644
	EndBlock 
script_08010446:
	Wait 0x003c
	Call sub_080646A4
	Jump script_08010446
SCRIPT_START script_08010454
	BeginBlock 
	_0807EB44 0x0004
	_0807E930 0x0000
	Call sub_080636F4
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock 
script_08010470:
	CheckEntityInteractType 
	JumpIfNot script_08010470
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_080636D8
	_0807EA94 
	Wait 0x000f
	_0807E878 
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_08010470
SCRIPT_START script_080104A0
	BeginBlock 
	_0807EB44 0x0004
	_0807E930 0x0000
	Call sub_08063CAC
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock 
script_080104BC:
	CheckEntityInteractType 
	JumpIfNot script_080104BC
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_08063C90
	_0807EA94 
	Wait 0x000f
	_0807E878 
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_080104BC
SCRIPT_START script_080104EC
	BeginBlock 
	_0807EB44 0x0004
	_0807E930 0x0000
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock 
script_08010502:
	CheckEntityInteractType 
	JumpIfNot script_08010502
	_0807E864 
	Call sub_0807DF28
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000008
	CheckRoomFlag 0x000e
	JumpIf script_0801052E
	SetRoomFlag 0x000e
	TextboxNoOverlap 0x2b10
	_0807EA94 
script_0801052E:
	Call sub_080634E4
	JumpTable script_08010544, script_08010558, script_08010570, script_08010570, script_0801054C, script_08010564, script_08010570
script_08010544:
	TextboxNoOverlap 0x2b0d
	Jump script_080105E0
script_0801054C:
	CheckGlobalFlag 0x003d
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010558:
	CheckGlobalFlag 0x003c
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010564:
	CheckGlobalFlag 0x003b
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010570:
	Call sub_080634EC
	CallWithArg sub_0807F78C, 0x00000000
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_080105E0
	CallWithArg sub_0807F7C4, 0x00000000
	JumpIfNot script_080105C4
	_0807E48C 0x0020
	JumpIfNot script_080105CC
	Call sub_08063504
	JumpIf script_080105D4
	TextboxNoOverlap 0x2b07
	_0807EA94 
	CallWithArg sub_0807F800, 0x00000000
	WaitPlayerAction8 
	_0807EA94 
	TextboxNoOverlap 0x2b0c
	Jump script_080105E0
script_080105C4:
	TextboxNoOverlap 0x2b09
	Jump script_080105E0
script_080105CC:
	TextboxNoOverlap 0x2b0a
	Jump script_080105E0
script_080105D4:
	TextboxNoOverlap 0x2b0b
	Jump script_080105E0
script_080105DC:
	TextboxNoOverlap 0x2b0e
script_080105E0:
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Jump script_08010502
	.2byte 0x0000
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_08010602:
	CheckEntityInteractType 
	JumpIfNot script_08010602
	_0807E864 
	_0807EB74 
	TextboxNoOverlapFollow 0x0a01
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	Jump script_08010602
SCRIPT_START script_0801061C
	BeginBlock 
	_0807E930 0x0008
script_08010622:
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock 
script_0801062E:
	CheckEntityInteractType 
	JumpIfNot script_0801062E
	_0807E864 
	Call sub_0806265C
	_0807EA94 
	_0807E878 
	Jump script_0801062E
SCRIPT_START script_08010644
	BeginBlock 
	_0807E930 0x0009
	Jump script_08010622
	.2byte 0x0000
SCRIPT_START script_08010650
	BeginBlock 
	_0807E930 0x000b
	Jump script_08010622
	.2byte 0x0000
	BeginBlock 
	_0807E930 0x000c
	Jump script_08010622
	.2byte 0x0000
	BeginBlock 
	_0807E930 0x000d
	Jump script_08010622
	.2byte 0x0000
SCRIPT_START script_08010674
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_08010686:
	CheckEntityInteractType 
	JumpIfNot script_08010686
	_0807E864 
	_0807EB74 
	HasRoomItemForSale 
	Call sub_0807F77C
	TextboxNoOverlapFollowTable 0x3c08, 0x3c09
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	Jump script_08010686
	.2byte 0x0000
SCRIPT_START script_080106AC
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_080106BE:
	CheckEntityInteractType 
	JumpIfNot script_080106BE
	_0807E864 
	_0807EB74 
	Call sub_0807F2D4
	DoPostScriptAction 0x0000
	HasRoomItemForSale 
	JumpIf script_080106E0
	TextboxNoOverlap 0x3c07
	Jump script_08010726
script_080106E0:
	Call sub_08062EB8
	CallWithArg sub_0807F78C, 0x00000000
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08010726
	_0807EA94 
	BuyItem 0x0000, 0x0000
	JumpIf script_0801070C
	TextboxNoOverlap 0x3c04
	Jump script_08010726
script_0801070C:
	WaitPlayerAction8 
	ModHealth 0x0008
	Call sub_08062EDC
	JumpIf script_08010724
	TextboxNoOverlap 0x3c06
	Jump script_08010726
script_08010724:
	WaitPlayerAction8 
script_08010726:
	_0807EA94 
	_0807E878 
	DoPostScriptAction 0x0001
	Jump script_080106BE
	.2byte 0x0000
SCRIPT_START script_08010734
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	EndBlock 
script_08010746:
	CheckEntityInteractType 
	JumpIfNot script_08010746
	_0807E864 
	_0807E930 0x0004
	BeginBlock 
	Call sub_08062D18
	JumpIfNot script_08010786
	EndBlock 
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08010786
	HasRupees 0x00c8
	JumpIf script_08010778
	TextboxNoOverlap 0x4008
	Jump script_08010786
script_08010778:
	ModRupees 0xff38
	Call sub_08062E14
	TextboxNoOverlap 0x4007
script_08010786:
	EndBlock 
	_0807EA94 
	_0807E878 
	_0807E930 0x0008
	Jump script_08010746
SCRIPT_START script_08010794
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_080107AA:
	CheckEntityInteractType 
	JumpIfNot script_080107AA
	_0807E864 
	Call sub_0807F2D4
	DoPostScriptAction 0x0001
	Call sub_08062CBC
	_0807EA94 
	_0807E878 
	DoPostScriptAction 0x0000
	Jump script_080107AA
	.2byte 0x0000
SCRIPT_START script_080107D0
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807E9D4 
	Call sub_0807F348
	Call sub_08069684
	EndBlock 
script_080107F2:
	EndBlock 
	BeginBlock 
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080107F2
	Call sub_080696B0
script_08010804:
	EndBlock 
	BeginBlock 
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080107F2
	HasRoomItemForSale 
	JumpIf script_08010860
	CheckEntityInteractType 
	JumpIfNot script_08010804
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	_0807EB74 
	CheckGlobalFlag 0x0042
	JumpIfNot script_08010858
	CheckGlobalFlag 0x0043
	JumpIfNot script_08010858
	CheckGlobalFlag 0x0044
	JumpIfNot script_08010858
	CheckGlobalFlag 0x0041
	JumpIfNot script_08010850
	TextboxNoOverlap 0x3f39
	Jump script_080108BA
script_08010850:
	TextboxNoOverlap 0x2c1b
	Jump script_080108BA
script_08010858:
	TextboxNoOverlap 0x2c1a
	Jump script_080108BA
script_08010860:
	EndBlock 
	_0807E864 
	Call sub_0807DF38
	_0807EB74 
	Call sub_08069660
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_080108B2
	Call sub_08069718
	JumpIfNot script_080108B2
	WaitPlayerAction8 
	_0807EA94 
	_0807EB8C 
	CheckGlobalFlag 0x0042
	JumpIfNot script_080108AA
	CheckGlobalFlag 0x0043
	JumpIfNot script_080108AA
	CheckGlobalFlag 0x0044
	JumpIfNot script_080108AA
	TextboxNoOverlap 0x2c21
	Jump script_080108B2
script_080108AA:
	SetLocalFlag 0x00fa
	TextboxNoOverlap 0x2c20
script_080108B2:
	_0807EA94 
	Call sub_0807F83C
script_080108BA:
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_08010804
SCRIPT_START script_080108D0
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_080108D0
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_080109F0
	WaitForSomething2 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_08010900
	_0807EB28 0x0b63
	_0807EA94 
script_08010900:
	Call sub_0807DF50
	_0807E878 
	Jump script_080108D0
SCRIPT_START script_0801090C
	BeginBlock 
	DoPostScriptAction 0x0007
	CheckKinstoneFused 0x001b
	JumpIf script_0800EF92
	EndBlock 
script_0801091C:
	Call sub_080869A4
	JumpIfNot script_0801091C
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	CheckRoomFlag 0x0001
	JumpIf script_08010942
	_0807EB28 0x0b62
	_0807EA94 
script_08010942:
	StartPlayerScript script_080109F0
	WaitForSomething2 0x00000001
	Call sub_0807DF50
	_0807E878 
	Jump script_0801091C
	Call sub_0808692C
SCRIPT_END
	.2byte 0x0000
