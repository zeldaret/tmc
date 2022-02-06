	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

AcroBandit_Functions:: @ 080CE56C
	.4byte AcroBandit_OnTick
	.4byte AcroBandit_OnCollision
	.4byte AcroBandit_OnKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte AcroBandit_OnGrabbed

gUnk_080CE584:: @ 080CE584
	.4byte sub_08031A88
	.4byte sub_08031E90

gUnk_080CE58C:: @ 080CE58C
	.4byte sub_08031AA0
	.4byte sub_08031AC8
	.4byte sub_08031B48
	.4byte sub_08031B98
	.4byte sub_08031C1C
	.4byte sub_08031C58
	.4byte sub_08031D70
	.4byte sub_08031DA0
	.4byte sub_08031DC4

gUnk_080CE5B0:: @ 080CE5B0
	.incbin "acroBandits/gUnk_080CE5B0.bin"

gUnk_080CE5B8:: @ 080CE5B8
	.incbin "acroBandits/gUnk_080CE5B8.bin"

gUnk_080CE5C0:: @ 080CE5C0
	.incbin "acroBandits/gUnk_080CE5C0.bin"

gUnk_080CE5C8:: @ 080CE5C8
	.4byte sub_08031EA8
	.4byte sub_08031EE8
	.4byte sub_08031F54
	.4byte sub_08031FB0
	.4byte sub_08032008
	.4byte sub_08032148
	.4byte sub_08032160
	.4byte sub_080321E8
	.4byte sub_08032204
	.4byte sub_08032248

gUnk_080CE5F0:: @ 080CE5F0
	.incbin "acroBandits/gUnk_080CE5F0.bin"

gUnk_080CE5FA:: @ 080CE5FA
	.incbin "acroBandits/gUnk_080CE5FA.bin"
