	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_08122B4C:: @ 08122B4C
	.incbin "baserom.gba", 0x122B4C, 0x0000001

gUnk_08122B4D:: @ 08122B4D
	.incbin "baserom.gba", 0x122B4D, 0x0000008

gUnk_08122B55:: @ 08122B55
	.incbin "baserom.gba", 0x122B55, 0x000000F

gUnk_08122B64:: @ 08122B64
	.4byte gUnk_08122B4C
	.4byte gUnk_08122B55
	.4byte 00000000

gUnk_08122B70:: @ 08122B70
	.incbin "baserom.gba", 0x122B70, 0x0000005

gUnk_08122B75:: @ 08122B75
	.incbin "baserom.gba", 0x122B75, 0x0000005

gUnk_08122B7A:: @ 08122B7A
	.incbin "baserom.gba", 0x122B7A, 0x0000005

gUnk_08122B7F:: @ 08122B7F
	.incbin "baserom.gba", 0x122B7F, 0x0000005

gUnk_08122B84:: @ 08122B84
	.incbin "baserom.gba", 0x122B84, 0x0000005

gUnk_08122B89:: @ 08122B89
	.incbin "baserom.gba", 0x122B89, 0x0000005

gUnk_08122B8E:: @ 08122B8E
	.incbin "baserom.gba", 0x122B8E, 0x0000005

gUnk_08122B93:: @ 08122B93
	.incbin "baserom.gba", 0x122B93, 0x0000005

gUnk_08122B98:: @ 08122B98
	.incbin "baserom.gba", 0x122B98, 0x0000019

gUnk_08122BB1:: @ 08122BB1
	.incbin "baserom.gba", 0x122BB1, 0x0000017

gUnk_08122BC8:: @ 08122BC8
	.4byte gUnk_08122B98
	.4byte gUnk_08122BB1
	.4byte gUnk_08122B70
	.4byte gUnk_08122B75
	.4byte gUnk_08122B7A
	.4byte gUnk_08122B7F
	.4byte gUnk_08122B84
	.4byte gUnk_08122B89
	.4byte gUnk_08122B8E
	.4byte gUnk_08122B93
	.4byte 00000000

gUnk_08122BF4:: @ 08122BF4
	.incbin "baserom.gba", 0x122BF4, 0x0000009

gUnk_08122BFD:: @ 08122BFD
	.incbin "baserom.gba", 0x122BFD, 0x0000009

gUnk_08122C06:: @ 08122C06
	.incbin "baserom.gba", 0x122C06, 0x0000005

gUnk_08122C0B:: @ 08122C0B
	.incbin "baserom.gba", 0x122C0B, 0x0000069

gUnk_08122C74:: @ 08122C74
	.incbin "baserom.gba", 0x122C74, 0x0000015

gUnk_08122C89:: @ 08122C89
	.incbin "baserom.gba", 0x122C89, 0x0000007

gUnk_08122C90:: @ 08122C90
	.4byte gUnk_08122BF4
	.4byte gUnk_08122C0B
	.4byte gUnk_08122BFD
	.4byte gUnk_08122C06
	.4byte gUnk_08122C74
	.4byte gUnk_08122C89
	.4byte 00000000

gUnk_08122CAC:: @ 08122CAC
	.incbin "baserom.gba", 0x122CAC, 0x0000009

gUnk_08122CB5:: @ 08122CB5
	.incbin "baserom.gba", 0x122CB5, 0x0000007

gUnk_08122CBC:: @ 08122CBC
	.4byte gUnk_08122CAC
	.4byte gUnk_08122CB5
	.4byte 00000000

gUnk_08122CC8:: @ 08122CC8
	.incbin "baserom.gba", 0x122CC8, 0x0000009

gUnk_08122CD1:: @ 08122CD1
	.incbin "baserom.gba", 0x122CD1, 0x0000005

