@ Western Wood Moblin disguised as Townsperson in Percys house
SCRIPT_START script_MoblinLadyDisguised
	BeginBlock
	_0807EB44 0x0004
	Call sub_08061FD8
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_08012284:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x001e
	JumpIfNot script_08012298
	CheckInventory1 0x0015
	JumpIf script_080122BA
script_08012298:
	CheckEntityInteractType
	JumpIfNot script_08012284
	EndBlock
	_0807EB74
	_0807E864
	Call sub_08061FD8
	MessageFromTarget 0x2302
	WaitUntilTextboxCloses
	_0807E878 
	SetGlobalFlag 0x001e
	Jump script_08012284
script_080122BA:
	EndBlock
	BeginBlock
	CheckRoomFlag 0x0000
	JumpIfNot script_080122CE
	CheckRoomFlag 0x0001
	JumpIf script_080122EC
script_080122CE:
	CheckEntityInteractType
	JumpIfNot script_080122BA
	EndBlock
	_0807EB74
	_0807E864
	Call sub_08061FD8
	MessageFromTarget 0x2303
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_080122BA
script_080122EC:
	EndBlock
	_0807EB74
	_0807E864
	Call sub_08061FD8
	DoPostScriptAction 0x000b
	Call sub_08061FB0
	Call sub_08061F94
	LoadRoomEntityList gUnk_additional_a_HouseInteriors2_Percy
	DoPostScriptAction 0x0008
	Wait 0x003c
	PlaySound SFX_SECRET
	SetLocalFlag 0x0043
	Wait 0x001e
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.align 2, 0
