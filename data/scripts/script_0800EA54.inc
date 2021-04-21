SCRIPT_START script_0800EA54
	BeginBlock 
	Call sub_0806CE5C
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0008
	EndBlock 
script_0800EA6A:
	CheckEntityInteractType 
	JumpIfNot script_0800EA6A
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_0807F2D4
	_0807E930 0x0009
	Call sub_0806CE80
	_0807EA94 
	_0807E878 
	_0807E930 0x000a
	Call sub_0807F2D4
	_0807E930 0x0008
	Jump script_0800EA6A
SCRIPT_START script_0800EAA4
	BeginBlock 
	_0807E9D4 
	Call sub_0806C09C
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	_0807EB44 0x0004
	EndBlock 
script_0800EABC:
	CheckEntityInteractType 
	JumpIfNot script_0800EABC
	BeginBlock 
	_0807E864 
	_0807EB74 
	CallWithArg sub_0806C028, 0x00000004
	EndBlock 
script_0800EAD4:
	Call sub_0806C00C
	JumpIfNot script_0800EAD4
	_0807E930 0x0008
	Call sub_0806C038
	_0807EA94 
	Wait 0x000f
	_0807E878 
	_0807E930 0x0000
	Jump script_0800EABC
SCRIPT_START script_0800EAF8
	BeginBlock 
	Call sub_0806C870
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	EndBlock 
script_0800EB0E:
	_0807E30C 
	JumpIfNot script_0800EB0E
	_0807E864 
	_0807EB74 
	Call sub_0806C90C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800EB0E
	.2byte 0x0000
SCRIPT_START script_0800EB2C
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	Call sub_08061FD8
	EndBlock 
script_0800EB44:
	CheckEntityInteractType 
	JumpIfNot script_0800EB44
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	Jump script_0800EB44
	.2byte 0x0000
SCRIPT_START script_0800EB64
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0006
	Call sub_08061FD8
	EndBlock 
script_0800EB7C:
	CheckEntityInteractType 
	JumpIfNot script_0800EB7C
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	_0807EB44 0x0006
	Call sub_08061FD8
	Jump script_0800EB7C
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0002
	Call sub_08061FD8
	EndBlock 
	Jump script_0800EBF4
SCRIPT_START script_0800EBC0
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	Call sub_08061FD8
	EndBlock 
	Jump script_0800EBF4
SCRIPT_START script_0800EBDC
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0006
	Call sub_08061FD8
	EndBlock 
script_0800EBF4:
	CheckEntityInteractType 
	JumpIfNot script_0800EBF4
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	Jump script_0800EBF4
	.2byte 0x0000
SCRIPT_START script_0800EC14
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0002
	Call sub_08061FD8
	EndBlock 
script_0800EC2C:
	CheckEntityInteractType 
	JumpIfNot script_0800EC2C
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	_0807EB44 0x0002
	Call sub_08061FD8
	Jump script_0800EC2C
SCRIPT_START script_0800EC54
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	Call sub_08061FD8
	EndBlock 
script_0800EC6C:
	CheckEntityInteractType 
	JumpIfNot script_0800EC6C
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	Jump script_0800EC6C
	.2byte 0x0000
SCRIPT_START script_0800EC8C
	BeginBlock 
	_0807E9D4 
	CallWithArg sub_08061FB8, 0x00000001
	SetEntitySpeed 0x0040
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0002
	EndBlock 
script_0800ECAC:
	_0807EB44 0x0006
	_0807E930 0x0007
	_0807EDD4 0x0028, 0x0050
	Wait 0x001e
	_0807EB44 0x0004
	_0807E930 0x0002
	Wait 0x001e
	_0807EB44 0x0002
	_0807E930 0x0001
	Wait 0x001e
	_0807EB44 0x0002
	_0807E930 0x0005
	_0807EDD4 0x0048, 0x0050
	Wait 0x001e
	_0807EB44 0x0004
	_0807E930 0x0002
	Wait 0x001e
	_0807EB44 0x0006
	_0807E930 0x0003
	Wait 0x001e
	Jump script_0800ECAC
