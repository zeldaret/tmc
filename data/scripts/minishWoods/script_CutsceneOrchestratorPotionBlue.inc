@ Syrup CUTSCENE_ORCHESTRATOR Potion
SCRIPT_START script_CutsceneOrchestratorPotionBlue
	BeginBlock
	Call AddInteractableCheckableObject
	EndBlock
script_08016146:
	CheckEntityInteractType
	JumpIfNot script_08016146
	SetPlayerIdle
	GetInventoryValue ITEM_BOTTLE_BLUE_POTION
	MessageFromTargetTable TEXT_SYRUP << 8 | 0x03, TEXT_SYRUP << 8 | 0x02, TEXT_SYRUP << 8 | 0x02, TEXT_SYRUP << 8 | 0x02
	CheckTextboxResult
	JumpIfNot script_0801618A
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	JumpIf script_08016172
	MessageFromTarget TEXT_SYRUP, 0x0c
	Jump script_0801618A
script_08016172:
	BuyItem ITEM_BOTTLE_BLUE_POTION, 0x0000
	JumpIf script_08016184
	MessageFromTarget TEXT_SYRUP, 0x0b
	Jump script_0801618A
script_08016184:
	WaitPlayerGetItem 
	MessageFromTarget TEXT_SYRUP, 0x06
script_0801618A:
	EnablePlayerControl
	Jump script_08016146
	.align 2, 0

