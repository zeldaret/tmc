SCRIPT_START script_080145B0
	StartScript 
	SetEntityPositionRelative 0x00e001f8
	CheckLocalFlag 0x005e
	JumpIf script_080145E4
	StopScript 
script_080145C2:
	CheckRoomFlag 0x0005
	JumpIfNot script_080145C2
	_0807E864 
	ClearRoomFlag 0x0005
	Wait 0x000c
	_0807EB8C 
	TextboxNoOverlapFollowPos 0x000c432e
	_0807EA94 
	_0807E878 
	Jump script_080145C2
script_080145E4:
	StopScript 
SCRIPT_END
