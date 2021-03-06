SCRIPT_START script_080094CC
	BeginBlock 
	Call sub_0806D804
	SetEntityNonPlanarMovement 0x0180
	EndBlock 
	Wait 0x003c
	SetEntity0x20 0x00018000
	Call sub_0806D858
script_080094EA:
	_0807EE30 
	JumpIfNot script_080094EA
	Wait 0x001e
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
