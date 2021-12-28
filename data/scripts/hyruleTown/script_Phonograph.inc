@ Phonograph
SCRIPT_START script_Phonograph
	BeginBlock
	Call sub_0807F934
	EndBlock
script_0800BA46:
	CheckEntityInteractType
	JumpIfNot script_0800BA46
	SetPlayerIdle
	Call sub_0807DF28
	MessageFromTarget 0x3301
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_0800BA6C
	StopBgm
	Call sub_0806E964
	PlayBGM
script_0800BA6C:
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_0800BA46
