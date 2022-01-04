	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080FC908:: @ 080FC908
	.4byte sub_08050888
	.4byte sub_080508E4
	.4byte sub_08050910

gUnk_080FC914:: @ 080FC914
	.incbin "data_080FC8A4/gUnk_080FC914.bin"

gUnk_080FC93C:: @ 080FC93C
	.4byte sub_08050C54
	.4byte sub_08050D68

gUnk_080FC944:: @ 080FC944
	.4byte sub_08050DB8
	.4byte sub_08050DE4
	.4byte sub_08050E88

gUnk_080FC950:: @ 080FC950
	.4byte sub_08050EB8
	.4byte sub_08050EF4
	.4byte sub_08050FFC
	.4byte sub_0805103C

gUnk_080FC960:: @ 080FC960
	.4byte sub_08051090
	.4byte sub_080610B8
	.4byte sub_0805138C
	.4byte sub_0805144C

gUnk_080FC970:: @ 080FC970
	.incbin "data_080FC8A4/gUnk_080FC970.bin"

gUnk_080FC980:: @ 080FC980
	.incbin "data_080FC8A4/gUnk_080FC980.bin"

gUnk_080FC9A0:: @ 080FC9A0
	.incbin "data_080FC8A4/gUnk_080FC9A0.bin"

gUnk_080FC9B0:: @ 080FC9B0
	.4byte sub_080513A8
	.4byte sub_080513C0
	.4byte sub_0805141C

gUnk_080FC9BC:: @ 080FC9BC
	.4byte sub_080515c8
	.4byte sub_080515D4
	.4byte sub_080516E0

gUnk_080FC9C8:: @ 080FC9C8
	.4byte sub_08051738
	.4byte sub_080517EC
	.4byte sub_08051874
	.4byte sub_080518E4

gUnk_080FC9D8:: @ 080FC9D8
	.4byte GameTask_Transition
	.4byte GameTask_Init
	.4byte GameTask_Main
	.4byte sub_08051D2C

gUnk_080FC9E8:: @ 080FC9E8
	.4byte GameMain_InitRoom
	.4byte GameMain_ChangeRoom
	.4byte GameMain_Update
	.4byte GameMain_ChangeArea
	.4byte GameMain_MinishPortal
	.4byte GameMain_BarrelUpdate
	.4byte 00000000
	.4byte GameMain_Subtask

gUnk_080FCA08:: @ 080FCA08
	.4byte sub_08051E84
	.4byte sub_08051F04
	.4byte sub_08051F40

gUnk_080FCA14:: @ 080FCA14
	.4byte sub_08053590
	.4byte sub_08053FB4
	.4byte sub_08053C90

gUnk_080FCA20:: @ 080FCA20
	.incbin "data_080FC8A4/gUnk_080FCA20.bin"

gUnk_080FCA70:: @ 080FCA70
	.4byte sub_080520D8
	.4byte sub_0805212C
	.4byte sub_080521A0
	.4byte sub_080522F4
	.4byte nullsub_107
