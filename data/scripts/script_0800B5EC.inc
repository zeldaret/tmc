SCRIPT_START script_0800B5EC
	BeginBlock 
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	_0807E9D4 
	EndBlock 
script_0800B5FA:
	CheckEntityInteractType 
	JumpIfNot script_0800B5FA
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x2009
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	Jump script_0800B5FA
SCRIPT_START script_0800B614
	BeginBlock 
	EndBlock 
script_0800B618:
	CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
	JumpIfNot script_0800B618
	Call sub_08079184
	_0807E864 
	Call sub_0807F9A4
	StartPlayerScript script_0800B7C4
	WaitForSomething2 0x00000004
	SetRoomFlag 0x0000
	WaitForSomething2 0x00000004
	CheckLocalFlag 0x009e
	JumpIf script_0800B7A2
	TextboxNoOverlap 0x0583
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_0800B684
	Wait 0x000f
	TextboxNoOverlap 0x0584
	CallWithArg sub_0807F970, 0x0000058b
	JumpIf script_0800B68E
	CallWithArg sub_08087424, 0x00000000
	Wait 0x00b4
	Jump script_0800B6A6
script_0800B684:
	TextboxNoOverlap 0x057d
	_0807EA94 
	Jump script_0800B6A6
script_0800B68E:
	_0807EA94 
	SetLocalFlag 0x009e
	_0807F034 0x0066
script_0800B698:
	WaitPlayerAction8 
	_0807EB8C 
	Wait 0x001e
	TextboxNoOverlap 0x057f
	_0807EA94 
script_0800B6A6:
	_0807E778 0x0004
	DoFade7 
	WaitFor_2 
	Call sub_080873FC
	DoFade6 
	WaitFor_2 
	CameraTargetPlayer 
	Wait 0x001e
	Call sub_0807DF50
	_0807E878 
SCRIPT_END
