@ Librarian right
SCRIPT_START script_LibrarianRight
	BeginBlock
	_0807E9D4
	_0807EB44 0x0004
	_0807E930 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_08008B6E:
	_0807E944
	_0807E864
	_0807E930 0x0004
	Call sub_0807F2D4
	Call sub_0806BBB0
	WaitUntilTextboxCloses
	_0807E930 0x0008
	_0807E878
	Jump script_08008B6E
	.2byte 0x0000
