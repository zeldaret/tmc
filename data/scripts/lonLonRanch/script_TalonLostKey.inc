@ Lon Lon Ranch Talon lost key
SCRIPT_START script_TalonLostKey
	BeginBlock
	DoPostScriptAction 0x000a
	Call SetCollisionLayer1
	SetEntitySpeed 0x0120
	SetAnimationState 0x0004
	SetAction 0x0002
	SetIntVariable 0x0000200a
	EndBlock
script_0800B3C4:
	MoveTo 0x0158, 0x0290
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	MoveTo 0x0128, 0x0290
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Call sub_08065780
	Jump script_0800B3C4
