SCRIPT_START script_0800DA60
	BeginBlock
	EndBlock
script_0800DA64:
	CheckPlayerInRegion 0x0078, 0x0148, 0x4040
	JumpIfNot script_0800DA64
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807E8E4_0
	Call sub_0807F3F8
	Wait 0x003c
	_0807F0B4 0x0004
	SetEntityPositionRelative 0x0078, 0x0080
	CameraTargetEntity
	Call sub_0807F5C0
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	TextboxNoOverlapFollowPos 0x162d, 0x0002
	WaitUntilTextboxCloses
	_0807E5F8 0x00000001
	Wait 0x001e
	TextboxNoOverlapFollowPos 0x162e, 0x0002
	WaitUntilTextboxCloses
	_0807E8E4_0
	CallWithArg sub_0807F75C, 0x00780138
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call sub_0807F5C0
	SetRoomFlag 0x0000
	Call sub_0807F40C
	Wait 0x001e
	_0807E8E4_1
	Wait 0x000a
	_0807E8E4_3
	Wait 0x000a
	_0807E8E4_2
	Call sub_0807F3F8
	Wait 0x003c
	SetRoomFlag 0x0001
	SetLocalFlag 0x0077
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
