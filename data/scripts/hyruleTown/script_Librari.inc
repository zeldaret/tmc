@ Librari
SCRIPT_START script_Librari
	BeginBlock
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	EndBlock
script_0800E974:
	CheckEntityInteractType
	JumpIfNot script_0800E974
	_0807E864
	_0807E930 0x0008
	Call sub_0807F2D4
	_0807E930 0x0009
	Call sub_0806B260
	JumpIfNot script_0800E9E4
	WaitUntilTextboxCloses
	DoPostScriptAction 0x000b
	StartPlayerScript script_PlayerStepOnTrap
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x000a
	MessageFromTarget 0x4a24
	WaitUntilTextboxCloses
	_0807E930 0x000a
	Wait 0x0014
	MessageFromTarget 0x4a25
	WaitUntilTextboxCloses
	_0807E930 0x0000
	StartPlayerScript script_PlayerActivatedTrapCard
	WaitForSomething2 0x00000001
	SetLocalFlag 0x0074
	PlaySound SFX_SECRET
	Wait 0x00f0
	MessageFromTarget 0x4a26
	WaitUntilTextboxCloses
	SetLocalFlag 0x0075
script_0800E9E4:
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	_0807E930 0x0000
	Jump script_0800E974
