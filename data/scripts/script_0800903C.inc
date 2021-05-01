SCRIPT_START script_0800903C
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
	WaitForSomething2 0x00000004
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	_0807EB44 0x0002
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EB44 0x0004
	_0807E5F8 0x00000008
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	Jump script_0800927E
	.2byte 0x0000
SCRIPT_START script_08009080
	BeginBlock 
	Call sub_0807F348
	SetEntitySpeed 0x0100
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E9D4 
	DoPostScriptAction 0x000a
	EndBlock 
	WaitForSomething2 0x00000080
	_0807EB44 0x0004
	_0807ECC4 0x0008
	_0807E930 0x0004
	TextboxNoOverlapFollowPos 0x1050, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807E930 0x0004
	TextboxNoOverlapFollowPos 0x1052, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807EB44 0x0006
	_0807E930 0x0005
	TextboxNoOverlapFollowPos 0x1054, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807EB44 0x0004
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807E930 0x0004
	TextboxNoOverlapFollowPos 0x1056, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807E930 0x0004
	TextboxNoOverlapFollowPos 0x1057, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807E930 0x0004
	TextboxNoOverlapFollowPos 0x1058, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807E930 0x0004
	TextboxNoOverlapFollowPos 0x105c, 0x000e
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
script_0800917C:
	CheckEntityInteractType 
	JumpIfNot script_0800917C
	_0807E864 
	_0807EB74 
	Call sub_0806673C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800917C
SCRIPT_START script_08009198
	BeginBlock 
	Call sub_0807F348
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	EndBlock 
	WaitForSomething2 0x00000001
	_0807EB74 
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x105b, 0x0000
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x0005
	Wait 0x003c
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x1051, 0x0000
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB74 
	_0807EB8C 
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x1055, 0x0000
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807EB74 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0001
	_0807EDD4 0x0098, 0x0078
	_0807EB74 
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x1059, 0x0000
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	Jump script_080092B2
	.2byte 0x0000
SCRIPT_START script_08009274
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
script_0800927E:
	Call sub_080668F0
	DoPostScriptAction 0x000a
	EndBlock 
script_0800928A:
	CheckEntityInteractType 
	JumpIfNot script_0800928A
	_0807E864 
	_0807EB74 
	Call sub_08066904
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800928A
	.2byte 0x0000
SCRIPT_START script_080092A8
	BeginBlock 
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
script_080092B2:
	_0807E9D4 
	DoPostScriptAction 0x000a
	EndBlock 
script_080092BA:
	CheckEntityInteractType 
	JumpIfNot script_080092BA
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x105e
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_080092BA
SCRIPT_START script_080092D4
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Call sub_0806672C
	DoPostScriptAction 0x000a
	EndBlock 
	Jump script_0800917C
	.2byte 0x0000
SCRIPT_START script_080092F0
	BeginBlock 
	DoPostScriptAction 0x000a
	Call sub_08066E38
	_0807E9D4 
	EndBlock 
script_08009300:
	CheckEntityInteractType 
	JumpIfNot script_08009300
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x1071
	_0807EA94 
	_0807E878 
	Jump script_08009300
	.2byte 0x0000
SCRIPT_START script_08009318
	BeginBlock 
	EndBlock 
SCRIPT_END
	.2byte 0x0000
