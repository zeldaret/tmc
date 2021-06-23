	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08125104:: @ 08125104
	.4byte 00000000
	.4byte gUnk_080FD150
	.4byte gUnk_080FD158
	.4byte gUnk_080FD170
	.4byte gUnk_080FD180

gUnk_08125118:: @ 08125118
	.incbin "baserom.gba", 0x125118, 0x00002C0

gUnk_081253D8:: @ 081253D8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x124B20, 0x0000020
.else
	.incbin "baserom.gba", 0x1253D8, 0x0000020
.endif

gUnk_081253F8:: @ 081253F8
	.incbin "baserom.gba", 0x1253F8, 0x0000028

gUnk_08125420:: @ 08125420
	.incbin "baserom.gba", 0x125420, 0x0000018

gUnk_08125438:: @ 08125438
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x124B80, 0x0000060
.else
	.incbin "baserom.gba", 0x125438, 0x0000060
.endif

gUnk_08125498:: @ 08125498
	.incbin "baserom.gba", 0x125498, 0x0000050

gUnk_081254E8:: @ 081254E8
	.incbin "baserom.gba", 0x1254E8, 0x0000058

gUnk_08125540:: @ 08125540
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x124C88, 0x0000118
.else
	.incbin "baserom.gba", 0x125540, 0x0000118
.endif

gUnk_08125658:: @ 08125658
	.incbin "baserom.gba", 0x125658, 0x0000010

gUnk_08125668:: @ 08125668
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x124DB0, 0x0000030
.else
	.incbin "baserom.gba", 0x125668, 0x0000030
.endif

gUnk_08125698:: @ 08125698
	.incbin "baserom.gba", 0x125698, 0x0000010

gUnk_081256A8:: @ 081256A8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x124DF0, 0x0000028
.else
	.incbin "baserom.gba", 0x1256A8, 0x0000028
.endif

gUnk_081256D0:: @ 081256D0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x124E18, 0x0000230
.else
	.incbin "baserom.gba", 0x1256D0, 0x0000230
.endif

gUnk_08125900:: @ 08125900
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125048, 0x0000018
.else
	.incbin "baserom.gba", 0x125900, 0x0000018
.endif

gUnk_08125918:: @ 08125918
	.incbin "baserom.gba", 0x125918, 0x0000010

gUnk_08125928:: @ 08125928
	.incbin "baserom.gba", 0x125928, 0x0000018

gUnk_08125940:: @ 08125940
	.incbin "baserom.gba", 0x125940, 0x0000020

gUnk_08125960:: @ 08125960
	.incbin "baserom.gba", 0x125960, 0x0000048

gUnk_081259A8:: @ 081259A8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1250F0, 0x000006D
.else
	.incbin "baserom.gba", 0x1259A8, 0x000006D
.endif

gUnk_08125A15:: @ 08125A15
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x12515D, 0x00000EB
.else
	.incbin "baserom.gba", 0x125A15, 0x00000EB
.endif

gUnk_08125B00:: @ 08125B00
	.incbin "baserom.gba", 0x125B00, 0x0000020

gUnk_08125B20:: @ 08125B20
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125268, 0x0000030
.else
	.incbin "baserom.gba", 0x125B20, 0x0000030
.endif

gUnk_08125B50:: @ 08125B50
	.incbin "baserom.gba", 0x125B50, 0x0000020

gUnk_08125B70:: @ 08125B70
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1252B8, 0x00000A8
.else
	.incbin "baserom.gba", 0x125B70, 0x00000A8
.endif

gUnk_08125C18:: @ 08125C18
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125360, 0x0000030
.else
	.incbin "baserom.gba", 0x125C18, 0x0000030
.endif

gUnk_08125C48:: @ 08125C48
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125390, 0x0000048
.else
	.incbin "baserom.gba", 0x125C48, 0x0000048
.endif

gUnk_08125C90:: @ 08125C90
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1253D8, 0x0000048
.else
	.incbin "baserom.gba", 0x125C90, 0x0000048
.endif

gUnk_08125CD8:: @ 08125CD8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125420, 0x0000090
.else
	.incbin "baserom.gba", 0x125CD8, 0x0000090
.endif

gUnk_08125D68:: @ 08125D68
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1254B0, 0x0000048
.else
	.incbin "baserom.gba", 0x125D68, 0x0000048
.endif

