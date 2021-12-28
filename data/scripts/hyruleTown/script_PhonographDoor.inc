@ Hyrule Town locked door NPC4E for music room
SCRIPT_START script_PhonographDoor
	BeginBlock
	EndBlock
.ifdef JP
	CheckLocalFlag 0x00ce
.else
.ifdef EU
	CheckLocalFlag 0x00ce
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00ce @ TODO deduplicate
.else
	CheckLocalFlag 0x00d1
.endif
.endif
.endif
	JumpIf script_080109EA
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_PhonographDoor
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerCannotEnter
	WaitForSyncFlagAndClear 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_080109DE
	EzloMessage 0x0b64
	WaitUntilTextboxCloses
script_080109DE:
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_PhonographDoor
script_080109EA:
	DoPostScriptAction 0x0006
SCRIPT_END
