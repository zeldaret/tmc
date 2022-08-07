@ Hyrule Town Inn Emma after renting regular room
SCRIPT_START script_RentRegularRoom
	BeginBlock
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x04
	CallWithArg ScriptCommand_SetMessageValue, (SMV_RUPEES << 16) | 200
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 200
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees -200
	SetLocalFlag 0x0091
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call sub_0806C588
SCRIPT_END