gUnk_08125DB0:: @ 08125DB0
	.incbin "baserom.gba", 0x125DB0, 0x0000108

gUnk_08125EB8:: @ 08125EB8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125600, 0x0000018
.else
	.incbin "baserom.gba", 0x125EB8, 0x0000018
.endif

gUnk_08125ED0:: @ 08125ED0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125618, 0x0000020
.else
	.incbin "baserom.gba", 0x125ED0, 0x0000020
.endif

gUnk_08125EF0:: @ 08125EF0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125638, 0x0000020
.else
	.incbin "baserom.gba", 0x125EF0, 0x0000020
.endif

gUnk_08125F10:: @ 08125F10
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125658, 0x0000010
.else
	.incbin "baserom.gba", 0x125F10, 0x0000010
.endif

gUnk_08125F20:: @ 08125F20
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125668, 0x0000018
.else
	.incbin "baserom.gba", 0x125F20, 0x0000018
.endif

gUnk_08125F38:: @ 08125F38
	.incbin "baserom.gba", 0x125F38, 0x0000010

gUnk_08125F48:: @ 08125F48
	.incbin "baserom.gba", 0x125F48, 0x0000030

gUnk_08125F78:: @ 08125F78
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1256C0, 0x0000018
.else
	.incbin "baserom.gba", 0x125F78, 0x0000018
.endif

gUnk_08125F90:: @ 08125F90
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1256D8, 0x0000010
.else
	.incbin "baserom.gba", 0x125F90, 0x0000010
.endif

gUnk_08125FA0:: @ 08125FA0
	.incbin "baserom.gba", 0x125FA0, 0x0000020

gUnk_08125FC0:: @ 08125FC0
	.incbin "baserom.gba", 0x125FC0, 0x0000028

gUnk_08125FE8:: @ 08125FE8
	.incbin "baserom.gba", 0x125FE8, 0x0000050

gUnk_08126038:: @ 08126038
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125780, 0x0000018
.else
	.incbin "baserom.gba", 0x126038, 0x0000018
.endif

gUnk_08126050:: @ 08126050
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125798, 0x0000018
.else
	.incbin "baserom.gba", 0x126050, 0x0000018
.endif

gUnk_08126068:: @ 08126068
	.incbin "baserom.gba", 0x126068, 0x0000040

gUnk_081260A8:: @ 081260A8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1257F0, 0x0000010
.else
	.incbin "baserom.gba", 0x1260A8, 0x0000010
.endif

gUnk_081260B8:: @ 081260B8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125800, 0x0000058
.else
	.incbin "baserom.gba", 0x1260B8, 0x0000058
.endif

gUnk_08126110:: @ 08126110
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125858, 0x0000040
.else
	.incbin "baserom.gba", 0x126110, 0x0000040
.endif

gUnk_08126150:: @ 08126150
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125898, 0x0000030
.else
	.incbin "baserom.gba", 0x126150, 0x0000030
.endif

gUnk_08126180:: @ 08126180
	.incbin "baserom.gba", 0x126180, 0x0000030

gUnk_081261B0:: @ 081261B0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1258F8, 0x0000018
.else
	.incbin "baserom.gba", 0x1261B0, 0x0000018
.endif

gUnk_081261C8:: @ 081261C8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125910, 0x0000020
.else
	.incbin "baserom.gba", 0x1261C8, 0x0000020
.endif

gUnk_081261E8:: @ 081261E8
	.incbin "baserom.gba", 0x1261E8, 0x0000010

gUnk_081261F8:: @ 081261F8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125940, 0x000001B
.else
	.incbin "baserom.gba", 0x1261F8, 0x000001B
.endif

gUnk_08126213:: @ 08126213
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x12595B, 0x0000065
.else
	.incbin "baserom.gba", 0x126213, 0x0000065
.endif

gUnk_08126278:: @ 08126278
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1259C0, 0x0000020
.else
	.incbin "baserom.gba", 0x126278, 0x0000020
.endif

gUnk_08126298:: @ 08126298
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1259E0, 0x0000020
.else
	.incbin "baserom.gba", 0x126298, 0x0000020
.endif

gUnk_081262B8:: @ 081262B8
	.incbin "baserom.gba", 0x1262B8, 0x0000018

gUnk_081262D0:: @ 081262D0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125A18, 0x0000018
.else
	.incbin "baserom.gba", 0x1262D0, 0x0000018
