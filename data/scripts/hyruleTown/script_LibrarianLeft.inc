@ Librarian left
SCRIPT_START script_LibrarianLeft
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	SetAnimation 0x0000
	EndBlock
script_08008BA2:
	TriggerInteract
	SetPlayerIdle
	SetAnimation 0x0004
	Call WaitForAnimDone
	MessageFromTarget TEXT_LIBRARY, 0x12
	WaitUntilTextboxCloses
	SetAnimation 0x0008
	EnablePlayerControl
	Jump script_08008BA2
