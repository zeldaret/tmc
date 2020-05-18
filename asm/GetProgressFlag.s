	.include "asm/macros.inc"
	.text
	.syntax unified
	
	thumb_func_start GetProgressFlag
GetProgressFlag: @ 0x0807CC30
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl GetProgressFlagWithOffset
	pop {pc}