@ Hyrule Town Malon
SCRIPT_START script_MalonHyruleTown
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x000e
	EndBlock
	Call sub_08065914
script_08014F4A:
	CheckEntityInteractType
	JumpIfNot script_08014F4A
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	FacePlayer
	DoPostScriptAction 0x0000
	BeginBlock
	MessageNoOverlap TEXT_MILK, 0x0b
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 100
	EndBlock
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08014FA6
	HasRupees 100
	JumpIfNot script_08014F9A
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	JumpIfNot script_08014FA2
	ModRupees -100
	GivePlayerItem ITEM_BOTTLE_MILK
	WaitPlayerGetItem 
	MessageNoOverlap TEXT_MILK, 0x11
	Jump script_08014FA6
script_08014F9A:
	MessageNoOverlap TEXT_MILK, 0x0e
	Jump script_08014FA6
script_08014FA2:
	MessageNoOverlap TEXT_MILK, 0x0f
script_08014FA6:
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	SetAnimationState 0x0004
	SetAnimation 0x000e
	Jump script_08014F4A
