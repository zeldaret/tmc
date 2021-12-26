@ Player at Sanctuary draw final sword
SCRIPT_START script_PlayerPickUpFinalSword
	CallWithArg sub_08095E7C, script_Object6ASwordCharge11
	PlaySound SFX_1D3
	CallWithArg sub_0807F238, 0x000008e3
	Call sub_08096028
	Wait 0x0078
	_0807E5F8 0x00020000
	Call sub_0807F304
	Wait 0x0078
	WaitForSomething2 0x00040000
	Call sub_080791BC
SCRIPT_END
