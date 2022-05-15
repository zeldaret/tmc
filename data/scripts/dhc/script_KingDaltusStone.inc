@ DHC King Daltus stone
SCRIPT_START script_KingDaltusStone
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0071
	JumpIf script_0800E3E8
	CheckLocalFlag 0x0096
	JumpIf script_0800E3BE
	SetAnimation 0x000c
	CallWithArg sub_0807F8E8, 0x00000000
	EndBlock
script_0800E37A:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800E37A
	SetPlayerIdle
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	SetAnimation 0x000d
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	FacePlayer
	SetLocalFlag 0x0096
script_0800E3BE:
	DoPostScriptAction 0x0000
	_0807E9D4
	EnablePlayerControl
	EndBlock
script_0800E3C8:
	CheckEntityInteractType
	JumpIfNot script_0800E3C8
	SetPlayerIdle 
	FacePlayer 
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x0c
	WaitUntilTextboxCloses
	Wait 0x000f
	GivePlayerItem ITEM_SMALL_KEY
	WaitPlayerGetItem
	SetLocalFlag 0x0071
	EnablePlayerControl
script_0800E3E8:
	_0807E9D4
	EnablePlayerControl
	EndBlock
script_0800E3EE:
	CheckEntityInteractType
	JumpIfNot script_0800E3EE
	SetPlayerIdle 
	FacePlayer 
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x0d
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800E3EE