gUnk_08122CD6:: @ 08122CD6
	.incbin "baserom.gba", 0x122CD6, 0x0000005

gUnk_08122CDB:: @ 08122CDB
	.incbin "baserom.gba", 0x122CDB, 0x0000009

gUnk_08122CE4:: @ 08122CE4
	.4byte gUnk_08122CC8
	.4byte gUnk_08122CD1
	.4byte gUnk_08122CD6
	.4byte gUnk_08122CDB
	.4byte 00000000

gUnk_08122CF8:: @ 08122CF8
	.incbin "baserom.gba", 0x122CF8, 0x0000005

gUnk_08122CFD:: @ 08122CFD
	.incbin "baserom.gba", 0x122CFD, 0x0000007

gUnk_08122D04:: @ 08122D04
	.4byte gUnk_08122CF8
	.4byte gUnk_08122CFD
	.4byte 00000000

gUnk_08122D10:: @ 08122D10
	.incbin "baserom.gba", 0x122D10, 0x0000009

gUnk_08122D19:: @ 08122D19
	.incbin "baserom.gba", 0x122D19, 0x0000009

gUnk_08122D22:: @ 08122D22
	.incbin "baserom.gba", 0x122D22, 0x0000009

gUnk_08122D2B:: @ 08122D2B
	.incbin "baserom.gba", 0x122D2B, 0x0000004

gUnk_08122D2F:: @ 08122D2F
	.incbin "baserom.gba", 0x122D2F, 0x0000005

gUnk_08122D34:: @ 08122D34
	.incbin "baserom.gba", 0x122D34, 0x0000021

gUnk_08122D55:: @ 08122D55
	.incbin "baserom.gba", 0x122D55, 0x0000021

gUnk_08122D76:: @ 08122D76
	.incbin "baserom.gba", 0x122D76, 0x0000021

gUnk_08122D97:: @ 08122D97
	.incbin "baserom.gba", 0x122D97, 0x0000021

gUnk_08122DB8:: @ 08122DB8
	.incbin "baserom.gba", 0x122DB8, 0x000000D

gUnk_08122DC5:: @ 08122DC5
	.incbin "baserom.gba", 0x122DC5, 0x000000D

gUnk_08122DD2:: @ 08122DD2
	.incbin "baserom.gba", 0x122DD2, 0x000000D

gUnk_08122DDF:: @ 08122DDF
	.incbin "baserom.gba", 0x122DDF, 0x000000D

gUnk_08122DEC:: @ 08122DEC
	.incbin "baserom.gba", 0x122DEC, 0x0000019

gUnk_08122E05:: @ 08122E05
	.incbin "baserom.gba", 0x122E05, 0x0000019

gUnk_08122E1E:: @ 08122E1E
	.incbin "baserom.gba", 0x122E1E, 0x0000019

gUnk_08122E37:: @ 08122E37
	.incbin "baserom.gba", 0x122E37, 0x0000019

gUnk_08122E50:: @ 08122E50
	.incbin "baserom.gba", 0x122E50, 0x0000015

gUnk_08122E65:: @ 08122E65
	.incbin "baserom.gba", 0x122E65, 0x0000015

gUnk_08122E7A:: @ 08122E7A
	.incbin "baserom.gba", 0x122E7A, 0x0000015

gUnk_08122E8F:: @ 08122E8F
	.incbin "baserom.gba", 0x122E8F, 0x0000015

gUnk_08122EA4:: @ 08122EA4
	.incbin "baserom.gba", 0x122EA4, 0x0000009

gUnk_08122EAD:: @ 08122EAD
	.incbin "baserom.gba", 0x122EAD, 0x0000023

