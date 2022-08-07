@ Hyrule Town Emma
SCRIPT_START script_Emma
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0000
	EndBlock
script_0800E832:
	CheckEntityInteractType
	JumpIfNot script_0800E832
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
	JumpTable script_0800E910, script_RentSmallRoom, script_RentRegularRoom, script_0800E872
script_0800E872: @ Rent large room
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x05
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 400
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 400
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees -400
	SetLocalFlag 0x0091
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call sub_0806C578
SCRIPT_END
