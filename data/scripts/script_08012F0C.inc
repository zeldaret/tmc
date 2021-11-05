SCRIPT_START script_08012F0C
	BeginBlock 
	CallWithArg sub_0806A93C, 0x12345678
	_0807EB44 0x0004
	_0807E930 0x0002
	CheckInventory1 0x0015
	JumpIf script_080130B6
	CheckLocalFlag 0x0060
	JumpIf script_08012FD2
	CheckGlobalFlag 0x001e
	JumpIf script_08012F86
	EndBlock 
	CheckLocalFlag 0x0062
	JumpIfNot script_08012F48
	Call sub_0806A9B0
script_08012F48:
	CheckLocalFlag 0x0061
	JumpIf script_08012F6C
script_08012F50:
	Call sub_0806A96C
	JumpIfNot script_08012F50
	_0807E864 
	MessageNoOverlap 0x4401
	_0807EA94 
	SetLocalFlag 0x0061
	_0807E878 
	_0807E908 0x0001
script_08012F6C:
	Call sub_0806A96C
	JumpIfNot script_08012F6C
	MessageNoOverlap 0x4402
	_0807EA94 
	_0807E908 0x0001
	Jump script_08012F6C
SCRIPT_END
