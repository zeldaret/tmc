SCRIPT_START script_0800E0BC
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0093
	JumpIf script_0800E12E
	_0807E930 0x0008
	CallWithArg sub_0807F8E8, 0x00000000
	EndBlock 
script_0800E0DE:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800E0DE
	_0807E864 
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x0009
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	_0807EB8C 
	_0807EB74 
	Wait 0x000a
	TextboxNoOverlap 0x2402
	_0807EA94 
	SetLocalFlag 0x0093
script_0800E12E:
	Call sub_080668F0
	_0807E878 
	EndBlock 
script_0800E138:
	CheckEntityInteractType 
	JumpIfNot script_0800E138
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x2402
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E138
	.2byte 0x0000
SCRIPT_START script_0800E154
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0094
	JumpIf script_0800E1D0
	_0807E930 0x0010
	CallWithArg sub_0807F8E8, 0x00000001
	EndBlock 
script_0800E176:
	CheckRoomFlag 0x0001
	JumpIfNot script_0800E176
	_0807E864 
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x0015
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	_0807EB8C 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	Wait 0x000a
	TextboxNoOverlap 0x2401
	_0807EA94 
	SetLocalFlag 0x0094
script_0800E1D0:
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4 
	_0807E878 
	EndBlock 
script_0800E1E0:
	CheckEntityInteractType 
	JumpIfNot script_0800E1E0
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	TextboxNoOverlap 0x2401
	_0807EA94 
	_0807E878 
	Jump script_0800E1E0
SCRIPT_START script_0800E200
	BeginBlock 
	SetEntitySpeed 0x0100
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0073
	JumpIfNot script_0800E232
	_0807E9D4 
	SetEntityPositionRelative 0x0070, 0x0168
	_0807EB44 0x0002
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
	Jump script_0800E32E
script_0800E232:
	CheckLocalFlag 0x0095
	JumpIf script_0800E29A
	_0807E930 0x0010
	CallWithArg sub_0807F8E8, 0x00000002
	EndBlock 
script_0800E24A:
	CheckRoomFlag 0x0002
	JumpIfNot script_0800E24A
	_0807E864 
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x0015
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	_0807EB8C 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	SetLocalFlag 0x0095
script_0800E29A:
	DoPostScriptAction 0x0000
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4 
	_0807E878 
	EndBlock 
script_0800E2AE:
	EndBlock 
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800E312
	CheckLocalFlag 0x0093
	JumpIfNot script_0800E2AE
	CheckLocalFlag 0x0094
	JumpIfNot script_0800E2AE
	CheckLocalFlag 0x0095
	JumpIfNot script_0800E2AE
	_0807E9DC 
	SetLocalFlag 0x0073
	EndBlock 
	_0807EB44 0x0000
	CallWithArg sub_0807F3D8, 0x00000004
	_0807EDD4 0x0088, 0x0168
	_0807EB44 0x0006
	CallWithArg sub_0807F3D8, 0x00000004
	_0807EDD4 0x0070, 0x0168
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4 
	Jump script_0800E32E
script_0800E312:
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
	TextboxNoOverlap 0x2404
	_0807EA94 
	_0807E878 
	Jump script_0800E2AE
script_0800E32E:
	CheckEntityInteractType 
	JumpIfNot script_0800E32E
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	TextboxNoOverlap 0x2403
	_0807EA94 
	_0807E878 
	Jump script_0800E32E
	.2byte 0x0000
SCRIPT_START script_0800E350
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0071
	JumpIf script_0800E3E8
	CheckLocalFlag 0x0096
	JumpIf script_0800E3BE
	_0807E930 0x000c
	CallWithArg sub_0807F8E8, 0x00000000
	EndBlock 
script_0800E37A:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800E37A
	_0807E864 
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x000d
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	_0807EB74 
	SetLocalFlag 0x0096
script_0800E3BE:
	DoPostScriptAction 0x0000
	_0807E9D4 
	_0807E878 
	EndBlock 
script_0800E3C8:
	CheckEntityInteractType 
	JumpIfNot script_0800E3C8
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x240c
	_0807EA94 
	Wait 0x000f
	_0807F034 0x0053
	WaitPlayerAction8 
	SetLocalFlag 0x0071
	_0807E878 
script_0800E3E8:
	_0807E9D4 
	_0807E878 
	EndBlock 
script_0800E3EE:
	CheckEntityInteractType 
	JumpIfNot script_0800E3EE
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x240d
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E3EE
SCRIPT_START script_0800E408
	BeginBlock 
	_0807EB44 0x0002
	DoPostScriptAction 0x000a
	Call sub_080668F0
	EndBlock 
script_0800E41A:
	CheckEntityInteractType 
	JumpIfNot script_0800E41A
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x2406
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E41A
SCRIPT_START script_0800E434
	BeginBlock 
	_0807EB44 0x0002
	CallWithArg sub_0807F3D8, 0x00000000
	DoPostScriptAction 0x000a
	_0807E9D4 
	EndBlock 
script_0800E44C:
	CheckEntityInteractType 
	JumpIfNot script_0800E44C
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	TextboxNoOverlap 0x2405
	_0807EA94 
	_0807E878 
	Jump script_0800E44C
SCRIPT_START script_0800E46C
	BeginBlock 
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	DoPostScriptAction 0x000a
	_0807E9D4 
	EndBlock 
script_0800E484:
	CheckEntityInteractType 
	JumpIfNot script_0800E484
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	TextboxNoOverlap 0x2407
	_0807EA94 
	_0807E878 
	Jump script_0800E484
SCRIPT_START script_0800E4A4
	BeginBlock 
	Call sub_0807F354
	EndBlock 
	CheckLocalFlag 0x007c
	JumpIf script_0800E4FA
script_0800E4B6:
	CheckPlayerInRegion 0x0088, 0x00f8, 0x0820
	JumpIfNot script_0800E4B6
	BeginBlock 
	_0807E864 
	EndBlock 
	Call sub_0807F3F8
	Wait 0x003c
	TextboxNoOverlapFollow 0x160c
	_0807EA94 
	Wait 0x001e
	TextboxNoOverlapFollow 0x160d
	_0807EA94 
	Wait 0x001e
	_0807EB28 0x160e
	Wait 0x003c
	_0807EA94 
	BeginBlock 
	PlayBgm BGM_FIGHT_THEME2
	SetLocalFlag 0x007c
script_0800E4FA:
	_0807E878 
	DoPostScriptAction 0x0006
	EndBlock 
SCRIPT_END
