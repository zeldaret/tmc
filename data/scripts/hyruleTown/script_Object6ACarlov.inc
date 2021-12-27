@ Hyrule Town OBJECT_69 at Carlov 2
SCRIPT_START script_Object6ACarlov
	BeginBlock
	SetEntityPositionRelative 0x01f8, 0x00e0
	CheckLocalFlag 0x005e
	JumpIf script_080145E4
	EndBlock
script_080145C2:
	CheckRoomFlag 0x0005
	JumpIfNot script_080145C2
	_0807E864
	ClearRoomFlag 0x0005
.ifdef EU
	Wait 0x0018
	_0807E8E4_1
	_0807EB44 0x0006
.else
	Wait 0x000c
	_0807EB8C
.endif
	MessageFromTargetPos 0x432e, 0x000c
	WaitUntilTextboxCloses
.ifdef EU
	Wait 0x0018
.endif
	_0807E878
	Jump script_080145C2
script_080145E4:
	EndBlock
SCRIPT_END
