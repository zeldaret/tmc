@ Western Wood Moblin disguised as Townsperson in Percys house
SCRIPT_START script_MoblinLadyDisguised
	BeginBlock
	SetAnimationState 0x0004
	Call sub_08061FD8
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_08012284:
	EndBlock
	BeginBlock
	CheckGlobalFlag DASHBOOTS
	JumpIfNot script_08012298
	CheckInventory1 ITEM_PEGASUS_BOOTS
	JumpIf script_080122BA
script_08012298:
	CheckEntityInteractType
	JumpIfNot script_08012284
	EndBlock
	FacePlayer
	SetPlayerIdle
	Call sub_08061FD8
	MessageFromTarget TEXT_PERCY, 0x02
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetGlobalFlag DASHBOOTS
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
	FacePlayer
	SetPlayerIdle
	Call sub_08061FD8
	MessageFromTarget TEXT_PERCY, 0x03
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_080122BA
script_080122EC:
	EndBlock
	FacePlayer
	SetPlayerIdle
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
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.align 2, 0
