@ BigGoron Kinstone cutscene2
script_BigGoronKinstone2::
	BeginBlock
	Call sub_0806D660
	SetEntitySpeed 0x0080
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	CallWithArg sub_0807F4F8, 0x00000048
	Call sub_0806D66C
	Wait 0x000f
	CallWithArg sub_0807F4F8, 0x00000068
	Call sub_0806D67C
	InitScreenShake 0x001e, 0x0000
	PlaySound SFX_10B
	EndScript
