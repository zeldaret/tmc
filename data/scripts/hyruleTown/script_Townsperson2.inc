@ Hyrule Town Townsperson
SCRIPT_START script_Townsperson2
	BeginBlock
	Call sub_08061FE4
	Call sub_08061E70
	DoPostScriptAction 0x000a
	EndBlock
script_08010110:
	Wait 0x003c
	Call sub_08061E90
	Jump script_08010110
	.2byte 0x0000
