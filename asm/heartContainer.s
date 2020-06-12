	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808E688
sub_0808E688: @ 0x0808E688
	push {lr}
	ldr r2, _0808E69C @ =gUnk_08121C48
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808E69C: .4byte gUnk_08121C48

	thumb_func_start sub_0808E6A0
sub_0808E6A0: @ 0x0808E6A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808E6B4
	bl sub_0805E780
_0808E6B4:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x62
	strb r0, [r4, #0xa]
	ldrb r1, [r4, #0x18]
	subs r0, #0x66
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0808E6E0 @ =gUnk_08121C58
	str r0, [r4, #0x48]
	adds r1, r4, #0
	adds r1, #0x38
	movs r2, #3
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r4, #0x11]
	subs r0, #0x13
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	pop {r4, pc}
	.align 2, 0
_0808E6E0: .4byte gUnk_08121C58

	thumb_func_start sub_0808E6E4
sub_0808E6E4: @ 0x0808E6E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808E712
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_0808E714
_0808E712:
	pop {r4, pc}

	thumb_func_start sub_0808E714
sub_0808E714: @ 0x0808E714
	push {r4, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xf]
	lsls r0, r3, #3
	movs r1, #0x80
	lsls r1, r1, #3
	subs r2, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _0808E73A
	adds r0, r3, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0808E756
_0808E73A:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0805EC60
	ldr r0, _0808E760 @ =0x00000141
	bl PlaySFX
_0808E756:
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_0808E760: .4byte 0x00000141

	thumb_func_start sub_0808E764
sub_0808E764: @ 0x0808E764
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08080CB4
	ldr r0, _0808E79C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808E79A
	adds r0, r4, #0
	bl sub_08017850
	cmp r0, #0
	beq _0808E79A
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl SetFlag
	movs r0, #0x62
	movs r1, #0
	movs r2, #0
	bl sub_080A7C00
	bl sub_0805E780
_0808E79A:
	pop {r4, pc}
	.align 2, 0
_0808E79C: .4byte gLinkState
