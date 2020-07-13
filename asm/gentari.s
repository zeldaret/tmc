	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Festari
Festari: @ 0x0805FDF8
	push {lr}
	ldr r2, _0805FE0C @ =gUnk_08109BBC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805FE0C: .4byte gUnk_08109BBC
