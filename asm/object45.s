	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808E414
sub_0808E414: @ 0x0808E414
	push {lr}
	ldr r2, _0808E428 @ =gUnk_08121BD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808E428: .4byte gUnk_08121BD8

	thumb_func_start sub_0808E42C
sub_0808E42C: @ 0x0808E42C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x11]
	subs r1, #0x11
	ands r1, r2
	movs r2, #6
	orrs r1, r2
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0xa]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808E448
sub_0808E448: @ 0x0808E448
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_0805436C
	cmp r0, #1
	bls _0808E45A
	bl sub_0805E780
_0808E45A:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _0808E472
	cmp r0, #0x80
	bne _0808E486
	bl sub_0805E780
_0808E472:
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _0808E494
_0808E486:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_0808E494:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0808E4A2
	ldr r0, [r4, #0x34]
	ldr r1, _0808E4A4 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
_0808E4A2:
	pop {r4, pc}
	.align 2, 0
_0808E4A4: .4byte 0xFFFF8000
