@ CUTSCENE_ORCHESTRATOR in witch hut?
SCRIPT_START script_CutsceneOrchestratorPotionRed
	BeginBlock
	Call AddInteractableCheckableObject
	EndBlock
script_0801619A:
	CheckEntityInteractType
	JumpIfNot script_0801619A
	SetPlayerIdle
	GetInventoryValue ITEM_BOTTLE_RED_POTION
	MessageFromTargetTable TEXT_SYRUP << 8 | 0x05, TEXT_SYRUP << 8 | 0x04, TEXT_SYRUP << 8 | 0x04, TEXT_SYRUP << 8 | 0x04
	CheckTextboxResult
	JumpIfNot script_080161E2
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	JumpIf script_080161C6
	MessageFromTarget TEXT_SYRUP, 0x0c
	Jump script_080161E2
script_080161C6:
	BuyItem ITEM_BOTTLE_RED_POTION, 0x0000
	JumpIf script_080161D8
	MessageFromTarget TEXT_SYRUP, 0x0b
	Jump script_080161E2
script_080161D8:
.ifndef EU
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	FaceAwayFromPlayer
	MessageNoOverlap TEXT_SYRUP, 0x06
.else
	MessageFromTarget TEXT_SYRUP, 0x06
.endif
script_080161E2:
	EnablePlayerControl
	Jump script_0801619A
	.align 2, 0

