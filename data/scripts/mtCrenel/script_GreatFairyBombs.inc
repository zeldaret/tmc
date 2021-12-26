@ Mountain Great Fairy OBJECT_69
SCRIPT_START script_GreatFairyBombs
	BeginBlock
	EndBlock
script_0800B734:
	Call sub_0808747C
	JumpIfNot script_0800B734
	Call sub_08079184
	_0807E864
	Wait 0x000a
	Call sub_0807F9A4
	StartPlayerScript script_PlayerAtGreatFairy
	WaitForSomething2 0x00000004
	SetRoomFlag 0x0000
	WaitForSomething2 0x00000004
	CheckLocalFlag 0x00a0
	JumpIf script_0800B7A2
	MessageNoOverlap 0x0580
	WaitUntilTextboxCloses
	CallWithArg sub_0807F970, 0x00000582
	JumpIf script_0800B794
	CallWithArg sub_08087424, 0x00000001
	Wait 0x00b4
	Jump script_0800B6A6
script_0800B794:
	WaitUntilTextboxCloses
	SetLocalFlag 0x00a0
	_0807F034 0x0065
	Jump script_0800B698
script_0800B7A2:
	MessageNoOverlap 0x0590
	WaitUntilTextboxCloses
	_0807E778 0x0010
	DoFade7
	WaitFor_2
	ModHealth 0x00a0
	DoFade6 
	WaitFor_2 
	MessageNoOverlap 0x057f
	WaitUntilTextboxCloses
	Jump script_0800B6A6
	.2byte 0x0000
