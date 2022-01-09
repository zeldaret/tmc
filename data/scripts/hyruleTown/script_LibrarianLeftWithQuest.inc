@ Librarian left with book quest
SCRIPT_START script_LibrarianLeftWithQuest
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	SetAnimation 0x0000
.ifdef EU
	SetGlobalFlag 0x0061
.endif
	EndBlock
script_08008BD2:
	TriggerInteract
	SetPlayerIdle
.ifndef EU
	SetGlobalFlag 0x0061
.endif
	SetAnimation 0x0004
	Call WaitForFrameHiBit
	WaitUntilTextboxCloses
	Call sub_0806BA34
	JumpIfNot script_08008C54
	WaitUntilTextboxCloses
	CallWithArg sub_0806BB1C, 0x00000000
	Call WaitForFrameHiBit
	CallWithArg sub_0806BB1C, 0x00000001
	Call sub_0806BB7C
	JumpIfNot script_08008C5C
	MessageNoOverlap 0x490c
	WaitUntilTextboxCloses
	LoadRoomEntityList gUnk_080D6784
	WaitForSyncFlag 0x00000001
	WaitForSyncFlag 0x00000004
	Wait 0x000f
	PlaySound SFX_SECRET
	SetAnimation 0x0004
	Call WaitForFrameHiBit
	MessageNoOverlap 0x4913
	WaitUntilTextboxCloses
	SetAnimation 0x0008
	Call WaitForFrameHiBit
	Jump script_08008C5C
script_08008C54:
	SetAnimation 0x0008
	Wait 0x000f
script_08008C5C:
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08008BD2