.endif

gUnk_081262E8:: @ 081262E8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125A30, 0x0000048
.else
	.incbin "baserom.gba", 0x1262E8, 0x0000048
.endif

gUnk_08126330:: @ 08126330
	.incbin "baserom.gba", 0x126330, 0x0000020

gUnk_08126350:: @ 08126350
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125A98, 0x0000010
.else
	.incbin "baserom.gba", 0x126350, 0x0000010
.endif

gUnk_08126360:: @ 08126360
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125AA8, 0x0000020
.else
	.incbin "baserom.gba", 0x126360, 0x0000020
.endif

gUnk_08126380:: @ 08126380
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125AC8, 0x0000028
.else
	.incbin "baserom.gba", 0x126380, 0x0000028
.endif

gUnk_081263A8:: @ 081263A8
	.incbin "baserom.gba", 0x1263A8, 0x0000010

gUnk_081263B8:: @ 081263B8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125B00, 0x0000010
.else
	.incbin "baserom.gba", 0x1263B8, 0x0000010
.endif

gUnk_081263C8:: @ 081263C8
	.incbin "baserom.gba", 0x1263C8, 0x0000010

gUnk_081263D8:: @ 081263D8
.ifndef EU
	.incbin "baserom.gba", 0x1263D8, 0x0000010
.endif

gUnk_081263E8:: @ 081263E8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125B20, 0x0000138
.else
	.incbin "baserom.gba", 0x1263E8, 0x0000138
.endif

gUnk_08126520:: @ 08126520
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125C58, 0x000009C
.else
	.incbin "baserom.gba", 0x126520, 0x000009C
.endif

gUnk_081265BC:: @ 081265BC
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125CF4, 0x0000073
.else
	.incbin "baserom.gba", 0x1265BC, 0x0000073
.endif

gUnk_0812662F:: @ 0812662F
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125D67, 0x0000169
.else
	.incbin "baserom.gba", 0x12662F, 0x0000169
.endif

gUnk_08126798:: @ 08126798
	.incbin "baserom.gba", 0x126798, 0x0000004
	.4byte gUnk_081263E8
	.incbin "baserom.gba", 0x1267A0, 0x000000C
	.4byte gUnk_081263E8
	.incbin "baserom.gba", 0x1267B0, 0x0000024
	.4byte gUnk_081253D8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125F10, 0x000001C
.else
	.incbin "baserom.gba", 0x1267D8, 0x000001C
.endif
	.4byte gUnk_081263E8
	.incbin "baserom.gba", 0x1267F8, 0x000001C
	.4byte gUnk_08125118
	.incbin "baserom.gba", 0x126818, 0x000000C
	.4byte gUnk_08125B50
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125F60, 0x000003C
.else
	.incbin "baserom.gba", 0x126828, 0x000003C
.endif
	.4byte gUnk_081262E8
	.incbin "baserom.gba", 0x126868, 0x000000C
	.4byte gUnk_08125DB0
	.incbin "baserom.gba", 0x126878, 0x0000004
	.4byte gUnk_08125438
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x125FB8, 0x000002C
.else
	.incbin "baserom.gba", 0x126880, 0x000002C
.endif
	.4byte gUnk_081261C8
	.incbin "baserom.gba", 0x1268B0, 0x000000C
	.4byte gUnk_08125420
	.incbin "baserom.gba", 0x1268C0, 0x0000004
	.4byte gUnk_081253F8
	.incbin "baserom.gba", 0x1268C8, 0x0000004
	.4byte gUnk_08125668
	.incbin "baserom.gba", 0x1268D0, 0x000000C
	.4byte gUnk_081261F8
	.incbin "baserom.gba", 0x1268E0, 0x000001C
	.4byte gUnk_08125498
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126038, 0x0000034
.else
	.incbin "baserom.gba", 0x126900, 0x0000034
.endif
	.4byte gUnk_08126180
	.incbin "baserom.gba", 0x126938, 0x000000C
	.4byte gUnk_08125F78
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126080, 0x000002C
.else
	.incbin "baserom.gba", 0x126948, 0x000002C
.endif
	.4byte gUnk_08125C48
	.incbin "baserom.gba", 0x126978, 0x0000014
	.4byte gUnk_08125D68
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1260C8, 0x000000C
.else
	.incbin "baserom.gba", 0x126990, 0x000000C
