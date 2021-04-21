SCRIPT_START script_08010964
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_08010964
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08010A38
	WaitForSomething2 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_08010994
	_0807EB28 0x0b63
	_0807EA94 
script_08010994:
	Call sub_0807DF50
	_0807E878 
	Jump script_08010964
SCRIPT_START script_080109A0
	BeginBlock 
	EndBlock 
	CheckLocalFlag 0x00d1
	JumpIf script_080109EA
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_080109A0
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08010A38
	WaitForSomething2 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_080109DE
	_0807EB28 0x0b64
	_0807EA94 
script_080109DE:
	Call sub_0807DF50
	_0807E878 
	Jump script_080109A0
script_080109EA:
	DoPostScriptAction 0x0006
SCRIPT_END
