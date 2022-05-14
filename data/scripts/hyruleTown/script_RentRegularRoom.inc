@ Hyrule Town Inn Emma after renting regular room
SCRIPT_START script_RentRegularRoom
	BeginBlock 
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x04
	CallWithArg sub_0807F854, 0x000100c8
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 0x00c8
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees 0xff38
	SetLocalFlag 0x0091
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x08
	WaitUntilTextboxCloses
	Call sub_0806C588
SCRIPT_END
