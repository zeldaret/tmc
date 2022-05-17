@ Librarian left with book quest
SCRIPT_START script_LibrarianLeftWithQuest
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	SetAnimation 0x0000
.ifdef EU
	SetGlobalFlag MIZUKAKI_NECHAN
.endif
	EndBlock
script_08008BD2:
	TriggerInteract
	SetPlayerIdle
.ifndef EU
	SetGlobalFlag MIZUKAKI_NECHAN
.endif
	SetAnimation 0x0004
	Call WaitForAnimDone
	WaitUntilTextboxCloses
	Call sub_0806BA34
	JumpIfNot script_08008C54
	WaitUntilTextboxCloses
	CallWithArg sub_0806BB1C, 0x00000000
	Call WaitForAnimDone
	CallWithArg sub_0806BB1C, 0x00000001
	Call sub_0806BB7C
	JumpIfNot script_08008C5C
	MessageNoOverlap TEXT_LIBRARY, 0x0c
	WaitUntilTextboxCloses
	LoadRoomEntityList gUnk_080D6784
	WaitForSyncFlag 0x00000001
	WaitForSyncFlag 0x00000004
	Wait 0x000f
	PlaySound SFX_SECRET
	SetAnimation 0x0004
	Call WaitForAnimDone
	MessageNoOverlap TEXT_LIBRARY, 0x13
	WaitUntilTextboxCloses
	SetAnimation 0x0008
	Call WaitForAnimDone
	Jump script_08008C5C
script_08008C54:
	SetAnimation 0x0008
	Wait 0x000f
script_08008C5C:
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08008BD2
