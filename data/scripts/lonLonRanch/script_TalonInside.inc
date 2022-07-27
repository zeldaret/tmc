@ Lon Lon Farm Talon in ranch house?
SCRIPT_START script_TalonInside
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08014E64:
	CheckEntityInteractType
	JumpIfNot script_08014E64
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	FacePlayer
	CallWithArg sub_0807F78C, 0x00000022
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08014EBC
	CallWithArg sub_0807F7C4, 0x00000022
	JumpIfNot script_08014EB0
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	JumpIfNot script_08014EB8
	CallWithArg sub_0807F800, 0x00000022
	WaitPlayerGetItem 
	MessageNoOverlap TEXT_EMPTY, 0x04
	Jump script_08014EBC
script_08014EB0:
	MessageNoOverlap TEXT_EMPTY, 0x03
	Jump script_08014EBC
script_08014EB8:
	MessageNoOverlap TEXT_EMPTY, 0x02
script_08014EBC:
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_08014E64
	.2byte 0x0000
