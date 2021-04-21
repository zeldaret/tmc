SCRIPT_START script_08015958
	BeginBlock 
	SetEntitySpeed 0x0180
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x000b
	Call sub_08066D04
	EndBlock 
	WaitForSomething2 0x00000001
	BeginBlock 
	Call sub_08066D14
	MoveEntityToPlayer 
	EndBlock 
	DoPostScriptAction 0x0007
	_0807EB74 
	_0807EDD4 0x01f8, 0x02f8
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	TextboxNoOverlapFollowPos 0x1011, 0x0002
	_0807EA94 
	_0807EDD4 0x01f8, 0x0268
	SetEntityPositionRelative 0x0248, 0x0218
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	Call sub_0807F3C8
	PlaySound SFX_VO_ZELDA3
	SetEntitySpeed 0x0200
	_0807ECC4 0x0008
	_0807E930 0x0040
	Call sub_0807F2D4
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetEntitySpeed 0x0100
	_0807EDD4 0x0238, 0x0238
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4 
	_0807E5F8 0x00000002
script_08015A32:
	EndBlock 
	BeginBlock 
	_0807EB74 
	CheckRoomFlag 0x0000
	JumpIf script_08015A54
	CheckEntityInteractType 
	JumpIfNot script_08015A32
	EndBlock 
	TextboxNoOverlapFollowPos 0x1067, 0x0002
	_0807EA94 
	Jump script_08015A32
script_08015A54:
	EndBlock 
	DoPostScriptAction 0x000b
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	WaitForSomething2 0x00000001
	Call sub_08066D4C
	_0807E5F8 0x00000002
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
