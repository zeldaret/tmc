		.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080A2988
sub_080A2988: @ 0x080A2988
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A29A6
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
_080A29A6:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0