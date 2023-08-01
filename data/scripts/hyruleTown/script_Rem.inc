@ Hyrule Town Rem
SCRIPT_START script_Rem
	BeginBlock
	CallWithArg Rem_MakeInteractable, 0x12345678
	SetAnimationState 0x0004
	SetAnimation 0x0002
	CheckInventory1 ITEM_PEGASUS_BOOTS
	JumpIf script_080130B6
	CheckLocalFlag SHOP02_KUTSU_00
	JumpIf script_08012FD2
	CheckGlobalFlag DASHBOOTS
	JumpIf script_RemFallingAsleep
	EndBlock
	CheckLocalFlag 0x0062
	JumpIfNot script_08012F48
	Call sub_0806A9B0
script_08012F48:
	CheckLocalFlag 0x0061
	JumpIf script_08012F6C
script_08012F50:
	Call sub_0806A96C
	JumpIfNot script_08012F50
	SetPlayerIdle
	MessageNoOverlap TEXT_REM, 0x01
	WaitUntilTextboxCloses
	SetLocalFlag 0x0061
	EnablePlayerControl
	SetAction 0x0001
script_08012F6C:
	Call sub_0806A96C
	JumpIfNot script_08012F6C
	MessageNoOverlap TEXT_REM, 0x02
	WaitUntilTextboxCloses
	SetAction 0x0001
	Jump script_08012F6C
SCRIPT_END
