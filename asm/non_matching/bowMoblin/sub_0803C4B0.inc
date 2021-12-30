

	.syntax unified

	.text

    push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0
	strb r1, [r5, #0xf]
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803C54C
	bl Random
	ldr r1, _0803C4F0 @ =gUnk_080CFFA4
	movs r7, #7
	ands r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803C4F4
	bl Random
	adds r4, r0, #0
	movs r0, #6
	ands r4, r0
	lsls r0, r4, #2
	strb r0, [r5, #0x15]
	b _0803C556
	.align 2, 0
_0803C4F0: .4byte gUnk_080CFFA4
_0803C4F4:
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803C520
	bl Random
	ldr r2, _0803C51C @ =gUnk_080CFFAC
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	b _0803C53E
	.align 2, 0
_0803C51C: .4byte gUnk_080CFFAC
_0803C520:
	bl Random
	ldr r1, _0803C548 @ =gUnk_080CFFAC
	ands r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	ldrb r0, [r5, #0xe]
	adds r0, #0x10
	strb r0, [r5, #0xe]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0803C53E:
	adds r0, r4, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0803C554
	.align 2, 0
_0803C548: .4byte gUnk_080CFFAC
_0803C54C:
	movs r0, #0xc
	strb r0, [r5, #0xe]
	strh r1, [r5, #0x24]
	ldrb r0, [r5, #0x15]
_0803C554:
	lsrs r4, r0, #2
_0803C556:
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _0803C564
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803C690
_0803C564:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

    .syntax divided