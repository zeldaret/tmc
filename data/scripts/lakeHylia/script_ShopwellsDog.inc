@ Lake Hylia Dog
SCRIPT_START script_ShopwellsDog
	BeginBlock
	SetEntitySpeed 0x0100
	SetAnimationState 0x0004
	EndBlock
	Wait 0x001e
	PlaySound SFX_VO_DOG
	MoveTo 0x008a, 0x005a
	Wait 0x000a
	Call sub_08069EE8
SCRIPT_END
	.2byte 0x0000
