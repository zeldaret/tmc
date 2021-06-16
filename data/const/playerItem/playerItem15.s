	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08127270:: @ 08127270
	.4byte sub_080A3084
	.4byte sub_080A310C

gUnk_08127278:: @ 08127278
	.incbin "baserom.gba", 0x127278, 0x0000008

.ifdef DEMO
@ TODO choose demo screen
something:
	.4byte sub_080A2E40
	.4byte sub_080A2FD0
	.4byte sub_080A2F8C

something2::
.incbin "baserom_demo.gba", 0x127c98, 0x38 @nocheckin
.endif

    
