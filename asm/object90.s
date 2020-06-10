	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809C394
sub_0809C394: @ 0x0809C394
	push {lr}
	ldr r2, _0809C3A8 @ =gUnk_08123DCC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809C3A8: .4byte gUnk_08123DCC

	thumb_func_start sub_0809C3AC
sub_0809C3AC: @ 0x0809C3AC
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0x1e]
	adds r0, #0x29
	ldrb r2, [r0]
	subs r1, #9
	ands r1, r2
	movs r2, #5
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start nullsub_536
nullsub_536: @ 0x0809C3C4
	bx lr
	.align 2, 0
