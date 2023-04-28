@ DHC Minister Potho stone
SCRIPT_START script_MinishterPothoStone
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0093
	JumpIf script_0800E12E
	SetAnimation 0x0008
	CallWithArg sub_0807F8E8, 0x00000000
	EndBlock
script_0800E0DE:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800E0DE
	SetPlayerIdle
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	SetAnimation 0x0009
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	FaceAwayFromPlayer
	FacePlayer
	Wait 0x000a
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x02
	WaitUntilTextboxCloses
	SetLocalFlag 0x0093
script_0800E12E:
	Call MinisterPotho_MakeInteractable
	EnablePlayerControl
	EndBlock
script_0800E138:
	CheckEntityInteractType
	JumpIfNot script_0800E138
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x02
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800E138
	.2byte 0x0000
