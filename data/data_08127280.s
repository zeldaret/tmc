	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08127280:: @ 08127280
	.incbin "data_08127280/gUnk_08127280.bin"

gUnk_08127298:: @ 08127298
	.incbin "data_08127280/gUnk_08127298.bin"

gUnk_081272B0:: @ 081272B0
	.incbin "data_08127280/gUnk_081272B0.bin"

gUnk_081272C8:: @ 081272C8
	.incbin "data_08127280/gUnk_081272C8.bin"

gUnk_081272E0:: @ 081272E0
	.4byte gUnk_08127280
	.4byte gUnk_08127298
	.4byte gUnk_081272B0
	.4byte gUnk_081272C8

gUnk_081272F0:: @ 081272F0
	.incbin "data_08127280/gUnk_081272F0.bin"

gUnk_08127644:: @ 08127644
	.incbin "data_08127280/gUnk_08127644.bin"

gUnk_08127998:: @ 08127998
	.incbin "data_08127280/gUnk_08127998.bin"

gUnk_08127CEC:: @ 08127CEC
	.incbin "data_08127280/gUnk_08127CEC.bin"

gUnk_08127D00:: @ 08127D00
	.4byte sub_080A3608
	.4byte sub_080A36C0
	.4byte sub_080A3994
	.4byte sub_080A3980

gUnk_08127D10:: @ 08127D10
	.4byte sub_080A36DC
	.4byte sub_080A36F8
	.4byte sub_080A3768
	.4byte sub_080A3864
	.4byte sub_080A3888
	.4byte sub_080A38B4
	.4byte sub_080A38D0
	.4byte sub_080A3930

gAreaMetadata:: @ 08127D30
.ifdef EU
    @ TODO only small differences
	.incbin "data_08127280/gAreaMetadata_EU.bin"
.else
	.incbin "data_08127280/gAreaMetadata_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08127F94:: @ 08127F94
	.incbin "data_08127280/gUnk_08127F94.bin"

gUnk_08128024:: @ 08128024
	.incbin "data_08127280/gUnk_08128024.bin"
