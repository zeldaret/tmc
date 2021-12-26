@ OBJECT_69 in witch hut?
SCRIPT_START script_Object69PotionRed
	BeginBlock
	Call sub_080787B4
	EndBlock
script_0801619A:
	CheckEntityInteractType
	JumpIfNot script_0801619A
	_0807E864
	GetInventoryValue 0x0024
	MessageFromTargetTable 0x2d05, 0x2d04, 0x2d04, 0x2d04
	_0807E3E8 
	JumpIfNot script_080161E2
	_0807E48C 0x0020
	JumpIf script_080161C6
	MessageFromTarget 0x2d0c
	Jump script_080161E2
script_080161C6:
	BuyItem 0x0024, 0x0000
	JumpIf script_080161D8
	MessageFromTarget 0x2d0b
	Jump script_080161E2
script_080161D8:
.ifndef EU
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	_0807EB8C 
	MessageNoOverlap 0x2d06
.else
	MessageFromTarget 0x2d06
.endif
script_080161E2:
	_0807E878
	Jump script_0801619A
	.align 2, 0

