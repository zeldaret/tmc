@ Hyrule Town Carlov
SCRIPT_START script_Carlov2
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	SetEntityDirection 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0801463A:
	FacePlayerAndCheckDist
.ifdef EU
	JumpIf script_080146E2
.else
	JumpIf script_080146A0
.endif
	CheckSyncFlagAndClear 0x00000004
	JumpIf script_0801477A
.ifdef EU
	CheckPlayerInRegion 0x0078, 0x0078, 0x0810
	JumpIfNot script_0801463A
	CheckRoomFlag 0x0009
	JumpIfNot script_0801463A
	SetPlayerIdle
	EzloMessage TEXT_CARLOV, 0x1f
	WaitUntilTextboxCloses
script_0801469A:
	StartPlayerScript script_PlayerAtCarlov
	Wait 0x0010
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	EnablePlayerControl
	Jump script_0801463A
script_080146E2:
	SetPlayerIdle
	SetAnimation 0x0008
	Wait 0x0020
	SetAnimation 0x0002
	CheckGlobalFlag FIGURE_ALLCOMP
	JumpIf script_0801472E_2
	CheckRoomFlag 0x0009
	JumpIf script_080146F4
	CheckLocalFlag 0x005c
	JumpIfNot script_080146FE
	CheckLocalFlag 0x005e
	JumpIfNot script_0801474A
	CheckRoomFlag 0x0006
	JumpIf script_0801472E
	CheckLocalFlag 0x005f
	JumpIf script_08014720
	Call FigurineDevice_TryAgainMessage
	SetRoomFlag 0x000a
	Jump script_0801473C
script_0801472E_2:
	MessageFromTargetPos TEXT_CARLOV, 0x2f, 0x000c
	Jump script_080147CE
.else
	CheckRoomFlag 0x0004
	JumpIf script_08014672
	Call sub_0808861C
	JumpIfNot script_0801463A
	CheckLocalFlag 0x005e
	JumpIf script_080146A0
	SetPlayerIdle
	FaceAwayFromPlayer
	MessageFromTargetPos TEXT_CARLOV, 0x2b, 0x000c
	Jump script_080147CE
script_08014672:
.ifdef DEMO_JP
	Call sub_08088658
.else
.ifdef JP
	CheckPlayerInRegion 0x0078, 0x0078, 0x0810
.else
	Call sub_08088658
.endif
.endif
	JumpIfNot script_0801463A
	SetPlayerIdle
	EzloMessage TEXT_CARLOV, 0x1f
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtCarlov
	Wait 0x0010
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	EnablePlayerControl
	Jump script_0801463A
script_080146A0:
	SetPlayerIdle
	SetAnimation 0x0008
	Wait 0x0010
	FaceAwayFromPlayer
	Wait 0x0010
	SetAnimation 0x0002
	CheckGlobalFlag FIGURE_ALLCOMP
	JumpIfNot script_080146C6
	MessageFromTargetPos TEXT_CARLOV, 0x2f, 0x000c
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
	Call FigurineDevice_TryAgainMessage
	SetRoomFlag 0x0009
	Jump script_0801473C
.endif

script_080146F4:
	MessageFromTargetPos TEXT_CARLOV, 0x1e, 0x000c
	Jump script_080147CE
script_080146FE:
.ifdef EU
	SetRoomFlag 0x000A
.else
	SetRoomFlag 0x0009
.endif
	SetLocalFlag 0x005c
.ifdef EU
script_0801474A:
	SetRoomFlag 0x000a
.endif
	MessageFromTargetPos TEXT_CARLOV, 0x05, 0x000c
	WaitUntilTextboxCloses
	HasShells 0x0001
	JumpIfNot script_080147C4
	MessageFromTargetPos TEXT_CARLOV, 0x06, 0x000c
	Jump script_0801473C
script_08014720:
.ifdef EU
	SetRoomFlag 0x000A
.else
	SetRoomFlag 0x0009
.endif
	Call FigurineDevice_NothingNewToDrawMessage
	Jump script_0801473C
script_0801472E:
.ifdef EU
	SetRoomFlag 0x000A
.else
	SetRoomFlag 0x0009
.endif
	ClearRoomFlag 0x0006
	Call FigurineDevice_NewFigurinesMessage
script_0801473C:
	CheckTextboxResult
	JumpIfNot script_08014770
	WaitUntilTextboxCloses
	HasShells 0x0001
	JumpIfNot script_080147C4
	SetRoomFlag 0x0001
	Wait 0x0014
script_08014754:
	CheckRoomFlag 0x0003
	JumpIfNot script_08014754
	ClearRoomFlag 0x0003
	WaitUntilTextboxCloses
.ifdef EU
	SetRoomFlag 0x0009
.else
	SetRoomFlag 0x0004
.endif
	MessageFromTargetPos TEXT_CARLOV, 0x1e, 0x000c
	Jump script_080147CE
script_08014770:
.ifdef EU
	SetRoomFlag 0x000A
.else
	SetRoomFlag 0x0009
.endif
	WaitUntilTextboxCloses
	Jump script_080147CE
script_0801477A:
	CheckRoomFlag 0x0008
	JumpIf script_080147B4
	CheckRoomFlag 0x0007
	JumpIf script_080147A4
script_0801478A:
	Call FigurineDevice_NoFigurinesLeftMessage
	WaitUntilTextboxCloses
	Call FigurineDevice_LostOrFinishedMessage
	WaitPlayerGetItem
	SetSyncFlag 0x00000008
	Jump script_080147CE
script_080147A4:
	SetAnimation 0x0009
	Wait 0x003c
	SetAnimation 0x0002
	Jump script_0801478A
script_080147B4:
	SetAnimation 0x000a
	Wait 0x008c
	SetAnimation 0x0002
	Jump script_0801478A
script_080147C4:
.ifdef EU
	SetRoomFlag 0x000A
.else
	SetRoomFlag 0x0009
.endif
	MessageFromTargetPos TEXT_CARLOV, 0x07, 0x000c
script_080147CE:
	WaitUntilTextboxCloses
.ifdef EU
	Wait 0x000F
.else
	Wait 0x0004
.endif
	EnablePlayerControl
	Jump script_0801463A
	.align 2, 0
