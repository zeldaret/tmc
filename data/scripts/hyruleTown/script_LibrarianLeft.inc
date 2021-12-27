@ Librarian left
SCRIPT_START script_LibrarianLeft
	BeginBlock
	_0807E9D4
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	EndBlock
script_08008BA2:
	_0807E944
	_0807E864
	_0807E930 0x0004
	Call sub_0807F2D4
	MessageFromTarget 0x4912
	WaitUntilTextboxCloses
	_0807E930 0x0008
	_0807E878
	Jump script_08008BA2
