@ Hyrule Town Marcy selling the newsletter
SCRIPT_START script_Marcy
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimation 0x0000
	EndBlock
script_08010746:
	CheckEntityInteractType
	JumpIfNot script_08010746
	SetPlayerIdle
	SetAnimation 0x0004
	BeginBlock
	Call sub_08062D18
	JumpIfNot script_08010786
	EndBlock
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08010786
	HasRupees 200
	JumpIf script_08010778
	MessageNoOverlap TEXT_POST, 0x08
	Jump script_08010786
script_08010778:
	ModRupees -200
	Call sub_08062E14
	MessageNoOverlap TEXT_POST, 0x07
script_08010786:
	EndBlock
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimation 0x0008
	Jump script_08010746
