@ Hyrule Town Emma
SCRIPT_START script_Emma
	BeginBlock
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	SetAnimationState IdleNorth
	EndBlock
script_EmmaWaitForInteraction:
	CheckEntityInteractType
	JumpIfNot script_EmmaWaitForInteraction
	SetPlayerIdle
	SetAnimationState IdleSouth
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x01
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 50
	CallWithArg ScriptCommand_SetMessageValue, (SMV_FIELD_0X14 << 16) | 200
	CallWithArg ScriptCommand_SetMessageValue, (SMV_FIELD_0X18 << 16) | 400
	EndBlock
	WaitUntilTextboxCloses
	GetSelectedChoice
	JumpTable script_RentNoRoom, script_RentSmallRoom, script_RentRegularRoom, script_RentLargeRoom
script_RentLargeRoom: @ Rent large room
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x05
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 400
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 400
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees -400
	SetLocalFlag YADO_CHECKIN
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call Emma_GoToWestRoom
	EndScript
script_RentRegularRoom:
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x04
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 200
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 200
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees -200
	SetLocalFlag YADO_CHECKIN
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call Emma_GoToMiddleRoom
	EndScript
script_RentSmallRoom:
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x03
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 50
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 50
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees -50
	SetLocalFlag YADO_CHECKIN
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call Emma_GoToEastRoom
	EndScript
script_EmmaNotEnoughRupees:
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x07
	Jump script_EndDialog
script_RentNoRoom: @ Rent no room
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x09
script_EndDialog:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState IdleNorth
	Jump script_EmmaWaitForInteraction
