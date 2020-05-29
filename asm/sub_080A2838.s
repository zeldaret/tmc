	.include "asm/macros.inc"
	
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080A2838
sub_080A2838: @ 0x080A2838
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #9]
	lsls r2, r2, #3
	ldr r0, _080A2858 @ =gUnk_08126798
	adds r2, r2, r0
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080A285C
	cmp r0, #2
	bne _080A2856
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_080A2856:
	pop {r4, pc}
	.align 2, 0
_080A2858: .4byte gUnk_08126798
