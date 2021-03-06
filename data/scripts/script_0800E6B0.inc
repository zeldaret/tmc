SCRIPT_START script_0800E6B0
	StartScript 
	Call sub_08060090
	_0807EF80 0x000a
	StopScript 
script_0800E6BE:
	StartScript 
	CheckEntityInteractType 
	JumpIf script_0800E6D2
	Call sub_08060158
	StopScript 
	Jump script_0800E6BE
script_0800E6D2:
	StopScript 
	_0807E864 
	Call sub_0806025C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E6BE
	StartScript 
	Call sub_0806ADFC
	_0807EF80 0x000a
script_0800E6F4:
	StopScript 
	StartScript 
	CheckEntityInteractType 
	JumpIf script_0800E708
	Call sub_0806AEE4
	Jump script_0800E6F4
script_0800E708:
	StopScript 
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
	.short 0x0000
	StartScript 
	_0807E9D4 
	_0807EF80 0x000a
	StopScript 
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
	StartScript 
	_0807E9D4 
	_0807EF80 0x000a
	SetEntityNonPlanarMovement 0x0200
	CheckGlobalFlag 0x0029
	JumpIfNot script_0800E77C
	CheckGlobalFlag 0x002a
	JumpIfNot script_0800E786
script_0800E77C:
	SetEntityPositionRelative 0x00980188
	Jump script_0800E6F4
script_0800E786:
	StopScript 
script_0800E788:
	StartScript 
	CheckGlobalFlag 0x002a
	JumpIf script_0800E7BA
	CheckEntityInteractType 
	JumpIf script_0800E7A4
	Call sub_0806AEE4
	StopScript 
	Jump script_0800E788
script_0800E7A4:
	StopScript 
	_0807E864 
	Call sub_0806AFE8
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800E788
script_0800E7BA:
	_0807EF80 0x000f
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000004
	Call sub_0806AF70
	_0807EE04 0x0188, 0x0058
script_0800E7D8:
	StopScript 
	StartScript 
	Call sub_0806AF78
	_0807EE30 
	JumpIfNot script_0800E7D8
	EntityHasHeight 
	JumpIf script_0800E7D8
	StopScript 
	Jump script_0800E6F4
	StartScript 
	Call sub_0806C674
	_0807EF80 0x000a
	_0807EB44 0x0004
	StopScript 
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
	.short 0x0000
	StartScript 
	_0807E9D4 
	_0807EF80 0x000a
	_0807EB44 0x0000
	StopScript 
script_0800E832:
	CheckEntityInteractType 
	JumpIfNot script_0800E832
	_0807E864 
	_0807EB44 0x0004
	StartScript 
	TextboxNoOverlapFollow 0x4501
	CallWithArg sub_0807F854, 0x00010032
	CallWithArg sub_0807F854, 0x000200c8
	CallWithArg sub_0807F854, 0x00030190
	StopScript 
	_0807EA94 
	_0807EB38 
	JumpSwitch_4 script_0800E910, script_0800E8D6, script_0800E8A4, script_0800E872
script_0800E872:
	StartScript 
	TextboxNoOverlapFollow 0x4505
	CallWithArg sub_0807F854, 0x00010190
	StopScript 
	_0807EA94 
	HasRupees 0x0190
	JumpIfNot script_0800E908
	ModRupees 0xfe70
	SetLocalFlag 0x0091
	TextboxNoOverlapFollow 0x4508
	_0807EA94 
	Call sub_0806C578
SCRIPT_END
