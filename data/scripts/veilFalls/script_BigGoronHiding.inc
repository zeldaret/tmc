@ Veil Falls BigGoron still hiding
SCRIPT_START script_BigGoronHiding
	BeginBlock
	Call sub_0806D650
	SetEntitySpeed 0x0010
	EndBlock
script_0800932E:
	MoveToOffset -8, 0x0000
	MoveToOffset 0x0008, 0x0000
	Jump script_0800932E
SCRIPT_END
