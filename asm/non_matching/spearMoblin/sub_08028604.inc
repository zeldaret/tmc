
	.syntax unified

	.text

	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4, #0xf]
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _080286B0
	bl Random
	ldr r2, _08028650 @ =gUnk_080CC7BC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08028658
	bl Random
	ldr r2, _08028654 @ =gUnk_080CC7D0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x18
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080286B8
	.align 2, 0
_08028650: .4byte gUnk_080CC7BC
_08028654: .4byte gUnk_080CC7D0
_08028658:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r5, r0, #0
	adds r6, r4, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0
	bne _08028684
	bl Random
	ldr r2, _08028680 @ =gUnk_080CC7C0
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	b _080286A2
	.align 2, 0
_08028680: .4byte gUnk_080CC7C0
_08028684:
	bl Random
	ldr r2, _080286AC @ =gUnk_080CC7C0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_080286A2:
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080286B8
	.align 2, 0
_080286AC: .4byte gUnk_080CC7C0
_080286B0:
	movs r0, #0xc
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
	ldrb r0, [r4, #0x15]
_080286B8:
	lsrs r5, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r5, r0
	beq _080286C8
	strb r5, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080287E0
_080286C8:
	pop {r4, r5, r6, pc}
	.align 2, 0

    .syntax divided
