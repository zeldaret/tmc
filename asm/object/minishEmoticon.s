	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MinishEmoticon
MinishEmoticon: @ 0x08082040
	push {lr}
	ldr r2, _08082054 @ =gUnk_0811EE5C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08082054: .4byte gUnk_0811EE5C

	thumb_func_start sub_08082058
sub_08082058: @ 0x08082058
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl LoadSwapGFX
	adds r0, r4, #0
	bl sub_08082098
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08082098
sub_08082098: @ 0x08082098
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08082100 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080820AC
	bl DeleteThisEntity
_080820AC:
	ldr r5, _08082104 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08079BD8
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r1, [r5, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x14]
	lsrs r3, r0, #1
	adds r7, r3, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0x14
	beq _08082122
	cmp r0, #0x14
	bgt _08082108
	cmp r0, #0xa
	beq _0808212A
	b _0808212E
	.align 2, 0
_08082100: .4byte gPlayerState
_08082104: .4byte gPlayerEntity
_08082108:
	cmp r0, #0x16
	beq _08082112
	cmp r0, #0x18
	beq _08082126
	b _0808212E
_08082112:
	ldrb r0, [r4, #0x14]
	movs r3, #0xd
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #2
	bne _080821F2
	movs r3, #0xe
	b _080821F2
_08082122:
	movs r3, #0xc
	b _080821EE
_08082126:
	adds r3, #0xf
	b _080821EE
_0808212A:
	movs r3, #0x13
	b _080821EE
_0808212E:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808213E
	adds r3, r7, #0
	adds r3, #8
	b _080821EE
_0808213E:
	ldr r2, _0808215C @ =gPlayerState
	ldrb r1, [r2, #2]
	adds r6, r1, #0
	cmp r6, #0
	beq _08082160
	movs r0, #0x10
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	bne _080821F2
	adds r3, r7, #0
	adds r3, #0x19
	b _080821F2
	.align 2, 0
_0808215C: .4byte gPlayerState
_08082160:
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0808216E
	cmp r0, #0x19
	bne _080821C8
_0808216E:
	adds r3, r7, #4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, r3
	beq _08082180
	str r6, [r4, #0x34]
	b _080821BA
_08082180:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080821F2
	adds r2, r4, #0
	adds r2, #0x63
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080821C0
	cmp r1, r0
	bgt _080821AC
	subs r0, #1
	cmp r1, r0
	beq _080821B4
	b _080821F2
_080821AC:
	cmp r1, #0
	bne _080821F2
	movs r0, #0xfe
	b _080821B8
_080821B4:
	ldrb r0, [r2]
	orrs r0, r7
_080821B8:
	strb r0, [r2]
_080821BA:
	movs r0, #6
	strb r0, [r4, #0xe]
	b _080821F2
_080821C0:
	strb r6, [r2]
	movs r0, #3
	strb r0, [r4, #0xe]
	b _080821F2
_080821C8:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r2, [r0]
	adds r1, r2, #0
	cmp r1, #0
	beq _080821E8
	movs r0, #0x80
	ands r0, r2
	adds r3, r7, #0
	adds r3, #0x14
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	beq _080821F2
	movs r3, #0x18
	b _080821F2
_080821E8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
_080821EE:
	adds r5, r4, #0
	adds r5, #0x58
_080821F2:
	ldrb r0, [r5]
	cmp r0, r3
	beq _08082202
	adds r0, r4, #0
	adds r1, r3, #0
	bl InitAnimationForceUpdate
	b _08082208
_08082202:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08082208:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
