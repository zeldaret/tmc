	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Spark
Spark: @ 0x0802B2AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802B2C4 @ =gUnk_080CD234
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802B2C4: .4byte gUnk_080CD234

	thumb_func_start sub_0802B2C8
sub_0802B2C8: @ 0x0802B2C8
	push {lr}
	ldr r2, _0802B2DC @ =gUnk_080CD24C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B2DC: .4byte gUnk_080CD24C

	thumb_func_start sub_0802B2E0
sub_0802B2E0: @ 0x0802B2E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B334
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x14
	bne _0802B334
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B334
	str r1, [r4, #0x54]
	movs r0, #0xe
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl CopyPosition
_0802B334:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_15
nullsub_15: @ 0x0802B338
	bx lr
	.align 2, 0

	thumb_func_start sub_0802B33C
sub_0802B33C: @ 0x0802B33C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x15]
	movs r0, #0x78
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B35C
sub_0802B35C: @ 0x0802B35C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl ProcessMovement
	movs r3, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802B374
	movs r3, #1
_0802B374:
	ldrh r0, [r4, #0x2a]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802B3A4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802B38A
	b _0802B4A6
_0802B38A:
	movs r0, #0x78
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	cmp r3, #0
	beq _0802B39A
	adds r1, r0, #0
	adds r1, #8
	b _0802B39E
_0802B39A:
	adds r1, r0, #0
	adds r1, #0x18
_0802B39E:
	movs r0, #0x18
	ands r0, r1
	b _0802B4A4
_0802B3A4:
	movs r0, #0x78
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	movs r1, #0x18
	ands r1, r0
	cmp r1, #8
	beq _0802B474
	cmp r1, #8
	bgt _0802B3BC
	cmp r1, #0
	beq _0802B3C6
	b _0802B4A6
_0802B3BC:
	cmp r1, #0x10
	beq _0802B404
	cmp r1, #0x18
	beq _0802B442
	b _0802B4A6
_0802B3C6:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _0802B3D8
	movs r0, #8
	cmp r3, #0
	beq _0802B4A4
	movs r0, #0x18
	b _0802B4A4
_0802B3D8:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bne _0802B3EE
	cmp r3, #0
	beq _0802B3EE
	movs r0, #8
	strb r0, [r4, #0x15]
_0802B3EE:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _0802B4A6
	cmp r3, #0
	bne _0802B4A6
	movs r0, #0x18
	b _0802B4A4
_0802B404:
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	beq _0802B416
	movs r0, #0x18
	cmp r3, #0
	beq _0802B4A4
	movs r0, #8
	b _0802B4A4
_0802B416:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0802B42C
	cmp r3, #0
	bne _0802B42C
	movs r0, #8
	strb r0, [r4, #0x15]
_0802B42C:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0802B4A6
	cmp r3, #0
	beq _0802B4A6
	movs r0, #0x18
	b _0802B4A4
_0802B442:
	movs r1, #0xe0
	lsls r1, r1, #4
	ands r1, r2
	cmp r1, #0
	beq _0802B458
	rsbs r0, r3, #0
	orrs r0, r3
	asrs r0, r0, #0x1f
	movs r1, #0x10
	ands r0, r1
	b _0802B4A4
_0802B458:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #4
	bne _0802B466
	cmp r3, #0
	beq _0802B466
	strb r1, [r4, #0x15]
_0802B466:
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0x40
	bne _0802B4A6
	cmp r3, #0
	bne _0802B4A6
	b _0802B4A2
_0802B474:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802B488
	movs r0, #0
	cmp r3, #0
	bne _0802B4A4
	movs r0, #0x10
	b _0802B4A4
_0802B488:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #2
	bne _0802B496
	cmp r3, #0
	bne _0802B496
	strb r3, [r4, #0x15]
_0802B496:
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0x20
	bne _0802B4A6
	cmp r3, #0
	beq _0802B4A6
_0802B4A2:
	movs r0, #0x10
_0802B4A4:
	strb r0, [r4, #0x15]
_0802B4A6:
	pop {r4, pc}

	thumb_func_start sub_0802B4A8
sub_0802B4A8: @ 0x0802B4A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B4D6
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x60
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B4D0
	ldrh r0, [r1, #0x32]
	subs r0, #4
	strh r0, [r1, #0x32]
_0802B4D0:
	adds r0, r4, #0
	bl DeleteEntity
_0802B4D6:
	pop {r4, pc}
