@ Intro Hyrule Castle Minister Potho
SCRIPT_START script_MinisterPothoIntroCastle
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
.ifdef JP
.ifndef DEMO_JP
	_0807E9D4
	DoPostScriptAction 0x000a
.endif
.else
.ifdef EU
	_0807E9D4
	DoPostScriptAction 0x000a
.endif
.endif
	EndBlock
script_08011134:
	CheckPlayerInRegion 0x01f8, 0x0048, 0x1040
	JumpIfNot script_08011134
	LoadRoomEntityList gUnk_080F06B0
	DoPostScriptAction 0x000b
	WaitForSyncFlagAndClear 0x00000004
	SetEntityPositionRelative 0x01b8, 0x0058
	SetAnimationState 0x0004
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimationState 0x0006
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimationState 0x0004
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x0001
	WalkSouth 0x0010
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0010
	Wait 0x001e
	DoPostScriptAction 0x0010
	Call sub_0807F3C8
	SetEntitySpeed 0x0400
	SetEntityDirection 0x001c
	WalkForward 0x003c
	SetSyncFlag 0x00000008
	DoPostScriptAction 0x0006
SCRIPT_END
.ifdef JP
.ifndef DEMO_JP
	.2byte 0x0000
.endif
.else
.ifdef EU
	.2byte 0x0000
.endif
.endif
