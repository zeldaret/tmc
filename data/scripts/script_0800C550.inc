SCRIPT_START script_0800C550
	BeginBlock 
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock 
script_0800C55E:
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800C572
	Call sub_08060158
	EndBlock 
	Jump script_0800C55E
script_0800C572:
	EndBlock 
	_0807E864 
	Call sub_08060208
	_0807EA94 
	_0807E878 
	Jump script_0800C55E
SCRIPT_START script_0800C584
	BeginBlock 
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock 
script_0800C592:
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800C5A6
	Call sub_08060158
	EndBlock 
	Jump script_0800C592
script_0800C5A6:
	EndBlock 
	_0807E864 
	CheckInventory1 0x0067
	JumpIfNot script_0800C5BC
	Call sub_08060208
	Jump script_0800C5C0
script_0800C5BC:
	TextboxNoOverlap 0x4710
script_0800C5C0:
	_0807EA94 
	_0807E878 
	Jump script_0800C592
SCRIPT_START script_0800C5C8
	BeginBlock 
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock 
script_0800C5D6:
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800C5EA
	Call sub_08060158
	EndBlock 
	Jump script_0800C5D6
script_0800C5EA:
	EndBlock 
	_0807E864 
	Call sub_08060270
	_0807EA94 
	_0807E878 
	Jump script_0800C5D6
SCRIPT_START script_0800C5FC
	BeginBlock 
script_0800C5FE:
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock 
script_0800C60A:
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800C61E
	Call sub_08060158
	EndBlock 
	Jump script_0800C60A
script_0800C61E:
	EndBlock 
	_0807E864 
	Call sub_0806021C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800C60A
SCRIPT_START script_0800C634
	BeginBlock 
	DoPostScriptAction 0x000a
	SetEntitySpeed 0x0080
	_0807EB44 0x0004
	CheckLocalFlag 0x0082
	JumpIfNot script_0800C650
	SetEntityPosition 0x0010, 0x0000
script_0800C650:
	EndBlock 
script_0800C652:
	_0807E944 
	_0807E864 
	Call sub_0807DF28
	CheckLocalFlag 0x0082
	JumpIf script_0800C684
	CheckPlayerInRegion 0x00e8, 0x0028, 0x1810
	JumpIfNot script_0800C674
	DoPostScriptAction 0x000b
script_0800C674:
	StartPlayerScript script_0800C8C8
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x000a
script_0800C684:
	CheckInventory1 0x0040
	JumpIf script_0800C730
	CheckInventory1 0x005b
	JumpIf script_0800C6B6
	DoPostScriptAction 0x0002
	TextboxNoOverlapFollow 0x1f16
	_0807EA94 
	DoPostScriptAction 0x0015
	Wait 0x000a
	SetLocalFlag 0x0080
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C652
script_0800C6B6:
	CheckLocalFlag 0x0081
	JumpIf script_0800C6DC
	DoPostScriptAction 0x0002
	TextboxNoOverlapFollow 0x1f1b
	_0807EA94 
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C652
script_0800C6DC:
	CheckLocalFlag 0x0082
	JumpIf script_0800C712
	DoPostScriptAction 0x0002
	TextboxNoOverlapFollow 0x1f17
	_0807EA94 
	DoPostScriptAction 0x0015
	Wait 0x000a
	_0807EB44 0x0002
	DoPostScriptAction 0x0001
	_0807EC94 0x0020
	_0807EB44 0x0004
	Wait 0x000f
	PlaySound SFX_SECRET
	SetLocalFlag 0x0082
script_0800C712:
	DoPostScriptAction 0x0002
	TextboxNoOverlapFollow 0x1f18
	_0807EA94 
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C652
script_0800C730:
	CheckLocalFlag 0x0083
	JumpIf script_0800C756
	DoPostScriptAction 0x0002
	TextboxNoOverlapFollow 0x1f19
	_0807EA94 
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C652
script_0800C756:
	DoPostScriptAction 0x0002
	TextboxNoOverlapFollow 0x1f1a
	_0807EA94 
	DoPostScriptAction 0x0015
	Wait 0x000a
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C652
SCRIPT_START script_0800C774
	BeginBlock 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	EndBlock 
script_0800C780:
	_0807E944 
	_0807E864 
	Call sub_0807DF28
	StartPlayerScript script_0800C8F0
	WaitForSomething2 0x00000001
	CheckInventory1 0x0040
	JumpIf script_0800C824
	CheckInventory1 0x005b
	JumpIf script_0800C7C0
	_0807E930 0x0008
	TextboxNoOverlapFollow 0x2122
	_0807EA94 
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C780
script_0800C7C0:
	_0807E930 0x0008
	CheckLocalFlag 0x0081
	JumpIf script_0800C80A
	TextboxNoOverlapFollow 0x1130
	_0807EA94 
	_0807EB28 0x1131
	_0807EA94 
	_0807EB8C 
	TextboxNoOverlapFollow 0x1132
	_0807EA94 
	SetIntVariable 0x00000103
	Call sub_0807F420
	TextboxNoOverlapFollow 0x1133
	_0807EA94 
	Wait 0x000a
	DoPostScriptAction 0x0000
	SetLocalFlag 0x0081
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C780
script_0800C80A:
	TextboxNoOverlapFollow 0x1133
	_0807EA94 
	Wait 0x000a
	_0807E930 0x0000
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C780
script_0800C824:
	_0807E930 0x0008
	CheckLocalFlag 0x0083
	JumpIf script_0800C8AE
	TextboxNoOverlapFollow 0x1135
	_0807EA94 
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
	TextboxNoOverlapFollow 0x1136
	_0807EA94 
	_0807EB28 0x1137
	_0807EA94 
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
	TextboxNoOverlapFollow 0x1136
	_0807EA94 
	Wait 0x000a
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C87C
script_0800C8AE:
	TextboxNoOverlapFollow 0x1136
	_0807EA94 
	Wait 0x000a
	DoPostScriptAction 0x0000
	Call sub_0807DF50
	_0807E878 
	Jump script_0800C780