.endif
	.4byte gUnk_081263E8
	.incbin "baserom.gba", 0x1269A0, 0x0000024
	.4byte gUnk_081263A8
	.incbin "baserom.gba", 0x1269C8, 0x0000004
	.4byte gUnk_08125F20
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126108, 0x0000014
.else
	.incbin "baserom.gba", 0x1269D0, 0x0000014
.endif
	.4byte gUnk_081254E8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126120, 0x0000014
.else
	.incbin "baserom.gba", 0x1269E8, 0x0000014
.endif
	.4byte gUnk_081256A8
	.incbin "baserom.gba", 0x126A00, 0x0000004
	.4byte gUnk_081256D0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126140, 0x000000C
.else
	.incbin "baserom.gba", 0x126A08, 0x000000C
.endif
	.4byte gUnk_08125540
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126150, 0x0000024
.else
	.incbin "baserom.gba", 0x126A18, 0x0000024
.endif
	.4byte gUnk_081261E8
	.incbin "baserom.gba", 0x126A40, 0x000000C
	.4byte gUnk_08125658
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126188, 0x0000014
.else
	.incbin "baserom.gba", 0x126A50, 0x0000014
.endif
	.4byte gUnk_08125698
	.incbin "baserom.gba", 0x126A68, 0x0000004
	.4byte gUnk_08125900
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1261A8, 0x000000C
.else
	.incbin "baserom.gba", 0x126A70, 0x000000C
.endif
	.4byte gUnk_08125F90
	.incbin "baserom.gba", 0x126A80, 0x0000004
	.4byte gUnk_08125B20
	.incbin "baserom.gba", 0x126A88, 0x000000C
	.4byte gUnk_08126350
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1261D0, 0x000000C
.else
	.incbin "baserom.gba", 0x126A98, 0x000000C
.endif
	.4byte gUnk_08125918
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1261E0, 0x0000014
.else
	.incbin "baserom.gba", 0x126AA8, 0x0000014
.endif
	.4byte gUnk_08125928
	.incbin "baserom.gba", 0x126AC0, 0x0000004
	.4byte gUnk_081261B0
	.incbin "baserom.gba", 0x126AC8, 0x000000C
	.4byte gUnk_08125940
	.incbin "baserom.gba", 0x126AD8, 0x0000004
	.4byte gUnk_08125960
	.incbin "baserom.gba", 0x126AE0, 0x000000C
	.4byte gUnk_081259A8
	.incbin "baserom.gba", 0x126AF0, 0x0000004
	.4byte gUnk_08125B00
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126230, 0x000000C
.else
	.incbin "baserom.gba", 0x126AF8, 0x000000C
.endif
	.4byte gUnk_08125C18
	.incbin "baserom.gba", 0x126B08, 0x000000C
	.4byte gUnk_08125B70
	.incbin "baserom.gba", 0x126B18, 0x000000C
	.4byte gUnk_08125EB8
	.incbin "baserom.gba", 0x126B28, 0x0000004
	.4byte gUnk_08125ED0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126268, 0x0000014
.else
	.incbin "baserom.gba", 0x126B30, 0x0000014
.endif
	.4byte gUnk_08125C90
	.incbin "baserom.gba", 0x126B48, 0x0000004
	.4byte gUnk_08125CD8
	.incbin "baserom.gba", 0x126B50, 0x000000C
	.4byte gUnk_08125EF0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126298, 0x000001C
.else
	.incbin "baserom.gba", 0x126B60, 0x000001C
.endif
	.4byte gUnk_08125F10
.ifdef EU
	.incbin "baserom_eu.gba", 0x1262B8, 0x0000004
.else
	.incbin "baserom.gba", 0x126B80, 0x0000004
.endif
	.4byte gUnk_08125F38
	.incbin "baserom.gba", 0x126B88, 0x000000C
	.4byte gUnk_08125F48
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1262D0, 0x0000024
.else
	.incbin "baserom.gba", 0x126B98, 0x0000024
.endif
	.4byte gUnk_08125FA0 @ 0x81262F4
	.incbin "baserom.gba", 0x126BC0, 0x0000004
	.4byte gUnk_08125FC0
	.incbin "baserom.gba", 0x126BC8, 0x000000C
	.4byte gUnk_08125FE8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126310, 0x0000014
