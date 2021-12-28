@ Hyrule Town Inn Emma after renting small room
SCRIPT_START script_RentSmallRoom
	BeginBlock 
	MessageFromTarget 0x4503
	CallWithArg sub_0807F854, 0x00010032
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 0x0032
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees 0xffce
	SetLocalFlag 0x0091
	MessageFromTarget 0x4508
	WaitUntilTextboxCloses
	Call sub_0806C598
SCRIPT_END
