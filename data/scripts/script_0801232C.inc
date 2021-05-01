SCRIPT_START script_0801232C
	BeginBlock 
	_0807EB74 
	_0807E9D4 
	DoPostScriptAction 0x000a
	EndBlock 
script_08012338:
	CheckEntityInteractType 
	JumpIfNot script_08012338
	_0807EB74 
	_0807E864 
	TextboxNoOverlapFollow 0x2304
	_0807EA94 
	CheckLocalFlag 0x0042
	JumpIf script_0801235A
	SetLocalFlag 0x0042
	_0807F034 0x0057
	WaitPlayerAction8 
script_0801235A:
	_0807E878 
	Jump script_08012338
SCRIPT_START script_08012360
	BeginBlock 
	DoPostScriptAction 0x0008
	EndBlock 
script_08012368:
	CheckLocalFlag 0x0004
	JumpIfNot script_08012368
	Call sub_0807DF28
	_0807E864 
	StopBgm
	BeginBlock 
	_0807E778 0x0004
	_0807E788 0x00007fff
	DoFade5 
	_0807E858 0x0080
	EndBlock 
	WaitFor_2 
	PlayBgm BGM_ELEMENTAL_SANCTUARY
	_0807EB28 0x1401
	_0807EA94 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0007
	PlaySound SFX_ELEMENT_FLOAT
	SetEntity0x20 0xffff8000
	Wait 0x003c
	_0807E8E4_0 
	StartPlayerScript script_08012410
	WaitForSomething2 0x00000001
	TextboxNoOverlap 0x1402
	_0807EA94 
	StopBgm
	SetEntity0x20 0x00010000
	Wait 0x003c
	BeginBlock 
	_0807E778 0x0004
	_0807E788 0xffffffff
	DoFade4 
	_0807E858 0x0080
	EndBlock 
	WaitFor_2 
	PlayBGM
	_0807EB28 0x1403
	_0807EA94 
	SetIntVariable 0x00000203
	Call sub_0807F420
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
