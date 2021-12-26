@ Links house Smith
SCRIPT_START script_SmithAtLinksHouse
	BeginBlock
	Call sub_0807F348
	Call sub_08066288
	Call sub_08066274
	DoPostScriptAction 0x000a
	_0807E930 0x000c
	_0807E908 0x0003
	EndBlock
script_08009DD2:
	_0807E944
	_0807E908 0x0002
	Call sub_0806622C
	WaitUntilTextboxCloses
	_0807E908 0x0003
	_0807E930 0x000c
	Jump script_08009DD2
