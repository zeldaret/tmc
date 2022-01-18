@ Syrup OBJECT_69 Potion
SCRIPT_START script_Object69PotionBlue
	BeginBlock
	Call sub_080787B4
	EndBlock
script_08016146:
	CheckEntityInteractType
	JumpIfNot script_08016146
	SetPlayerIdle
	GetInventoryValue 0x0025
	MessageFromTargetTable 0x2d03, 0x2d02, 0x2d02, 0x2d02
	CheckTextboxResult 
	JumpIfNot script_0801618A
	CheckBottleContaining 0x0020
	JumpIf script_08016172
	MessageFromTarget 0x2d0c
	Jump script_0801618A
script_08016172:
	BuyItem 0x0025, 0x0000
	JumpIf script_08016184
	MessageFromTarget 0x2d0b
	Jump script_0801618A
script_08016184:
	WaitPlayerGetItem 
	MessageFromTarget 0x2d06
script_0801618A:
	EnablePlayerControl
	Jump script_08016146
	.align 2, 0

