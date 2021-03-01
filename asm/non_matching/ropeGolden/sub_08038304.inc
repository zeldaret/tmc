

	.syntax unified

	.text

	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl UpdateAnimationVariableFrames
	adds r0, r4, #0
	bl ProcessMovement
	cmp r0, #0
	bne _08038334
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	cmp r0, r1
	bne _08038330
	movs r0, #0x5a
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080383AC
	b _080383AA
_08038330:
	strb r0, [r4, #0x15]
	b _080383AA
_08038334:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080383AA
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r3, [r4, #0x15]
	cmp r0, r3
	bne _08038398
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x79
	lsls r5, r1, #0x18
	lsrs r3, r5, #0x18
	adds r2, r0, #0
	movs r6, #0x7a
	adds r6, r6, r4
	mov ip, r6
	ldrb r0, [r2]
	cmp r3, r0
	bne _08038388
	ldrb r6, [r6]
	cmp r3, r6
	bne _08038388
	rsbs r0, r5, #0
	lsrs r1, r0, #0x18
_08038388:
	ldrb r0, [r2]
	mov r3, ip
	strb r0, [r3]
	strb r1, [r2]
	ldrb r0, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
_08038398:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_080383AA:
	pop {r4, r5, r6, pc}

    .syntax divided
