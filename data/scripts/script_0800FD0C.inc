SCRIPT_START script_0800FD0C
.ifdef JP
	CheckLocalFlag 0x00ca
.else
.ifdef EU
	CheckLocalFlag 0x00ca
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00ca @ TODO deduplicate
.else
	CheckLocalFlag 0x00cd
.endif
.endif
.endif
	JumpIf script_0800FD50
	WaitForSomething2 0x00000010
script_0800FD1A:
	CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
	JumpIfNot script_0800FD1A
.ifdef JP
	CheckLocalFlag 0x00ca
.else
.ifdef EU
	CheckLocalFlag 0x00ca
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00ca @ TODO deduplicate
.else
	CheckLocalFlag 0x00cd
.endif
.endif
.endif
	JumpIf script_0800FD5C
	_0807E864
	Call sub_0807F9A4
	TextboxNoOverlapFollowPos 0x2506, 0x0000
	_0807EA94
	StartPlayerScript script_0800FD80
	WaitForSomething2 0x00000008
	_0807E878
	Jump script_0800FD1A
script_0800FD50:
	CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
	JumpIfNot script_0800FD50
script_0800FD5C:
	_0807E864
	Call sub_0807F9A4
	TextboxNoOverlapFollowPos 0x106c, 0x0000
	_0807EA94
	StartPlayerScript script_0800FD80
	WaitForSomething2 0x00000008
	_0807E878
	Jump script_0800FD50
	.2byte 0x0000
