SCRIPT_START script_080160A8
	BeginBlock 
	_0807E9D4 
	_0807E930 0x0008
script_080160B0:
	EndBlock 
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_080160E0
	TestBit 0x00000008
	JumpIf script_080160D2
	TestBit 0x00000010
	JumpIf script_080160D2
	Jump script_080160B0
script_080160D2:
	EndBlock 
	_0807EB74 
	WaitForSomething2 0x00000004
	Jump script_080160B0
script_080160E0:
	_0807E864 
	_0807EB74 
	EndBlock 
	HasRoomItemForSale 
	JumpIfNot script_0801611A
	TextboxNoOverlapFollow 0x2d07
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08016132
	BuyItem 0x0000, 0x0000
	JumpIf script_0801610C
	TextboxNoOverlapFollow 0x2d0b
	_0807EA94 
	Jump script_08016132
script_0801610C:
	WaitPlayerAction8 
	_0807EB8C 
	TextboxNoOverlapFollow 0x2d0d
	_0807EA94 
	Jump script_08016132
script_0801611A:
	CheckKinstoneFused 0x0014
	JumpIfNot script_0801612C
	TextboxNoOverlapFollow 0x2d09
	_0807EA94 
	Jump script_08016132
script_0801612C:
	TextboxNoOverlapFollow 0x2d01
	_0807EA94 
script_08016132:
	_0807E878 
	_0807EB44 0x0004
	Jump script_080160B0
SCRIPT_START script_0801613C
	BeginBlock 
	Call sub_080787B4
	EndBlock 
script_08016146:
	CheckEntityInteractType 
	JumpIfNot script_08016146
	_0807E864 
	GetInventoryValue 0x0025
	TextboxNoOverlapFollowTable 0x2d03, 0x2d02, 0x2d02, 0x2d02
	_0807E3E8 
	JumpIfNot script_0801618A
	_0807E48C 0x0020
	JumpIf script_08016172
	TextboxNoOverlapFollow 0x2d0c
	Jump script_0801618A
script_08016172:
	BuyItem 0x0025, 0x0000
	JumpIf script_08016184
	TextboxNoOverlapFollow 0x2d0b
	Jump script_0801618A
script_08016184:
	WaitPlayerAction8 
	TextboxNoOverlapFollow 0x2d06
script_0801618A:
	_0807E878 
	Jump script_08016146
SCRIPT_START script_08016190
	BeginBlock 
	Call sub_080787B4
	EndBlock 
script_0801619A:
	CheckEntityInteractType 
	JumpIfNot script_0801619A
	_0807E864 
	GetInventoryValue 0x0024
	TextboxNoOverlapFollowTable 0x2d05, 0x2d04, 0x2d04, 0x2d04
	_0807E3E8 
	JumpIfNot script_080161E2
	_0807E48C 0x0020
	JumpIf script_080161C6
	TextboxNoOverlapFollow 0x2d0c
	Jump script_080161E2
script_080161C6:
	BuyItem 0x0024, 0x0000
	JumpIf script_080161D8
	TextboxNoOverlapFollow 0x2d0b
	Jump script_080161E2
script_080161D8:
	WaitPlayerAction8 
	_0807EA94 
	_0807EB8C 
	TextboxNoOverlap 0x2d06
script_080161E2:
	_0807E878 
	Jump script_0801619A
SCRIPT_START script_080161E8
	BeginBlock 
	Call sub_0807F348
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_080161FE:
	Call sub_08068C28
script_08016204:
	CheckEntityInteractType 
	JumpIfNot script_08016204
	_0807E864 
	Call sub_0807DF28
	_0807EB74 
	Call sub_08068CA0
	JumpIf script_0801633E
	Call sub_08068CFC
	JumpIfNot script_08016332
	Call sub_08068DB8
	_0807EA94 
	Call sub_08068DD0
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08016346
	StartPlayerScript script_0801635C
	WaitForSomething2 0x00000001
	_0807EB74 
	Call sub_08068C8C
	JumpIf script_08016262
	Call sub_08068DE8
	_0807EA94 
	Wait 0x001e
script_08016262:
	Call sub_08068E00
	_0807EA94 
	DoPostScriptAction 0x0001
	Call sub_0807F2D4
	Call sub_08068E90
	Call sub_08068C8C
	JumpIf script_0801631C
	Call sub_08068F00
	Call sub_08068F14
	Call sub_08068BB4
	CallWithArg sub_0807F244, 0x00010001
	Call sub_08068B84
	Call sub_0807F2A8
	Call sub_08068BD0
	Wait 0x001e
	Call sub_08068E18
	_0807EA94 
	Call sub_08068EB4
	Call sub_0807DF50
	_0807E878 
script_080162CC:
	EndBlock 
	BeginBlock 
	Call sub_08068EC4
	JumpIf script_080162F6
	CheckEntityInteractType 
	JumpIf script_080162E4
	Jump script_080162CC
script_080162E4:
	EndBlock 
	_0807E864 
	Call sub_08068E78
	_0807EA94 
	_0807E878 
	Jump script_080162CC
script_080162F6:
	EndBlock 
	_0807E888 
	Call sub_0807F594
	Call sub_0807DF28
	_0807E864 
	StopBgm
	PlaySound SFX_TASK_COMPLETE
	Wait 0x003c
	PlayBgm BGM_LEARN_SCROLL
	Call sub_08068F3C
script_0801631C:
	Call sub_08068E30
	_0807EA94 
	Call sub_08068C6C
	WaitPlayerAction8 
	_0807EA94 
	Jump script_08016346
script_08016332:
	Call sub_08068E60
	_0807EA94 
	Jump script_08016346
script_0801633E:
	Call sub_08068E48
	_0807EA94 
script_08016346:
	Call sub_0807DF50
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_080161FE
	.2byte 0x0000