.else
	.incbin "baserom.gba", 0x126BD8, 0x0000014
.endif
	.4byte gUnk_08126038
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126328, 0x000000C
.else
	.incbin "baserom.gba", 0x126BF0, 0x000000C
.endif
	.4byte gUnk_08126050
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126338, 0x0000024
.else
	.incbin "baserom.gba", 0x126C00, 0x0000024
.endif
	.4byte gUnk_08126068
	.incbin "baserom.gba", 0x126C28, 0x0000004
	.4byte gUnk_081260A8
	.incbin "baserom.gba", 0x126C30, 0x0000014
	.4byte gUnk_081260B8
	.incbin "baserom.gba", 0x126C48, 0x0000004
	.4byte gUnk_08126110
	.incbin "baserom.gba", 0x126C50, 0x0000004
	.4byte gUnk_08126150
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126390, 0x0000044
.else
	.incbin "baserom.gba", 0x126C58, 0x0000044
.endif
	.4byte gUnk_08126278
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1263D8, 0x000001C
.else
	.incbin "baserom.gba", 0x126CA0, 0x000001C
.endif
	.4byte gUnk_08126298
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1263F8, 0x000001C
.else
	.incbin "baserom.gba", 0x126CC0, 0x000001C
.endif
	.4byte gUnk_081263E8
.ifdef EU
	.incbin "baserom_eu.gba", 0x126418, 0x0000004
.else
	.incbin "baserom.gba", 0x126CE0, 0x0000004
.endif
	.4byte gUnk_081262B8
	.incbin "baserom.gba", 0x126CE8, 0x0000004
	.4byte gUnk_081262D0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126428, 0x000000C
.else
	.incbin "baserom.gba", 0x126CF0, 0x000000C
.endif
	.4byte gUnk_081263E8
	.incbin "baserom.gba", 0x126D00, 0x0000004
	.4byte gUnk_08126330
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x126440, 0x000002C
.else
	.incbin "baserom.gba", 0x126D08, 0x000002C
.endif
	.4byte gUnk_081263C8
	.incbin "baserom.gba", 0x126D38, 0x0000004
	.4byte gUnk_08126360
.ifdef EU
	.incbin "baserom_eu.gba", 0x126478, 0x0000010
	.incbin "baserom_eu.gba", 0x126488, 0x0000034
.else
	.incbin "baserom.gba", 0x126D40, 0x000000C
	.4byte gUnk_081263D8
	.incbin "baserom.gba", 0x126D50, 0x0000034
.endif
	.4byte gUnk_08126380
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1264C0, 0x0000014
.else
	.incbin "baserom.gba", 0x126D88, 0x0000014
.endif
	.4byte gUnk_081263B8
	.incbin "baserom.gba", 0x126DA0, 0x0000008

gUnk_08126DA8:: @ 08126DA8
	.incbin "baserom.gba", 0x126DA8, 0x00000C0

gUnk_08126E68:: @ 08126E68
	.incbin "baserom.gba", 0x126E68, 0x0000030

gUnk_08126E98:: @ 08126E98
	.incbin "baserom.gba", 0x126E98, 0x0000030

gUnk_08126EC8:: @ 08126EC8
	.incbin "baserom.gba", 0x126EC8, 0x0000010

gUnk_08126ED8:: @ 08126ED8
	.4byte gUnk_08126E68
	.4byte gUnk_08126E98
	.4byte gUnk_08126EC8

gUnk_08126EE4:: @ 08126EE4
	.incbin "baserom.gba", 0x126EE4, 0x0000008

gUnk_08126EEC:: @ 08126EEC
	.incbin "baserom.gba", 0x126EEC, 0x0000008

gUnk_08126EF4:: @ 08126EF4
	.incbin "baserom.gba", 0x126EF4, 0x0000004

gUnk_08126EF8:: @ 08126EF8
	.incbin "baserom.gba", 0x126EF8, 0x0000005

gUnk_08126EFD:: @ 08126EFD
	.incbin "baserom.gba", 0x126EFD, 0x0000005

gUnk_08126F02:: @ 08126F02
	.incbin "baserom.gba", 0x126F02, 0x0000011

gUnk_08126F13:: @ 08126F13
	.incbin "baserom.gba", 0x126F13, 0x0000015

gUnk_08126F28:: @ 08126F28
	.incbin "baserom.gba", 0x126F28, 0x0000015

