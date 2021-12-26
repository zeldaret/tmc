@ Hyrule Town Marcy selling the newsletter
SCRIPT_START script_Marcy
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	EndBlock
script_08010746:
	CheckEntityInteractType
	JumpIfNot script_08010746
	_0807E864
	_0807E930 0x0004
	BeginBlock
	Call sub_08062D18
	JumpIfNot script_08010786
	EndBlock
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08010786
	HasRupees 0x00c8
	JumpIf script_08010778
	MessageNoOverlap 0x4008
	Jump script_08010786
script_08010778:
	ModRupees 0xff38
	Call sub_08062E14
	MessageNoOverlap 0x4007
script_08010786:
	EndBlock
	WaitUntilTextboxCloses
	_0807E878
	_0807E930 0x0008
	Jump script_08010746
