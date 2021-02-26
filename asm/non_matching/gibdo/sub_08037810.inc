

	.syntax unified

	.text

	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	bne _080378A8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080378AC
	ldr r6, _080378A4 @ =gUnk_020000B0
	ldr r0, [r6]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	movs r3, #0x40
	bl sub_0806FCB8
	cmp r0, #0
	beq _080378AC
	ldr r1, [r6]
	adds r0, r5, #0
	bl GetFacingDirection
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	adds r0, #6
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xc
	bhi _080378AC
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r1, [r6]
	adds r0, r5, #0
	bl GetFacingDirection
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, [r6]
	ldrh r1, [r2, #0x2e]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r3, r5, #0
	adds r3, #0x7a
	strh r0, [r3]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	movs r0, #1
	b _080378AE
	.align 2, 0
_080378A4: .4byte gUnk_020000B0
_080378A8:
	subs r0, #1
	strb r0, [r1]
_080378AC:
	movs r0, #0
_080378AE:
	pop {r4, r5, r6, pc}

	.syntax divided