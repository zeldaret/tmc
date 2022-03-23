@ Librarian right
SCRIPT_START script_LibrarianRight
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	SetAnimation 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_08008B6E:
	TriggerInteract
	SetPlayerIdle
	SetAnimation 0x0004
	Call WaitForAnimDone
	Call sub_0806BBB0
	WaitUntilTextboxCloses
	SetAnimation 0x0008
	EnablePlayerControl
	Jump script_08008B6E
	.2byte 0x0000
