@ Gentari at beginning
SCRIPT_START script_Gentari
	BeginBlock
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	EndBlock
script_0800C780:
	_0807E944
	_0807E864
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtGentari
	WaitForSyncFlagAndClear 0x00000001
	CheckInventory1 0x0040
	JumpIf script_0800C824
	CheckInventory1 0x005b
	JumpIf script_0800C7C0
	_0807E930 0x0008
	MessageFromTarget 0x2122
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878
	Jump script_0800C780
script_0800C7C0:
	_0807E930 0x0008
	CheckLocalFlag 0x0081
	JumpIf script_0800C80A
	MessageFromTarget 0x1130
	WaitUntilTextboxCloses
	_0807EB28 0x1131
	WaitUntilTextboxCloses
	_0807EB8C 
	MessageFromTarget 0x1132
	WaitUntilTextboxCloses
	SetIntVariable 0x00000103
	Call sub_0807F420
	MessageFromTarget 0x1133
	WaitUntilTextboxCloses
	Wait 0x000a
	DoPostScriptAction 0x0000
	SetLocalFlag 0x0081
	Call sub_0807DF50
	_0807E878
	Jump script_0800C780
script_0800C80A:
	MessageFromTarget 0x1133
	WaitUntilTextboxCloses
	Wait 0x000a
	_0807E930 0x0000
	Call sub_0807DF50
	_0807E878
	Jump script_0800C780
script_0800C824:
	_0807E930 0x0008
	CheckLocalFlag 0x0083
	JumpIf script_0800C8AE
	MessageFromTarget 0x1135
	WaitUntilTextboxCloses
	SetEntitySpeed 0x0040
	_0807EDD4 0x0038, 0x0044
	DoPostScriptAction 0x0000
	Wait 0x000f
	SetLocalFlag 0x0083
	Wait 0x003c
	PlaySound SFX_SECRET
	Wait 0x003c
	_0807EB74 
	_0807EB8C 
	MessageFromTarget 0x1136
	WaitUntilTextboxCloses
	_0807EB28 0x1137
	WaitUntilTextboxCloses
	Wait 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878
script_0800C87C:
	_0807E944
	_0807E864
	Call sub_0807DF28
	_0807EB74
	SetIntVariable 0x00000008
	Call sub_0807F3D8
	MessageFromTarget 0x1136
	WaitUntilTextboxCloses
	Wait 0x000a
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878
	Jump script_0800C87C
script_0800C8AE:
	MessageFromTarget 0x1136
	WaitUntilTextboxCloses
	Wait 0x000a
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878
	Jump script_0800C780
