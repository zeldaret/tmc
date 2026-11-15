@ Hyrule Town Emma
SCRIPT_START script_Emma
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0000
	EndBlock
script_EmmaWaitForInteraction:
	CheckEntityInteractType
	JumpIfNot script_EmmaWaitForInteraction
	SetPlayerIdle
	SetAnimationState 0x0004
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x01
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 50
	CallWithArg ScriptCommand_SetMessageValue, (SMV_FIELD_0X14 << 16) | 200
	CallWithArg ScriptCommand_SetMessageValue, (SMV_FIELD_0X18 << 16) | 400
	EndBlock
	WaitUntilTextboxCloses
	_0807EB38
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
	Call sub_0806C578
SCRIPT_END
SCRIPT_START script_RentRegularRoom
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
	Call sub_0806C588
SCRIPT_END
SCRIPT_START script_RentSmallRoom
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
	Call sub_0806C598
SCRIPT_END
SCRIPT_START script_EmmaNotEnoughRupees
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x07
	Jump script_EndDialog
script_RentNoRoom: @ Rent no room
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x09
script_EndDialog:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0000
	Jump script_EmmaWaitForInteraction
