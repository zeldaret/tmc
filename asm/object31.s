	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object31
Object31: @ 0x0808A9C4
	push {lr}
	ldr r2, _0808A9D8 @ =gUnk_0812119C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808A9D8: .4byte gUnk_0812119C

	thumb_func_start sub_0808A9DC
sub_0808A9DC: @ 0x0808A9DC
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xa]
	strb r1, [r0, #0x1e]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r2, #7
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start nullsub_519
nullsub_519: @ 0x0808A9F8
	bx lr
	.align 2, 0
