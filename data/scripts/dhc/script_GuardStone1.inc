@ DHC Guard stone
SCRIPT_START script_GuardStone1
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0094
	JumpIf script_0800E1D0
	SetAnimation 0x0010
	CallWithArg sub_0807F8E8, 0x00000001
	EndBlock
script_0800E176:
	CheckRoomFlag 0x0001
	JumpIfNot script_0800E176
	SetPlayerIdle
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	SetAnimation 0x0015
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
	CallWithArg sub_0807F3D8, 0x00000000
	Wait 0x000a
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x01
	WaitUntilTextboxCloses
	SetLocalFlag 0x0094
script_0800E1D0:
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4
	EnablePlayerControl
	EndBlock
script_0800E1E0:
	CheckEntityInteractType
	JumpIfNot script_0800E1E0
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x01
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800E1E0
