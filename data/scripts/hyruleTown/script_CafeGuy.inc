@ Hyrule Town Cafe guy
SCRIPT_START script_CafeGuy
	BeginBlock
	_0807E9D4
	CallWithArg sub_08061FB8, 0x00000001
	SetEntitySpeed 0x0040
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0002
	EndBlock
script_0800ECAC:
	SetAnimationState 0x0006
	SetAnimation 0x0007
	MoveTo 0x0028, 0x0050
	Wait 0x001e
	SetAnimationState 0x0004
	SetAnimation 0x0002
	Wait 0x001e
	SetAnimationState 0x0002
	SetAnimation 0x0001
	Wait 0x001e
	SetAnimationState 0x0002
	SetAnimation 0x0005
	MoveTo 0x0048, 0x0050
	Wait 0x001e
	SetAnimationState 0x0004
	SetAnimation 0x0002
	Wait 0x001e
	SetAnimationState 0x0006
	SetAnimation 0x0003
	Wait 0x001e
	Jump script_0800ECAC
