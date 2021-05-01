SCRIPT_START script_0800E6B0
	BeginBlock 
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock 
script_0800E6BE:
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800E6D2
	Call sub_08060158
	EndBlock 
	Jump script_0800E6BE
script_0800E6D2:
	EndBlock 
	_0807E864 
	Call sub_0806025C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E6BE
SCRIPT_START script_0800E6E8
	BeginBlock 
	Call sub_0806ADFC
	DoPostScriptAction 0x000a
script_0800E6F4:
	EndBlock 
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800E708
	Call sub_0806AEE4
	Jump script_0800E6F4
script_0800E708:
	EndBlock 
	_0807E864 
	Call sub_0806AFE8
	JumpIf script_0800E722
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E6F4
script_0800E722:
	_0807EA94 
	_0807F034 0x0057
	WaitPlayerAction8 
	_0807EA94 
	_0807E878 
	Jump script_0800E6F4
	.2byte 0x0000
SCRIPT_START script_0800E734
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	EndBlock 
script_0800E73E:
	CheckEntityInteractType 
	JumpIfNot script_0800E73E
	_0807E864 
	_0807EB74 
	CallWithArg sub_0806AF60, 0x00000000
	Call sub_0806AFE8
	_0807EA94 
	_0807E878 
	Jump script_0800E73E
SCRIPT_START script_0800E760
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	SetEntitySpeed 0x0200
	CheckGlobalFlag 0x0029
	JumpIfNot script_0800E77C
	CheckGlobalFlag 0x002a
	JumpIfNot script_0800E786
script_0800E77C:
	SetEntityPositionRelative 0x0188, 0x0098
	Jump script_0800E6F4
script_0800E786:
	EndBlock 
script_0800E788:
	BeginBlock 
	CheckGlobalFlag 0x002a
	JumpIf script_0800E7BA
	CheckEntityInteractType 
	JumpIf script_0800E7A4
	Call sub_0806AEE4
	EndBlock 
	Jump script_0800E788
script_0800E7A4:
	EndBlock 
	_0807E864 
	Call sub_0806AFE8
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E788
script_0800E7BA:
	DoPostScriptAction 0x000f
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000004
	Call sub_0806AF70
	_0807EE04 0x0188, 0x0058
script_0800E7D8:
	EndBlock 
	BeginBlock 
	Call sub_0806AF78
	_0807EE30 
	JumpIfNot script_0800E7D8
	EntityHasHeight 
	JumpIf script_0800E7D8
	EndBlock 
	Jump script_0800E6F4
SCRIPT_START script_0800E7F4
	BeginBlock 
	Call sub_0806C674
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	EndBlock 
script_0800E806:
	CheckEntityInteractType 
	JumpIfNot script_0800E806
	_0807E864 
	_0807EB74 
	Call sub_0806C70C
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	Jump script_0800E806
	.2byte 0x0000
SCRIPT_START script_0800E824
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0000
	EndBlock 
script_0800E832:
	CheckEntityInteractType 
	JumpIfNot script_0800E832
	_0807E864 
	_0807EB44 0x0004
	BeginBlock 
	TextboxNoOverlapFollow 0x4501
	CallWithArg sub_0807F854, 0x00010032
	CallWithArg sub_0807F854, 0x000200c8
	CallWithArg sub_0807F854, 0x00030190
	EndBlock 
	_0807EA94 
	_0807EB38 
	JumpTable script_0800E910, script_0800E8D6, script_0800E8A4, script_0800E872
script_0800E872:
	BeginBlock 
	TextboxNoOverlapFollow 0x4505
	CallWithArg sub_0807F854, 0x00010190
	EndBlock 
	_0807EA94 
	HasRupees 0x0190
	JumpIfNot script_0800E908
	ModRupees 0xfe70
	SetLocalFlag 0x0091
	TextboxNoOverlapFollow 0x4508
	_0807EA94 
	Call sub_0806C578
SCRIPT_END
