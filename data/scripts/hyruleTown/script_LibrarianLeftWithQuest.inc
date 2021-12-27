@ Librarian left with book quest
SCRIPT_START script_LibrarianLeftWithQuest
	BeginBlock
	_0807E9D4
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	_0807E930 0x0000
.ifdef EU
	SetGlobalFlag 0x0061
.endif
	EndBlock
script_08008BD2:
	_0807E944
	_0807E864
.ifndef EU
	SetGlobalFlag 0x0061
.endif
	_0807E930 0x0004
	Call sub_0807F2D4
	WaitUntilTextboxCloses
	Call sub_0806BA34
	JumpIfNot script_08008C54
	WaitUntilTextboxCloses
	CallWithArg sub_0806BB1C, 0x00000000
	Call sub_0807F2D4
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
	_0807E930 0x0004
	Call sub_0807F2D4
	MessageNoOverlap 0x4913
	WaitUntilTextboxCloses
	_0807E930 0x0008
	Call sub_0807F2D4
	Jump script_08008C5C
script_08008C54:
	_0807E930 0x0008
	Wait 0x000f
script_08008C5C:
	WaitUntilTextboxCloses
	_0807E878
	Jump script_08008BD2
