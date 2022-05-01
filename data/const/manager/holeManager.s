	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

HoleManager_Actions:: @ 08108668
	.4byte sub_0805B048
	.4byte sub_0805B168

gUnk_08108670:: @ 08108670
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_08108670_EU.bin"
.else
	.incbin "holeManager/gUnk_08108670_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810867C:: @ 0810867C
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_0810867C_EU.bin"
.else
	.incbin "holeManager/gUnk_0810867C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108688:: @ 08108688
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_08108688_EU.bin"
.else
	.incbin "holeManager/gUnk_08108688_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108694:: @ 08108694
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_08108694_EU.bin"
.else
	.incbin "holeManager/gUnk_08108694_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081086A0:: @ 081086A0
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_081086A0_EU.bin"
.else
	.incbin "holeManager/gUnk_081086A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "holeManager/gUnk_081086A0_2.bin"

gUnk_081086AC:: @ 081086AC
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_081086AC_EU.bin"
.else
	.incbin "holeManager/gUnk_081086AC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081086B8:: @ 081086B8
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_081086B8_EU.bin"
.else
	.incbin "holeManager/gUnk_081086B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081086C4:: @ 081086C4
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_081086C4_EU.bin"
.else
	.incbin "holeManager/gUnk_081086C4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081086D0:: @ 081086D0
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_081086D0_EU.bin"
.else
	.incbin "holeManager/gUnk_081086D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "holeManager/gUnk_081086D0_2_EU.bin"
.else
	.incbin "holeManager/gUnk_081086D0_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081086DC:: @ 081086DC
	.incbin "holeManager/gUnk_081086DC.bin"

gUnk_081086E4:: @ 081086E4
	.incbin "holeManager/gUnk_081086E4.bin"

gUnk_081086EC:: @ 081086EC
	.incbin "holeManager/gUnk_081086EC.bin"

gUnk_081086F4:: @ 081086F4
	.incbin "holeManager/gUnk_081086F4.bin"

gUnk_081086FC:: @ 081086FC
	.incbin "holeManager/gUnk_081086FC.bin"

gUnk_08108704:: @ 08108704
	.incbin "holeManager/gUnk_08108704.bin"

gUnk_0810870C:: @ 0810870C
	.incbin "holeManager/gUnk_0810870C.bin"

gUnk_08108714:: @ 08108714
	.incbin "holeManager/gUnk_08108714.bin"

gUnk_0810871C:: @ 0810871C
	.incbin "holeManager/gUnk_0810871C.bin"

gUnk_08108724:: @ 08108724
	.incbin "holeManager/gUnk_08108724.bin"

gUnk_0810872C:: @ 0810872C
	.incbin "holeManager/gUnk_0810872C.bin"

gUnk_08108734:: @ 08108734
	.incbin "holeManager/gUnk_08108734.bin"

gUnk_0810873C:: @ 0810873C
	.incbin "holeManager/gUnk_0810873C.bin"

gUnk_08108744:: @ 08108744
	.incbin "holeManager/gUnk_08108744.bin"

gUnk_0810874C:: @ 0810874C
	.incbin "holeManager/gUnk_0810874C.bin"

gUnk_08108754:: @ 08108754
	.incbin "holeManager/gUnk_08108754.bin"

gUnk_0810875C:: @ 0810875C
	.incbin "holeManager/gUnk_0810875C.bin"

gUnk_08108764:: @ 08108764
	.incbin "holeManager/gUnk_08108764.bin"
	.4byte gUnk_08108670
	.incbin "holeManager/gUnk_08108764_1.bin"
	.4byte gUnk_08108688
	.incbin "holeManager/gUnk_08108764_2.bin"
	.4byte gUnk_0810875C
	.incbin "holeManager/gUnk_08108764_3.bin"
	.4byte gUnk_08108694
	.incbin "holeManager/gUnk_08108764_4.bin"
	.4byte gUnk_081086A0
	.incbin "holeManager/gUnk_08108764_5.bin"
	.4byte gUnk_081086AC
	.incbin "holeManager/gUnk_08108764_6.bin"
	.4byte gUnk_081086DC
	.incbin "holeManager/gUnk_08108764_7.bin"
	.4byte gUnk_081086E4
	.incbin "holeManager/gUnk_08108764_8.bin"
	.4byte gUnk_081086EC
	.incbin "holeManager/gUnk_08108764_9.bin"
	.4byte gUnk_081086F4
	.incbin "holeManager/gUnk_08108764_10.bin"
	.4byte gUnk_0810867C
	.incbin "holeManager/gUnk_08108764_11.bin"
	.4byte gUnk_081086FC
	.incbin "holeManager/gUnk_08108764_12.bin"
	.4byte gUnk_08108704
	.incbin "holeManager/gUnk_08108764_13.bin"
	.4byte gUnk_0810870C
	.incbin "holeManager/gUnk_08108764_14.bin"
	.4byte gUnk_08108714
	.incbin "holeManager/gUnk_08108764_15.bin"
	.4byte gUnk_0810871C
	.incbin "holeManager/gUnk_08108764_16.bin"
	.4byte gUnk_08108724
	.incbin "holeManager/gUnk_08108764_17.bin"
	.4byte gUnk_0810872C
	.incbin "holeManager/gUnk_08108764_18.bin"
	.4byte gUnk_08108734
	.incbin "holeManager/gUnk_08108764_19.bin"
	.4byte gUnk_0810873C
	.incbin "holeManager/gUnk_08108764_20.bin"
	.4byte gUnk_08108744
	.incbin "holeManager/gUnk_08108764_21.bin"
	.4byte gUnk_0810874C
	.incbin "holeManager/gUnk_08108764_22.bin"
	.4byte gUnk_08108754
	.incbin "holeManager/gUnk_08108764_23.bin"
	.4byte gUnk_081086B8
	.incbin "holeManager/gUnk_08108764_24.bin"
	.4byte gUnk_081086C4
	.incbin "holeManager/gUnk_08108764_25.bin"
	.4byte gUnk_081086D0
	.incbin "holeManager/gUnk_08108764_26.bin"
