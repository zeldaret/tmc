@ Veil Falls BigGoron 3
SCRIPT_START script_BigGoron3
	BeginBlock
	_0807E9D4
	EndBlock
script_0800934E:
	CheckEntityInteractType
	JumpIfNot script_0800934E
	SetPlayerIdle
	Call sub_0807DF28
	Call sub_0806D638
	_0807F0B4 0x0001
	CameraTargetEntity
	CheckGlobalFlag GAMECLEAR
	JumpIf script_BigGoronTalk
	MessageNoOverlap TEXT_GORONS, 0x01
	WaitUntilTextboxCloses
script_08009376:
	WaitUntilTextboxCloses
	Call sub_0806D640
	_0807F0B4 0x0001
	CameraTargetPlayer
	Wait 0x002d
	_0807F0B4 0x0004
	EnablePlayerControl
	Call sub_0807DF50
	Jump script_0800934E
SCRIPT_END
