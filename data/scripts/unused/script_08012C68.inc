@ TODO UNUSED?
SCRIPT_START script_08012C68
	BeginBlock
	AddInteractableWhenBigObject
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000000
	Call NPC4E_ChangeInteractableHitbox
	EndBlock
script_08012C7E:
	CheckEntityInteractType
	JumpIfNot script_08012C7E
	SetPlayerIdle
	PlayerIdleNorth
	MessageFromTarget TEXT_FINDING_EZLO, 0x1d
	WaitUntilTextboxCloses
	SetGlobalFlag ENTRANCE_OK
	EnablePlayerControl
	Jump script_08012C7E

