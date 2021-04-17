SCRIPT_START script_0800B9B4
	BeginBlock 
	_0807E9D4 
	Call sub_080694EC
	DoPostScriptAction 0x000a
	Call sub_080694B0
	EndBlock 
script_0800B9CA:
	Call sub_0807F434
	JumpTable script_0800B9CA, script_0800B9D8, script_0800B9F4
script_0800B9D8:
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0000
	Call sub_080694D8
	_0807EA94 
	Call sub_080694EC
	_0807E878 
	Jump script_0800B9CA
script_0800B9F4:
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0000
	Call sub_0807F650
	_0807E9F0 
	_0807E864 
	Call sub_0806948C
	JumpIf script_0800BA24
	_0807EA94 
	Call sub_080694EC
	Call sub_0807DF50
	_0807E878 
	Jump script_0800B9CA
script_0800BA24:
	_0807EA94 
	_0807E9DC 
	_0807E9D4 
	Call sub_080694EC
	Call sub_0807DF50
	_0807E878 
	Jump script_0800B9CA
SCRIPT_START script_0800BA3C
	BeginBlock 
	Call sub_0807F934
	EndBlock 
script_0800BA46:
	CheckEntityInteractType 
	JumpIfNot script_0800BA46
	_0807E864 
	Call sub_0807DF28
	TextboxNoOverlapFollow 0x3301
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_0800BA6C
	StopBgm
	Call sub_0806E964
	PlayBGM
script_0800BA6C:
	Call sub_0807DF50
	_0807E878 
	Jump script_0800BA46
SCRIPT_START script_0800BA78
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0040
	Call sub_0807F348
	EndBlock 
script_0800BA8E:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BA8E
	_0807EDD4 0x02f8, 0x0350
	Wait 0x001e
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB44 0x0006
	Wait 0x001e
	_0807EDD4 0x02f0, 0x0350
	Wait 0x001e
	TextboxNoOverlap 0x0e00
	_0807EA94 
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