gUnk_08126F3D:: @ 08126F3D
	.incbin "baserom.gba", 0x126F3D, 0x0000011

gUnk_08126F4E:: @ 08126F4E
	.incbin "baserom.gba", 0x126F4E, 0x0000011

gUnk_08126F5F:: @ 08126F5F
	.incbin "baserom.gba", 0x126F5F, 0x0000011

gUnk_08126F70:: @ 08126F70
	.incbin "baserom.gba", 0x126F70, 0x0000011

gUnk_08126F81:: @ 08126F81
	.incbin "baserom.gba", 0x126F81, 0x0000009

gUnk_08126F8A:: @ 08126F8A
	.incbin "baserom.gba", 0x126F8A, 0x000000C

gUnk_08126F96:: @ 08126F96
	.incbin "baserom.gba", 0x126F96, 0x000000D

gUnk_08126FA3:: @ 08126FA3
	.incbin "baserom.gba", 0x126FA3, 0x0000010

gUnk_08126FB3:: @ 08126FB3
	.incbin "baserom.gba", 0x126FB3, 0x0000010

gUnk_08126FC3:: @ 08126FC3
	.incbin "baserom.gba", 0x126FC3, 0x0000021

gUnk_08126FE4:: @ 08126FE4
	.incbin "baserom.gba", 0x126FE4, 0x0000014

gUnk_08126FF8:: @ 08126FF8
	.incbin "baserom.gba", 0x126FF8, 0x0000021

gUnk_08127019:: @ 08127019
	.incbin "baserom.gba", 0x127019, 0x0000018

gUnk_08127031:: @ 08127031
	.incbin "baserom.gba", 0x127031, 0x0000015

gUnk_08127046:: @ 08127046
	.incbin "baserom.gba", 0x127046, 0x0000015

gUnk_0812705B:: @ 0812705B
	.incbin "baserom.gba", 0x12705B, 0x000005C

gUnk_081270B7:: @ 081270B7
	.incbin "baserom.gba", 0x1270B7, 0x0000029

gUnk_081270E0:: @ 081270E0
	.incbin "baserom.gba", 0x1270E0, 0x0000011

gUnk_081270F1:: @ 081270F1
	.incbin "baserom.gba", 0x1270F1, 0x0000005

gUnk_081270F6:: @ 081270F6
	.incbin "baserom.gba", 0x1270F6, 0x0000011

gUnk_08127107:: @ 08127107
	.incbin "baserom.gba", 0x127107, 0x0000011

gUnk_08127118:: @ 08127118
	.incbin "baserom.gba", 0x127118, 0x0000011

gUnk_08127129:: @ 08127129
	.incbin "baserom.gba", 0x127129, 0x0000011

gUnk_0812713A:: @ 0812713A
	.incbin "baserom.gba", 0x12713A, 0x0000009

gUnk_08127143:: @ 08127143
	.incbin "baserom.gba", 0x127143, 0x0000009

gUnk_0812714C:: @ 0812714C
	.4byte gUnk_08126EF4
	.4byte gUnk_08126EF8
	.4byte gUnk_08126EFD
	.4byte gUnk_08126F02
	.4byte gUnk_08126F3D
	.4byte gUnk_08126F81
	.4byte gUnk_08126F70
	.4byte gUnk_08126F13
	.4byte gUnk_08126F28
	.4byte gUnk_08126F8A
	.4byte gUnk_08126F96
	.4byte gUnk_08126FC3
	.4byte gUnk_08126FF8
	.4byte gUnk_08126FA3
	.4byte gUnk_08126FE4
	.4byte gUnk_08127019
	.4byte gUnk_08126FB3
	.4byte gUnk_08127031
	.4byte gUnk_08127046
	.4byte gUnk_0812705B
	.4byte gUnk_081270B7
	.4byte gUnk_081270E0
	.4byte gUnk_08126F4E
	.4byte gUnk_08126F5F
	.4byte gUnk_081270F1
	.4byte gUnk_081270F6
	.4byte gUnk_08127107
	.4byte gUnk_08127118
	.4byte gUnk_08127129
	.4byte gUnk_0812713A
	.4byte gUnk_08127143
	.4byte 00000000

gUnk_081271CC:: @ 081271CC
	.incbin "baserom.gba", 0x1271CC, 0x0000008
