	

	.syntax unified

	.text

	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r2, [r2]
	adds r3, r5, #0
	adds r3, #0x7a
	ldrh r3, [r3]
	bl sub_080045D4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _080379BA
	strb r0, [r5, #0x14]
	adds r1, r0, #4
	adds r0, r5, #0
	bl InitAnimationForceUpdate
_080379BA:
	pop {r4, r5, pc}

	.syntax divided