gUnk_08122ED0:: @ 08122ED0
	.4byte gUnk_08122D10
	.4byte gUnk_08122D19
	.4byte gUnk_08122D22
	.4byte gUnk_08122D2B
	.4byte gUnk_08122D34
	.4byte gUnk_08122D55
	.4byte gUnk_08122D76
	.4byte gUnk_08122D97
	.4byte gUnk_08122DB8
	.4byte gUnk_08122DC5
	.4byte gUnk_08122DD2
	.4byte gUnk_08122DDF
	.4byte gUnk_08122DEC
	.4byte gUnk_08122E05
	.4byte gUnk_08122E1E
	.4byte gUnk_08122E37
	.4byte gUnk_08122E50
	.4byte gUnk_08122E65
	.4byte gUnk_08122E7A
	.4byte gUnk_08122E8F
	.4byte gUnk_08122EA4
	.4byte gUnk_08122EAD
	.4byte 00000000

gUnk_08122F2C:: @ 08122F2C
	.incbin "baserom.gba", 0x122F2C, 0x0000005

gUnk_08122F31:: @ 08122F31
	.incbin "baserom.gba", 0x122F31, 0x0000021

gUnk_08122F52:: @ 08122F52
	.incbin "baserom.gba", 0x122F52, 0x0000005

gUnk_08122F57:: @ 08122F57
	.incbin "baserom.gba", 0x122F57, 0x0000021

gUnk_08122F78:: @ 08122F78
	.incbin "baserom.gba", 0x122F78, 0x0000005

gUnk_08122F7D:: @ 08122F7D
	.incbin "baserom.gba", 0x122F7D, 0x0000021

gUnk_08122F9E:: @ 08122F9E
	.incbin "baserom.gba", 0x122F9E, 0x0000005

gUnk_08122FA3:: @ 08122FA3
	.incbin "baserom.gba", 0x122FA3, 0x0000021

gUnk_08122FC4:: @ 08122FC4
	.incbin "baserom.gba", 0x122FC4, 0x0000005

gUnk_08122FC9:: @ 08122FC9
	.incbin "baserom.gba", 0x122FC9, 0x0000005

gUnk_08122FCE:: @ 08122FCE
	.incbin "baserom.gba", 0x122FCE, 0x0000005

gUnk_08122FD3:: @ 08122FD3
	.incbin "baserom.gba", 0x122FD3, 0x0000059

gUnk_0812302C:: @ 0812302C
	.incbin "baserom.gba", 0x12302C, 0x000002D

gUnk_08123059:: @ 08123059
	.incbin "baserom.gba", 0x123059, 0x0000033

gUnk_0812308C:: @ 0812308C
	.4byte gUnk_08122F2C
	.4byte gUnk_08122F31
	.4byte gUnk_08122F52
	.4byte gUnk_08122F57
	.4byte gUnk_08122F78
	.4byte gUnk_08122F7D
	.4byte gUnk_08122F9E
	.4byte gUnk_08122FA3
	.4byte gUnk_08122FC4
	.4byte gUnk_08122FC9
	.4byte gUnk_08122FCE
	.4byte gUnk_08122FD3
	.4byte gUnk_0812302C
	.4byte gUnk_08123059
	.4byte 00000000

gUnk_081230C8:: @ 081230C8
	.incbin "baserom.gba", 0x1230C8, 0x0000054

gUnk_0812311C:: @ 0812311C
	.4byte gUnk_081230C8
	.incbin "baserom.gba", 0x123120, 0x0000004

gUnk_08123124:: @ 08123124
	.incbin "baserom.gba", 0x123124, 0x0000005

gUnk_08123129:: @ 08123129
	.incbin "baserom.gba", 0x123129, 0x0000005

gUnk_0812312E:: @ 0812312E
	.incbin "baserom.gba", 0x12312E, 0x0000012

gUnk_08123140:: @ 08123140
	.4byte gUnk_08123124
	.4byte gUnk_0812312E
	.4byte gUnk_08123129
	.4byte 00000000

gUnk_08123150:: @ 08123150
	.incbin "baserom.gba", 0x123150, 0x0000010

gUnk_08123160:: @ 08123160
	.4byte gUnk_08123150
	.4byte 00000000
