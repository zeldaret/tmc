	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081146D0:: @ 081146D0
	.incbin "data_081146D0/gUnk_081146D0.bin"

gUnk_081146E4:: @ 081146E4
	.incbin "data_081146D0/gUnk_081146E4.bin"

gUnk_081146F4:: @ 081146F4
	.incbin "data_081146D0/gUnk_081146F4.bin"

gUnk_0811479C:: @ 0811479C
	.incbin "data_081146D0/gUnk_0811479C.bin"

gUnk_081147E4:: @ 081147E4
	.incbin "data_081146D0/gUnk_081147E4.bin"

gUnk_08114804:: @ 08114804
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114804_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114804_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114814:: @ 08114814
	.incbin "data_081146D0/gUnk_08114814.bin"

gUnk_08114824:: @ 08114824
	.incbin "data_081146D0/gUnk_08114824.bin"

gUnk_08114864:: @ 08114864
	.incbin "data_081146D0/gUnk_08114864.bin"

gUnk_08114874:: @ 08114874
	.incbin "data_081146D0/gUnk_08114874.bin"

gUnk_081148A4:: @ 081148A4
	.incbin "data_081146D0/gUnk_081148A4.bin"

gUnk_081148C4:: @ 081148C4
	.incbin "data_081146D0/gUnk_081148C4.bin"

gUnk_081148E4:: @ 081148E4
	.incbin "data_081146D0/gUnk_081148E4.bin"

gUnk_08114914:: @ 08114914
	.incbin "data_081146D0/gUnk_08114914.bin"

gUnk_08114944:: @ 08114944
	.incbin "data_081146D0/gUnk_08114944.bin"

gUnk_08114974:: @ 08114974
	.incbin "data_081146D0/gUnk_08114974.bin"

gUnk_08114984:: @ 08114984
	.incbin "data_081146D0/gUnk_08114984.bin"

gUnk_08114994:: @ 08114994
	.incbin "data_081146D0/gUnk_08114994.bin"

gUnk_081149A4:: @ 081149A4
	.incbin "data_081146D0/gUnk_081149A4.bin"

gUnk_081149B4:: @ 081149B4
	.incbin "data_081146D0/gUnk_081149B4.bin"

gUnk_081149C4:: @ 081149C4
	.incbin "data_081146D0/gUnk_081149C4.bin"

gUnk_081149F4:: @ 081149F4
	.incbin "data_081146D0/gUnk_081149F4.bin"

gUnk_08114A14:: @ 08114A14
	.incbin "data_081146D0/gUnk_08114A14.bin"

gUnk_08114A6C:: @ 08114A6C
	.incbin "data_081146D0/gUnk_08114A6C.bin"

gUnk_08114A8C:: @ 08114A8C
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114A8C_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114A8C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114ABC:: @ 08114ABC
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114ABC_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114ABC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114AE4:: @ 08114AE4
	.incbin "data_081146D0/gUnk_08114AE4.bin"
	.4byte gUnk_081146E4
	.incbin "data_081146D0/gUnk_08114AE4_1.bin"
	.4byte gUnk_081148A4
	.incbin "data_081146D0/gUnk_08114AE4_2.bin"
	.4byte gUnk_081146F4
	.incbin "data_081146D0/gUnk_08114AE4_3.bin"
	.4byte gUnk_0811479C
	.incbin "data_081146D0/gUnk_08114AE4_4.bin"
	.4byte gUnk_081147E4
	.incbin "data_081146D0/gUnk_08114AE4_5.bin"
	.4byte gUnk_08114874
	.incbin "data_081146D0/gUnk_08114AE4_6.bin"
	.4byte gUnk_08114804
	.incbin "data_081146D0/gUnk_08114AE4_7.bin"
	.4byte gUnk_08114814
	.incbin "data_081146D0/gUnk_08114AE4_8.bin"
	.4byte gUnk_081148E4
	.incbin "data_081146D0/gUnk_08114AE4_9.bin"
	.4byte gUnk_08114824
	.incbin "data_081146D0/gUnk_08114AE4_10.bin"
	.4byte gUnk_08114864
	.incbin "data_081146D0/gUnk_08114AE4_11.bin"
	.4byte gUnk_081148C4
	.incbin "data_081146D0/gUnk_08114AE4_12.bin"
	.4byte gUnk_08114914
	.incbin "data_081146D0/gUnk_08114AE4_13.bin"
	.4byte gUnk_08114944
	.incbin "data_081146D0/gUnk_08114AE4_14.bin"
	.4byte gUnk_08114A8C
	.incbin "data_081146D0/gUnk_08114AE4_15.bin"
	.4byte gUnk_08114974
	.incbin "data_081146D0/gUnk_08114AE4_16.bin"
	.4byte gUnk_08114984
	.incbin "data_081146D0/gUnk_08114AE4_17.bin"
	.4byte gUnk_08114994
	.incbin "data_081146D0/gUnk_08114AE4_18.bin"
	.4byte gUnk_081149A4
	.incbin "data_081146D0/gUnk_08114AE4_19.bin"
	.4byte gUnk_081149B4
	.incbin "data_081146D0/gUnk_08114AE4_20.bin"
	.4byte gUnk_081149C4
	.incbin "data_081146D0/gUnk_08114AE4_21.bin"
	.4byte gUnk_081149F4
	.incbin "data_081146D0/gUnk_08114AE4_22.bin"
	.4byte gUnk_08114A14
	.incbin "data_081146D0/gUnk_08114AE4_23.bin"
	.4byte gUnk_08114A6C
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114AE4_24_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114AE4_25_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_08114ABC
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114AE4_26_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114AE4_27_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114EE4:: @ 08114EE4
	.4byte 00000000
	.4byte gUnk_080FD170
	.4byte gUnk_080FD158
	.4byte gUnk_080FD170
	.4byte gUnk_080FD180
	.4byte gUnk_080FD160

gUnk_08114EFC:: @ 08114EFC
	.4byte sub_0806EF88
	.4byte sub_0806EE70
	.4byte sub_0806EED0
	.4byte sub_0806EEF4

gUnk_08114F0C:: @ 08114F0C
	.4byte sub_0806EFAC
	.4byte sub_0806EFBC
	.4byte sub_0806EFCC
	.4byte sub_0806EFDC
	.4byte sub_0806F014
	.4byte sub_0806F02C
	.4byte sub_0806F048
	.4byte sub_0806F050
	.4byte sub_0806F064

gUnk_08114F30:: @ 08114F30
	.incbin "data_081146D0/gUnk_08114F30.bin"

gUnk_08114F34:: @ 08114F34
	.incbin "data_081146D0/gUnk_08114F34.bin"

gUnk_08114F38:: @ 08114F38
	.incbin "data_081146D0/gUnk_08114F38.bin"

gUnk_08114F58:: @ 08114F58
	.incbin "data_081146D0/gUnk_08114F58.bin"

gUnk_08114F78:: @ 08114F78
	.incbin "data_081146D0/gUnk_08114F78.bin"

gUnk_08114F80:: @ 08114F80
	.incbin "data_081146D0/gUnk_08114F80.bin"

gUnk_08114F88:: @ 08114F88
	.incbin "data_081146D0/gUnk_08114F88.bin"

