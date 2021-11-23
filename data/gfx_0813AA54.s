	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0813AA54:: @ 0813AA54
	.incbin "data_08132B30/gUnk_0813AA54.bin"

gUnk_0813AA68:: @ 0813AA68
	.incbin "data_08132B30/gUnk_0813AA68.bin"

gUnk_0813AA7C:: @ 0813AA7C
	.incbin "data_08132B30/gUnk_0813AA7C.bin"

gUnk_0813AA90:: @ 0813AA90
	.incbin "data_08132B30/gUnk_0813AA90.bin"

gUnk_0813AAA4:: @ 0813AAA4
	.incbin "data_08132B30/gUnk_0813AAA4.bin"

gUnk_0813AAB8:: @ 0813AAB8
	.incbin "data_08132B30/gUnk_0813AAB8.bin"

gUnk_0813AACC:: @ 0813AACC
	.incbin "data_08132B30/gUnk_0813AACC.bin"

gUnk_0813AAE0:: @ 0813AAE0
	.incbin "data_08132B30/gUnk_0813AAE0.bin"

gUnk_0813AAF4:: @ 0813AAF4
	.incbin "data_08132B30/gUnk_0813AAF4.bin"

gUnk_0813AB08:: @ 0813AB08
	.incbin "data_08132B30/gUnk_0813AB08.bin"

gUnk_0813AB1C:: @ 0813AB1C
	.4byte gUnk_0813AA54
	.4byte gUnk_0813AA68
	.4byte gUnk_0813AA7C
	.4byte gUnk_0813AA90
	.4byte gUnk_0813AAA4
	.4byte gUnk_0813AAB8
	.4byte gUnk_0813AACC
	.4byte gUnk_0813AAE0
	.4byte gUnk_0813AAF4
	.4byte gUnk_0813AB08
	.4byte 0x00000001
	.4byte 0x00480000
	.4byte 0x07000068
	.4byte 0x02000100
	.4byte 00000000

gUnk_0813AB58:: @ 0813AB58
	.incbin "data_08132B30/gUnk_0813AB58.bin"

gUnk_0813AB6C:: @ 0813AB6C
	.incbin "data_08132B30/gUnk_0813AB6C.bin"

gUnk_0813AB80:: @ 0813AB80
	.incbin "data_08132B30/gUnk_0813AB80.bin"

gUnk_0813AB94:: @ 0813AB94
	.incbin "data_08132B30/gUnk_0813AB94.bin"

gUnk_0813ABA8:: @ 0813ABA8
	.incbin "data_08132B30/gUnk_0813ABA8.bin"

gUnk_0813ABBC:: @ 0813ABBC
	.incbin "data_08132B30/gUnk_0813ABBC.bin"

gUnk_0813ABD0:: @ 0813ABD0
	.incbin "data_08132B30/gUnk_0813ABD0.bin"

gUnk_0813ABE4:: @ 0813ABE4
	.incbin "data_08132B30/gUnk_0813ABE4.bin"

gUnk_0813ABF8:: @ 0813ABF8
.ifdef JP
    @ TODO only small differences
	.incbin "data_08132B30/gUnk_0813ABF8_JP.bin"
.else
.ifdef EU
	.incbin "data_08132B30/gUnk_0813ABF8_1_EU.bin"
.else
	.incbin "data_08132B30/gUnk_0813ABF8_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_0813AC0C:: @ 0813AC0C
	.incbin "data_08132B30/gUnk_0813AC0C.bin"

gUnk_0813AC20:: @ 0813AC20
	.incbin "data_08132B30/gUnk_0813AC20.bin"

gUnk_0813AC34:: @ 0813AC34
	.incbin "data_08132B30/gUnk_0813AC34.bin"

gUnk_0813AC48:: @ 0813AC48
	.incbin "data_08132B30/gUnk_0813AC48.bin"

gUnk_0813AC5C:: @ 0813AC5C
	.incbin "data_08132B30/gUnk_0813AC5C.bin"

gUnk_0813AC70:: @ 0813AC70
	.incbin "data_08132B30/gUnk_0813AC70.bin"

gUnk_0813AC84:: @ 0813AC84
	.incbin "data_08132B30/gUnk_0813AC84.bin"

gUnk_0813AC98:: @ 0813AC98
	.incbin "data_08132B30/gUnk_0813AC98.bin"

gUnk_0813ACAC:: @ 0813ACAC
	.incbin "data_08132B30/gUnk_0813ACAC.bin"

gUnk_0813ACC0:: @ 0813ACC0
	.incbin "data_08132B30/gUnk_0813ACC0.bin"

gUnk_0813ACD4:: @ 0813ACD4
	.incbin "data_08132B30/gUnk_0813ACD4.bin"

gUnk_0813ACE8:: @ 0813ACE8
	.incbin "data_08132B30/gUnk_0813ACE8.bin"

gUnk_0813ACFC:: @ 0813ACFC
	.incbin "data_08132B30/gUnk_0813ACFC.bin"

gUnk_0813AD10:: @ 0813AD10
	.incbin "data_08132B30/gUnk_0813AD10.bin"

gUnk_0813AD24:: @ 0813AD24
	.incbin "data_08132B30/gUnk_0813AD24.bin"

gUnk_0813AD38:: @ 0813AD38
	.incbin "data_08132B30/gUnk_0813AD38.bin"

gUnk_0813AD4C:: @ 0813AD4C
	.incbin "data_08132B30/gUnk_0813AD4C.bin"

gUnk_0813AD60:: @ 0813AD60
	.incbin "data_08132B30/gUnk_0813AD60.bin"

gUnk_0813AD74:: @ 0813AD74
	.incbin "data_08132B30/gUnk_0813AD74.bin"

gUnk_0813AD88:: @ 0813AD88
.ifdef EU
    @ TODO only small differences
	.incbin "data_08132B30/gUnk_0813AD88_EU.bin"
.else
	.incbin "data_08132B30/gUnk_0813AD88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0813ADEC:: @ 0813ADEC
	.incbin "data_08132B30/gUnk_0813ADEC.bin"

