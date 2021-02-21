	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0804AA30
sub_0804AA30: @ 0x0804AA30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0x41
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	adds r0, r4, #0
	bl GetNextFunction
	ldrb r2, [r6]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r6]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6, pc}
	.align 2, 0
