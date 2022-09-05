	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108E6C:: @ 08108E6C
	.incbin "data_08108E6C/gUnk_08108E6C.bin"

gUnk_08108E78:: @ 08108E78
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108E78_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108E78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108E90:: @ 08108E90
	.4byte gUnk_08108E6C
	.4byte gUnk_08108E78

gUnk_08108E98:: @ 08108E98
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108E98_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108E98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108EA4:: @ 08108EA4
	.incbin "data_08108E6C/gUnk_08108EA4.bin"

gUnk_08108EBC:: @ 08108EBC
	.4byte gUnk_08108E98
	.4byte gUnk_08108EA4

gUnk_08108EC4:: @ 08108EC4
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108EC4_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108EC4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108ED0:: @ 08108ED0
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108ED0_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108ED0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108EE8:: @ 08108EE8
	.4byte gUnk_08108EC4
	.4byte gUnk_08108ED0

gUnk_08108EF0:: @ 08108EF0
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108EF0_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108EF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108EFC:: @ 08108EFC
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108EFC_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108EFC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F14:: @ 08108F14
	.4byte gUnk_08108EF0
	.4byte gUnk_08108EFC

gUnk_08108F1C:: @ 08108F1C
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108F1C_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F1C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F28:: @ 08108F28
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08108F28_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F40:: @ 08108F40
	.4byte gUnk_08108F1C
	.4byte gUnk_08108F28

gUnk_08108F48:: @ 08108F48
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108F48_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108F48_2_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F48_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F54:: @ 08108F54
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108F54_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F54_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F6C:: @ 08108F6C
	.4byte gUnk_08108F48
	.4byte gUnk_08108F54

gUnk_08108F74:: @ 08108F74
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108F74_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F74_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F80:: @ 08108F80
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108F80_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108F80_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108F98:: @ 08108F98
	.4byte gUnk_08108F74
	.4byte gUnk_08108F80

gUnk_08108FA0:: @ 08108FA0
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108FA0_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108FA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108FAC:: @ 08108FAC
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108FAC_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108FAC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108FC4:: @ 08108FC4
	.4byte gUnk_08108FA0
	.4byte gUnk_08108FAC

gUnk_08108FCC:: @ 08108FCC
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108FCC_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108FCC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108FD8:: @ 08108FD8
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108FD8_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108FD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108FF0:: @ 08108FF0
	.4byte gUnk_08108FCC
	.4byte gUnk_08108FD8

gUnk_08108FF8:: @ 08108FF8
.ifdef EU
	.incbin "data_08108E6C/gUnk_08108FF8_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08108FF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109004:: @ 08109004
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109004_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109004_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109004_2_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109004_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109004_4_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109004_5_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810901C:: @ 0810901C
	.4byte gUnk_08108FF8
	.4byte gUnk_08109004

gUnk_08109024:: @ 08109024
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109024_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109024_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109030:: @ 08109030
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109030_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109030_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109030_2_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109030_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109048:: @ 08109048
	.4byte gUnk_08109024
	.4byte gUnk_08109030

gUnk_08109050:: @ 08109050
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109050_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109050_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810905C:: @ 0810905C
.ifdef EU
	.incbin "data_08108E6C/gUnk_0810905C_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_0810905C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109074:: @ 08109074
	.4byte gUnk_08109050
	.4byte gUnk_0810905C

gUnk_0810907C:: @ 0810907C
.ifdef EU
	.incbin "data_08108E6C/gUnk_0810907C_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_0810907C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109088:: @ 08109088
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109088_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109088_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081090A0:: @ 081090A0
	.4byte gUnk_0810907C
	.4byte gUnk_08109088

gUnk_081090A8:: @ 081090A8
.ifdef EU
	.incbin "data_08108E6C/gUnk_081090A8_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_081090A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081090B4:: @ 081090B4
.ifdef EU
	.incbin "data_08108E6C/gUnk_081090B4_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_081090B4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081090CC:: @ 081090CC
	.4byte gUnk_081090A8
	.4byte gUnk_081090B4

gUnk_081090D4:: @ 081090D4
.ifdef EU
	.incbin "data_08108E6C/gUnk_081090D4_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_081090D4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081090E0:: @ 081090E0
.ifdef EU
	.incbin "data_08108E6C/gUnk_081090E0_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_081090E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081090F8:: @ 081090F8
	.4byte gUnk_081090D4
	.4byte gUnk_081090E0

gUnk_08109100:: @ 08109100
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109100_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109100_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810910C:: @ 0810910C
.ifdef EU
	.incbin "data_08108E6C/gUnk_0810910C_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_0810910C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109124:: @ 08109124
	.4byte gUnk_08109100
	.4byte gUnk_0810910C

gUnk_0810912C:: @ 0810912C
.ifdef EU
	.incbin "data_08108E6C/gUnk_0810912C_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_0810912C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109138:: @ 08109138
	.4byte gUnk_0810912C
	.4byte gUnk_081090E0

gUnk_08109140:: @ 08109140
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109140_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109140_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109158:: @ 08109158
	.4byte gUnk_08109100
	.4byte gUnk_08109140

gUnk_08109160:: @ 08109160
.ifdef EU
    @ TODO only small differences
	.incbin "data_08108E6C/gUnk_08109160_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109160_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08109178:: @ 08109178
	.4byte gUnk_081090D4
	.4byte gUnk_08109160

gUnk_08109180:: @ 08109180
.ifdef EU
	.incbin "data_08108E6C/gUnk_08109180_EU.bin"
.else
	.incbin "data_08108E6C/gUnk_08109180_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810918C:: @ 0810918C
	.4byte gUnk_08109180
	.4byte gUnk_0810910C

@ scroll.c
gUnk_08109194:: @ 08109194
	.4byte gUnk_08108E90
	.4byte gUnk_08108EBC
	.4byte gUnk_08108EE8
	.4byte gUnk_08108F14
	.4byte gUnk_08108F40
	.4byte gUnk_08108F6C
	.4byte gUnk_08108F98
	.4byte gUnk_08108FC4
	.4byte gUnk_08108FF0
	.4byte gUnk_0810901C
	.4byte gUnk_08109048
	.4byte gUnk_08109074
	.4byte gUnk_081090A0
	.4byte gUnk_081090CC
	.4byte gUnk_081090F8
	.4byte gUnk_08109124
	.4byte gUnk_08109138
	.4byte gUnk_08109158
	.4byte gUnk_08109178
	.4byte gUnk_0810918C
