	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ sprite data starts here

gSprite_Link:: @ 0813AE14
	.incbin "data_08132B30/gSprite_Link.4bpp"

gSprite_081C8C74:: @ 081C8C74
	.incbin "data_08132B30/gSprite_081C8C74.4bpp"

gSprite_081D7674:: @ 081D7674
	.incbin "data_08132B30/gSprite_081D7674.4bpp"

gSprite_081DF834:: @ 081DF834
	.incbin "data_08132B30/gSprite_081DF834.4bpp"

gSprite_081FF1B4:: @ 081FF1B4
	.incbin "data_08132B30/gSprite_081FF1B4.4bpp"
	.incbin "graphics/npc/postman.4bpp"
	.incbin "graphics/npc/malon.4bpp"
	.incbin "data_08132B30/gSprite_081FF1B4_1.4bpp"
.ifdef EU
    @ TODO only small differences
	.incbin "data_08132B30/gSprite_081FF1B4_2_EU.4bpp"
.else
	.incbin "data_08132B30/gSprite_081FF1B4_3_USA-JP-DEMO_USA-DEMO_JP.4bpp"
.endif
	.incbin "data_08132B30/gSprite_081FF1B4_4.4bpp"

gSprite_082474D4:: @ 082474D4
	.incbin "data_08132B30/gSprite_082474D4.4bpp"

gSprite_082D4894::
	.incbin "graphics/pot_portal.4bpp"
	.incbin "data_08132B30/gSprite_082D4894.4bpp"

gSprite_082E68F4:: @ 082E68F4
	.incbin "data_08132B30/gSprite_082E68F4.4bpp"

gSprite_082F27F4:: @ 082F27F4
	.incbin "data_08132B30/gSprite_082F27F4.4bpp"


