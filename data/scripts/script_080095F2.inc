SCRIPT_START script_080095F2
	CheckEntityInteractType 
	JumpIfNot script_080095DE
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0001
	Call sub_0806BE84
	_0807EA94 
	JumpIfNot script_08009622
	PlaySound SFX_109
	_0807F088 0x003c
	TextboxNoOverlapFollow 0x053c
	WaitPlayerAction8 
	_0807EA94 
	_0807F078 0x003c, 0x0001
script_08009622:
	_0807E878 
	DoPostScriptAction 0x0000
	Jump script_080095DE
SCRIPT_START script_0800962C
	BeginBlock 
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0008
	EndBlock 
script_08009638:
	EndBlock 
	BeginBlock 
	CheckGlobalFlag 0x0020
	JumpIfNot script_08009638
	EndBlock 
script_08009646:
	Call sub_0806BF44
	JumpIf script_08009646
	EndBlock 
	Call sub_0806BE3C
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
script_08009660:
	CheckEntityInteractType 
	JumpIfNot script_08009660
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0001
	Call sub_0806BEC8
	_0807EA94 
	JumpIfNot script_0800968E
	PlaySound SFX_111
	PlaySound SFX_SECRET
	_0807F078 0x003c, 0x0002
	Call sub_0806BEFC
script_0800968E:
	_0807E878 
	DoPostScriptAction 0x0000
	Jump script_08009660
SCRIPT_START script_08009698
	BeginBlock 
	DoPostScriptAction 0x0007
	Jump script_080096FC
	CheckGlobalFlag 0x0020
	JumpIf script_080096FC
	EndBlock 
script_080096AC:
	CheckPlayerInRegion 0x0188, 0x01c0, 0x1020
	JumpIfNot script_080096AC
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08009704
	WaitForSomething2 0x00000001
	PlaySound SFX_111
	DoPostScriptAction 0x0008
	LoadRoomEntityList gUnk_080D9048
	Wait 0x000f
	PlaySound SFX_111
	DoPostScriptAction 0x0007
script_080096EC:
	CheckGlobalFlag 0x0020
	JumpIfNot script_080096EC
	Call sub_0807DF50
	_0807E878 
script_080096FC:
	Call sub_0808692C
SCRIPT_END
