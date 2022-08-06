@ Hyrule Town Inn Emma after renting small room
SCRIPT_START script_RentSmallRoom
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x03
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 50
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 50
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees -50
	SetLocalFlag 0x0091
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call sub_0806C598
SCRIPT_END
