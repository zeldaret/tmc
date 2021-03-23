SCRIPT_START script_08009F14
	BeginBlock 
	_0807EB44 0x0004
	Call sub_08060090
	DoPostScriptAction 0x000a
	CheckKinstoneFused 0x001c
	JumpIf script_08009FD2
	CheckInventory1 0x0007
	JumpIf script_08009F84
	EndBlock 
script_08009F36:
	EndBlock 
	BeginBlock 
	Call sub_08060158
	CheckEntityInteractType 
	JumpIfNot script_08009F36
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	DoPostScriptAction 0x000b
	StartPlayerScript script_0800A088
	WaitForSomething2 0x00000002
	Call sub_0806014C
	TextboxNoOverlapFollowPos 0x1f01, 0x0000
	_0807EA94 
	Wait 0x001e
	_0807F034 0x0065
	WaitPlayerAction8 
	DoPostScriptAction 0x000a
	Call sub_0807DF50
	_0807E878 
script_08009F84:
	EndBlock 
script_08009F86:
	EndBlock 
	BeginBlock 
	Call sub_08060158
	CheckEntityInteractType 
	JumpIfNot script_08009F86
	EndBlock 
	_0807E864 
	Call sub_080602BC
	_0807EA94 
	CallWithArg sub_0807F970, 0x00001f03
	JumpIf script_08009FB6
	_0807E878 
	Jump script_08009F86
script_08009FB6:
	Wait 0x0008
	PlaySound SFX_103
	CallWithArg sub_0806030C, 0x00000063
	Wait 0x0008
	_0807E878 
	Jump script_08009F86
script_08009FD2:
	EndBlock 
	CheckLocalFlag 0x00b0
	JumpIf script_0800A024
script_08009FDC:
	EndBlock 
	BeginBlock 
	Call sub_08060158
	CheckEntityInteractType 
	JumpIfNot script_08009FDC
	EndBlock 
	_0807E864 
	TextboxNoOverlap 0x1f0e
	_0807EA94 
	_0807E3E8 
	JumpIf script_0800A002
	_0807E878 
	Jump script_08009FDC
script_0800A002:
	Wait 0x0008
	_0807F034 0x0008
	Call sub_08060318
	WaitPlayerAction8 
	Wait 0x0008
	_0807EB8C 
	TextboxNoOverlapFollow 0x1f13
	_0807EA94 
	SetLocalFlag 0x00b0
	_0807E878 
script_0800A024:
	EndBlock 
	BeginBlock 
	Call sub_08060158
	CheckEntityInteractType 
	JumpIfNot script_0800A024
	EndBlock 
	_0807E864 
	CheckInventory1 0x0008
	JumpIf script_0800A052
	TextboxNoOverlap 0x1f14
	_0807EA94 
	_0807E3E8 
	JumpIf script_0800A002
	_0807E878 
	Jump script_0800A024
script_0800A052:
	TextboxNoOverlap 0x1f11
	_0807EA94 
	_0807E3E8 
	JumpIf script_0800A064
	_0807E878 
	Jump script_0800A024
script_0800A064:
	Wait 0x0008
	_0807F034 0x0007
	Call sub_08060318
	WaitPlayerAction8 
	Wait 0x0008
	_0807EB8C 
	TextboxNoOverlapFollow 0x1f10
	_0807EA94 
	_0807E878 
	Jump script_0800A024
	.2byte 0x0000
