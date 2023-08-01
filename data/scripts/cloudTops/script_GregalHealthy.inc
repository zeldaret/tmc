@ Cloud Tops Gregal healthy
SCRIPT_START script_GregalHealthy
	BeginBlock
	Call Gregal_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0006
	EndBlock
script_08014C42:
	CheckEntityInteractType
	JumpIfNot script_08014C42
	SetPlayerIdle
	FacePlayer
script_08014C4C:
	Call sub_0806CCD0
	JumpIfNot script_08014C4C
script_08014C56:
	Call sub_0806CCB4
	JumpIfNot script_08014C56
	CheckLocalFlag SORA_ELDER_TALK2ND
	JumpIf script_08014C7C
	SetLocalFlag SORA_ELDER_TALK2ND
	MessageNoOverlap TEXT_WIND_TRIBE, 0x0d
	WaitUntilTextboxCloses
	GivePlayerItem ITEM_LIGHT_ARROW
	WaitPlayerGetItem
	Jump script_08014C82
script_08014C7C:
	MessageNoOverlap TEXT_WIND_TRIBE, 0x09
	WaitUntilTextboxCloses
script_08014C82:
	Wait 0x000f
	EnablePlayerControl
	SetAnimationState 0x0004
	SetAnimation 0x0006
	Jump script_08014C42
