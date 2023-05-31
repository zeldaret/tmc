@ Library Townsperson
SCRIPT_START script_LibraryVisitor
	BeginBlock
	Call sub_08061FD8
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_08008DA0:
	CheckEntityInteractType
	JumpIfNot script_08008DA0
	SetPlayerIdle
	FacePlayer
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08008DA0
	.2byte 0x0000
