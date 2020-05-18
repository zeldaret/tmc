	.include "asm/macros.inc"
	.text
	.syntax unified
	
	thumb_func_start CreateFX
CreateFX: @ 0x080A29AC
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #0xf
	adds r2, r4, #0
	bl sub_080A2988
	pop {r4, pc}