@ TODO UNUSED?
SCRIPT_START script_08012C68
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000000
	Call NPC4E_ChangeInteractableHitbox
	EndBlock
script_08012C7E:
	CheckEntityInteractType
	JumpIfNot script_08012C7E
	SetPlayerIdle
	_0807E8E4_0
	MessageFromTarget TEXT_FINDING_EZLO, 0x1d
	WaitUntilTextboxCloses
	SetGlobalFlag ENTRANCE_OK
	EnablePlayerControl
	Jump script_08012C7E