SCRIPT_START script_0800ED04
	BeginBlock 
	Call sub_080639D0
	DoPostScriptAction 0x000a
	EndBlock 
	BeginBlock 
	CallWithArg sub_08063850, 0x00000000
	EndBlock 
script_0800ED20:
	CheckEntityInteractType 
	JumpIfNot script_0800ED20
	_0807E864 
	_0807EB74 
	CallWithArg sub_08063850, 0x00000000
	Call sub_08063944
	_0807EA94 
	JumpIfNot script_0800ED46
	_0807F050 0x0070
	WaitPlayerAction8 
script_0800ED46:
	_0807E878 
	Call sub_08063874
	CallWithArg sub_08063850, 0x00000000
	Jump script_0800ED20
SCRIPT_START script_0800ED5C
	BeginBlock 
	Call sub_08064CC0
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0002
	_0807E930 0x0000
	EndBlock 
script_0800ED76:
	_0807E944 
	_0807E864 
	_0807EB74 
	Call sub_08064CD8
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800ED76
	.2byte 0x0000
SCRIPT_START script_0800ED90
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
script_0800ED98:
	EndBlock 
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800EDB6
	TestBit 0x00000001
	JumpIf script_0800EE12
	Call sub_0806AEE4
	Jump script_0800ED98
script_0800EDB6:
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	CheckLocalFlag 0x00ae
	JumpIf script_0800EE3E
	Wait 0x000a
	_0807E5F8 0x00000001
	TextboxNoOverlapFollow 0x4c07
	_0807EA94 
	_0807E5F8 0x00000010
	TextboxNoOverlapFollow 0x4c08
	_0807EA94 
	_0807E5F8 0x00000020
	TextboxNoOverlapFollow 0x4c09
	_0807EA94 
	SetIntVariable 0x00000503
	Call sub_0807F420
	_0807E5F8 0x00000040
	Call sub_0807DF50
	_0807E878 
	SetLocalFlag 0x00ae
	Jump script_0800ED98
script_0800EE12:
	EndBlock 
	WaitForSomething2 0x00000002
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	WaitForSomething2 0x00000004
	Call sub_0806AED8
	WaitForSomething2 0x00000008
	Jump script_0800ED98
script_0800EE3E:
	TextboxNoOverlapFollow 0x4c16
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Jump script_0800ED98
SCRIPT_START script_0800EE50
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
script_0800EE58:
	EndBlock 
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0800EE76
	TestBit 0x00000001
	JumpIf script_0800EED2
	Call sub_0806AEE4
	Jump script_0800EE58
script_0800EE76:
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	CheckLocalFlag 0x00ae
	JumpIf script_0800EEFE
	Wait 0x000a
	_0807E5F8 0x00000001
	TextboxNoOverlapFollow 0x4c07
	_0807EA94 
	_0807E5F8 0x00000002
	TextboxNoOverlapFollow 0x4c08
	_0807EA94 
	_0807E5F8 0x00000004
	TextboxNoOverlapFollow 0x4c09
	_0807EA94 
	SetIntVariable 0x00000503
	Call sub_0807F420
	_0807E5F8 0x00000008
	Call sub_0807DF50
	_0807E878 
	SetLocalFlag 0x00ae
	Jump script_0800EE58
script_0800EED2:
	EndBlock 
	WaitForSomething2 0x00000010
	_0807EB44 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	WaitForSomething2 0x00000020
	Call sub_0806AED8
	WaitForSomething2 0x00000040
	Jump script_0800EE58
script_0800EEFE:
	TextboxNoOverlapFollow 0x4c15
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Jump script_0800EE58
	TextboxNoOverlapFollow 0x4c07
	_0807EA94 
	_0807E5F8 0x00000012
	Wait 0x000a
	TextboxNoOverlapFollow 0x4c08
	_0807EA94 
	_0807E5F8 0x00000024
	TextboxNoOverlapFollow 0x4c09
	_0807EA94 
	_0807E5F8 0x00000048
	Call sub_080791BC
SCRIPT_END
