SCRIPT_START script_080145E8
	BeginBlock 
	DoPostScriptAction 0x0008
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_080145F8:
	CheckRoomFlag 0x0000
	JumpIfNot script_080145F8
	_0807E864 
	Call sub_0807DF28
script_08014608:
	CheckRoomFlag 0x0004
	JumpIf script_08014608
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	Call sub_0807DF50
	_0807E878 
	Jump script_080145F8
SCRIPT_START script_08014628
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	SetEntityDirection 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
script_0801463A:
	_0807E30C 
	JumpIf script_080146A0
	TestBit 0x00000004
	JumpIf script_0801477A
	CheckRoomFlag 0x0004
	JumpIf script_08014672
	Call sub_0808861C
	JumpIfNot script_0801463A
	CheckLocalFlag 0x005e
	JumpIf script_080146A0
	_0807E864 
	_0807EB8C 
	TextboxNoOverlapFollowPos 0x432b, 0x000c
	Jump script_080147CE
script_08014672:
	Call sub_08088658
	JumpIfNot script_0801463A
	_0807E864 
	_0807EB28 0x431f
	_0807EA94 
	StartPlayerScript script_080147DC
	Wait 0x0010
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807E878 
	Jump script_0801463A
script_080146A0:
	_0807E864 
	_0807E930 0x0008
	Wait 0x0010
	_0807EB8C 
	Wait 0x0010
	_0807E930 0x0002
	CheckGlobalFlag 0x0059
	JumpIfNot script_080146C6
	TextboxNoOverlapFollowPos 0x432f, 0x000c
	Jump script_080147CE
script_080146C6:
	CheckRoomFlag 0x0004
	JumpIf script_080146F4
	CheckLocalFlag 0x005e
	JumpIfNot script_080146FE
	CheckRoomFlag 0x0006
	JumpIf script_0801472E
	CheckLocalFlag 0x005f
	JumpIf script_08014720
	Call sub_08088574
	SetRoomFlag 0x0009
	Jump script_0801473C
script_080146F4:
	TextboxNoOverlapFollowPos 0x431e, 0x000c
	Jump script_080147CE
script_080146FE:
	SetRoomFlag 0x0009
	SetLocalFlag 0x005c
	TextboxNoOverlapFollowPos 0x4305, 0x000c
	_0807EA94 
	_0807E3BC 0x0001
	JumpIfNot script_080147C4
	TextboxNoOverlapFollowPos 0x4306, 0x000c
	Jump script_0801473C
script_08014720:
	SetRoomFlag 0x0009
	Call sub_08088504
	Jump script_0801473C
script_0801472E:
	SetRoomFlag 0x0009
	ClearRoomFlag 0x0006
	Call sub_08088544
script_0801473C:
	_0807E3E8 
	JumpIfNot script_08014770
	_0807EA94 
	_0807E3BC 0x0001
	JumpIfNot script_080147C4
	SetRoomFlag 0x0001
	Wait 0x0014
script_08014754:
	CheckRoomFlag 0x0003
	JumpIfNot script_08014754
	ClearRoomFlag 0x0003
	_0807EA94 
	SetRoomFlag 0x0004
	TextboxNoOverlapFollowPos 0x431e, 0x000c
	Jump script_080147CE
script_08014770:
	SetRoomFlag 0x0009
	_0807EA94 
	Jump script_080147CE
script_0801477A:
	CheckRoomFlag 0x0008
	JumpIf script_080147B4
	CheckRoomFlag 0x0007
	JumpIf script_080147A4
script_0801478A:
	Call sub_08088478
	_0807EA94 
	Call sub_080885B0
	WaitPlayerAction8 
	_0807E5F8 0x00000008
	Jump script_080147CE
script_080147A4:
	_0807E930 0x0009
	Wait 0x003c
	_0807E930 0x0002
	Jump script_0801478A
script_080147B4:
	_0807E930 0x000a
	Wait 0x008c
	_0807E930 0x0002
	Jump script_0801478A
script_080147C4:
	SetRoomFlag 0x0009
	TextboxNoOverlapFollowPos 0x4307, 0x000c
script_080147CE:
	_0807EA94 
	Wait 0x0004
	_0807E878 
	Jump script_0801463A
	.2byte 0x0000
