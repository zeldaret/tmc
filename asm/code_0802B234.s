	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802B234
sub_0802B234: @ 0x0802B234
	push {r4, lr}
	movs r4, #0
	bl sub_080002A0
	ldr r1, _0802B24C @ =0xFFFFFE3C
	adds r0, r0, r1
	cmp r0, #1
	bls _0802B246
	movs r4, #1
_0802B246:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0802B24C: .4byte 0xFFFFFE3C

	thumb_func_start sub_0802B250
sub_0802B250: @ 0x0802B250
	push {lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0802B260
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802B260
	movs r1, #0
_0802B260:
	adds r0, r1, #0
	pop {pc}

	thumb_func_start sub_0802B264
sub_0802B264: @ 0x0802B264
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802B294
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
	b _0802B2A2
_0802B294:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802B2A2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B2AC
sub_0802B2AC: @ 0x0802B2AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802B2C4 @ =gUnk_080CD234
	bl sub_0800279C
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
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B35C
sub_0802B35C: @ 0x0802B35C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
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
	bl sub_0805E7BC
_0802B4D6:
	pop {r4, pc}

	thumb_func_start sub_0802B4D8
sub_0802B4D8: @ 0x0802B4D8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B4FC
	ldr r0, _0802B4F8 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0802B510
	.align 2, 0
_0802B4F8: .4byte gUnk_080012C8
_0802B4FC:
	ldr r4, _0802B514 @ =gUnk_080CD27C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0802B510:
	pop {r4, r5, pc}
	.align 2, 0
_0802B514: .4byte gUnk_080CD27C

	thumb_func_start sub_0802B518
sub_0802B518: @ 0x0802B518
	push {lr}
	ldr r2, _0802B52C @ =gUnk_080CD298
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B52C: .4byte gUnk_080CD298

	thumb_func_start sub_0802B530
sub_0802B530: @ 0x0802B530
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B540
sub_0802B540: @ 0x0802B540
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B550
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802B56A
_0802B550:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xc
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802B56A
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x15]
_0802B56A:
	pop {r4, pc}

	thumb_func_start sub_0802B56C
sub_0802B56C: @ 0x0802B56C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B586
	movs r0, #0x40
	strh r0, [r4, #0x24]
_0802B586:
	adds r0, r4, #0
	bl sub_080AF038
	cmp r0, #0
	beq _0802B5B8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802B5A2
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_0802B5A2:
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0802B5B4 @ =0x0000021F
	cmp r1, r0
	bgt _0802B5C4
	adds r0, r2, #4
	strh r0, [r4, #0x24]
	b _0802B5C4
	.align 2, 0
_0802B5B4: .4byte 0x0000021F
_0802B5B8:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_0802B5C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B5C8
sub_0802B5C8: @ 0x0802B5C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B5EE
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_0802B5EE:
	pop {r4, pc}

	thumb_func_start sub_0802B5F0
sub_0802B5F0: @ 0x0802B5F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802B60C @ =gUnk_080CD2D8
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0802B60C: .4byte gUnk_080CD2D8

	thumb_func_start sub_0802B610
sub_0802B610: @ 0x0802B610
	push {lr}
	ldr r2, _0802B624 @ =gUnk_080CD2F0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B624: .4byte gUnk_080CD2F0

	thumb_func_start sub_0802B628
sub_0802B628: @ 0x0802B628
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1d
	bhi _0802B706
	lsls r0, r1, #2
	ldr r1, _0802B644 @ =_0802B648
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B644: .4byte _0802B648
_0802B648: @ jump table
	.4byte _0802B6C0 @ case 0
	.4byte _0802B706 @ case 1
	.4byte _0802B6CC @ case 2
	.4byte _0802B6CC @ case 3
	.4byte _0802B6C0 @ case 4
	.4byte _0802B6C0 @ case 5
	.4byte _0802B6C0 @ case 6
	.4byte _0802B706 @ case 7
	.4byte _0802B6C0 @ case 8
	.4byte _0802B6C0 @ case 9
	.4byte _0802B6C0 @ case 10
	.4byte _0802B6C0 @ case 11
	.4byte _0802B6C0 @ case 12
	.4byte _0802B706 @ case 13
	.4byte _0802B706 @ case 14
	.4byte _0802B706 @ case 15
	.4byte _0802B706 @ case 16
	.4byte _0802B706 @ case 17
	.4byte _0802B706 @ case 18
	.4byte _0802B706 @ case 19
	.4byte _0802B706 @ case 20
	.4byte _0802B706 @ case 21
	.4byte _0802B6CC @ case 22
	.4byte _0802B706 @ case 23
	.4byte _0802B6CC @ case 24
	.4byte _0802B6CC @ case 25
	.4byte _0802B6CC @ case 26
	.4byte _0802B706 @ case 27
	.4byte _0802B706 @ case 28
	.4byte _0802B6CC @ case 29
_0802B6C0:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0802B706
	movs r0, #1
	strb r0, [r4, #0xe]
	b _0802B706
_0802B6CC:
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	bhi _0802B706
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x64
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #9
	bl UpdateSprite
_0802B706:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B718
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802B718:
	ldr r1, _0802B724 @ =gUnk_080CD2D8
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802B724: .4byte gUnk_080CD2D8

	thumb_func_start nullsub_144
nullsub_144: @ 0x0802B728
	bx lr
	.align 2, 0

	thumb_func_start sub_0802B72C
sub_0802B72C: @ 0x0802B72C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0802B7A4
	pop {r4, pc}

	thumb_func_start sub_0802B744
sub_0802B744: @ 0x0802B744
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802B780
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xc
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802B780
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #8
	bl UpdateSprite
	b _0802B7A2
_0802B780:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B794
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	b _0802B7A0
_0802B794:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802B7A2
	movs r0, #1
_0802B7A0:
	strb r0, [r4, #0xe]
_0802B7A2:
	pop {r4, pc}

	thumb_func_start sub_0802B7A4
sub_0802B7A4: @ 0x0802B7A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B7F4
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _0802B7F8 @ =gUnk_080CD314
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0802B960
	ldrb r0, [r4, #0x15]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _0802B7F4
	lsrs r2, r1, #0x1b
	ldrb r0, [r4, #0x14]
	cmp r2, r0
	beq _0802B7F4
	movs r1, #3
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r1, r2, #0
	bl UpdateSprite
_0802B7F4:
	pop {r4, pc}
	.align 2, 0
_0802B7F8: .4byte gUnk_080CD314

	thumb_func_start sub_0802B7FC
sub_0802B7FC: @ 0x0802B7FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B81E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0802B81E:
	pop {r4, pc}

	thumb_func_start sub_0802B820
sub_0802B820: @ 0x0802B820
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _0802B830
	movs r0, #1
	strb r0, [r4, #0xe]
_0802B830:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B84A
	adds r0, r4, #0
	bl sub_0802B9B4
	b _0802B87E
_0802B84A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802B878
	ldrb r1, [r4, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802B87E
	ldr r0, _0802B874 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _0802B87E
	.align 2, 0
_0802B874: .4byte gUnk_020000B0
_0802B878:
	adds r0, r4, #0
	bl sub_0802B9B4
_0802B87E:
	pop {r4, pc}

	thumb_func_start sub_0802B880
sub_0802B880: @ 0x0802B880
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B8AC
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #0x3c
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl UpdateSprite
_0802B8AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B8B0
sub_0802B8B0: @ 0x0802B8B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _0802B8CC
	cmp r0, #1
	beq _0802B8D4
	b _0802B8DA
_0802B8CC:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x96
	strb r0, [r4, #0xe]
_0802B8D4:
	ldr r0, _0802B8DC @ =0x0000012B
	bl sub_08004488
_0802B8DA:
	pop {r4, pc}
	.align 2, 0
_0802B8DC: .4byte 0x0000012B

	thumb_func_start sub_0802B8E0
sub_0802B8E0: @ 0x0802B8E0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r1, r0, #1
	strb r1, [r3, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0802B91C
	adds r4, r0, #0
	lsrs r0, r4, #0x18
	cmp r0, #0x3b
	bhi _0802B940
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802B940
	adds r3, #0x62
	ldr r2, _0802B918 @ =gUnk_080CD318
	lsrs r0, r4, #0x19
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	b _0802B940
	.align 2, 0
_0802B918: .4byte gUnk_080CD318
_0802B91C:
	movs r0, #8
	strb r0, [r3, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r0, #0x60
	strh r0, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x63
	strb r0, [r1]
	ldrb r1, [r3, #0x14]
	adds r0, r3, #0
	bl UpdateSprite
	ldr r0, _0802B944 @ =0x0000012B
	bl sub_08004488
_0802B940:
	pop {r4, pc}
	.align 2, 0
_0802B944: .4byte 0x0000012B

	thumb_func_start sub_0802B948
sub_0802B948: @ 0x0802B948
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0802B95E
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
_0802B95E:
	pop {r4, pc}

	thumb_func_start sub_0802B960
sub_0802B960: @ 0x0802B960
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802B986
	bl Random
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _0802B9A6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #4
	b _0802B9AA
_0802B986:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802B9A6
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0802B9A6
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	b _0802B9AA
_0802B9A6:
	bl Random
_0802B9AA:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B9B4
sub_0802B9B4: @ 0x0802B9B4
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #3
	movs r2, #3
	ands r1, r2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	adds r1, #4
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B9D4
sub_0802B9D4: @ 0x0802B9D4
	push {lr}
	ldr r2, _0802B9E8 @ =gUnk_080CD3C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B9E8: .4byte gUnk_080CD3C4

	thumb_func_start sub_0802B9EC
sub_0802B9EC: @ 0x0802B9EC
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r1, _0802BA14 @ =gUnk_080CD3D4
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r0, #0xc
	ldrh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802BA14: .4byte gUnk_080CD3D4

	thumb_func_start sub_0802BA18
sub_0802BA18: @ 0x0802BA18
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0xe
	bl sub_0804A024
	adds r5, r0, #0
	cmp r5, #0xff
	beq _0802BA88
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802BB2C
	cmp r0, #0
	bne _0802BA88
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x15]
	lsrs r0, r5, #3
	cmp r0, #1
	beq _0802BA60
	cmp r0, #1
	blo _0802BA58
	cmp r0, #2
	beq _0802BA6C
	cmp r0, #3
	beq _0802BA78
	b _0802BA88
_0802BA58:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r4, #0x32]
	b _0802BA7E
_0802BA60:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	b _0802BA82
_0802BA6C:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	b _0802BA82
_0802BA78:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r4, #0x2e]
_0802BA7E:
	ldrh r1, [r1]
	subs r0, r0, r1
_0802BA82:
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
_0802BA88:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802BA8C
sub_0802BA8C: @ 0x0802BA8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF038
	cmp r0, #0
	beq _0802BADE
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _0802BAC4
	cmp r0, #1
	bgt _0802BAAA
	cmp r0, #0
	beq _0802BAB4
	b _0802BAFA
_0802BAAA:
	cmp r0, #2
	beq _0802BAD0
	cmp r0, #3
	beq _0802BAE6
	b _0802BAFA
_0802BAB4:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802BAFA
	b _0802BADE
_0802BAC4:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	b _0802BADA
_0802BAD0:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
_0802BADA:
	cmp r1, r0
	bgt _0802BAFA
_0802BADE:
	adds r0, r4, #0
	bl sub_0802BB10
	b _0802BAFA
_0802BAE6:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802BAFA
	adds r0, r4, #0
	bl sub_0802BB10
_0802BAFA:
	pop {r4, pc}

	thumb_func_start sub_0802BAFC
sub_0802BAFC: @ 0x0802BAFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF038
	cmp r0, #0
	bne _0802BB0C
	movs r0, #1
	strb r0, [r4, #0xc]
_0802BB0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BB10
sub_0802BB10: @ 0x0802BB10
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r0, #0x74
	bl sub_08004488
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802BB2C
sub_0802BB2C: @ 0x0802BB2C
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r4, _0802BB60 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802BB3C
	ldr r4, _0802BB64 @ =gUnk_0200D654
_0802BB3C:
	lsrs r3, r1, #2
	ldr r0, _0802BB68 @ =gUnk_080CD3DC
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0
	bl sub_080AE4CC
	pop {r4, pc}
	.align 2, 0
_0802BB60: .4byte gUnk_02027EB4
_0802BB64: .4byte gUnk_0200D654
_0802BB68: .4byte gUnk_080CD3DC

	thumb_func_start sub_0802BB6C
sub_0802BB6C: @ 0x0802BB6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802BB94
	ldr r1, _0802BB90 @ =gUnk_080CD3E4
	adds r0, r4, #0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0802BBA4
	.align 2, 0
_0802BB90: .4byte gUnk_080CD3E4
_0802BB94:
	ldr r0, _0802BBA8 @ =gUnk_080CD3FC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802BBA4:
	pop {r4, pc}
	.align 2, 0
_0802BBA8: .4byte gUnk_080CD3FC

	thumb_func_start sub_0802BBAC
sub_0802BBAC: @ 0x0802BBAC
	push {lr}
	ldr r2, _0802BBC0 @ =gUnk_080CD408
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802BBC0: .4byte gUnk_080CD408

	thumb_func_start sub_0802BBC4
sub_0802BBC4: @ 0x0802BBC4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0802BBFE
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _0802BBEA
	cmp r1, #0
	blt _0802BBFE
	cmp r1, #3
	bgt _0802BBFE
	cmp r1, #2
	blt _0802BBFE
_0802BBEA:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0802BBFE
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802C218
_0802BBFE:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BC10
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802BC10:
	ldr r1, _0802BC1C @ =gUnk_080CD3E4
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802BC1C: .4byte gUnk_080CD3E4

	thumb_func_start sub_0802BC20
sub_0802BC20: @ 0x0802BC20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0802BC4C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BC6C
	ldr r0, _0802BC48 @ =gUnk_080CD42C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802BC6C
	.align 2, 0
_0802BC48: .4byte gUnk_080CD42C
_0802BC4C:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802BC5C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BC6C
_0802BC5C:
	ldr r0, _0802BC70 @ =gUnk_080CD438
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802BC6C:
	pop {r4, pc}
	.align 2, 0
_0802BC70: .4byte gUnk_080CD438

	thumb_func_start sub_0802BC74
sub_0802BC74: @ 0x0802BC74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802C1C0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0x1d]
	ldr r0, _0802BC9C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0
_0802BC9C: .4byte gLinkEntity

	thumb_func_start sub_0802BCA0
sub_0802BCA0: @ 0x0802BCA0
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802BCA8
sub_0802BCA8: @ 0x0802BCA8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0x19
	beq _0802BCFA
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0x19
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	movs r0, #0x20
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _0802BCF0
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	adds r0, r4, #0
	bl CopyPosition
_0802BCF0:
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802BCFA:
	pop {r4, pc}

	thumb_func_start sub_0802BCFC
sub_0802BCFC: @ 0x0802BCFC
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD08
sub_0802BD08: @ 0x0802BD08
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802BD10
sub_0802BD10: @ 0x0802BD10
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #2
	bl sub_08004276
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_145
nullsub_145: @ 0x0802BD24
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD28
sub_0802BD28: @ 0x0802BD28
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802BD4C
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0802BD52
_0802BD4C:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802BD52:
	pop {pc}

	thumb_func_start sub_0802BD54
sub_0802BD54: @ 0x0802BD54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	movs r0, #0x3c
	strb r0, [r4, #0x1d]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_0802BD8C
sub_0802BD8C: @ 0x0802BD8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BD9C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802BDDE
_0802BD9C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802BDCA
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802BDCA
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802BDCA
	adds r0, r4, #0
	bl sub_0802C058
	b _0802BDDE
_0802BDCA:
	adds r0, r4, #0
	bl sub_0802C020
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0802BDDE
	adds r0, r4, #0
	bl sub_0802C058
_0802BDDE:
	pop {r4, pc}

	thumb_func_start sub_0802BDE0
sub_0802BDE0: @ 0x0802BDE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802C06C
	cmp r0, #0
	beq _0802BDFE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xff
	strb r0, [r1]
	b _0802BE16
_0802BDFE:
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
_0802BE16:
	pop {r4, pc}

	thumb_func_start sub_0802BE18
sub_0802BE18: @ 0x0802BE18
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BE3E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0802BE44
_0802BE3E:
	adds r0, r4, #0
	bl sub_0802C18C
_0802BE44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BE48
sub_0802BE48: @ 0x0802BE48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _0802BE64
	adds r0, r4, #0
	bl sub_0802C218
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	b _0802BE7E
_0802BE64:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802C1CC
	adds r0, r4, #0
	bl sub_0802C0E8
	cmp r0, #0
	beq _0802BE7E
	movs r0, #5
	strb r0, [r4, #0xc]
_0802BE7E:
	pop {r4, pc}

	thumb_func_start sub_0802BE80
sub_0802BE80: @ 0x0802BE80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	subs r0, #0x20
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0802BE98
	adds r0, r4, #0
	bl sub_0802C1CC
_0802BE98:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802BEAE
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_0802C18C
	b _0802BEBA
_0802BEAE:
	adds r0, r4, #0
	bl sub_0802C1C0
	ldrb r0, [r4, #0xe]
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_0802BEBA:
	pop {r4, pc}

	thumb_func_start sub_0802BEBC
sub_0802BEBC: @ 0x0802BEBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	movs r4, #0x10
	eors r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEFE0
	ldrb r0, [r5, #0x15]
	eors r0, r4
	strb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #0
	bne _0802BEE8
	adds r0, r5, #0
	bl sub_0802C1C0
_0802BEE8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802BEEC
sub_0802BEEC: @ 0x0802BEEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BF1E
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0802BF3A
	ldrb r0, [r4, #0x14]
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	b _0802BF3A
_0802BF1E:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0802BF3A
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0802BF3A:
	pop {r4, pc}

	thumb_func_start sub_0802BF3C
sub_0802BF3C: @ 0x0802BF3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BF76
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0802C020
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _0802BF76
	strb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802BF76:
	pop {r4, pc}

	thumb_func_start sub_0802BF78
sub_0802BF78: @ 0x0802BF78
	push {lr}
	movs r2, #1
	strb r2, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x3b
	movs r1, #4
	strb r1, [r3]
	strb r2, [r0, #0x1c]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x14]
	adds r1, #8
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_0802BF98
sub_0802BF98: @ 0x0802BF98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BFBC
	ldr r0, _0802BFB8 @ =gUnk_080CD450
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802BFCC
	.align 2, 0
_0802BFB8: .4byte gUnk_080CD450
_0802BFBC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0802BFCC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BFD0
sub_0802BFD0: @ 0x0802BFD0
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BFD8
sub_0802BFD8: @ 0x0802BFD8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802BFE0
sub_0802BFE0: @ 0x0802BFE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0802BFF2
	adds r0, r4, #0
	bl sub_0805E7BC
_0802BFF2:
	pop {r4, pc}

	thumb_func_start sub_0802BFF4
sub_0802BFF4: @ 0x0802BFF4
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C01C
	adds r0, r3, #0
	bl sub_0805E7BC
_0802C01C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802C020
sub_0802C020: @ 0x0802C020
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl Random
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802C03E
	movs r6, #1
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0802C044
_0802C03E:
	movs r0, #0x18
	ands r0, r4
	b _0802C056
_0802C044:
	adds r0, r5, #0
	bl sub_08049EE4
	lsrs r1, r4, #0x10
	ands r1, r6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
_0802C056:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802C058
sub_0802C058: @ 0x0802C058
	push {lr}
	movs r2, #2
	strb r2, [r0, #0xc]
	strb r1, [r0, #0x15]
	lsrs r1, r1, #3
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_0802C06C
sub_0802C06C: @ 0x0802C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, [r0, #0x48]
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r6, r2, r1
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	movs r1, #1
	ldrsb r1, [r3, r1]
	adds r5, r2, r1
	ldr r3, _0802C0CC @ =gUnk_080CD45C
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #2
	adds r2, r1, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov sb, r2
	adds r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _0802C0D0 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802C0B2
	ldr r7, _0802C0D4 @ =gUnk_0200D654
_0802C0B2:
	movs r4, #0
_0802C0B4:
	add r6, sb
	add r5, r8
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _0802C0D8
	movs r0, #0
	b _0802C0E0
	.align 2, 0
_0802C0CC: .4byte gUnk_080CD45C
_0802C0D0: .4byte gUnk_02027EB4
_0802C0D4: .4byte gUnk_0200D654
_0802C0D8:
	adds r4, #1
	cmp r4, #7
	bls _0802C0B4
	movs r0, #1
_0802C0E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802C0E8
sub_0802C0E8: @ 0x0802C0E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C0FC
	movs r0, #1
	b _0802C178
_0802C0FC:
	ldrb r3, [r5, #0x15]
	lsrs r3, r3, #2
	ldr r0, _0802C17C @ =gUnk_080CD45C
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r4, [r5, #0x48]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r1, #1
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r2, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _0802C180 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802C140
	ldr r7, _0802C184 @ =gUnk_0200D654
_0802C140:
	movs r5, #0
	ldr r1, _0802C188 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r0, r6, r0
	asrs r0, r0, #4
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r1, #8]
	subs r1, r4, r1
	asrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #9
	bl sub_0806FC24
	cmp r0, #0
	bne _0802C176
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080AE4CC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_0802C176:
	adds r0, r5, #0
_0802C178:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802C17C: .4byte gUnk_080CD45C
_0802C180: .4byte gUnk_02027EB4
_0802C184: .4byte gUnk_0200D654
_0802C188: .4byte gRoomControls

	thumb_func_start sub_0802C18C
sub_0802C18C: @ 0x0802C18C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0802C1BC
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0802C1BC
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
_0802C1BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C1CC
sub_0802C1CC: @ 0x0802C1CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0x14]
	lsls r4, r4, #2
	ldr r0, _0802C214 @ =gUnk_080CD464
	adds r4, r4, r0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08008796
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #2
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	movs r0, #3
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08008796
	pop {r4, r5, pc}
	.align 2, 0
_0802C214: .4byte gUnk_080CD464

	thumb_func_start sub_0802C218
sub_0802C218: @ 0x0802C218
	movs r1, #6
	strb r1, [r0, #0xc]
	movs r1, #0xe0
	strh r1, [r0, #0x24]
	movs r1, #0xc0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0802C228
sub_0802C228: @ 0x0802C228
	push {lr}
	ldr r1, _0802C234 @ =gUnk_080CD540
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0802C234: .4byte gUnk_080CD540

	thumb_func_start sub_0802C238
sub_0802C238: @ 0x0802C238
	push {lr}
	ldr r2, _0802C24C @ =gUnk_080CD558
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C24C: .4byte gUnk_080CD558

	thumb_func_start sub_0802C250
sub_0802C250: @ 0x0802C250
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C254
sub_0802C254: @ 0x0802C254
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C258
sub_0802C258: @ 0x0802C258
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #2
	strb r0, [r4, #0xe]
	bl Random
	adds r2, r0, #0
	movs r0, #0x70
	ands r2, r0
	adds r3, r4, #0
	adds r3, #0x7a
	movs r1, #0
	strh r2, [r3]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802C288
	cmp r0, #2
	beq _0802C290
	b _0802C29C
_0802C288:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	b _0802C296
_0802C290:
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r5, #0
_0802C296:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_0802C29C:
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	ldr r0, _0802C310 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	subs r1, #0x4a
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802C314 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0802C62C
	adds r0, r4, #0
	bl sub_0802C4B0
	pop {r4, r5, pc}
	.align 2, 0
_0802C310: .4byte 0x0000FFF0
_0802C314: .4byte gRoomControls

	thumb_func_start sub_0802C318
sub_0802C318: @ 0x0802C318
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802C330
	movs r0, #2
	strb r0, [r2, #0xc]
_0802C330:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802C334
sub_0802C334: @ 0x0802C334
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x7c
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802C36A
	ldr r0, _0802C3C4 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldr r2, _0802C3C8 @ =gLinkEntity
	cmp r2, #0
	bne _0802C34E
	b _0802C4AA
_0802C34E:
	movs r5, #0x32
	ldrsh r0, [r2, r5]
	subs r0, r0, r1
	cmp r0, #0x38
	bhi _0802C35A
	b _0802C4AA
_0802C35A:
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0802C36A:
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802C3C4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r0, #6
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802C3CC
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xc
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0802C4B0
	b _0802C48C
	.align 2, 0
_0802C3C4: .4byte gRoomControls
_0802C3C8: .4byte gLinkEntity
_0802C3CC:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _0802C442
	subs r0, r1, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0802C3EA
	cmp r0, #8
	beq _0802C3F4
	b _0802C442
_0802C3EA:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _0802C442
_0802C3F4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802C442
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802C442
	movs r6, #0
	movs r5, #1
_0802C408:
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0802C420
	ldrh r0, [r2, #0x2e]
	adds r0, #0xc
	subs r0, r0, r6
	strh r0, [r2, #0x2e]
_0802C420:
	adds r6, #0x18
	subs r5, #1
	cmp r5, #0
	bge _0802C408
	adds r0, r4, #0
	bl sub_0802C62C
	bl Random
	movs r1, #0xff
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	b _0802C4AA
_0802C442:
	ldr r0, _0802C45C @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r5, r1, r0
	cmp r5, #4
	ble _0802C460
	adds r0, r4, #0
	bl sub_080AEFB4
	b _0802C48C
	.align 2, 0
_0802C45C: .4byte gRoomControls
_0802C460:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	subs r0, r0, r5
	cmp r0, #0x38
	ble _0802C48C
	adds r0, r4, #0
	bl sub_0802C62C
	bl Random
	movs r1, #0x7f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0802C48C
	strb r0, [r4, #0xc]
_0802C48C:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_0802C4AA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start nullsub_148
nullsub_148: @ 0x0802C4AC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C4B0
sub_0802C4B0: @ 0x0802C4B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r0, #0
	ldr r0, _0802C4D8 @ =0x000001AB
	cmp r1, r0
	blo _0802C4E4
	adds r0, #4
	cmp r1, r0
	bls _0802C4DC
	adds r0, #0x15
	cmp r1, r0
	beq _0802C4E0
	b _0802C4E4
	.align 2, 0
_0802C4D8: .4byte 0x000001AB
_0802C4DC:
	movs r6, #8
	b _0802C4E6
_0802C4E0:
	movs r6, #4
	b _0802C4E6
_0802C4E4:
	movs r6, #0
_0802C4E6:
	bl Random
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0802C518
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C50C
	ldr r0, _0802C508 @ =gUnk_080CD568
	movs r1, #2
	orrs r1, r6
	b _0802C532
	.align 2, 0
_0802C508: .4byte gUnk_080CD568
_0802C50C:
	ldr r0, _0802C514 @ =gUnk_080CD568
	lsls r1, r6, #1
	b _0802C534
	.align 2, 0
_0802C514: .4byte gUnk_080CD568
_0802C518:
	movs r2, #3
	ands r4, r2
	cmp r4, #0
	beq _0802C52C
	ldr r0, _0802C528 @ =gUnk_080CD568
	movs r1, #1
	orrs r1, r6
	b _0802C532
	.align 2, 0
_0802C528: .4byte gUnk_080CD568
_0802C52C:
	ldr r0, _0802C570 @ =gUnk_080CD568
	adds r1, r6, #0
	orrs r1, r2
_0802C532:
	lsls r1, r1, #1
_0802C534:
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5, #0x24]
	bl Random
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0802C584
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0802C55E
	movs r0, #0
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl UpdateSprite
_0802C55E:
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C578
	ldr r0, _0802C574 @ =gUnk_080CD580
	movs r1, #1
	orrs r1, r6
	b _0802C5B2
	.align 2, 0
_0802C570: .4byte gUnk_080CD568
_0802C574: .4byte gUnk_080CD580
_0802C578:
	ldr r0, _0802C580 @ =gUnk_080CD580
	adds r0, r6, r0
	ldrb r0, [r0]
	b _0802C5B6
	.align 2, 0
_0802C580: .4byte gUnk_080CD580
_0802C584:
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	beq _0802C596
	movs r0, #1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #1
	bl UpdateSprite
_0802C596:
	movs r2, #3
	ands r4, r2
	cmp r4, #0
	beq _0802C5AC
	ldr r0, _0802C5A8 @ =gUnk_080CD580
	movs r1, #2
	orrs r1, r6
	b _0802C5B2
	.align 2, 0
_0802C5A8: .4byte gUnk_080CD580
_0802C5AC:
	ldr r0, _0802C5E4 @ =gUnk_080CD580
	adds r1, r6, #0
	orrs r1, r2
_0802C5B2:
	adds r1, r1, r0
	ldrb r0, [r1]
_0802C5B6:
	strb r0, [r5, #0x15]
	bl Random
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0802C5FC
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C5EC
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C5E8 @ =gUnk_080CD58C
	movs r0, #1
	orrs r6, r0
	b _0802C61A
	.align 2, 0
_0802C5E4: .4byte gUnk_080CD580
_0802C5E8: .4byte gUnk_080CD58C
_0802C5EC:
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C5F8 @ =gUnk_080CD58C
	orrs r6, r0
	b _0802C61A
	.align 2, 0
_0802C5F8: .4byte gUnk_080CD58C
_0802C5FC:
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C614
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C610 @ =gUnk_080CD58C
	movs r0, #2
	orrs r6, r0
	b _0802C61A
	.align 2, 0
_0802C610: .4byte gUnk_080CD58C
_0802C614:
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C628 @ =gUnk_080CD58C
_0802C61A:
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802C628: .4byte gUnk_080CD58C

	thumb_func_start sub_0802C62C
sub_0802C62C: @ 0x0802C62C
	adds r3, r0, #0
	movs r2, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r3, #0x32]
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r3, #0x2e]
	ldrb r1, [r3, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #0x18]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x7c
	strh r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C660
sub_0802C660: @ 0x0802C660
	push {lr}
	ldr r1, _0802C66C @ =gUnk_080CD5D4
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0802C66C: .4byte gUnk_080CD5D4

	thumb_func_start sub_0802C670
sub_0802C670: @ 0x0802C670
	push {lr}
	ldr r2, _0802C684 @ =gUnk_080CD5EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C684: .4byte gUnk_080CD5EC

	thumb_func_start sub_0802C688
sub_0802C688: @ 0x0802C688
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802C69A
	b _0802C79E
_0802C69A:
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x16
	bhi _0802C740
	lsls r0, r0, #2
	ldr r1, _0802C6AC @ =_0802C6B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C6AC: .4byte _0802C6B0
_0802C6B0: @ jump table
	.4byte _0802C70C @ case 0
	.4byte _0802C70C @ case 1
	.4byte _0802C740 @ case 2
	.4byte _0802C740 @ case 3
	.4byte _0802C740 @ case 4
	.4byte _0802C740 @ case 5
	.4byte _0802C740 @ case 6
	.4byte _0802C740 @ case 7
	.4byte _0802C740 @ case 8
	.4byte _0802C740 @ case 9
	.4byte _0802C740 @ case 10
	.4byte _0802C740 @ case 11
	.4byte _0802C740 @ case 12
	.4byte _0802C740 @ case 13
	.4byte _0802C72C @ case 14
	.4byte _0802C740 @ case 15
	.4byte _0802C740 @ case 16
	.4byte _0802C740 @ case 17
	.4byte _0802C740 @ case 18
	.4byte _0802C740 @ case 19
	.4byte _0802C72C @ case 20
	.4byte _0802C72C @ case 21
	.4byte _0802C72C @ case 22
_0802C70C:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C7A6
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802C728 @ =gLinkEntity
	adds r0, #0x42
	movs r1, #4
	strb r1, [r0]
	b _0802C7A6
	.align 2, 0
_0802C728: .4byte gLinkEntity
_0802C72C:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C7A6
_0802C740:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x1c
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802C75E
	cmp r0, #2
	beq _0802C770
	b _0802C79E
_0802C75E:
	adds r0, r4, #0
	bl sub_0802CB68
	ldr r0, _0802C76C @ =0x0000014D
	bl sub_08004488
	b _0802C79E
	.align 2, 0
_0802C76C: .4byte 0x0000014D
_0802C770:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
_0802C79E:
	ldr r1, _0802C7A8 @ =gUnk_080CD5D4
	adds r0, r4, #0
	bl sub_0804AA30
_0802C7A6:
	pop {r4, pc}
	.align 2, 0
_0802C7A8: .4byte gUnk_080CD5D4

	thumb_func_start sub_0802C7AC
sub_0802C7AC: @ 0x0802C7AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802C7F6
	adds r0, r4, #0
	bl sub_0806F520
	adds r1, r0, #0
	cmp r1, #0
	bne _0802C7F6
	strb r1, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	beq _0802C7E2
	movs r1, #0x80
	cmp r0, #0
	beq _0802C7E0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0802C7E0:
	strh r1, [r4, #0x24]
_0802C7E2:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	b _0802C816
_0802C7F6:
	ldr r0, _0802C818 @ =0x0000FFFF
	strh r0, [r4, #0x36]
	ldr r1, _0802C81C @ =gUnk_080CD600
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802C816
	adds r0, r4, #0
	bl sub_08004274
_0802C816:
	pop {r4, pc}
	.align 2, 0
_0802C818: .4byte 0x0000FFFF
_0802C81C: .4byte gUnk_080CD600

	thumb_func_start sub_0802C820
sub_0802C820: @ 0x0802C820
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C82C
sub_0802C82C: @ 0x0802C82C
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802C834
sub_0802C834: @ 0x0802C834
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802C83C
sub_0802C83C: @ 0x0802C83C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802C88C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C884
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0802C86C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	cmp r1, #2
	beq _0802C870
	cmp r1, #6
	beq _0802C876
	b _0802C87C
	.align 2, 0
_0802C86C: .4byte gLinkEntity
_0802C870:
	ldrh r0, [r4, #0x2e]
	subs r0, #6
	b _0802C87A
_0802C876:
	ldrh r0, [r4, #0x2e]
	adds r0, #6
_0802C87A:
	strh r0, [r4, #0x2e]
_0802C87C:
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C8B2
_0802C884:
	adds r0, r4, #0
	bl sub_0802CC18
	b _0802C8A2
_0802C88C:
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
_0802C8A2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
_0802C8B2:
	pop {r4, pc}

	thumb_func_start nullsub_149
nullsub_149: @ 0x0802C8B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C8B8
sub_0802C8B8: @ 0x0802C8B8
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	bl sub_0802CBC4
	pop {pc}

	thumb_func_start sub_0802C8C4
sub_0802C8C4: @ 0x0802C8C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A7D4
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	pop {r4, pc}

	thumb_func_start sub_0802C8D8
sub_0802C8D8: @ 0x0802C8D8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	bl Random
	movs r1, #0x18
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0x15]
	strb r4, [r5, #0x16]
	movs r0, #0x12
	strb r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x82
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r0, #3
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #4
	adds r0, r5, #0
	bl UpdateSprite
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802C91C
sub_0802C91C: @ 0x0802C91C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C97A
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802C950
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #2
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
_0802C950:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802C964
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C9B4
_0802C964:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #8
	bne _0802C972
	adds r0, r4, #0
	bl sub_080A29FC
_0802C972:
	adds r0, r4, #0
	bl sub_0802CC18
	b _0802C9B4
_0802C97A:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802C992
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802C992:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C9B4
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r1, #8
	movs r0, #0x1c
	ands r1, r0
	strb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802C9B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802C9B8
sub_0802C9B8: @ 0x0802C9B8
	push {lr}
	ldr r2, _0802C9CC @ =gUnk_080CD618
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C9CC: .4byte gUnk_080CD618

	thumb_func_start sub_0802C9D0
sub_0802C9D0: @ 0x0802C9D0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0802CC18
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802CA10
sub_0802CA10: @ 0x0802CA10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802CA30 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #5
	beq _0802CA42
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA34
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CA66
	.align 2, 0
_0802CA30: .4byte gLinkState
_0802CA34:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
	b _0802CA66
_0802CA42:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0802CA68 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	movs r1, #4
	orrs r0, r1
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
_0802CA66:
	pop {r4, pc}
	.align 2, 0
_0802CA68: .4byte gLinkEntity

	thumb_func_start sub_0802CA6C
sub_0802CA6C: @ 0x0802CA6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA84
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CA90
_0802CA84:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
_0802CA90:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CA94
sub_0802CA94: @ 0x0802CA94
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #3
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	movs r0, #1
	strb r0, [r3, #0xf]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r0, #0
	strh r2, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x83
	strb r0, [r1]
	subs r1, #2
	strb r0, [r1]
	ldr r0, _0802CAF4 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	movs r0, #4
	orrs r1, r0
	movs r0, #0x1c
	ands r1, r0
	strb r1, [r3, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r3, #0
	bl UpdateSprite
	pop {pc}
	.align 2, 0
_0802CAF4: .4byte gLinkEntity

	thumb_func_start sub_0802CAF8
sub_0802CAF8: @ 0x0802CAF8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CB10
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CB62
_0802CB10:
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CB30
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802CB30
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802CB30:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08078930
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802CB5C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802CB5C
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
_0802CB5C:
	adds r0, r4, #0
	bl sub_08004274
_0802CB62:
	pop {r4, pc}

	thumb_func_start nullsub_150
nullsub_150: @ 0x0802CB64
	bx lr
	.align 2, 0

	thumb_func_start sub_0802CB68
sub_0802CB68: @ 0x0802CB68
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	bl Random
	adds r2, r0, #0
	movs r0, #0x18
	ands r2, r0
	movs r0, #4
	orrs r2, r0
	orrs r2, r4
	strb r2, [r5, #0x15]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CBB2
	movs r0, #0xc8
	strb r0, [r5, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	adds r0, r5, #0
	bl UpdateSprite
	b _0802CBC2
_0802CBB2:
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	lsrs r1, r2, #4
	adds r0, r5, #0
	bl UpdateSprite
_0802CBC2:
	pop {r4, r5, pc}

	thumb_func_start sub_0802CBC4
sub_0802CBC4: @ 0x0802CBC4
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CBF0
	bl sub_08079184
_0802CBF0:
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _0802CC14
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
_0802CC14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CC18
sub_0802CC18: @ 0x0802CC18
	push {lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CC34
	movs r0, #0x1c
	strb r0, [r1]
	ldr r0, _0802CC38 @ =0x0000014D
	bl sub_08004488
_0802CC34:
	pop {pc}
	.align 2, 0
_0802CC38: .4byte 0x0000014D

	thumb_func_start sub_0802CC3C
sub_0802CC3C: @ 0x0802CC3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802CC64 @ =gUnk_080CD6FC
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802CC64: .4byte gUnk_080CD6FC

	thumb_func_start sub_0802CC68
sub_0802CC68: @ 0x0802CC68
	push {lr}
	ldr r2, _0802CC7C @ =gUnk_080CD714
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802CC7C: .4byte gUnk_080CD714

	thumb_func_start sub_0802CC80
sub_0802CC80: @ 0x0802CC80
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	blt _0802CCB8
	cmp r1, #1
	ble _0802CC9A
	cmp r1, #0x1e
	bne _0802CCB8
_0802CC9A:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
	ldr r2, _0802CCD4 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
_0802CCB8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CCCA
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802CCCA:
	ldr r1, _0802CCD8 @ =gUnk_080CD6FC
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0802CCD4: .4byte gLinkEntity
_0802CCD8: .4byte gUnk_080CD6FC

	thumb_func_start nullsub_151
nullsub_151: @ 0x0802CCDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802CCE0
sub_0802CCE0: @ 0x0802CCE0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	bl Random
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	ldr r0, _0802CD50 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl Random
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
	lsrs r0, r0, #8
	movs r1, #0x60
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r5, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0802CF64
	adds r0, r4, #0
	bl sub_0802CFD8
	pop {r4, r5, pc}
	.align 2, 0
_0802CD50: .4byte 0x0000FFFE

	thumb_func_start sub_0802CD54
sub_0802CD54: @ 0x0802CD54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	bl sub_0802CFD8
	adds r1, r5, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802CD76
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802CDC8
_0802CD76:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802CDC8
	adds r6, r5, #0
	adds r6, #0x7b
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802CDC4
	movs r0, #2
	strb r0, [r5, #0xc]
	bl Random
	adds r4, r0, #0
	lsrs r0, r4, #0x10
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	bl Random
	ldr r2, _0802CDC0 @ =gUnk_080CD728
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	lsrs r4, r4, #0x18
	movs r0, #0x60
	ands r4, r0
	strb r4, [r6]
	b _0802CDE4
	.align 2, 0
_0802CDC0: .4byte gUnk_080CD728
_0802CDC4:
	subs r0, #1
	strb r0, [r6]
_0802CDC8:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CDDE
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0802CF64
_0802CDDE:
	adds r0, r5, #0
	bl sub_0806F69C
_0802CDE4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802CDE8
sub_0802CDE8: @ 0x0802CDE8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802CE3C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802CE3C
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802CE2E
	ldr r0, _0802CE38 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0802CF8C
_0802CE2E:
	adds r0, r4, #0
	bl sub_0806F69C
	b _0802CE58
	.align 2, 0
_0802CE38: .4byte gUnk_020000B0
_0802CE3C:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x96
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
_0802CE58:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802CFD8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CE68
sub_0802CE68: @ 0x0802CE68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0802CED4 @ =gLinkState
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #0x1a]
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r5, _0802CED8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	bne _0802CEAC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_0802CEAC:
	adds r0, r4, #0
	bl sub_0802CFD8
	adds r0, r4, #0
	bl sub_08004274
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802CEDC
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802CEF0
	.align 2, 0
_0802CED4: .4byte gLinkState
_0802CED8: .4byte gLinkEntity
_0802CEDC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802CEF0
	strb r2, [r3]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
_0802CEF0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802CEF4
sub_0802CEF4: @ 0x0802CEF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802CFD8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CF28
	bl sub_0805E5A8
	ldr r1, _0802CF20 @ =gUnk_0813AB1C
	ldr r0, _0802CF24 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08080840
	b _0802CF5A
	.align 2, 0
_0802CF20: .4byte gUnk_0813AB1C
_0802CF24: .4byte gUnk_02033A90
_0802CF28:
	ldr r0, [r4, #0x34]
	ldr r1, _0802CF5C @ =0xFFFE0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802CF4A
	ldrb r0, [r4, #0x18]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r4, #0x18]
_0802CF4A:
	ldr r1, _0802CF60 @ =gLinkState
	ldrb r0, [r1, #0xa]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
_0802CF5A:
	pop {r4, pc}
	.align 2, 0
_0802CF5C: .4byte 0xFFFE0000
_0802CF60: .4byte gLinkState

	thumb_func_start sub_0802CF64
sub_0802CF64: @ 0x0802CF64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0802CF76
	bl Random
	b _0802CF7E
_0802CF76:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
_0802CF7E:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802CF8C
	pop {r4, pc}

	thumb_func_start sub_0802CF8C
sub_0802CF8C: @ 0x0802CF8C
	push {r4, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	adds r2, r1, #2
	movs r0, #0x1c
	ands r2, r0
	ldrb r4, [r3, #0x14]
	lsls r0, r4, #2
	subs r0, r2, r0
	adds r0, #6
	cmp r0, #0xc
	bls _0802CFA8
	lsrs r0, r2, #2
	b _0802CFB8
_0802CFA8:
	adds r0, r1, #1
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	ble _0802CFD0
	lsrs r0, r2, #2
	cmp r0, r4
	beq _0802CFD0
_0802CFB8:
	strb r0, [r3, #0x14]
	lsrs r0, r2, #3
	lsls r0, r0, #2
	ldr r1, _0802CFD4 @ =gUnk_080CD730
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r1, [r2, #2]
	adds r0, #2
	strh r1, [r0]
_0802CFD0:
	pop {r4, pc}
	.align 2, 0
_0802CFD4: .4byte gUnk_080CD730

	thumb_func_start sub_0802CFD8
sub_0802CFD8: @ 0x0802CFD8
	push {lr}
	mov ip, r0
	ldr r2, _0802D014 @ =gUnk_080CD740
	mov r3, ip
	adds r3, #0x7a
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r0, ip
	adds r0, #0x74
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r0, ip
	adds r0, #0x76
	ldrh r3, [r0]
	mov r0, ip
	bl sub_0805EC9C
	pop {pc}
	.align 2, 0
_0802D014: .4byte gUnk_080CD740

	thumb_func_start sub_0802D018
sub_0802D018: @ 0x0802D018
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802D030 @ =gUnk_080CD748
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802D030: .4byte gUnk_080CD748

	thumb_func_start sub_0802D034
sub_0802D034: @ 0x0802D034
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802D0F4
	cmp r0, #1
	bgt _0802D04C
	cmp r0, #0
	beq _0802D104
	b _0802D148
_0802D04C:
	cmp r0, #2
	bne _0802D148
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	bne _0802D090
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xe]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x74
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	ldr r1, _0802D088 @ =gLCDControls
	ldrb r2, [r2]
	adds r0, r1, #0
	adds r0, #0x68
	strh r2, [r0]
	adds r1, #0x66
	ldr r0, _0802D08C @ =0x00001442
	strh r0, [r1]
	movs r0, #0xf6
	bl PlaySFX
	b _0802D148
	.align 2, 0
_0802D088: .4byte gLCDControls
_0802D08C: .4byte 0x00001442
_0802D090:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802D0D2
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _0802D0EC @ =gLCDControls
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _0802D0D2
	ldr r0, _0802D0F0 @ =gLinkEntity
	bl sub_0807AABC
	bl sub_0805E780
_0802D0D2:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802D148
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D148
	movs r0, #0xf7
	bl PlaySFX
	b _0802D148
	.align 2, 0
_0802D0EC: .4byte gLCDControls
_0802D0F0: .4byte gLinkEntity
_0802D0F4:
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0804A7D4
	b _0802D148
_0802D104:
	ldr r5, _0802D14C @ =gLinkState
	movs r0, #1
	strb r0, [r5, #0x14]
	ldr r1, _0802D150 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802D128
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xfa
	strb r0, [r1]
_0802D128:
	ldr r1, _0802D154 @ =gUnk_080CD75C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802E518
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802D148:
	pop {r4, r5, pc}
	.align 2, 0
_0802D14C: .4byte gLinkState
_0802D150: .4byte gLinkEntity
_0802D154: .4byte gUnk_080CD75C

	thumb_func_start sub_0802D158
sub_0802D158: @ 0x0802D158
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r0, _0802D16C @ =gUnk_02034490
	strb r1, [r0]
	movs r0, #7
	movs r1, #8
	bl DoFade
	pop {pc}
	.align 2, 0
_0802D16C: .4byte gUnk_02034490

	thumb_func_start sub_0802D170
sub_0802D170: @ 0x0802D170
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0802D1F0 @ =gUnk_03000FD0
	ldrb r3, [r0]
	cmp r3, #0
	bne _0802D216
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0802D1FC
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #0x10
	strb r1, [r0, #1]
	ldr r0, [r4]
	strb r1, [r0, #0x19]
	ldr r0, [r4]
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	cmp r0, #0
	bne _0802D216
	ldr r0, [r4]
	bl sub_0802EA88
	cmp r0, #0
	bne _0802D216
	movs r0, #2
	strb r0, [r5, #0xc]
	ldr r2, _0802D1F4 @ =gLinkEntity
	ldr r4, _0802D1F8 @ =gRoomControls
	ldrh r0, [r4, #6]
	adds r0, #0x98
	movs r1, #0
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #8]
	adds r0, #0xd8
	strh r0, [r2, #0x32]
	strb r1, [r2, #0x14]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r2, r6]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #2
	bl sub_0807BA8C
	str r5, [r4, #0x30]
	movs r0, #6
	movs r1, #8
	bl DoFade
	b _0802D216
	.align 2, 0
_0802D1F0: .4byte gUnk_03000FD0
_0802D1F4: .4byte gLinkEntity
_0802D1F8: .4byte gRoomControls
_0802D1FC:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x80
	strb r3, [r0]
	adds r2, r5, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r0, [r2]
	strb r3, [r0, #0x19]
_0802D216:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802D218
sub_0802D218: @ 0x0802D218
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	adds r1, r0, #0
	cmp r1, #0
	bne _0802D254
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x7c
	movs r0, #0xb4
	strh r0, [r2]
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	ldrh r3, [r2]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #2
	bl CreateObjectWithParent
_0802D254:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802D258
sub_0802D258: @ 0x0802D258
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802D276
	adds r0, r5, #0
	bl sub_0802E1D0
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _0802D288
	strb r0, [r5, #0xc]
	b _0802D334
_0802D276:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802D288
	adds r0, r5, #0
	movs r1, #0x4e
	bl UpdateSprite
_0802D288:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0802D2B4
	ldr r1, _0802D2B0 @ =gUnk_080CD774
	ldrb r0, [r5, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r1, [r5, #0xf]
	movs r0, #0x3f
	ands r0, r1
	adds r0, #2
	strb r0, [r5, #0xf]
	b _0802D2B8
	.align 2, 0
_0802D2B0: .4byte gUnk_080CD774
_0802D2B4:
	subs r0, #1
	strb r0, [r5, #0xe]
_0802D2B8:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bhi _0802D2D0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802D2E4
_0802D2D0:
	adds r4, r5, #0
	adds r4, #0x84
	cmp r0, #0xff
	beq _0802D2E4
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA68
_0802D2E4:
	ldr r5, _0802D338 @ =gUnk_030010A0
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0802D2F8
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_0802D2F8:
	ldr r0, [r5]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802D32E
	bl Random
	movs r1, #5
	ands r1, r0
	ldr r0, [r4]
	lsls r1, r1, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _0802D32E
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802D32E:
	ldr r0, [r4]
	bl sub_0802E768
_0802D334:
	pop {r4, r5, pc}
	.align 2, 0
_0802D338: .4byte gUnk_030010A0

	thumb_func_start sub_0802D33C
sub_0802D33C: @ 0x0802D33C
	push {r4, r5, r6, r7, lr}
	adds r0, #0x84
	ldr r6, [r0]
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r7, #0
_0802D34A:
	ldm r5!, {r0}
	bl sub_0805E7BC
	adds r4, #1
	cmp r4, #3
	bls _0802D34A
	lsls r1, r4, #2
	adds r1, r7, r1
	ldr r0, [r1]
	adds r0, #0x45
	movs r3, #0
	strb r3, [r0]
	ldr r1, [r1]
	adds r1, #0x6d
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r6, #0x50]
	adds r0, #0x45
	strb r3, [r0]
	ldr r0, [r6, #0x50]
	strb r3, [r0, #0xb]
	ldr r3, [r6, #0x50]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	bl sub_0805E780
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802D394
sub_0802D394: @ 0x0802D394
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D3B4 @ =gUnk_080CD7B8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_0802D3B4: .4byte gUnk_080CD7B8

	thumb_func_start sub_0802D3B8
sub_0802D3B8: @ 0x0802D3B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #3
	bl GetProgressFlag
	cmp r0, #0
	beq _0802D3DE
	ldr r2, _0802D3F4 @ =gLCDControls
	ldrh r1, [r2]
	ldr r0, _0802D3F8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802D3FC @ =gLinkEntity
	bl sub_0807AABC
	bl sub_0805E780
_0802D3DE:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D3EA
	b _0802D63C
_0802D3EA:
	lsls r0, r0, #2
	ldr r1, _0802D400 @ =_0802D404
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D3F4: .4byte gLCDControls
_0802D3F8: .4byte 0x0000FDFF
_0802D3FC: .4byte gLinkEntity
_0802D400: .4byte _0802D404
_0802D404: @ jump table
	.4byte _0802D420 @ case 0
	.4byte _0802D544 @ case 1
	.4byte _0802D58C @ case 2
	.4byte _0802D5A8 @ case 3
	.4byte _0802D5EC @ case 4
	.4byte _0802D5F6 @ case 5
	.4byte _0802D61A @ case 6
_0802D420:
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #0xb
	strb r2, [r0]
	subs r0, #7
	strb r2, [r0]
	movs r0, #0x96
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_0802EB9C
	movs r0, #0x54
	bl sub_0801D8E0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r5, #0
	bne _0802D470
	adds r0, r4, #0
	bl sub_0804A7D4
	bl sub_0805E780
_0802D470:
	ldr r0, [r7]
	str r0, [r4, #0x64]
	movs r6, #0
	movs r0, #0
	mov r8, r0
_0802D47A:
	movs r0, #0x24
	movs r1, #1
	bl CreateEnemy
	str r0, [r4, #0x54]
	adds r3, r6, #1
	cmp r0, #0
	beq _0802D4D6
	strb r3, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x38
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldrh r2, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	lsls r2, r6, #2
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r4, #0x54]
	str r1, [r0]
	adds r2, r5, r2
	movs r0, #0x10
	strb r0, [r2, #1]
	mov r0, r8
	strb r0, [r2, #0x19]
	adds r0, r5, #0
	adds r0, #0x35
	mov r1, r8
	strb r1, [r0]
_0802D4D6:
	adds r6, r3, #0
	cmp r6, #4
	bls _0802D47A
	movs r0, #0x24
	movs r1, #2
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r4, #0x54]
	cmp r2, #0
	beq _0802D52E
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	movs r3, #0
	strh r0, [r1, #0x2e]
	ldr r2, [r4, #0x54]
	adds r1, r6, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x50]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r3, [r0]
	adds r0, #8
	strb r3, [r0]
_0802D52E:
	ldr r0, _0802D540 @ =gLinkState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x4c
	bl UpdateSprite
	b _0802D63C
	.align 2, 0
_0802D540: .4byte gLinkState
_0802D544:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D55C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
_0802D55C:
	ldr r1, _0802D588 @ =gUnk_080CD7C4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x24
	bl UpdateSprite
	b _0802D63C
	.align 2, 0
_0802D588: .4byte gUnk_080CD7C4
_0802D58C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	b _0802D63C
_0802D5A8:
	ldr r0, _0802D5E8 @ =gUnk_080CD884
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x4f
	bl UpdateSprite
	b _0802D63C
	.align 2, 0
_0802D5E8: .4byte gUnk_080CD884
_0802D5EC:
	adds r0, r4, #0
	movs r1, #0x2c
	bl LoadAnimation
	b _0802D63C
_0802D5F6:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x2d
	bl LoadAnimation
	b _0802D63C
_0802D61A:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x50
	bl UpdateSprite
_0802D63C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802D648
	adds r0, r4, #0
	bl sub_0802D86C
_0802D648:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802D650
sub_0802D650: @ 0x0802D650
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D670 @ =gUnk_080CD7E4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x84
	ldr r0, [r4]
	bl sub_0802E7E4
	pop {r4, pc}
	.align 2, 0
_0802D670: .4byte gUnk_080CD7E4

	thumb_func_start sub_0802D674
sub_0802D674: @ 0x0802D674
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802D6B4 @ =gUnk_02034490
	movs r7, #1
	strb r7, [r0]
	ldr r5, _0802D6B8 @ =gLinkEntity
	ldr r6, [r5, #0x34]
	cmp r6, #0
	bne _0802D6EC
	ldr r0, [r4, #0x7c]
	cmp r0, #0x96
	bne _0802D692
	ldr r0, _0802D6BC @ =0x00000127
	bl PlaySFX
_0802D692:
	ldr r0, [r4, #0x7c]
	subs r1, r0, #1
	str r1, [r4, #0x7c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802D6C4
	strb r7, [r4, #0xd]
	movs r0, #0x5a
	str r0, [r4, #0x7c]
	ldr r0, _0802D6C0 @ =gRoomControls
	str r4, [r0, #0x30]
	ldr r0, _0802D6BC @ =0x00000127
	bl PlaySFX
	b _0802D6EC
	.align 2, 0
_0802D6B4: .4byte gUnk_02034490
_0802D6B8: .4byte gLinkEntity
_0802D6BC: .4byte 0x00000127
_0802D6C0: .4byte gRoomControls
_0802D6C4:
	cmp r1, #0x3c
	bhi _0802D6DC
	cmp r1, #0x3c
	bne _0802D6D8
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_080A2CFC
_0802D6D8:
	strb r6, [r5, #0x14]
	b _0802D6EC
_0802D6DC:
	cmp r1, #0x59
	bhi _0802D6E4
	movs r0, #2
	b _0802D6EA
_0802D6E4:
	cmp r1, #0x77
	bhi _0802D6EC
	movs r0, #6
_0802D6EA:
	strb r0, [r5, #0x14]
_0802D6EC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802D6F0
sub_0802D6F0: @ 0x0802D6F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x7c]
	subs r0, #1
	str r0, [r2, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D712
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #0x5a
	str r0, [r2, #0x7c]
	movs r0, #0x96
	movs r1, #0
	bl sub_08080964
_0802D712:
	pop {pc}

	thumb_func_start sub_0802D714
sub_0802D714: @ 0x0802D714
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	subs r0, #1
	str r0, [r4, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D77A
	adds r0, r4, #0
	adds r0, #0x84
	ldr r5, [r0]
	movs r1, #0
	movs r3, #0
	movs r2, #0x10
	adds r0, r5, #0
_0802D734:
	strh r3, [r0, #0x18]
	strb r2, [r0, #1]
	adds r0, #4
	adds r1, #1
	cmp r1, #5
	bls _0802D734
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x4d
	bl UpdateSprite
	movs r0, #0x24
	movs r1, #5
	bl CreateEnemy
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0802D774
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x38]
	adds r0, #0x84
	str r5, [r0]
_0802D774:
	ldr r1, [r5, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
_0802D77A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802D77C
sub_0802D77C: @ 0x0802D77C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802D7B0 @ =gUnk_030010A0
	ldr r4, [r0]
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne _0802D7AC
	adds r0, r5, #0
	bl sub_0802E430
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _0802D7AC
	strb r4, [r5, #0xf]
	strb r4, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
_0802D7AC:
	pop {r4, r5, pc}
	.align 2, 0
_0802D7B0: .4byte gUnk_030010A0

	thumb_func_start sub_0802D7B4
sub_0802D7B4: @ 0x0802D7B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D82C
	ldr r4, _0802D7FC @ =gUnk_080CD7F8
	ldrb r2, [r5, #0xf]
	adds r0, r2, r4
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802D810
	strb r3, [r5, #0xf]
	strb r3, [r5, #0xe]
	movs r2, #1
	strb r2, [r5, #0xc]
	strb r3, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r1, _0802D800 @ =gRoomControls
	ldr r0, _0802D804 @ =gLinkEntity
	str r0, [r1, #0x30]
	ldr r0, _0802D808 @ =gLinkState
	adds r0, #0x8b
	strb r2, [r0]
	ldr r0, _0802D80C @ =gUnk_02034490
	strb r3, [r0]
	movs r0, #0x2e
	bl PlaySFX
	b _0802D868
	.align 2, 0
_0802D7FC: .4byte gUnk_080CD7F8
_0802D800: .4byte gRoomControls
_0802D804: .4byte gLinkEntity
_0802D808: .4byte gLinkState
_0802D80C: .4byte gUnk_02034490
_0802D810:
	strb r1, [r5, #0xe]
	adds r0, r2, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0xf]
	adds r0, #2
	strb r0, [r5, #0xf]
	ldr r0, _0802D828 @ =0x00000127
	bl PlaySFX
	b _0802D830
	.align 2, 0
_0802D828: .4byte 0x00000127
_0802D82C:
	subs r0, #1
	strb r0, [r5, #0xe]
_0802D830:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bhi _0802D848
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802D85C
_0802D848:
	adds r4, r5, #0
	adds r4, #0x84
	cmp r0, #0xff
	beq _0802D85C
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA68
_0802D85C:
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
_0802D868:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802D86C
sub_0802D86C: @ 0x0802D86C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D878
	b _0802DB7E
_0802D878:
	lsls r0, r0, #2
	ldr r1, _0802D884 @ =_0802D888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D884: .4byte _0802D888
_0802D888: @ jump table
	.4byte _0802DB64 @ case 0
	.4byte _0802D8A4 @ case 1
	.4byte _0802D8CE @ case 2
	.4byte _0802DA54 @ case 3
	.4byte _0802D94C @ case 4
	.4byte _0802D9A2 @ case 5
	.4byte _0802D9F8 @ case 6
_0802D8A4:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D8CE
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D8BE
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802D8C6
_0802D8BE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802D8CC
_0802D8C6:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802D8CC:
	strb r0, [r4, #0x10]
_0802D8CE:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D8DE
	b _0802DB7E
_0802D8DE:
	ldr r0, [r4, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D918
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802D906
	adds r0, r4, #0
	bl sub_0801D230
	adds r0, r4, #0
	movs r1, #0xc9
	bl sub_0801D040
	b _0802D918
_0802D906:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0801D230
	adds r0, r4, #0
	movs r1, #0xca
	bl sub_0801D040
_0802D918:
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D924
	b _0802DB7E
_0802D924:
	ldr r1, _0802D944 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #8
	movs r3, #8
	bl sub_080041A0
	cmp r0, #0
	bne _0802D936
	b _0802DB7E
_0802D936:
	ldr r0, _0802D948 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfc
	strb r1, [r0]
	b _0802DB7E
	.align 2, 0
_0802D944: .4byte gLinkEntity
_0802D948: .4byte gLinkState
_0802D94C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D95E
	adds r0, r4, #0
	bl sub_080042B8
	b _0802DB7E
_0802D95E:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r2, r0, #0
	cmp r2, #0
	beq _0802D970
	b _0802DB7E
_0802D970:
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	movs r1, #1
	strb r1, [r0]
	strb r2, [r4, #0xe]
_0802D97A:
	ldrb r3, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #0
	bl CreateObjectWithParent
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0802D97A
	movs r0, #0xa8
	lsls r0, r0, #1
	bl PlaySFX
_0802D99C:
	bl sub_0805E780
	b _0802DB7E
_0802D9A2:
	ldr r0, _0802D9F4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D9B8
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802D9B8
	b _0802DB7E
_0802D9B8:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802D9CE
	b _0802DB7E
_0802D9CE:
	movs r0, #0x24
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802D9F4: .4byte gUnk_030010A0
_0802D9F8:
	ldr r0, _0802DA50 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DA0E
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802DA0E
	b _0802DB7E
_0802DA0E:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802DA24
	b _0802DB7E
_0802DA24:
	movs r0, #0x24
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
	ldr r2, [r1]
	ldr r0, [r4, #0x54]
	str r0, [r2, #0x38]
	adds r0, #0x84
	ldr r1, [r1]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802DA50: .4byte gUnk_030010A0
_0802DA54:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DA96
	subs r0, r1, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802DA96
	adds r5, r4, #0
	adds r5, #0x75
	ldrb r0, [r5]
	adds r0, #2
	strb r0, [r5]
	ldr r7, _0802DAD4 @ =gUnk_080CD884
	ldrb r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r6]
	cmp r0, #0
	beq _0802DA96
	adds r0, r4, #0
	bl sub_0801D230
	ldrb r0, [r5]
	adds r0, #1
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D040
_0802DA96:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802DAD8
	ldrb r2, [r6]
	cmp r2, #0
	bne _0802DAD8
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _0802DB20
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x50]
	movs r0, #4
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x50]
	strb r2, [r0, #0xb]
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	strb r2, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	bl PlaySFX
	b _0802DB20
	.align 2, 0
_0802DAD4: .4byte gUnk_080CD884
_0802DAD8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldrb r1, [r4, #0xe]
	adds r3, r0, #0
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _0802DB20
	adds r0, r1, #0
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DB08
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bls _0802DB1A
	movs r0, #0x28
	b _0802DB18
_0802DB08:
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _0802DB1A
	movs r0, #0x30
_0802DB18:
	strb r0, [r4, #0x1e]
_0802DB1A:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
_0802DB20:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802DB7E
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _0802DB7E
	movs r0, #0x24
	movs r1, #4
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DB7E
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	b _0802D99C
_0802DB64:
	ldr r1, _0802DB80 @ =gUnk_080CD810
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802DB7E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802DB80: .4byte gUnk_080CD810

	thumb_func_start sub_0802DB84
sub_0802DB84: @ 0x0802DB84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0802DBB0 @ =gLinkEntity
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r2, [r1]
	ldrb r1, [r2, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0802DBB4
	movs r0, #1
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	b _0802DC1A
	.align 2, 0
_0802DBB0: .4byte gLinkEntity
_0802DBB4:
	ldrb r0, [r2, #1]
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DBCE
	movs r3, #0
	ldrb r1, [r5, #0xe]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xe]
	b _0802DBD2
_0802DBCE:
	movs r3, #1
	strb r3, [r5, #0xe]
_0802DBD2:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802DBF0
	cmp r0, #1
	bgt _0802DBE6
	cmp r0, #0
	beq _0802DBEC
	b _0802DBF8
_0802DBE6:
	cmp r0, #2
	beq _0802DBF4
	b _0802DBF8
_0802DBEC:
	movs r0, #0x30
	b _0802DBF6
_0802DBF0:
	movs r0, #0x40
	b _0802DBF6
_0802DBF4:
	movs r0, #0x50
_0802DBF6:
	strh r0, [r5, #0x24]
_0802DBF8:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r2, [r5, r1]
	movs r1, #5
	bl sub_0802EA48
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
	adds r0, r5, #0
	bl sub_0802EBC4
_0802DC1A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802DC1C
sub_0802DC1C: @ 0x0802DC1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0802DC40 @ =gLinkEntity
	bl sub_080045C4
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	subs r3, r0, r3
	movs r0, #0x1f
	ands r3, r0
	cmp r3, #0x10
	bls _0802DC44
	cmp r3, #0x1d
	bhi _0802DC54
	b _0802DC48
	.align 2, 0
_0802DC40: .4byte gLinkEntity
_0802DC44:
	cmp r3, #2
	bls _0802DC54
_0802DC48:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldr r1, [r1]
	ldr r1, [r1, #0x50]
	strb r0, [r1, #0xe]
	b _0802DCDE
_0802DC54:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DC6A
	subs r0, r1, #1
	strb r0, [r6]
	adds r4, r5, #0
	adds r4, #0x84
	b _0802DCC6
_0802DC6A:
	ldrb r0, [r5, #0xe]
	movs r3, #0
	cmp r0, #1
	bne _0802DC74
	movs r3, #1
_0802DC74:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	ldr r1, [r4]
	ldrh r0, [r1]
	ldrh r1, [r1, #0x14]
	movs r2, #4
	bl sub_0802EA18
	cmp r0, #0
	beq _0802DCC6
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0802DCAC
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	subs r0, #4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xff
	orrs r0, r1
	strh r0, [r2, #0x14]
	b _0802DCBA
_0802DCAC:
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	adds r1, #4
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #8
	strh r1, [r0, #0x14]
_0802DCBA:
	ldrb r0, [r5, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0xe]
	movs r0, #0xc
	strb r0, [r6]
_0802DCC6:
	adds r0, r5, #0
	bl sub_0802E9B0
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
	adds r0, r5, #0
	bl sub_0802EBC4
_0802DCDE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802DCE0
sub_0802DCE0: @ 0x0802DCE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	ldrb r0, [r1, #0xe]
	cmp r0, #0xc
	beq _0802DD44
	ldr r1, _0802DD1C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldr r2, [r5]
	ldrb r1, [r2, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0802DD20
	ldr r1, [r2, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0802DDD0
	.align 2, 0
_0802DD1C: .4byte gLinkEntity
_0802DD20:
	ldrb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802DD32
	movs r3, #0
_0802DD32:
	adds r0, r2, #0
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	ldr r0, [r5]
	bl sub_0802E768
	b _0802DDD0
_0802DD44:
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _0802DD74
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DD6E
	movs r2, #4
	strb r2, [r1]
	ldr r1, [r5]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	strb r2, [r0, #0xf]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	b _0802DDD0
_0802DD6E:
	subs r0, #1
	strb r0, [r1]
	b _0802DDD0
_0802DD74:
	ldrb r6, [r1, #0xf]
	cmp r6, #0
	bne _0802DDD0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DDB2
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	strb r0, [r1, #0x15]
	ldr r2, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	ldr r1, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x54]
_0802DDB2:
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	strb r6, [r0, #0xe]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DDC8
	movs r0, #1
	strb r0, [r1]
	b _0802DDD0
_0802DDC8:
	strb r6, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0802EB9C
_0802DDD0:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802DDD8
sub_0802DDD8: @ 0x0802DDD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, #0x76
	ldrb r0, [r0]
	movs r7, #4
	cmp r0, #0
	beq _0802DE06
	movs r7, #6
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802DE06
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0802DE06
	movs r7, #0xc
_0802DE06:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0802DE2E
	cmp r0, #0
	bge _0802DE12
	b _0802DF9A
_0802DE12:
	cmp r0, #2
	ble _0802DE18
	b _0802DF9A
_0802DE18:
	adds r6, r5, #0
	adds r6, #0x84
	cmp r0, #1
	beq _0802DEFE
	adds r0, r5, #0
	adds r0, #0x76
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0802DE76
	b _0802DE6C
_0802DE2E:
	adds r6, r5, #0
	adds r6, #0x84
	ldr r0, [r6]
	bl sub_0802EA88
	cmp r0, #0
	beq _0802DE3E
	b _0802DF9A
_0802DE3E:
	movs r4, #1
	strb r4, [r5, #0xb]
	strb r0, [r5, #0xf]
	bl Random
	ands r0, r4
	cmp r0, #0
	bne _0802DE58
	strb r0, [r5, #0x15]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	adds r0, r0, r7
	b _0802DE60
_0802DE58:
	strb r4, [r5, #0x15]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	subs r0, r0, r7
_0802DE60:
	movs r1, #0x1f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x7a
	strb r0, [r1]
	b _0802DF9A
_0802DE6C:
	movs r2, #1
	movs r0, #2
	mov r8, r0
	movs r4, #1
	b _0802DE7E
_0802DE76:
	movs r2, #2
	movs r1, #6
	mov r8, r1
	movs r4, #0
_0802DE7E:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldr r0, [r0, #0x50]
	ldrb r0, [r0, #0xf]
	adds r6, r1, #0
	cmp r0, #1
	bne _0802DEC4
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _0802DEC4
	ldr r0, [r6]
	ldrb r0, [r0, #0x15]
	strb r0, [r1, #0x15]
	ldr r2, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	ldr r1, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x54]
_0802DEC4:
	adds r1, r5, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802DEF4
	strb r4, [r1]
	ldr r1, [r6]
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	mov r1, r8
	strb r1, [r0, #0xf]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0802DEF8
	strb r2, [r5, #0xf]
	b _0802DEF8
_0802DEF4:
	subs r0, #1
	strb r0, [r1]
_0802DEF8:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0802DF0C
_0802DEFE:
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802DF2E
_0802DF0C:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DF22
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	b _0802DF2E
_0802DF22:
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x10
	bl sub_0802EA48
_0802DF2E:
	adds r4, r6, #0
	ldr r0, [r4]
	bl sub_0802E768
	adds r2, r5, #0
	adds r2, #0x7a
	ldr r1, [r4]
	ldrb r0, [r2]
	ldrb r1, [r1, #0x15]
	cmp r0, r1
	bne _0802DF9A
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0802DF8A
	movs r0, #2
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0x15]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0x15]
	adds r3, r0, #0
	cmp r3, #1
	bne _0802DF6C
	lsls r0, r7, #1
	ldrb r1, [r2]
	subs r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r2]
	strb r3, [r5, #0xe]
	b _0802DF80
_0802DF6C:
	lsls r0, r7, #1
	ldrb r1, [r2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0xe]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xe]
_0802DF80:
	ldr r0, [r6]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	b _0802DF9A
_0802DF8A:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldr r1, [r6]
	ldr r1, [r1, #0x50]
	strb r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_0802EB9C
_0802DF9A:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802DFA8
sub_0802DFA8: @ 0x0802DFA8
	push {lr}
	ldr r2, _0802DFBC @ =gUnk_080CD828
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802DFBC: .4byte gUnk_080CD828

	thumb_func_start sub_0802DFC0
sub_0802DFC0: @ 0x0802DFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _0802DFF8
	cmp r1, #4
	bls _0802DFDC
	movs r0, #0
	b _0802DFDE
_0802DFDC:
	movs r0, #1
_0802DFDE:
	strb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #0
	movs r2, #0x20
	bl sub_0802EA48
	ldr r0, [r4]
	bl sub_0802EA88
	b _0802E026
_0802DFF8:
	adds r0, r2, #0
	bl sub_0802EA88
	cmp r0, #0
	bne _0802E026
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802E026
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r0, _0802E030 @ =0x00000127
	bl PlaySFX
_0802E026:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r4, r5, pc}
	.align 2, 0
_0802E030: .4byte 0x00000127

	thumb_func_start sub_0802E034
sub_0802E034: @ 0x0802E034
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802E04A
	movs r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0
	b _0802E058
_0802E04A:
	movs r0, #3
	strb r0, [r4, #0x15]
	ldr r1, _0802E078 @ =gUnk_080CD840
	ldrb r0, [r5, #1]
	lsrs r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
_0802E058:
	ldrb r1, [r5, #0x19]
	cmp r0, r1
	beq _0802E07C
	ldrb r3, [r4, #0x15]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_0802EA68
	adds r0, r5, #0
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	b _0802E0B0
	.align 2, 0
_0802E078: .4byte gUnk_080CD840
_0802E07C:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #2
	bl sub_0802EB08
	cmp r0, #0
	bne _0802E0B0
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _0802E0A6
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #4
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	strb r2, [r0, #0xe]
_0802E0A6:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r5, #0x19]
_0802E0B0:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, r5, pc}

	thumb_func_start sub_0802E0B8
sub_0802E0B8: @ 0x0802E0B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x32]
	subs r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0800445C
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0802E0F4
	ldr r1, _0802E128 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802E0F4
	ldr r0, _0802E12C @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfa
	strb r1, [r0]
_0802E0F4:
	ldr r0, _0802E130 @ =gUnk_080CD844
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r5, [r3]
	movs r6, #0x7f
	adds r1, r6, #0
	ands r1, r5
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	blo _0802E158
	cmp r5, #1
	bls _0802E134
	movs r0, #0
	strb r0, [r2]
	strb r0, [r4, #0xc]
	bl sub_08078B48
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	b _0802E1CA
	.align 2, 0
_0802E128: .4byte gLinkEntity
_0802E12C: .4byte gLinkState
_0802E130: .4byte gUnk_080CD844
_0802E134:
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0x78
	bls _0802E158
	movs r0, #0x78
	strh r0, [r1]
_0802E158:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _0802E18C @ =0xFFFF0000
	adds r5, r0, #0
	cmp r1, r2
	bne _0802E190
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x4e
	bl UpdateSprite
	b _0802E1C4
	.align 2, 0
_0802E18C: .4byte 0xFFFF0000
_0802E190:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E1B2
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802E1B2
	ldr r0, _0802E1CC @ =0x00000127
	bl PlaySFX
_0802E1B2:
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0802E1C4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_0802E1C4:
	adds r0, r4, #0
	bl sub_0802E518
_0802E1CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802E1CC: .4byte 0x00000127

	thumb_func_start sub_0802E1D0
sub_0802E1D0: @ 0x0802E1D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E1F6
	adds r0, r5, #0
	bl sub_08004274
_0802E1F6:
	ldrb r0, [r4]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0802E218
	ldr r1, _0802E280 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802E218
	ldr r0, _0802E284 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfa
	strb r1, [r0]
_0802E218:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E2F0
	movs r4, #0
	mov r2, r8
	adds r2, #0x30
	adds r7, r5, #0
	adds r7, #0x7c
	ldr r0, _0802E288 @ =gLCDControls
	mov sb, r0
	movs r1, #0x66
	add r1, sb
	mov sl, r1
_0802E23A:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802E2EA
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0802E2F0
	mov r1, r8
	ldr r0, [r1, #0x3c]
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
	cmp r4, #5
	bne _0802E2F0
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E28C
	movs r0, #0xf0
	strh r0, [r7]
	movs r1, #0
	bl sub_08080964
	b _0802E2E4
	.align 2, 0
_0802E280: .4byte gLinkEntity
_0802E284: .4byte gLinkState
_0802E288: .4byte gLCDControls
_0802E28C:
	adds r4, r7, #0
	strh r6, [r4]
	movs r0, #0x7c
	adds r0, r0, r5
	mov r8, r0
	adds r6, r5, #0
	adds r6, #0x74
	adds r7, r5, #0
	adds r7, #0x75
_0802E29E:
	ldrh r3, [r4]
	adds r0, r5, #0
	movs r1, #0x67
	movs r2, #1
	bl CreateObjectWithParent
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0802E29E
	movs r0, #0
	strb r0, [r6]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #0xb
	mov r1, r8
	strh r0, [r1]
	ldrb r1, [r6]
	ldrb r0, [r7]
	lsls r0, r0, #8
	orrs r1, r0
	mov r0, sb
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
_0802E2E4:
	movs r0, #5
	strb r0, [r5, #0xb]
	b _0802E2F0
_0802E2EA:
	adds r4, #1
	cmp r4, #5
	bls _0802E23A
_0802E2F0:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802E300
sub_0802E300: @ 0x0802E300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E31E
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r5, r1, #0
	b _0802E35E
_0802E31E:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x7c
	cmp r0, #0x10
	beq _0802E35E
	ldrh r0, [r5]
	cmp r0, #0
	beq _0802E364
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E40C
	movs r0, #0xb
	strh r0, [r5]
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _0802E3A0 @ =gLCDControls
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
_0802E35E:
	ldrh r0, [r5]
	cmp r0, #0
	bne _0802E40C
_0802E364:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E3A4
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	cmp r0, #0x10
	beq _0802E3A4
	movs r0, #0xb
	strh r0, [r5]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _0802E3A0 @ =gLCDControls
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	b _0802E428
	.align 2, 0
_0802E3A0: .4byte gLCDControls
_0802E3A4:
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldr r1, _0802E408 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	lsls r0, r0, #3
	movs r2, #0
	adds r6, r4, #0
	adds r6, #0x80
	movs r3, #0
	adds r1, r5, #0
_0802E3CA:
	strh r3, [r1, #0x18]
	strb r0, [r1, #1]
	adds r1, #4
	adds r2, #1
	cmp r2, #5
	bls _0802E3CA
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	strb r1, [r6]
	adds r0, r4, #0
	movs r1, #0x4d
	bl UpdateSprite
	movs r0, #0x24
	movs r1, #5
	bl CreateEnemy
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0802E400
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x38]
	adds r0, #0x84
	str r5, [r0]
_0802E400:
	ldr r1, [r5, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	b _0802E422
	.align 2, 0
_0802E408: .4byte gLinkEntity
_0802E40C:
	ldr r0, _0802E42C @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E422
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #3
	bl sub_0804A98C
_0802E422:
	adds r0, r4, #0
	bl sub_0802E518
_0802E428:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802E42C: .4byte gUnk_030010A0

	thumb_func_start sub_0802E430
sub_0802E430: @ 0x0802E430
	push {lr}
	ldr r2, _0802E444 @ =gUnk_080CD848
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802E444: .4byte gUnk_080CD848

	thumb_func_start sub_0802E448
sub_0802E448: @ 0x0802E448
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x84
	ldr r6, [r0]
	movs r5, #5
_0802E452:
	adds r0, r6, #0
	adds r0, #0x30
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802E46E
	ldr r0, [r6, #0x3c]
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
	movs r0, #0x7d
	bl PlaySFX
_0802E46E:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0802E48A
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0802E490
	cmp r5, #0
	bne _0802E490
	movs r0, #1
	strb r0, [r7, #0xb]
	b _0802E490
_0802E48A:
	subs r5, #1
	cmp r5, #0
	bge _0802E452
_0802E490:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #9
	bhi _0802E4A6
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0x40
	movs r3, #3
	bl sub_0802EA68
_0802E4A6:
	adds r0, r7, #0
	bl sub_08004274
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E768
	adds r0, r7, #0
	bl sub_0802E518
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E4C0
sub_0802E4C0: @ 0x0802E4C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E510
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _0802E50A
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802E502
	adds r0, r4, #0
	adds r0, #0x76
	strb r2, [r0]
	adds r1, #2
	movs r0, #3
	strb r0, [r1]
_0802E502:
	adds r0, r4, #0
	bl sub_0802EBC4
	b _0802E510
_0802E50A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0802E510:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, pc}

	thumb_func_start sub_0802E518
sub_0802E518: @ 0x0802E518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	adds r0, #0x84
	ldr r0, [r0]
	mov sb, r0
	ldr r1, [r0, #0x3c]
	ldr r0, [r1, #0x50]
	bl CopyPosition
	mov r0, sb
	ldr r1, [r0, #0x3c]
	ldrb r0, [r0, #1]
	strb r0, [r1, #0x15]
	mov r1, sb
	ldrb r6, [r1, #1]
	cmp r6, #0x10
	bls _0802E54C
	movs r0, #0xf
	eors r6, r0
	adds r6, #1
	ands r6, r0
_0802E54C:
	cmp r6, #0x10
	bne _0802E552
	movs r6, #0xf
_0802E552:
	mov r2, sb
	ldr r1, [r2, #0x3c]
	movs r0, #0xf
	eors r6, r0
	adds r0, r6, #0
	adds r0, #0x12
	lsls r0, r0, #8
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x3c]
	bl sub_0806F69C
	movs r6, #0
	movs r0, #0x3c
	add r0, sb
	mov sl, r0
	mov r1, sb
	adds r1, #0x30
	str r1, [sp, #4]
	ldr r2, [sp]
	adds r2, #0x80
	str r2, [sp, #8]
	movs r7, #0x80
	lsls r7, r7, #1
_0802E580:
	lsls r0, r6, #2
	add r0, sl
	ldr r0, [r0]
	adds r1, r6, #1
	mov r8, r1
	lsls r4, r1, #2
	mov r2, sl
	adds r5, r2, r4
	ldr r1, [r5]
	bl CopyPosition
	add r4, sb
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	ldr r1, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #4]
	adds r6, r1, r6
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	adds r1, r0, #0
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r2, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	adds r0, #0x80
	ldr r1, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	mov r6, r8
	cmp r6, #4
	bls _0802E580
	mov r1, sb
	ldr r0, [r1, #0x50]
	ldrb r1, [r0, #0xe]
	adds r2, r0, #0
	cmp r1, #0x18
	bne _0802E662
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	lsls r7, r0, #2
	mov r0, sb
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xc
	bls _0802E648
	adds r7, #3
	b _0802E64C
	.align 2, 0
_0802E644: .4byte gUnk_080C9160
_0802E648:
	lsrs r0, r1, #0x1a
	adds r7, r7, r0
_0802E64C:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x18
	cmp r0, r1
	beq _0802E6E8
	adds r0, r2, #0
	bl LoadAnimation
	b _0802E6E8
_0802E662:
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802E688
	mov r0, sb
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	mov r0, sb
	ldr r2, [r0, #0x50]
	ldrb r1, [r2, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r0, r7, #2
	ldrb r2, [r2, #0xe]
	adds r7, r0, r2
	b _0802E6CA
_0802E688:
	ldr r0, [sp]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802E6C0
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r3, [r0]
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r2, r0, #3
	adds r0, r2, #0
	adds r0, #0x2f
	cmp r3, r0
	bne _0802E6BA
	ldr r0, [sp]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r7, r3, #0
	cmp r0, #0
	beq _0802E6CA
_0802E6BA:
	adds r7, r2, #0
	adds r7, #0x28
	b _0802E6CA
_0802E6C0:
	mov r2, sb
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x2f
_0802E6CA:
	mov r0, sb
	ldr r1, [r0, #0x50]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E6E2
	adds r0, r1, #0
	adds r1, r7, #0
	bl LoadAnimation
	b _0802E6E8
_0802E6E2:
	adds r0, r1, #0
	bl sub_080042B8
_0802E6E8:
	movs r6, #0
_0802E6EA:
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802E72E
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	lsls r5, r6, #2
	mov r2, sl
	adds r0, r2, r5
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r7, r7, #2
	adds r4, r6, #1
	lsls r0, r4, #2
	add r0, sb
	ldrb r0, [r0, #0x19]
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r7, r1
	adds r1, r5, #0
	b _0802E73E
_0802E72E:
	lsls r1, r6, #2
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x48
	adds r4, r6, #1
_0802E73E:
	mov r2, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E756
	adds r0, r1, #0
	adds r1, r7, #0
	bl UpdateSprite
_0802E756:
	adds r6, r4, #0
	cmp r6, #4
	bls _0802E6EA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802E768
sub_0802E768: @ 0x0802E768
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r6, #0x1f
_0802E770:
	lsls r3, r2, #2
	adds r0, r4, r3
	ldrb r1, [r0, #1]
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r6
	adds r5, r2, #0
	cmp r0, #0x10
	ble _0802E790
	cmp r0, #0x1e
	bgt _0802E798
	adds r1, #1
	b _0802E796
_0802E790:
	cmp r0, #1
	ble _0802E798
	subs r1, #1
_0802E796:
	ands r1, r6
_0802E798:
	adds r0, r4, r3
	strb r1, [r0, #1]
	ldrb r1, [r0, #0x19]
	lsls r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0x10
	ble _0802E7B6
	cmp r0, #0x1d
	bgt _0802E7BE
	adds r1, #1
	b _0802E7BC
_0802E7B6:
	cmp r0, #2
	ble _0802E7BE
	subs r1, #1
_0802E7BC:
	ands r1, r2
_0802E7BE:
	adds r0, r4, r3
	strb r1, [r0, #0x19]
	adds r2, r5, #0
	cmp r2, #4
	bls _0802E770
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802E7CC
sub_0802E7CC: @ 0x0802E7CC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r0, #0
	adds r2, #0x3c
	adds r2, r2, r1
	ldr r3, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0x14]
	ldr r0, [r2]
	ldrb r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_0802E7E4
sub_0802E7E4: @ 0x0802E7E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E8D0
	movs r6, #0
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r0, #0x30
	add r0, ip
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
_0802E818:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r6, #1
	mov r1, r8
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E852
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E860
_0802E852:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E860:
	adds r5, #1
	cmp r5, #5
	bls _0802E818
	movs r5, #0
	movs r2, #7
	mov sb, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
_0802E872:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bhi _0802E8BA
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E8BA:
	cmp r5, #4
	bls _0802E872
	mov r1, ip
	ldr r0, [r1, #0x38]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _0802E9A4
_0802E8D0:
	movs r6, #5
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r2, #0x30
	add r2, ip
	mov r8, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov sb, r1
_0802E8EA:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	subs r6, #1
	mov r2, r8
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E924
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E932
_0802E924:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E932:
	adds r5, #1
	cmp r5, #5
	bls _0802E8EA
	movs r5, #0
	movs r0, #7
	mov sb, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov r8, r1
_0802E944:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bls _0802E98C
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E98C:
	cmp r5, #4
	bls _0802E944
	mov r1, ip
	ldr r2, [r1, #0x38]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802E9A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E9B0
sub_0802E9B0: @ 0x0802E9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802E9D0 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_080041DC
	lsrs r2, r0, #4
	cmp r2, #0x5f
	bgt _0802E9D4
	movs r2, #0xa
	b _0802E9EA
	.align 2, 0
_0802E9D0: .4byte gLinkEntity
_0802E9D4:
	adds r1, r2, #0
	subs r1, #0x60
	cmp r1, #0
	bge _0802E9DE
	adds r1, #3
_0802E9DE:
	asrs r1, r1, #2
	movs r0, #0xa
	subs r2, r0, r1
	cmp r2, #3
	bgt _0802E9EA
	movs r2, #4
_0802E9EA:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r2, r0
	beq _0802EA10
	cmp r2, r0
	ble _0802EA04
	ldrh r0, [r3, #0x2c]
	adds r0, #0x20
	b _0802EA08
_0802EA04:
	ldrh r0, [r3, #0x2c]
	subs r0, #0x20
_0802EA08:
	ldr r2, _0802EA14 @ =0x00001FFF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3, #0x2c]
_0802EA10:
	pop {r4, pc}
	.align 2, 0
_0802EA14: .4byte 0x00001FFF

	thumb_func_start sub_0802EA18
sub_0802EA18: @ 0x0802EA18
	push {lr}
	adds r3, r2, #0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	subs r1, r1, r0
	ldr r0, _0802EA40 @ =0x00001FFF
	ands r1, r0
	lsls r3, r3, #8
	subs r2, r2, r3
	cmp r1, r2
	blo _0802EA44
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, r2
	cmp r1, r0
	bhi _0802EA44
	movs r0, #0
	b _0802EA46
	.align 2, 0
_0802EA40: .4byte 0x00001FFF
_0802EA44:
	movs r0, #1
_0802EA46:
	pop {pc}

	thumb_func_start sub_0802EA48
sub_0802EA48: @ 0x0802EA48
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	bne _0802EA52
	rsbs r2, r2, #0
_0802EA52:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r1, r1, r2
	ldr r3, _0802EA64 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0802EA64: .4byte 0x00001FFF

	thumb_func_start sub_0802EA68
sub_0802EA68: @ 0x0802EA68
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #2
	bne _0802EA72
	rsbs r2, r2, #0
_0802EA72:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0, #0x18]
	adds r1, r1, r2
	ldr r3, _0802EA84 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0, #0x18]
	pop {r4, pc}
	.align 2, 0
_0802EA84: .4byte 0x00001FFF

	thumb_func_start sub_0802EA88
sub_0802EA88: @ 0x0802EA88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
_0802EA90:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #1]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _0802EAC2
	movs r6, #1
	ldrb r0, [r1, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802EAB6
	movs r3, #0
_0802EAB6:
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_0802EA48
	b _0802EAC8
_0802EAC2:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EA90
_0802EAC8:
	movs r3, #0
	movs r4, #0x1f
_0802EACC:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #1]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EAEE
	cmp r0, #0x1e
	bgt _0802EAF6
	adds r3, #1
	b _0802EAF4
_0802EAEE:
	cmp r0, #1
	ble _0802EAF6
	subs r3, #1
_0802EAF4:
	ands r3, r4
_0802EAF6:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #1]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EACC
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EB08
sub_0802EB08: @ 0x0802EB08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_0802EB1A:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #0x19]
	ldrb r3, [r1, #0x19]
	cmp r0, r3
	beq _0802EB4E
	movs r0, #1
	mov r8, r0
	ldrb r0, [r1, #0x19]
	ldrb r1, [r4, #0x19]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #2
	cmp r0, #0x10
	ble _0802EB42
	movs r3, #3
_0802EB42:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_0802EA68
	b _0802EB54
_0802EB4E:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EB1A
_0802EB54:
	movs r3, #0
	movs r4, #0x1f
	rsbs r6, r7, #0
	ands r6, r4
_0802EB5C:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #0x19]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EB7E
	cmp r6, r0
	ble _0802EB86
	adds r3, #1
	b _0802EB84
_0802EB7E:
	cmp r7, r0
	bge _0802EB86
	subs r3, #1
_0802EB84:
	ands r3, r4
_0802EB86:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #0x19]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EB5C
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802EB9C
sub_0802EB9C: @ 0x0802EB9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EBBC @ =gUnk_080CD850
	bl sub_080028F4
	ldr r1, _0802EBC0 @ =gUnk_080CD854
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	adds r4, #0x75
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0802EBBC: .4byte gUnk_080CD850
_0802EBC0: .4byte gUnk_080CD854

	thumb_func_start sub_0802EBC4
sub_0802EBC4: @ 0x0802EBC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _0802EC66
	ldr r1, _0802EC18 @ =gUnk_080CD86C
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080028F4
	ldr r2, _0802EC1C @ =gUnk_080CD878
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x75
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0802EC60
	strb r6, [r2]
	ldrb r1, [r5]
	cmp r1, #0
	bne _0802EC20
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #3
	strb r0, [r1]
	b _0802EC56
	.align 2, 0
_0802EC18: .4byte gUnk_080CD86C
_0802EC1C: .4byte gUnk_080CD878
_0802EC20:
	bl Random
	adds r1, r0, #0
	movs r5, #1
	ands r1, r5
	adds r3, r4, #0
	adds r3, #0x76
	ldrb r0, [r3]
	cmp r1, r0
	beq _0802EC3E
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x77
	strb r5, [r0]
	b _0802EC56
_0802EC3E:
	adds r2, r4, #0
	adds r2, #0x77
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802EC54
	eors r1, r5
	strb r5, [r2]
_0802EC54:
	strb r1, [r3]
_0802EC56:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	b _0802EC6A
_0802EC60:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _0802EC6A
_0802EC66:
	subs r0, #1
	strb r0, [r1]
_0802EC6A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802EC6C
sub_0802EC6C: @ 0x0802EC6C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802EC94 @ =gUnk_080CDE34
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802EC94: .4byte gUnk_080CDE34

	thumb_func_start sub_0802EC98
sub_0802EC98: @ 0x0802EC98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802ECBC @ =gUnk_080CDE4C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _0802ECB8
	adds r0, r4, #0
	bl sub_0802EF90
_0802ECB8:
	pop {r4, pc}
	.align 2, 0
_0802ECBC: .4byte gUnk_080CDE4C

	thumb_func_start sub_0802ECC0
sub_0802ECC0: @ 0x0802ECC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802ED2A
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	ldr r3, _0802ED00 @ =gUnk_030010A0
	cmp r1, #0
	bne _0802ECEE
	adds r2, r3, #0
	adds r2, #0x39
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0802ECEE:
	ldr r0, _0802ED04 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0802ED08
	ldrb r1, [r5]
	adds r0, r3, #0
	adds r0, #0x3a
	b _0802ED0E
	.align 2, 0
_0802ED00: .4byte gUnk_030010A0
_0802ED04: .4byte gRoomControls
_0802ED08:
	ldrb r1, [r5]
	adds r0, r3, #0
	adds r0, #0x3b
_0802ED0E:
	strb r1, [r0]
	adds r6, r4, #0
	adds r6, #0x79
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	beq _0802ED24
	movs r0, #0xbd
	lsls r0, r0, #1
	bl sub_08004488
_0802ED24:
	ldrb r0, [r5]
	strb r0, [r6]
	b _0802ED52
_0802ED2A:
	cmp r0, #1
	bne _0802ED52
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0802ED3E
	rsbs r0, r0, #0
	strb r0, [r1]
_0802ED3E:
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0802ED4E
	movs r0, #0xe5
	bl sub_08004488
_0802ED4E:
	movs r0, #0xff
	strb r0, [r5]
_0802ED52:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ED64
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802ED64:
	ldr r1, _0802ED70 @ =gUnk_080CDE34
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802ED70: .4byte gUnk_080CDE34

	thumb_func_start sub_0802ED74
sub_0802ED74: @ 0x0802ED74
	push {lr}
	ldr r2, _0802ED88 @ =gUnk_080CDE5C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802ED88: .4byte gUnk_080CDE5C

	thumb_func_start sub_0802ED8C
sub_0802ED8C: @ 0x0802ED8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EDD0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0802EE0A
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0802EE0A
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x34
	strb r0, [r1, #9]
	str r4, [r1, #0x14]
	adds r0, r1, #0
	movs r1, #8
	bl sub_0805EA2C
	movs r0, #0x25
	movs r1, #2
	bl CreateEnemy
	str r4, [r0, #0x50]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0802EDD4 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0802EDDC
	ldr r0, _0802EDD8 @ =gUnk_030010A0
	adds r0, #0x3a
	b _0802EDE0
	.align 2, 0
_0802EDD0: .4byte gUnk_03003DBC
_0802EDD4: .4byte gRoomControls
_0802EDD8: .4byte gUnk_030010A0
_0802EDDC:
	ldr r0, _0802EE0C @ =gUnk_030010A0
	adds r0, #0x3b
_0802EDE0:
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r1, #0x34
	strb r0, [r1]
	bl Random
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802EFB8
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0802EF58
_0802EE0A:
	pop {r4, pc}
	.align 2, 0
_0802EE0C: .4byte gUnk_030010A0

	thumb_func_start sub_0802EE10
sub_0802EE10: @ 0x0802EE10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802F04C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802EE20
sub_0802EE20: @ 0x0802EE20
	push {lr}
	ldr r2, _0802EE34 @ =gUnk_080CDE64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802EE34: .4byte gUnk_080CDE64

	thumb_func_start sub_0802EE38
sub_0802EE38: @ 0x0802EE38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802EE84 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0802EE82
	movs r0, #0x25
	movs r1, #3
	bl CreateEnemy
	str r5, [r0, #0x50]
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	adds r4, r0, #0
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strb r0, [r5, #0xe]
	bl Random
	lsrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x78
	strb r0, [r1]
	ldr r1, _0802EE88 @ =gUnk_080CDE6C
	lsrs r4, r4, #0x10
	movs r0, #3
	ands r4, r0
	adds r4, r4, r1
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #1
	bl UpdateSprite
_0802EE82:
	pop {r4, r5, pc}
	.align 2, 0
_0802EE84: .4byte gUnk_03003DBC
_0802EE88: .4byte gUnk_080CDE6C

	thumb_func_start sub_0802EE8C
sub_0802EE8C: @ 0x0802EE8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0802EEA8
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	b _0802EEB4
_0802EEA8:
	adds r0, r4, #0
	bl sub_0802F04C
	adds r0, r4, #0
	bl sub_08004274
_0802EEB4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802EEB8
sub_0802EEB8: @ 0x0802EEB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802EEC8
	bl sub_0805E780
_0802EEC8:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0802EED6
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
_0802EED6:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r1, _0802EF14 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #1
	movs r1, #0x1e
	ands r0, r1
	ldr r1, _0802EF18 @ =gUnk_080CDE70
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4, #0x1e]
	cmp r2, r1
	beq _0802EF00
	ldrb r0, [r0, #1]
	cmp r0, r1
	beq _0802EF00
	strb r2, [r4, #0x1e]
_0802EF00:
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0802EF14: .4byte gLinkEntity
_0802EF18: .4byte gUnk_080CDE70

	thumb_func_start sub_0802EF1C
sub_0802EF1C: @ 0x0802EF1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802EF2C
	bl sub_0805E780
_0802EF2C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0802EF4A
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x11
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x19
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802EF4A:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	movs r0, #0
	strh r0, [r4, #0x36]
	pop {r4, pc}

	thumb_func_start sub_0802EF58
sub_0802EF58: @ 0x0802EF58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_0802EF5E:
	movs r0, #0x25
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0802EF86
	strb r5, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	str r6, [r4, #0x50]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
_0802EF86:
	adds r5, #1
	cmp r5, #6
	bls _0802EF5E
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EF90
sub_0802EF90: @ 0x0802EF90
	push {r4, lr}
	ldr r4, _0802EFB4 @ =gUnk_080CDE90
	adds r3, r0, #0
	adds r3, #0x78
	ldrb r1, [r3]
	adds r2, r1, #1
	strb r2, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	pop {r4, pc}
	.align 2, 0
_0802EFB4: .4byte gUnk_080CDE90

	thumb_func_start sub_0802EFB8
sub_0802EFB8: @ 0x0802EFB8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl Random
	adds r6, r0, #0
	lsrs r0, r6, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802EFD2
	movs r5, #0x18
	ands r5, r6
	b _0802EFE0
_0802EFD2:
	ldr r0, _0802F01C @ =gLinkEntity
	adds r1, r4, #0
	bl sub_080045C4
	adds r5, r0, #4
	movs r0, #0x18
	ands r5, r0
_0802EFE0:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0802F020 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r2, _0802F024 @ =gUnk_080B4488
	lsrs r1, r5, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0802F028
	movs r0, #0xff
	strb r0, [r4, #0x15]
	b _0802F044
	.align 2, 0
_0802F01C: .4byte gLinkEntity
_0802F020: .4byte gRoomControls
_0802F024: .4byte gUnk_080B4488
_0802F028:
	movs r1, #3
	adds r0, r6, #0
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x15]
	ldr r2, _0802F048 @ =gUnk_080CDE98
	lsrs r0, r6, #0x18
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
_0802F044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802F048: .4byte gUnk_080CDE98

	thumb_func_start sub_0802F04C
sub_0802F04C: @ 0x0802F04C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r1, #0x32
	ldrsh r6, [r4, r1]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802F06A
	adds r0, r4, #0
	bl sub_0802EFB8
	b _0802F112
_0802F06A:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _0802F098
	cmp r0, #1
	bgt _0802F07C
	cmp r0, #0
	beq _0802F082
	b _0802F0DC
_0802F07C:
	cmp r0, #2
	beq _0802F0AE
	b _0802F0DC
_0802F082:
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #8
	ble _0802F102
	ldrh r1, [r4, #0x32]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bgt _0802F102
	b _0802F0C2
_0802F098:
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #7
	bgt _0802F102
	ldrh r1, [r4, #0x2e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #7
	ble _0802F102
	b _0802F0F0
_0802F0AE:
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #7
	bgt _0802F102
	ldrh r1, [r4, #0x32]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #7
	ble _0802F102
_0802F0C2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _0802F0D8 @ =0x0000FFF0
	ands r0, r1
	adds r6, r0, #0
	adds r6, #8
	b _0802F102
	.align 2, 0
_0802F0D8: .4byte 0x0000FFF0
_0802F0DC:
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #8
	ble _0802F102
	ldrh r1, [r4, #0x2e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bgt _0802F102
_0802F0F0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r1, _0802F114 @ =0x0000FFF0
	ands r0, r1
	adds r5, r0, #0
	adds r5, #8
_0802F102:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0802F112
	strh r5, [r4, #0x2e]
	strh r6, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0802EFB8
_0802F112:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802F114: .4byte 0x0000FFF0

	thumb_func_start sub_0802F118
sub_0802F118: @ 0x0802F118
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802F134 @ =gUnk_080CDED0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0802F134: .4byte gUnk_080CDED0

	thumb_func_start sub_0802F138
sub_0802F138: @ 0x0802F138
	push {lr}
	ldr r2, _0802F14C @ =gUnk_080CDEE8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802F14C: .4byte gUnk_080CDEE8

	thumb_func_start sub_0802F150
sub_0802F150: @ 0x0802F150
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F164
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802F164:
	ldr r1, _0802F18C @ =gUnk_080CDED0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F1E8
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	beq _0802F196
	cmp r0, #0x14
	bgt _0802F190
	cmp r0, #0xe
	beq _0802F1E0
	b _0802F1E8
	.align 2, 0
_0802F18C: .4byte gUnk_080CDED0
_0802F190:
	cmp r0, #0x15
	beq _0802F1E0
	b _0802F1E8
_0802F196:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802F1A8
	movs r0, #0xc0
	b _0802F1B6
_0802F1A8:
	bl Random
	ldr r2, _0802F1DC @ =gUnk_080CDEF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
_0802F1B6:
	strb r0, [r4, #0xe]
	movs r1, #0
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802F1CE
	ldr r0, [r4, #0x20]
	asrs r0, r0, #2
_0802F1CE:
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	b _0802F1E8
	.align 2, 0
_0802F1DC: .4byte gUnk_080CDEF8
_0802F1E0:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_0802F1E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_16
nullsub_16: @ 0x0802F1EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F1F0
sub_0802F1F0: @ 0x0802F1F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802F20C
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08003FC4
_0802F20C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802F210
sub_0802F210: @ 0x0802F210
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	bl Random
	ldr r2, _0802F280 @ =gUnk_080CDEF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5, #0xe]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r5, #0xe]
	adds r0, r0, r1
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	ldrb r0, [r5, #0xa]
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0
	bne _0802F258
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r1, r0, #0
_0802F258:
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrb r0, [r5, #0xa]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0
	bne _0802F270
	movs r0, #0xa0
	lsls r0, r0, #6
	adds r1, r0, #0
_0802F270:
	adds r0, r5, #0
	adds r0, #0x82
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl UpdateSprite
	pop {r4, r5, pc}
	.align 2, 0
_0802F280: .4byte gUnk_080CDEF8

	thumb_func_start sub_0802F284
sub_0802F284: @ 0x0802F284
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0x60
	bls _0802F298
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	b _0802F29E
_0802F298:
	adds r0, r4, #0
	bl sub_08004274
_0802F29E:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802F2AA
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802F2FE
_0802F2AA:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802F2E4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F2FE
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_0802F45C
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	b _0802F2FE
_0802F2E4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F2FE
	movs r0, #0x40
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_0802F2FE:
	pop {r4, pc}

	thumb_func_start sub_0802F300
sub_0802F300: @ 0x0802F300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl Random
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802F364
	movs r0, #0
	movs r2, #3
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802F33C
	movs r5, #0
_0802F33C:
	cmp r5, #0
	bne _0802F344
	movs r0, #0xc0
	b _0802F350
_0802F344:
	ldr r0, _0802F360 @ =gUnk_080CDEF8
	adds r1, r5, #0
	ands r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r5
_0802F350:
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	b _0802F3F0
	.align 2, 0
_0802F360: .4byte gUnk_080CDEF8
_0802F364:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802F374
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _0802F38C
_0802F374:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _0802F38C
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0802F38C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F3AC
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802F3AC
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F45C
_0802F3AC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0802F3C6
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _0802F3C6
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	movs r0, #1
	strb r0, [r4, #0xd]
_0802F3C6:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _0802F3DA
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _0802F3E4
_0802F3DA:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_0802F3E4:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0802F3F0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802F3F4
sub_0802F3F4: @ 0x0802F3F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F45A
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	bhi _0802F44C
	ldrb r0, [r4, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F44C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x20]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0802F45C
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	b _0802F45A
_0802F44C:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl UpdateSprite
_0802F45A:
	pop {r4, pc}

	thumb_func_start sub_0802F45C
sub_0802F45C: @ 0x0802F45C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802F472
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _0802F49E
_0802F472:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802F48A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0802F49E
_0802F48A:
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_0802F49E:
	pop {r4, pc}

	thumb_func_start sub_0802F4A0
sub_0802F4A0: @ 0x0802F4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802F4C8 @ =gUnk_080CDF50
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802F4C8: .4byte gUnk_080CDF50

	thumb_func_start sub_0802F4CC
sub_0802F4CC: @ 0x0802F4CC
	push {lr}
	ldr r2, _0802F4E0 @ =gUnk_080CDF68
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802F4E0: .4byte gUnk_080CDF68

	thumb_func_start sub_0802F4E4
sub_0802F4E4: @ 0x0802F4E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F4F8
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802F4F8:
	ldr r1, _0802F558 @ =gUnk_080CDF50
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _0802F536
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0802F536
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r2, #0x50]
_0802F536:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F556
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
_0802F556:
	pop {r4, pc}
	.align 2, 0
_0802F558: .4byte gUnk_080CDF50

	thumb_func_start sub_0802F55C
sub_0802F55C: @ 0x0802F55C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802F594
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r2, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0802FA48
	adds r0, r4, #0
	bl sub_0802FA88
	b _0802F5B8
_0802F594:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
_0802F5B8:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802F5D0
	str r1, [r4, #0x50]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802F5D0:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_0802F5DC
sub_0802F5DC: @ 0x0802F5DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802F62A
	cmp r3, #1
	bgt _0802F5F4
	cmp r3, #0
	beq _0802F60A
	b _0802F660
_0802F5F4:
	cmp r3, #0xff
	bne _0802F660
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802F660
	strb r0, [r2]
	b _0802F660
_0802F60A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F660
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802F660
_0802F62A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802F660
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x28
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x50]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x2c
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl UpdateSprite
_0802F660:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802F668
sub_0802F668: @ 0x0802F668
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802F6F0
	cmp r0, #1
	bgt _0802F680
	cmp r0, #0
	beq _0802F68A
	b _0802F7A2
_0802F680:
	cmp r0, #2
	beq _0802F742
	cmp r0, #3
	beq _0802F76C
	b _0802F7A2
_0802F68A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802F69E
	cmp r1, #8
	beq _0802F6B6
	b _0802F7A2
_0802F69E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x50]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802F7A2
_0802F6B6:
	ldr r1, _0802F6EC @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _0802F7A2
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0802F7A2
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0802F7A2
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _0802F7A2
	.align 2, 0
_0802F6EC: .4byte gLinkEntity
_0802F6F0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0802F7A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	b _0802F7A2
_0802F742:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F7A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802F7A2
_0802F76C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802F7A2
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
_0802F7A2:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802F7AC
sub_0802F7AC: @ 0x0802F7AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0802FA88
	adds r0, r4, #0
	bl sub_0802F9C8
	ldr r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F86E
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	cmp r1, #1
	beq _0802F7EA
	cmp r1, #1
	bgt _0802F7DA
	cmp r1, #0
	beq _0802F7E0
	b _0802F884
_0802F7DA:
	cmp r1, #2
	beq _0802F818
	b _0802F884
_0802F7E0:
	movs r0, #1
	strb r0, [r2]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	b _0802F884
_0802F7EA:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F884
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	movs r2, #1
	strb r1, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0x2c
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	movs r0, #4
	orrs r1, r0
	b _0802F844
_0802F818:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802F84C
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r4, #0xe]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
_0802F844:
	adds r0, r4, #0
	bl UpdateSprite
	b _0802F884
_0802F84C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802F884
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _0802F884
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0802F884
_0802F86E:
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802F884
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r5, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r5, #0x18]
_0802F884:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802F888
sub_0802F888: @ 0x0802F888
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_08049F84
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802F8DC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x84
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080001DA
	adds r4, #0x86
	strh r0, [r4]
	ldr r0, _0802F8E0 @ =0x00004071
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl UpdateCollisionLayer
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802F8DC: .4byte gRoomControls
_0802F8E0: .4byte 0x00004071

	thumb_func_start sub_0802F8E4
sub_0802F8E4: @ 0x0802F8E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0802F9AE
	movs r0, #1
	str r0, [sp]
	adds r1, r7, #0
	adds r1, #0x70
	str r1, [sp, #0xc]
	adds r2, r7, #0
	adds r2, #0x6e
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x72
	str r0, [sp, #0x10]
	subs r1, #1
	str r1, [sp, #8]
	movs r2, #0x38
	adds r2, r2, r7
	mov r8, r2
	movs r0, #8
	mov sl, r0
	ldr r1, _0802F9BC @ =gRoomControls
	mov sb, r1
_0802F920:
	bl Random
	adds r4, r0, #0
	ldr r2, [sp, #0xc]
	ldrh r5, [r2]
	ldr r1, _0802F9C0 @ =0x00007FF0
	ands r0, r1
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	lsls r1, r1, #3
	bl __modsi3
	adds r6, r5, r0
	mov r0, sl
	orrs r6, r0
	lsrs r4, r4, #0x10
	ldr r1, [sp, #0x10]
	ldrh r5, [r1]
	ldr r2, _0802F9C0 @ =0x00007FF0
	ands r4, r2
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r0, r4, #0
	bl __modsi3
	adds r5, r5, r0
	mov r1, sl
	orrs r5, r1
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r0, r6, r0
	lsrs r4, r0, #4
	movs r1, #0x3f
	ands r4, r1
	ldrh r0, [r2, #8]
	subs r0, r5, r0
	lsrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002E0
	cmp r0, #0
	bne _0802F9A2
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _0802F9C4 @ =0x00004071
	cmp r0, r1
	beq _0802F9A2
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
	adds r0, r7, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0802F9A2
	movs r0, #0
	str r0, [sp]
_0802F9A2:
	ldr r1, [sp]
	cmp r1, #0
	bne _0802F920
	adds r0, r7, #0
	bl sub_0802F888
_0802F9AE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802F9BC: .4byte gRoomControls
_0802F9C0: .4byte 0x00007FF0
_0802F9C4: .4byte 0x00004071

	thumb_func_start sub_0802F9C8
sub_0802F9C8: @ 0x0802F9C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802FA44
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	adds r6, r5, #0
	cmp r0, #0
	beq _0802FA20
	subs r0, #1
	strb r0, [r5]
	movs r1, #0xff
	ands r0, r1
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0802F9F8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	b _0802FA02
_0802F9F8:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_0802FA02:
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802FA3E
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802FA3E
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _0802FA3E
_0802FA20:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802FA3E
	adds r0, r4, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802FA3E
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x28
	strb r0, [r5]
_0802FA3E:
	adds r0, r4, #0
	bl sub_08004274
_0802FA44:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802FA48
sub_0802FA48: @ 0x0802FA48
	push {r4, lr}
	mov ip, r0
	ldr r4, [r0, #0x54]
	mov r2, ip
	adds r2, #0x80
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r3, r4, r0
	ldrh r1, [r3]
	ldr r0, _0802FA80 @ =0x0000FFFF
	cmp r1, r0
	bne _0802FA66
	movs r0, #0
	strb r0, [r2]
	adds r3, r4, #0
_0802FA66:
	ldr r2, _0802FA84 @ =gRoomControls
	ldrh r0, [r3]
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r3, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, #2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0802FA80: .4byte 0x0000FFFF
_0802FA84: .4byte gRoomControls

	thumb_func_start sub_0802FA88
sub_0802FA88: @ 0x0802FA88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x7a
	ldrh r2, [r6]
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	beq _0802FAF6
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802FA48
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	adds r2, r0, #0
	strb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _0802FAEA
	lsrs r1, r2, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
	b _0802FAF2
_0802FAEA:
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl UpdateSprite
_0802FAF2:
	movs r7, #1
	b _0802FB2A
_0802FAF6:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r2, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r2, r0
	beq _0802FB2A
	strb r2, [r4, #0x14]
	lsrs r1, r2, #1
	adds r0, r4, #0
	bl UpdateSprite
_0802FB2A:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802FB30
sub_0802FB30: @ 0x0802FB30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802FB58 @ =gUnk_080CDFC4
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802FB58: .4byte gUnk_080CDFC4

	thumb_func_start sub_0802FB5C
sub_0802FB5C: @ 0x0802FB5C
	push {lr}
	ldr r2, _0802FB70 @ =gUnk_080CDFDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802FB70: .4byte gUnk_080CDFDC

	thumb_func_start sub_0802FB74
sub_0802FB74: @ 0x0802FB74
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FB88
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802FB88:
	ldr r1, _0802FBB4 @ =gUnk_080CDFC4
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBB0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
_0802FBB0:
	pop {r4, pc}
	.align 2, 0
_0802FBB4: .4byte gUnk_080CDFC4

	thumb_func_start sub_0802FBB8
sub_0802FBB8: @ 0x0802FBB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FBF6
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802FBF6:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FC04
sub_0802FC04: @ 0x0802FC04
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802FC52
	cmp r3, #1
	bgt _0802FC1C
	cmp r3, #0
	beq _0802FC32
	b _0802FC88
_0802FC1C:
	cmp r3, #0xff
	bne _0802FC88
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802FC88
	strb r0, [r2]
	b _0802FC88
_0802FC32:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FC88
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802FC88
_0802FC52:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FC88
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x54]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x24
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl UpdateSprite
_0802FC88:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802FC90
sub_0802FC90: @ 0x0802FC90
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802FD18
	cmp r0, #1
	bgt _0802FCA8
	cmp r0, #0
	beq _0802FCB2
	b _0802FDCA
_0802FCA8:
	cmp r0, #2
	beq _0802FD6A
	cmp r0, #3
	beq _0802FD94
	b _0802FDCA
_0802FCB2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802FCC6
	cmp r1, #6
	beq _0802FCDE
	b _0802FDCA
_0802FCC6:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802FDCA
_0802FCDE:
	ldr r1, _0802FD14 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _0802FDCA
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0802FDCA
	adds r0, r4, #0
	movs r1, #8
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0802FDCA
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _0802FDCA
	.align 2, 0
_0802FD14: .4byte gLinkEntity
_0802FD18:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0802FDCA
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	b _0802FDCA
_0802FD6A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FDCA
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802FDCA
_0802FD94:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FDCA
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
_0802FDCA:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FDD4
sub_0802FDD4: @ 0x0802FDD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802FDFC @ =gUnk_080CE074
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802FDFC: .4byte gUnk_080CE074

	thumb_func_start sub_0802FE00
sub_0802FE00: @ 0x0802FE00
	push {lr}
	ldr r2, _0802FE14 @ =gUnk_080CE08C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802FE14: .4byte gUnk_080CE08C

	thumb_func_start sub_0802FE18
sub_0802FE18: @ 0x0802FE18
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FE2C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802FE2C:
	ldr r1, _0802FE8C @ =gUnk_080CE074
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _0802FE6A
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0802FE6A
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r2, #0x50]
_0802FE6A:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FE8A
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
_0802FE8A:
	pop {r4, pc}
	.align 2, 0
_0802FE8C: .4byte gUnk_080CE074

	thumb_func_start sub_0802FE90
sub_0802FE90: @ 0x0802FE90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FECE
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802FECE:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FEDC
sub_0802FEDC: @ 0x0802FEDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802FF2A
	cmp r3, #1
	bgt _0802FEF4
	cmp r3, #0
	beq _0802FF0A
	b _0802FF60
_0802FEF4:
	cmp r3, #0xff
	bne _0802FF60
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802FF60
	strb r0, [r2]
	b _0802FF60
_0802FF0A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FF60
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802FF60
_0802FF2A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FF60
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x54]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x24
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl UpdateSprite
_0802FF60:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802FF68
sub_0802FF68: @ 0x0802FF68
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802FFF0
	cmp r0, #1
	bgt _0802FF80
	cmp r0, #0
	beq _0802FF8A
	b _080300A2
_0802FF80:
	cmp r0, #2
	beq _08030042
	cmp r0, #3
	beq _0803006C
	b _080300A2
_0802FF8A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802FF9E
	cmp r1, #0xa
	beq _0802FFB6
	b _080300A2
_0802FF9E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _080300A2
_0802FFB6:
	ldr r1, _0802FFEC @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _080300A2
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _080300A2
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _080300A2
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _080300A2
	.align 2, 0
_0802FFEC: .4byte gLinkEntity
_0802FFF0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080300A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	b _080300A2
_08030042:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080300A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x18
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080300A2
_0803006C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080300A2
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
_080300A2:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080300AC
sub_080300AC: @ 0x080300AC
	push {r4, lr}
	ldr r4, _080300C0 @ =gUnk_0300110C
	adds r0, r4, #0
	movs r1, #0x44
	bl sub_0801D630
	adds r4, #0x42
	movs r0, #0xff
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080300C0: .4byte gUnk_0300110C

	thumb_func_start sub_080300C4
sub_080300C4: @ 0x080300C4
	push {lr}
	ldr r2, _080300E4 @ =gUnk_030010A0
	adds r0, r2, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _080300E2
	adds r0, r2, #0
	adds r0, #0xac
	movs r1, #0
	strh r1, [r0]
	subs r0, #0x40
	movs r1, #0x40
	bl sub_0801D630
_080300E2:
	pop {pc}
	.align 2, 0
_080300E4: .4byte gUnk_030010A0

	thumb_func_start sub_080300E8
sub_080300E8: @ 0x080300E8
	push {lr}
	ldr r1, _08030110 @ =gUnk_030010A0
	adds r3, r1, #0
	adds r3, #0xae
	ldrh r0, [r3]
	cmp r0, #0xff
	beq _0803010C
	lsls r0, r0, #2
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r2, _08030114 @ =gLinkEntity
	ldrh r1, [r0]
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #2]
	adds r0, #0xc
	strh r0, [r2, #0x32]
	movs r0, #0xff
	strh r0, [r3]
_0803010C:
	pop {pc}
	.align 2, 0
_08030110: .4byte gUnk_030010A0
_08030114: .4byte gLinkEntity

	thumb_func_start sub_08030118
sub_08030118: @ 0x08030118
	push {lr}
	adds r2, r0, #0
	ldr r0, _0803013C @ =gUnk_030010A0
	adds r0, #0xac
	ldrh r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08030140
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x67
	bl sub_0807CC9C
	b _0803014C
	.align 2, 0
_0803013C: .4byte gUnk_030010A0
_08030140:
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x67
	bl sub_0807CD20
_0803014C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08030150
sub_08030150: @ 0x08030150
	push {r4, r5, lr}
	mov ip, r0
	ldr r2, _08030194 @ =gUnk_030010A0
	adds r5, r2, #0
	adds r5, #0xac
	mov r3, ip
	adds r3, #0x80
	ldrb r4, [r3]
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r5]
	bics r1, r0
	mov r0, ip
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r4
	orrs r1, r0
	strh r1, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #0x6c
	adds r0, r0, r2
	mov r4, ip
	ldrh r1, [r4, #0x2e]
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r4, #0x32]
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08030194: .4byte gUnk_030010A0

	thumb_func_start sub_08030198
sub_08030198: @ 0x08030198
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080301B8 @ =gUnk_080CE124
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	adds r0, r4, #0
	bl sub_08030150
	pop {r4, pc}
	.align 2, 0
_080301B8: .4byte gUnk_080CE124

	thumb_func_start sub_080301BC
sub_080301BC: @ 0x080301BC
	push {lr}
	ldr r2, _080301D0 @ =gUnk_080CE13C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080301D0: .4byte gUnk_080CE13C

	thumb_func_start sub_080301D4
sub_080301D4: @ 0x080301D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _080301EE
	ldr r1, [r4, #0x4c]
	ldr r0, _08030238 @ =gLinkEntity
	cmp r1, r0
	bne _080301EE
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
_080301EE:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r4, #0
	adds r5, #0x81
	cmp r1, #0
	beq _08030216
	ldrb r0, [r5]
	cmp r1, r0
	beq _08030216
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #6
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080309E8
_08030216:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030228
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08030228:
	ldrb r0, [r6]
	strb r0, [r5]
	ldr r1, _0803023C @ =gUnk_080CE124
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030238: .4byte gLinkEntity
_0803023C: .4byte gUnk_080CE124

	thumb_func_start sub_08030240
sub_08030240: @ 0x08030240
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	bne _08030260
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08030260
	adds r0, r4, #0
	bl sub_08004274
_08030260:
	adds r0, r4, #0
	bl sub_08001242
	pop {r4, pc}

	thumb_func_start nullsub_17
nullsub_17: @ 0x08030268
	bx lr
	.align 2, 0

	thumb_func_start sub_0803026C
sub_0803026C: @ 0x0803026C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x80
	strb r0, [r3]
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r5, _080302A8 @ =gUnk_0300110C
	adds r0, r0, r5
	ldrh r1, [r0]
	cmp r1, #0
	beq _080302AC
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x84
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	ldrb r3, [r3]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	str r0, [r2]
	b _080302BA
	.align 2, 0
_080302A8: .4byte gUnk_0300110C
_080302AC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, _08030304 @ =0x0000047D
	asrs r1, r2
	movs r2, #1
	ands r1, r2
	str r1, [r0]
_080302BA:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080302C6
	bl sub_0804B128
	str r0, [r4, #0x7c]
_080302C6:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08030580
	adds r0, r4, #0
	bl sub_080307EC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bne _08030302
	ldr r0, _08030308 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0x80
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08030302
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_080309C8
_08030302:
	pop {r4, r5, pc}
	.align 2, 0
_08030304: .4byte 0x0000047D
_08030308: .4byte gRoomControls

	thumb_func_start sub_0803030C
sub_0803030C: @ 0x0803030C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803086C
	adds r5, r0, #0
	cmp r5, #0
	bne _08030334
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08030334
	adds r0, r4, #0
	bl sub_08030650
	cmp r0, #0
	beq _08030334
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
_08030334:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08030338
sub_08030338: @ 0x08030338
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803034C
	adds r0, r4, #0
	bl sub_080309A8
	b _08030368
_0803034C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004276
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08030368
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _08030368
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_08030368:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	adds r1, r2, #0
	cmp r1, #1
	bne _0803039C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0803037C
	strb r1, [r4, #0xd]
_0803037C:
	ldrb r0, [r4, #0xe]
	adds r2, r0, #1
	strb r2, [r4, #0xe]
	ands r1, r2
	cmp r1, #0
	beq _0803042C
	ldr r1, _08030398 @ =gUnk_080CE160
	movs r0, #6
	ands r2, r0
	lsrs r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08030426
	.align 2, 0
_08030398: .4byte gUnk_080CE160
_0803039C:
	cmp r1, #2
	bne _080303D4
	movs r0, #0
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _080303C0
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #0xb
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080303D0 @ =gUnk_080FD2F0
	str r0, [r4, #0x48]
_080303C0:
	adds r0, r4, #0
	bl sub_08030834
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
	b _0803042C
	.align 2, 0
_080303D0: .4byte gUnk_080FD2F0
_080303D4:
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08030426
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08030412
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x7a
	movs r1, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080306C4
	adds r0, r4, #0
	bl sub_080309E8
	b _0803042C
_08030412:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	b _0803042C
_08030426:
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
_0803042C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030430
sub_08030430: @ 0x08030430
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08030A04
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0803044A
	adds r0, r4, #0
	bl sub_08004274
_0803044A:
	adds r0, r4, #0
	bl sub_080309A8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803045E
	subs r0, #1
	strh r0, [r1]
_0803045E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030470
	adds r0, r4, #0
	bl sub_080306C4
_08030470:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030474
sub_08030474: @ 0x08030474
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803049C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080309E8
	b _080304BA
_0803049C:
	adds r0, r4, #0
	bl sub_080305BC
	cmp r0, #0
	beq _080304AE
	adds r0, r4, #0
	bl sub_08030590
	b _080304BA
_080304AE:
	adds r0, r4, #0
	bl sub_080307D4
	adds r0, r4, #0
	bl sub_080309A8
_080304BA:
	pop {r4, pc}

	thumb_func_start sub_080304BC
sub_080304BC: @ 0x080304BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080304DE
	adds r0, r4, #0
	bl sub_08030580
	b _080304F0
_080304DE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080304F0
	strb r2, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
_080304F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080304F4
sub_080304F4: @ 0x080304F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080309A8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030520
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #5
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080307EC
_08030520:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030524
sub_08030524: @ 0x08030524
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803053E
	adds r0, r2, #0
	bl sub_080309A8
	b _08030552
_0803053E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08030552
	movs r0, #0
	strb r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
_08030552:
	pop {pc}

	thumb_func_start sub_08030554
sub_08030554: @ 0x08030554
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803057C
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080306C4
_0803057C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030580
sub_08030580: @ 0x08030580
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #4
	bl sub_080309C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08030590
sub_08030590: @ 0x08030590
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #1
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	ldr r0, _080305B8 @ =gUnk_080FD2F8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #5
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080307EC
	pop {r4, pc}
	.align 2, 0
_080305B8: .4byte gUnk_080FD2F8

	thumb_func_start sub_080305BC
sub_080305BC: @ 0x080305BC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0
	cmp r0, #8
	bne _080305D0
	movs r3, #1
_080305D0:
	ldrh r0, [r4, #0x32]
	ands r2, r0
	cmp r2, #8
	bne _080305DC
	movs r0, #2
	orrs r3, r0
_080305DC:
	cmp r3, #3
	bne _080305E4
	movs r0, #1
	b _0803064C
_080305E4:
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803061E
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08030608
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030608:
	cmp r2, #8
	ble _08030610
	movs r0, #0x10
	b _08030612
_08030610:
	movs r0, #0
_08030612:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803064A
_0803061E:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08030638
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030638:
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	ble _08030646
	movs r0, #8
	b _08030648
_08030646:
	movs r0, #0x18
_08030648:
	strb r0, [r4, #0x15]
_0803064A:
	movs r0, #0
_0803064C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030650
sub_08030650: @ 0x08030650
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08030668
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080306B6
_08030664:
	movs r0, #1
	b _080306B8
_08030668:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08030698
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080306B6
	ldr r0, _08030694 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r0, #0x10
	cmp r0, #0x20
	bhi _080306B6
	b _08030664
	.align 2, 0
_08030694: .4byte gUnk_020000B0
_08030698:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080306B6
	ldr r0, _080306BC @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r0, _080306C0 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r0, #0xa8
	cmp r1, r0
	blt _08030664
_080306B6:
	movs r0, #0
_080306B8:
	pop {r4, pc}
	.align 2, 0
_080306BC: .4byte gUnk_020000B0
_080306C0: .4byte gRoomControls

	thumb_func_start sub_080306C4
sub_080306C4: @ 0x080306C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080307C0
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _080307C0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldr r0, _080307B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r5, r0, #0
	cmp r5, #0xff
	beq _080307CC
	movs r0, #0
	mov r8, r0
	bl Random
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _0803070E
	ldrb r0, [r4, #0x14]
	adds r6, r4, #0
	adds r6, #0x82
	cmp r0, #0xff
	bne _0803072A
_0803070E:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #3
	beq _0803072A
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r1, #1
	mov r8, r1
_0803072A:
	mov r7, r8
	cmp r7, #0
	bne _08030746
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r5, r1
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
_08030746:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r1, _080307B4 @ =gUnk_02027EB4
	mov ip, r1
	cmp r0, #2
	bne _08030758
	ldr r7, _080307B8 @ =gUnk_0200D654
	mov ip, r7
_08030758:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r3, _080307BC @ =gUnk_080CE164
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r2, r0, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, ip
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _0803079E
	movs r0, #4
	adds r1, r5, #0
	ands r1, r0
	eors r1, r0
	lsls r1, r1, #1
	movs r0, #0x10
	ands r5, r0
	orrs r1, r5
	strb r1, [r4, #0x15]
	movs r0, #0
	mov r8, r0
_0803079E:
	adds r0, r4, #0
	bl sub_080307D4
	ldrb r0, [r6]
	lsls r0, r0, #1
	mov r1, r8
	orrs r0, r1
	strb r0, [r6]
	b _080307CC
	.align 2, 0
_080307B0: .4byte gUnk_020000B0
_080307B4: .4byte gUnk_02027EB4
_080307B8: .4byte gUnk_0200D654
_080307BC: .4byte gUnk_080CE164
_080307C0:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080307CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080307D4
sub_080307D4: @ 0x080307D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _080307EA
	strb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_080309C8
_080307EA:
	pop {pc}

	thumb_func_start sub_080307EC
sub_080307EC: @ 0x080307EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _0803082C @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r5, #0x78
	strh r0, [r5]
	ldr r0, _08030830 @ =0x00004022
	ldrb r2, [r6]
	adds r1, r4, #0
	bl UpdateCollisionLayer
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803082C: .4byte gRoomControls
_08030830: .4byte 0x00004022

	thumb_func_start sub_08030834
sub_08030834: @ 0x08030834
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _08030868 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl UpdateCollisionLayer
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030868: .4byte gRoomControls

	thumb_func_start sub_0803086C
sub_0803086C: @ 0x0803086C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _08030880
	b _0803099C
_08030880:
	ldr r0, _08030928 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803088E
	b _0803098A
_0803088E:
	ldr r0, _0803092C @ =gRoomControls
	mov sb, r0
	ldrh r0, [r5, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #0x32]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r0, #0x38
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	ldr r1, _08030930 @ =0x00004049
	mov sl, r1
	cmp r0, sl
	bne _08030950
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #2
	movs r3, #0xc
	bl sub_0800293E
	cmp r0, #0
	beq _0803093C
	subs r1, r6, #4
	adds r0, r7, #0
	movs r2, #2
	movs r3, #4
	bl sub_0800293E
	cmp r0, #0
	beq _0803098A
	ldr r2, _08030934 @ =gLinkEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x7c]
	bl sub_08080840
	ldr r0, _08030938 @ =gUnk_030010A0
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r1, [r1]
	adds r0, #0xae
	strh r1, [r0]
	movs r0, #1
	b _0803099E
	.align 2, 0
_08030928: .4byte gLinkState
_0803092C: .4byte gRoomControls
_08030930: .4byte 0x00004049
_08030934: .4byte gLinkEntity
_08030938: .4byte gUnk_030010A0
_0803093C:
	ldr r0, _0803094C @ =0x00004022
	mov r3, r8
	ldrb r2, [r3]
	adds r1, r4, #0
	bl UpdateCollisionLayer
	b _0803098A
	.align 2, 0
_0803094C: .4byte 0x00004022
_08030950:
	adds r1, r6, #6
	adds r0, r7, #0
	movs r2, #2
	movs r3, #5
	bl sub_0800293E
	cmp r0, #0
	beq _0803098A
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	ldrb r2, [r0]
	mov r0, sl
	bl UpdateCollisionLayer
_0803098A:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803099C:
	movs r0, #0
_0803099E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080309A8
sub_080309A8: @ 0x080309A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _080309C4
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _080309C4
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_080309C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080309C8
sub_080309C8: @ 0x080309C8
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateSprite
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _080309E4
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _080309E4
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_080309E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080309E8
sub_080309E8: @ 0x080309E8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #4
	bhi _080309FA
	movs r0, #0x90
	lsls r0, r0, #1
	b _08030A00
_080309FA:
	cmp r0, #8
	bhi _08030A02
	movs r0, #0xe0
_08030A00:
	strh r0, [r1, #0x24]
_08030A02:
	pop {pc}

	thumb_func_start sub_08030A04
sub_08030A04: @ 0x08030A04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030A24
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08030A28 @ =0x00000101
	bl sub_08004488
_08030A24:
	pop {r4, pc}
	.align 2, 0
_08030A28: .4byte 0x00000101

	thumb_func_start sub_08030A2C
sub_08030A2C: @ 0x08030A2C
	push {lr}
	ldr r1, _08030A38 @ =gUnk_080CE288
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08030A38: .4byte gUnk_080CE288

	thumb_func_start sub_08030A3C
sub_08030A3C: @ 0x08030A3C
	push {lr}
	ldr r2, _08030A50 @ =gUnk_080CE2A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08030A50: .4byte gUnk_080CE2A0

	thumb_func_start sub_08030A54
sub_08030A54: @ 0x08030A54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r6, [r0]
	cmp r6, #0x95
	beq _08030A68
	adds r5, r4, #0
	adds r5, #0x45
	cmp r6, #0x8e
	bne _08030B0E
_08030A68:
	ldr r2, [r4, #0x4c]
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	bne _08030B0E
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	beq _08030AC0
	movs r3, #0x32
	ldrsh r0, [r2, r3]
	movs r3, #0x36
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x10
	bhi _08030B0E
	cmp r6, #0x8e
	bne _08030AAE
	movs r0, #0
	b _08030AB2
_08030AAE:
	ldrb r0, [r5]
	subs r0, #1
_08030AB2:
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xfe
	b _08030AE0
_08030AC0:
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r0, #8
	cmp r0, #0x10
	bhi _08030B0E
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08030AEC
	adds r0, r4, #0
	bl sub_08031320
	movs r0, #0x86
	lsls r0, r0, #1
_08030AE0:
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08031344
	b _08030B0E
_08030AEC:
	cmp r6, #0x8e
	bne _08030AF4
	strb r3, [r5]
	b _08030AFA
_08030AF4:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_08030AFA:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0xfe
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08031344
_08030B0E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030B24
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x78
	strb r0, [r1]
_08030B24:
	ldr r1, _08030B30 @ =gUnk_080CE288
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030B30: .4byte gUnk_080CE288

	thumb_func_start sub_08030B34
sub_08030B34: @ 0x08030B34
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08030B52
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	b _08030B70
_08030B52:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08030B6A
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
_08030B6A:
	adds r0, r4, #0
	bl sub_0804A7D4
_08030B70:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_18
nullsub_18: @ 0x08030B74
	bx lr
	.align 2, 0

	thumb_func_start sub_08030B78
sub_08030B78: @ 0x08030B78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	adds r1, #0xc
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r1, #8
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08030F00
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	beq _08030BE0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xa
	bl UpdateSprite
	b _08030BE8
_08030BE0:
	adds r0, r4, #0
	movs r1, #0xe
	bl UpdateSprite
_08030BE8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030BEC
sub_08030BEC: @ 0x08030BEC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _08030C08
	bl sub_0807CBE4
	cmp r0, #0
	beq _08030C08
	adds r0, r4, #0
	bl sub_08031320
_08030C08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030C0C
sub_08030C0C: @ 0x08030C0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08030C1C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08030C68
_08030C1C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08030C68
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08030C6C @ =gUnk_020000B0
	ldr r3, [r2]
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0xa
	bl UpdateSprite
_08030C68:
	pop {r4, r5, pc}
	.align 2, 0
_08030C6C: .4byte gUnk_020000B0

	thumb_func_start sub_08030C70
sub_08030C70: @ 0x08030C70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08030C98
	ldr r2, _08030C94 @ =gUnk_080CE2BC
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08030CCC
	.align 2, 0
_08030C94: .4byte gUnk_080CE2BC
_08030C98:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030CCC
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08030E58
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08030FB4
_08030CCC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030CD0
sub_08030CD0: @ 0x08030CD0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _08030D0C
	cmp r0, #2
	beq _08030D1A
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08030D66
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08030D66
	b _08030D5A
_08030D0C:
	adds r0, r4, #0
	bl sub_08031024
	adds r0, r4, #0
	bl sub_08030E3C
	b _08030D66
_08030D1A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030D34
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_08030D34:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030D44
	adds r0, r4, #0
	bl sub_08031250
_08030D44:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08030D66
	adds r0, r4, #0
	bl sub_08030E70
	b _08030D66
_08030D5A:
	movs r0, #0
	movs r1, #5
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
_08030D66:
	pop {r4, r5, pc}

	thumb_func_start sub_08030D68
sub_08030D68: @ 0x08030D68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _08030DA0
	cmp r0, #2
	beq _08030DC4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030E1C
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08030DFC
	b _08030DF4
_08030DA0:
	ldrb r0, [r4, #0x14]
	adds r1, r0, #0
	cmp r1, #2
	beq _08030DBC
	cmp r1, #2
	bls _08030DB0
	subs r0, #1
	b _08030DB2
_08030DB0:
	adds r0, #1
_08030DB2:
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x7f
	strb r0, [r1]
_08030DBC:
	adds r0, r4, #0
	bl sub_08030E3C
	b _08030E1C
_08030DC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030DDE
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_08030DDE:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08030E1C
	adds r0, r4, #0
	bl sub_08030E70
	b _08030E1C
_08030DF4:
	adds r0, r4, #0
	bl sub_08030E58
	b _08030E1C
_08030DFC:
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _08030E1C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08030F00
_08030E1C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030E20
sub_08030E20: @ 0x08030E20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030E3A
	movs r0, #2
	strb r0, [r4, #0xc]
_08030E3A:
	pop {r4, pc}

	thumb_func_start sub_08030E3C
sub_08030E3C: @ 0x08030E3C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5a
	movs r1, #0
	strb r1, [r2]
	movs r1, #0x8c
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	ldr r0, _08030E54 @ =0x00000157
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08030E54: .4byte 0x00000157

	thumb_func_start sub_08030E58
sub_08030E58: @ 0x08030E58
	adds r2, r0, #0
	movs r0, #0
	movs r1, #4
	strb r1, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x7a
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	bx lr

	thumb_func_start sub_08030E70
sub_08030E70: @ 0x08030E70
	push {lr}
	bl sub_08030E80
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_08030E80
sub_08030E80: @ 0x08030E80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x14]
	lsls r5, r0, #2
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08030EC0
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _08030EFC @ =gUnk_080CE2F4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r5, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08030EC0:
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08030EFA
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _08030EFC @ =gUnk_080CE2F4
	adds r0, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r5, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08030EFA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030EFC: .4byte gUnk_080CE2F4

	thumb_func_start sub_08030F00
sub_08030F00: @ 0x08030F00
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _08030FAC @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #8
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	adds r1, #0x14
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x80
	strh r0, [r1]
	adds r0, r4, #1
	mov sl, r0
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x82
	strh r0, [r1]
	movs r3, #0x40
	adds r3, r3, r4
	mov sb, r3
	ldrb r1, [r6]
	mov r0, sb
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x84
	strh r0, [r1]
	movs r0, #0x41
	adds r0, r0, r4
	mov r8, r0
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x86
	strh r0, [r1]
	ldr r5, _08030FB0 @ =0x00004022
	ldrb r2, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl UpdateCollisionLayer
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, sl
	bl UpdateCollisionLayer
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, sb
	bl UpdateCollisionLayer
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, r8
	bl UpdateCollisionLayer
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030FAC: .4byte gRoomControls
_08030FB0: .4byte 0x00004022

	thumb_func_start sub_08030FB4
sub_08030FB4: @ 0x08030FB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _08031020 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #8
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	adds r1, #0x14
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r2, [r5]
	adds r1, r4, #0
	bl UpdateCollisionLayer
	adds r0, r6, #0
	adds r0, #0x82
	ldrh r0, [r0]
	adds r1, r4, #1
	ldrb r2, [r5]
	bl UpdateCollisionLayer
	adds r0, r6, #0
	adds r0, #0x84
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r5]
	bl UpdateCollisionLayer
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r4, #0x41
	ldrb r2, [r5]
	adds r1, r4, #0
	bl UpdateCollisionLayer
	pop {r4, r5, r6, pc}
	.align 2, 0
_08031020: .4byte gRoomControls

	thumb_func_start sub_08031024
sub_08031024: @ 0x08031024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r2, r7, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	bne _08031084
	cmp r1, #0
	beq _08031074
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r2, [r7, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r7, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08031070 @ =gUnk_020000B0
	ldr r3, [r2]
	movs r4, #0x2e
	ldrsh r2, [r3, r4]
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	b _080311E8
	.align 2, 0
_08031070: .4byte gUnk_020000B0
_08031074:
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	b _080311D8
_08031084:
	cmp r1, #0
	beq _0803108E
	movs r0, #0
	strb r0, [r2]
	b _080311EE
_0803108E:
	adds r0, r7, #0
	adds r0, #0x78
	ldrb r2, [r0]
	adds r1, r2, #0
	mov sl, r0
	cmp r1, #0
	bne _0803109E
	b _080311D4
_0803109E:
	cmp r1, #1
	bne _080310E2
	movs r0, #0x80
	orrs r0, r2
	mov r3, sl
	strb r0, [r3]
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r7, #0x15]
	adds r0, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrb r3, [r7, #0x15]
	cmp r0, r3
	bhs _080310DC
	adds r0, #8
	ands r0, r2
	b _080310F0
_080310DC:
	subs r0, #8
	ands r0, r2
	b _080310F0
_080310E2:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080310F2
	ldrb r0, [r7, #0x15]
	movs r1, #0x10
	eors r0, r1
_080310F0:
	strb r0, [r7, #0x15]
_080310F2:
	mov r4, sl
	ldrb r2, [r4]
	movs r0, #0x70
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031120
	lsrs r0, r0, #0x19
	movs r1, #0x8f
	ands r1, r2
	orrs r0, r1
	strb r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080311EE
	adds r0, r7, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r7, #0x15]
	movs r0, #0
	strb r0, [r4]
	b _080311EE
_08031120:
	movs r0, #0x7b
	adds r0, r0, r7
	mov sb, r0
	ldrb r4, [r0]
	lsrs r4, r4, #1
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _080311B4 @ =gUnk_080CE2C0
	adds r1, r4, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r4, #1
	adds r2, r2, r5
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #0x38
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r3]
	bl sub_080002A4
	adds r6, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	adds r1, r4, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r4, #3
	adds r4, r4, r5
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_080002A4
	adds r1, r0, #0
	ldr r2, _080311B8 @ =gUnk_080B3E80
	adds r6, r6, r2
	ldrb r0, [r6]
	mov r3, sb
	cmp r0, #0
	bne _08031194
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080311C8
_08031194:
	movs r0, #1
	cmp r0, #0
	beq _080311C8
	ldrb r0, [r7, #0x15]
	lsrs r0, r0, #3
	ldrb r4, [r7, #0x14]
	cmp r0, r4
	bne _080311BC
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	b _080311EE
	.align 2, 0
_080311B4: .4byte gUnk_080CE2C0
_080311B8: .4byte gUnk_080B3E80
_080311BC:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _080311EE
_080311C8:
	ldrb r0, [r3]
	movs r1, #0
	strb r0, [r7, #0x15]
	mov r3, sl
	strb r1, [r3]
	b _080311EE
_080311D4:
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
_080311D8:
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
_080311E8:
	bl sub_080045D4
	strb r0, [r7, #0x15]
_080311EE:
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	ldrb r3, [r7, #0x14]
	cmp r0, r3
	bne _0803120C
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0x14]
	adds r1, #5
	b _08031232
_0803120C:
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	ldrb r2, [r7, #0x14]
	lsls r1, r2, #3
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	bls _08031228
	subs r0, r2, #1
	b _0803122A
_08031228:
	adds r0, r2, #1
_0803122A:
	movs r1, #3
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x7f
_08031232:
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0
	strb r0, [r7, #0x15]
	strh r1, [r7, #0x2c]
	strh r1, [r7, #0x30]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031250
sub_08031250: @ 0x08031250
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r4, [r6, #0x14]
	lsls r4, r4, #2
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r5, _0803130C @ =gUnk_080CE2C0
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r0, r4, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	adds r0, r6, #0
	movs r1, #9
	bl sub_08008796
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r0, r4, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r4, #3
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r6, #0
	movs r1, #9
	bl sub_08008796
	adds r2, r6, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	beq _08031316
	movs r3, #0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bhi _080312C8
	strh r1, [r6, #0x2e]
	movs r3, #0x80
_080312C8:
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x76
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bhi _080312E2
	strh r1, [r6, #0x32]
	ldrb r0, [r2]
	orrs r3, r0
	strb r3, [r2]
_080312E2:
	ldrb r1, [r2]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0803131C
	adds r0, r6, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803131C
	adds r2, r6, #0
	adds r2, #0x78
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08031310
	movs r0, #0x82
	strb r0, [r2]
	b _0803131C
	.align 2, 0
_0803130C: .4byte gUnk_080CE2C0
_08031310:
	movs r0, #1
	strb r0, [r2]
	b _0803131C
_08031316:
	adds r0, r6, #0
	bl sub_080AEF88
_0803131C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08031320
sub_08031320: @ 0x08031320
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	ldr r1, _08031340 @ =gUnk_080FD308
	str r1, [r0, #0x48]
	movs r1, #0xa
	bl UpdateSprite
	pop {pc}
	.align 2, 0
_08031340: .4byte gUnk_080FD308

	thumb_func_start sub_08031344
sub_08031344: @ 0x08031344
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	bl sub_08017A90
	adds r3, r0, #0
	cmp r3, #0
	beq _0803136C
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #1
	ldr r1, _08031370 @ =gUnk_080CE304
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r3, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r1, [r0, #1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r1, [r0]
_0803136C:
	pop {pc}
	.align 2, 0
_08031370: .4byte gUnk_080CE304

	thumb_func_start sub_08031374
sub_08031374: @ 0x08031374
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08031390 @ =gUnk_080CE448
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08031390: .4byte gUnk_080CE448

	thumb_func_start sub_08031394
sub_08031394: @ 0x08031394
	push {lr}
	ldr r2, _080313A8 @ =gUnk_080CE460
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080313A8: .4byte gUnk_080CE460

	thumb_func_start sub_080313AC
sub_080313AC: @ 0x080313AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _080313C8
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08031600
_080313C8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080313DA
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080313DA:
	ldr r1, _080313E4 @ =gUnk_080CE448
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_080313E4: .4byte gUnk_080CE448

	thumb_func_start sub_080313E8
sub_080313E8: @ 0x080313E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08031404
	ldr r0, _08031408 @ =gUnk_080CE470
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08031404:
	pop {r4, pc}
	.align 2, 0
_08031408: .4byte gUnk_080CE470

	thumb_func_start sub_0803140C
sub_0803140C: @ 0x0803140C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08031418
sub_08031418: @ 0x08031418
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08031420
sub_08031420: @ 0x08031420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08031432
	adds r0, r4, #0
	bl sub_0804A7D4
_08031432:
	pop {r4, pc}

	thumb_func_start sub_08031434
sub_08031434: @ 0x08031434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	rsbs r0, r0, #0
	adds r3, r0, #0
	movs r0, #0xff
	strb r0, [r4, #0x14]
	movs r2, #1
	strb r2, [r4, #0x1c]
	ldrh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08031460
	adds r0, r4, #0
	bl sub_08031600
	b _0803147A
_08031460:
	strb r2, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0803147C @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0x1e]
	orrs r0, r3
	strb r0, [r4, #0x1e]
_0803147A:
	pop {r4, pc}
	.align 2, 0
_0803147C: .4byte 0x0000FF80

	thumb_func_start sub_08031480
sub_08031480: @ 0x08031480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080314CC
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08031496
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080314FA
_08031496:
	adds r0, r4, #0
	bl sub_08031600
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _080314C8 @ =0x0000012D
	bl PlaySFX
	b _080314FA
	.align 2, 0
_080314C8: .4byte 0x0000012D
_080314CC:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080314FA
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	movs r0, #0x84
	bl sub_08004488
_080314FA:
	pop {r4, pc}

	thumb_func_start sub_080314FC
sub_080314FC: @ 0x080314FC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08031510
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080315BA
_08031510:
	adds r5, r4, #0
	adds r5, #0x78
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803151E
	subs r0, #1
	strb r0, [r5]
_0803151E:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08031578
	ldrb r0, [r5]
	cmp r0, #0
	bne _080315A2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080315A2
	ldr r0, _08031574 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_0804A044
	adds r1, r0, #0
	cmp r1, #0xff
	beq _080315A2
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x7a
	strh r0, [r2]
	strb r1, [r4, #0x15]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	b _080315BA
	.align 2, 0
_08031574: .4byte gUnk_020000B0
_08031578:
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080315A2
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _080315A2
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
_080315A2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080315B4
	adds r0, r4, #0
	bl sub_08031600
_080315B4:
	adds r0, r4, #0
	bl sub_0803163C
_080315BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080315BC
sub_080315BC: @ 0x080315BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080315D4
	subs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	b _080315FC
_080315D4:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _080315EE
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803163C
	cmp r0, #0
	bne _080315FC
_080315EE:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08031600
_080315FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031600
sub_08031600: @ 0x08031600
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _08031638
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
_08031638:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803163C
sub_0803163C: @ 0x0803163C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080002B8
	cmp r0, #0x13
	bne _08031652
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	lsrs r0, r0, #1
	b _08031658
_08031652:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
_08031658:
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031664
sub_08031664: @ 0x08031664
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803167C @ =gUnk_080CE530
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803167C: .4byte gUnk_080CE530

	thumb_func_start sub_08031680
sub_08031680: @ 0x08031680
	push {lr}
	ldr r2, _08031694 @ =gUnk_080CE548
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031694: .4byte gUnk_080CE548

	thumb_func_start nullsub_152
nullsub_152: @ 0x08031698
	bx lr
	.align 2, 0

	thumb_func_start sub_0803169C
sub_0803169C: @ 0x0803169C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080316C4
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r2, [r4, #0xf]
	b _080316D4
_080316C4:
	ldr r0, _080316D8 @ =gUnk_080CE554
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080316D4:
	pop {r4, pc}
	.align 2, 0
_080316D8: .4byte gUnk_080CE554

	thumb_func_start sub_080316DC
sub_080316DC: @ 0x080316DC
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_080316E8
sub_080316E8: @ 0x080316E8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080316F0
sub_080316F0: @ 0x080316F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08031702
	adds r0, r4, #0
	bl sub_0804A7D4
_08031702:
	pop {r4, pc}

	thumb_func_start sub_08031704
sub_08031704: @ 0x08031704
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_080317F8
	pop {r4, pc}

	thumb_func_start sub_08031714
sub_08031714: @ 0x08031714
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080317B4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803176E
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08031750
	ldrb r1, [r4, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031750
	adds r0, r4, #0
	bl sub_08049EE4
	b _08031766
_08031750:
	ldrb r0, [r4, #0x15]
	adds r0, #0x18
	strb r0, [r4, #0x15]
	bl Random
	movs r1, #0xe
	ands r0, r1
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
_08031766:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080317E0
_0803176E:
	pop {r4, pc}

	thumb_func_start sub_08031770
sub_08031770: @ 0x08031770
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x80
	ldrh r0, [r4]
	cmp r0, #0
	beq _08031790
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080317B2
	adds r0, r1, #0
	bl sub_08031840
	b _080317B2
_08031790:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080317AA
	bl Random
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	b _080317B2
_080317AA:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080317B2
	str r0, [r1, #0x54]
_080317B2:
	pop {r4, pc}

	thumb_func_start sub_080317B4
sub_080317B4: @ 0x080317B4
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x30
	ands r1, r0
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	cmp r1, #0
	beq _080317D0
	movs r1, #0xc
	rsbs r1, r1, #0
	adds r0, r1, #0
_080317D0:
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080317E0
sub_080317E0: @ 0x080317E0
	push {lr}
	ldrb r1, [r0, #0x15]
	adds r1, #2
	movs r2, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080317F8
sub_080317F8: @ 0x080317F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x18
	ands r0, r1
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r6, #0
	ldr r1, _08031838 @ =0x0000FFF4
	strh r1, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	strb r5, [r1]
	adds r3, r4, #0
	adds r3, #0x3c
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	strb r5, [r4, #0x1c]
	strb r0, [r4, #0x15]
	ldr r0, _0803183C @ =gUnk_080CE560
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_080317E0
	strb r6, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08031838: .4byte 0x0000FFF4
_0803183C: .4byte gUnk_080CE560

	thumb_func_start sub_08031840
sub_08031840: @ 0x08031840
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #0x2d
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _08031862
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_08031862:
	pop {r4, r5, pc}

	thumb_func_start sub_08031864
sub_08031864: @ 0x08031864
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r4, r0, #0
	cmp r4, #0
	beq _0803189C
	adds r0, r5, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08031886
	adds r0, r5, #0
	bl sub_08032338
_08031886:
	ldr r0, _08031898 @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _080318BE
	.align 2, 0
_08031898: .4byte gUnk_080012C8
_0803189C:
	ldr r4, _080318C0 @ =gUnk_080CE56C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
_080318BE:
	pop {r4, r5, pc}
	.align 2, 0
_080318C0: .4byte gUnk_080CE56C

	thumb_func_start sub_080318C4
sub_080318C4: @ 0x080318C4
	push {lr}
	ldr r2, _080318D8 @ =gUnk_080CE584
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080318D8: .4byte gUnk_080CE584

	thumb_func_start sub_080318DC
sub_080318DC: @ 0x080318DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080318FA
	b _08031A36
_080318FA:
	ldrb r0, [r4, #0xa]
	adds r5, r4, #0
	adds r5, #0x42
	cmp r0, #1
	bne _080319DE
	ldrb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x45
	str r1, [sp]
	cmp r0, #6
	bhi _080319AC
	ldrb r0, [r5]
	cmp r0, #0
	beq _080319AC
	ldr r3, [r4, #0x54]
	movs r0, #0x29
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0x3e
	adds r1, r1, r4
	mov sl, r1
	cmp r3, #0
	beq _08031960
	ldr r0, [r4, #0x50]
	str r0, [r3, #0x50]
	movs r0, #5
	mov ip, r0
	movs r1, #0x39
	rsbs r1, r1, #0
	mov r8, r1
	movs r7, #8
	movs r6, #0xf4
_0803193A:
	mov r0, ip
	strb r0, [r3, #0xc]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	mov r1, r8
	ands r1, r0
	orrs r1, r7
	strb r1, [r2]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0803195A
	strb r6, [r1]
_0803195A:
	ldr r3, [r3, #0x54]
	cmp r3, #0
	bne _0803193A
_08031960:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0803196C
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	b _08031974
_0803196C:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08031974
	str r4, [r4, #0x50]
_08031974:
	movs r0, #9
	strb r0, [r4, #0xc]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0803199C
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080319A2
_0803199C:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_080319A2:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0xe
	bl UpdateSprite
_080319AC:
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319DE
	bl Random
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #7
	ands r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	subs r0, #4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_08032338
_080319DE:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08031A36
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031A36
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080319FC
	movs r0, #8
	b _080319FE
_080319FC:
	movs r0, #9
_080319FE:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08031A14
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08031A1A
_08031A14:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08031A1A:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	movs r1, #0xe
	bl UpdateSprite
_08031A36:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A48
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08031A48:
	ldr r1, _08031A5C @ =gUnk_080CE56C
	adds r0, r4, #0
	bl sub_0804AA30
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08031A5C: .4byte gUnk_080CE56C

	thumb_func_start sub_08031A60
sub_08031A60: @ 0x08031A60
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08031A7A
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
_08031A7A:
	adds r0, r4, #0
	bl sub_08001324

	thumb_func_start nullsub_153
nullsub_153: @ 0x08031A80
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_154
nullsub_154: @ 0x08031A84
	bx lr
	.align 2, 0

	thumb_func_start sub_08031A88
sub_08031A88: @ 0x08031A88
	push {lr}
	ldr r2, _08031A9C @ =gUnk_080CE58C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031A9C: .4byte gUnk_080CE58C

	thumb_func_start sub_08031AA0
sub_08031AA0: @ 0x08031AA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl Random
	adds r4, #0x79
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031AC8
sub_08031AC8: @ 0x08031AC8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _08031AD8
	subs r0, #1
	strb r0, [r6, #0xe]
	b _08031B44
_08031AD8:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08031B44
	bl Random
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x74
	ldrh r4, [r0]
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r7, r4, #0
	subs r7, #0x20
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r4, [r0]
	lsrs r5, r5, #4
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #4
	adds r4, r4, r0
	subs r4, #0x20
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080002D4
	cmp r0, #0
	bne _08031B44
	movs r0, #2
	strb r0, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x18]
	strh r7, [r6, #0x2e]
	strh r4, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl UpdateSprite
_08031B44:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031B48
sub_08031B48: @ 0x08031B48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031B6C
	movs r0, #0
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _08031B90
_08031B6C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031B90
	movs r0, #3
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08031B94 @ =gUnk_080CE5B0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_08031B90:
	pop {r4, pc}
	.align 2, 0
_08031B94: .4byte gUnk_080CE5B0

	thumb_func_start sub_08031B98
sub_08031B98: @ 0x08031B98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08031E04
	cmp r0, #0
	beq _08031BDA
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _08031BC4 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08031BC8
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08031BCE
	.align 2, 0
_08031BC4: .4byte gUnk_020000B0
_08031BC8:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08031BCE:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	b _08031C1A
_08031BDA:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031BFA
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08031BFA
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
_08031BFA:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08031C1A
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_08031C1A:
	pop {r4, pc}

	thumb_func_start sub_08031C1C
sub_08031C1C: @ 0x08031C1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031C50
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08031C54 @ =gUnk_080CE5B8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08031C50:
	pop {r4, pc}
	.align 2, 0
_08031C54: .4byte gUnk_080CE5B8

	thumb_func_start sub_08031C58
sub_08031C58: @ 0x08031C58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	bl sub_08004274
	adds r3, r7, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08031D54
	ldr r0, _08031D50 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08031D66
	bl Random
	adds r6, r0, #0
	movs r0, #3
	mov sb, r0
	ands r6, r0
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0xb]
	mov r0, r8
	str r0, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	movs r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	mov r0, sb
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r5, #0x54]
	movs r0, #4
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	mov r0, r8
	str r0, [r1, #0x54]
	adds r0, r1, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	bl sub_08031E48
	movs r0, #6
	strb r0, [r7, #0xc]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #7
	bl UpdateSprite
	b _08031D66
	.align 2, 0
_08031D50: .4byte gUnk_03003DBC
_08031D54:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031D66
	strb r2, [r3]
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
_08031D66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031D70
sub_08031D70: @ 0x08031D70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031D9C
	movs r0, #7
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #5
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	strb r0, [r4, #0x18]
_08031D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031DA0
sub_08031DA0: @ 0x08031DA0
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0xe]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _08031DC2
	cmp r2, #0x50
	bne _08031DBA
	adds r0, r1, #0
	bl sub_0805E7BC
	b _08031DC2
_08031DBA:
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0xb4
	strb r0, [r1, #0xe]
_08031DC2:
	pop {pc}

	thumb_func_start sub_08031DC4
sub_08031DC4: @ 0x08031DC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031DE8
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xb8
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08031E00
_08031DE8:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _08031E00
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_08031E00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08031E04
sub_08031E04: @ 0x08031E04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08031E44
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r3, #6
	ands r3, r0
	ldr r0, _08031E40 @ =gUnk_080CE5C0
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0x50
	bl sub_0806FCB8
	b _08031E46
	.align 2, 0
_08031E40: .4byte gUnk_080CE5C0
_08031E44:
	movs r0, #0
_08031E46:
	pop {r4, pc}

	thumb_func_start sub_08031E48
sub_08031E48: @ 0x08031E48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	str r5, [r4, #0x7c]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08031E90
sub_08031E90: @ 0x08031E90
	push {lr}
	ldr r2, _08031EA4 @ =gUnk_080CE5C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031EA4: .4byte gUnk_080CE5C8

	thumb_func_start sub_08031EA8
sub_08031EA8: @ 0x08031EA8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xb]
	movs r1, #4
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r4, #0x36]
	bl Random
	adds r1, r4, #0
	adds r1, #0x79
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_08031EE8
sub_08031EE8: @ 0x08031EE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _08031F4C @ =0xFFFFE800
	adds r1, r1, r0
	str r1, [r4, #0x20]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08031F1E
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08031F10
	ldr r0, _08031F50 @ =0x0000012B
	bl sub_08004488
_08031F10:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_08031F1E:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08031F2E
	adds r0, r4, #0
	bl sub_08004274
_08031F2E:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _08031F48
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #5
	bl UpdateSprite
_08031F48:
	pop {r4, pc}
	.align 2, 0
_08031F4C: .4byte 0xFFFFE800
_08031F50: .4byte 0x0000012B

	thumb_func_start sub_08031F54
sub_08031F54: @ 0x08031F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08031FAC @ =gUnk_080CE5F0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08003FC4
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _08031FAA
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08031FA2
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08031FA2:
	adds r0, r4, #0
	movs r1, #6
	bl UpdateSprite
_08031FAA:
	pop {r4, pc}
	.align 2, 0
_08031FAC: .4byte gUnk_080CE5F0

	thumb_func_start sub_08031FB0
sub_08031FB0: @ 0x08031FB0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032006
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _08031FD8
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032006
_08031FD8:
	movs r4, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x76
	strb r4, [r0]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _08031FFE
	adds r0, r5, #0
	movs r1, #9
	bl UpdateSprite
	b _08032006
_08031FFE:
	adds r0, r5, #0
	movs r1, #8
	bl UpdateSprite
_08032006:
	pop {r4, r5, pc}

	thumb_func_start sub_08032008
sub_08032008: @ 0x08032008
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_080322A4
	adds r7, r0, #0
	cmp r7, #0
	beq _08032018
	b _08032144
_08032018:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080320D4
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08032060
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08032052
	ldr r0, _0803205C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08032052:
	adds r0, r4, #0
	adds r0, #0x76
	strb r7, [r0]
	b _080320AC
	.align 2, 0
_0803205C: .4byte gUnk_020000B0
_08032060:
	adds r1, r4, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803207C
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004596
	b _080320AC
_0803207C:
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803209E
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803209E
	adds r0, r4, #0
	bl sub_08049EE4
	b _080320A6
_0803209E:
	bl Random
	movs r1, #0x1e
	ands r0, r1
_080320A6:
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
_080320AC:
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080320CC
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080320CC:
	adds r0, r4, #0
	bl sub_080AEF88
	b _0803213E
_080320D4:
	adds r6, r4, #0
	adds r6, #0x77
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803210E
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803213E
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080322E8
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803213E
_0803210E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080322E8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0803213E
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0803213E
	strb r7, [r6]
_0803213E:
	adds r0, r4, #0
	bl sub_08004274
_08032144:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08032148
sub_08032148: @ 0x08032148
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _0803215E
	adds r0, r4, #0
	bl sub_08032290
_0803215E:
	pop {r4, pc}

	thumb_func_start sub_08032160
sub_08032160: @ 0x08032160
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080321C2
	movs r0, #7
	strb r0, [r4, #0xc]
	ldr r2, _08032190 @ =gUnk_080CE5FA
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0xb]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	cmp r0, #0xf
	bls _08032194
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _0803219C
	.align 2, 0
_08032190: .4byte gUnk_080CE5FA
_08032194:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_0803219C:
	strb r0, [r4, #0x18]
	movs r0, #0xf0
	strh r0, [r4, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0xc
	bl UpdateSprite
_080321C2:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080321E6
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080321E2
	movs r2, #0
_080321D0:
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080321DC
	strb r2, [r1, #0xe]
_080321DC:
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _080321D0
_080321E2:
	movs r0, #0
	strb r0, [r4, #0xe]
_080321E6:
	pop {r4, pc}

	thumb_func_start sub_080321E8
sub_080321E8: @ 0x080321E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08032202
	movs r0, #8
	strb r0, [r4, #0xc]
_08032202:
	pop {r4, pc}

	thumb_func_start sub_08032204
sub_08032204: @ 0x08032204
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08032230
	movs r0, #0
	strb r0, [r2]
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
	b _08032244
_08032230:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032244
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0xd
	bl UpdateSprite
_08032244:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032248
sub_08032248: @ 0x08032248
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0803228E
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032276
	ldr r1, [r4, #0x7c]
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r4, #0
	bl sub_0805E7BC
	b _0803228E
_08032276:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _0803228E
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0803228E:
	pop {r4, r5, pc}

	thumb_func_start sub_08032290
sub_08032290: @ 0x08032290
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0xe]
	movs r1, #0xb
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080322A4
sub_080322A4: @ 0x080322A4
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x54]
	cmp r3, #0
	beq _080322E2
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	adds r0, #8
	movs r4, #0x36
	ldrsh r1, [r2, r4]
	cmp r0, r1
	blt _080322E2
	adds r0, r1, #0
	cmp r0, #0
	beq _080322D8
	movs r0, #5
	strb r0, [r2, #0xc]
	ldrh r0, [r3, #0x36]
	adds r0, #8
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #0xb
	bl UpdateSprite
	movs r0, #1
	b _080322E4
_080322D8:
	adds r0, r2, #0
	bl sub_08032290
	movs r0, #1
	b _080322E4
_080322E2:
	movs r0, #0
_080322E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080322E8
sub_080322E8: @ 0x080322E8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x78
	ldrb r0, [r2]
	cmp r0, #0
	beq _08032316
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032334
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _08032334
_08032316:
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08032334
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq _08032334
	movs r0, #6
	strb r0, [r2]
_08032334:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032338
sub_08032338: @ 0x08032338
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x7c]
	ldrb r0, [r1, #0xe]
	adds r0, #0xf
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	beq _08032354
	adds r1, r2, #0
	adds r1, #0x6c
	movs r0, #0
	strb r0, [r1]
_08032354:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032358
sub_08032358: @ 0x08032358
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803237C
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	adds r0, r4, #0
	bl sub_080A2CC0
_0803237C:
	ldrb r1, [r4, #0x15]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0803238E
	adds r0, r4, #0
	bl sub_0806F69C
_0803238E:
	adds r5, r4, #0
	adds r5, #0x74
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080323BA
	ldrb r1, [r4, #0x15]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080323AE
	movs r0, #0x74
	bl sub_08004488
_080323AE:
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080A2CC0
_080323BA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080323BC
sub_080323BC: @ 0x080323BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080323D8 @ =gUnk_080CE7B0
	bl sub_0800129E
	movs r3, #0x12
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080323D8: .4byte gUnk_080CE7B0

	thumb_func_start sub_080323DC
sub_080323DC: @ 0x080323DC
	push {lr}
	ldr r2, _080323F0 @ =gUnk_080CE7C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080323F0: .4byte gUnk_080CE7C8

	thumb_func_start sub_080323F4
sub_080323F4: @ 0x080323F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803242C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	adds r1, #4
	movs r0, #0x18
	ands r1, r0
	movs r0, #0x10
	eors r1, r0
	strb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl LoadAnimation
	adds r5, r4, #0
	adds r5, #0x43
	b _08032446
_0803242C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x43
	cmp r0, #0xcc
	bne _08032446
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803244C
	adds r0, r4, #0
	bl sub_0803275C
_08032446:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032454
_0803244C:
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08032454:
	ldr r1, _08032460 @ =gUnk_080CE7B0
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08032460: .4byte gUnk_080CE7B0

	thumb_func_start nullsub_155
nullsub_155: @ 0x08032464
	bx lr
	.align 2, 0

	thumb_func_start sub_08032468
sub_08032468: @ 0x08032468
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_080326FC
	adds r0, r4, #0
	bl sub_08032740
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803248C
sub_0803248C: @ 0x0803248C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080325E8
	cmp r0, #0
	bne _080324C8
	adds r0, r4, #0
	bl sub_0803271C
	cmp r0, #0
	bne _080324C8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080324B4
	adds r0, r4, #0
	bl sub_08032650
_080324B4:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080324C2
	movs r0, #1
	strb r0, [r4, #0xe]
_080324C2:
	adds r0, r4, #0
	bl sub_080042B8
_080324C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080324CC
sub_080324CC: @ 0x080324CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080325E8
	cmp r0, #0
	bne _080324F8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080324F8
	adds r0, r4, #0
	bl sub_080326FC
	adds r0, r4, #0
	bl sub_08032740
_080324F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080324FC
sub_080324FC: @ 0x080324FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08032524
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032572
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
_08032524:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	subs r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08032564
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x76
	movs r0, #0x46
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strh r3, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080327C8
	b _08032572
_08032564:
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08032572
	adds r0, r4, #0
	bl sub_08032794
_08032572:
	pop {r4, pc}

	thumb_func_start sub_08032574
sub_08032574: @ 0x08032574
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803258A
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080325A4
_0803258A:
	adds r5, r4, #0
	adds r5, #0x76
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080325A4
	adds r0, r4, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _080325AC
_080325A4:
	adds r0, r4, #0
	bl sub_0803275C
	b _080325C2
_080325AC:
	adds r0, r4, #0
	bl sub_080042B8
	ldrh r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080325C2
	adds r0, r4, #0
	bl sub_08032794
_080325C2:
	pop {r4, r5, pc}

	thumb_func_start sub_080325C4
sub_080325C4: @ 0x080325C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080325E4
	adds r0, r4, #0
	bl sub_080325E8
	cmp r0, #0
	bne _080325E4
	adds r0, r4, #0
	bl sub_08032784
_080325E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080325E8
sub_080325E8: @ 0x080325E8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803264C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803264C
	ldr r5, _08032648 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x68
	movs r3, #0x40
	bl sub_080041A0
	cmp r0, #0
	beq _0803264C
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_080045C4
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r5, #0x18
	adds r1, r5, #0
	ands r1, r2
	subs r0, r0, r1
	adds r0, #2
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #4
	bhi _0803264C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	b _0803264E
	.align 2, 0
_08032648: .4byte gUnk_020000B0
_0803264C:
	movs r0, #0
_0803264E:
	pop {r4, r5, pc}

	thumb_func_start sub_08032650
sub_08032650: @ 0x08032650
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	ldr r1, _08032680 @ =gUnk_080CE7E0
	movs r0, #0xf
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803267A
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08032684
_0803267A:
	lsrs r0, r5, #0x10
	b _0803268C
	.align 2, 0
_08032680: .4byte gUnk_080CE7E0
_08032684:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
_0803268C:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803269C
	pop {r4, r5, pc}

	thumb_func_start sub_0803269C
sub_0803269C: @ 0x0803269C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	subs r0, r2, #3
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	bhi _080326D6
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r2, r0, #3
	ldrb r0, [r3, #0x14]
	subs r0, r0, r2
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	bls _080326F8
	strb r2, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0xfc
	ands r1, r0
	adds r1, r1, r2
	adds r0, r3, #0
	bl LoadAnimation
	b _080326F8
_080326D6:
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r2, r0, #3
	ldrb r0, [r3, #0x14]
	cmp r2, r0
	beq _080326F8
	strb r2, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0xfc
	ands r1, r0
	adds r1, r1, r2
	adds r0, r3, #0
	bl LoadAnimation
_080326F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080326FC
sub_080326FC: @ 0x080326FC
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	ldr r2, _08032718 @ =gUnk_080CE7F0
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r4, #0x74
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08032718: .4byte gUnk_080CE7F0

	thumb_func_start sub_0803271C
sub_0803271C: @ 0x0803271C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032734
	movs r0, #0
	b _0803273C
_08032734:
	adds r0, r2, #0
	bl sub_08032784
	movs r0, #1
_0803273C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032740
sub_08032740: @ 0x08032740
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08032650
	pop {r4, pc}

	thumb_func_start sub_0803275C
sub_0803275C: @ 0x0803275C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803269C
	adds r0, r4, #0
	bl sub_080327E0
	pop {r4, pc}

	thumb_func_start sub_08032784
sub_08032784: @ 0x08032784
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0x14]
	adds r1, #8
	bl LoadAnimation
	pop {pc}

	thumb_func_start sub_08032794
sub_08032794: @ 0x08032794
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r5, r0, #0
	cmp r5, #0
	beq _080327C2
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	ldr r1, _080327C4 @ =gUnk_080CE810
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_080327C2:
	pop {r4, r5, pc}
	.align 2, 0
_080327C4: .4byte gUnk_080CE810

	thumb_func_start sub_080327C8
sub_080327C8: @ 0x080327C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _080327DC
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080327DC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080327E0
sub_080327E0: @ 0x080327E0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x54]
	cmp r1, #0
	beq _080327F0
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x54]
_080327F0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080327F4
sub_080327F4: @ 0x080327F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803280C @ =gUnk_080CE978
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803280C: .4byte gUnk_080CE978

	thumb_func_start sub_08032810
sub_08032810: @ 0x08032810
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08032840 @ =gUnk_080CE990
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803283C
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803283C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0803283C:
	pop {r4, pc}
	.align 2, 0
_08032840: .4byte gUnk_080CE990

	thumb_func_start sub_08032844
sub_08032844: @ 0x08032844
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080328AE
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08032896
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r3, #0x10
	strb r3, [r4, #0xf]
	ldrb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08032886
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08032882
	adds r0, r2, #2
	b _08032884
_08032882:
	subs r0, r2, #2
_08032884:
	strb r0, [r4, #0x15]
_08032886:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	subs r0, r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08032AF4
	b _080328AE
_08032896:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080328AE
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080328AE:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080328B8
sub_080328B8: @ 0x080328B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080328FC @ =gUnk_080CE9A4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080328F8
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08032AF4
_080328F8:
	pop {r4, pc}
	.align 2, 0
_080328FC: .4byte gUnk_080CE9A4

	thumb_func_start sub_08032900
sub_08032900: @ 0x08032900
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803290C
sub_0803290C: @ 0x0803290C
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08032914
sub_08032914: @ 0x08032914
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08032926
	adds r0, r4, #0
	bl sub_0804A7D4
_08032926:
	pop {r4, pc}

	thumb_func_start sub_08032928
sub_08032928: @ 0x08032928
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	strb r5, [r6, #0xc]
	strb r4, [r6, #0xf]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r5, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldrh r1, [r6, #0x2e]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r6, #0x32]
	adds r1, r6, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r6, #0
	bl sub_08032AF4
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803298C
sub_0803298C: @ 0x0803298C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08032AB0
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _080329E2
	ldr r5, _080329E4 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x88
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _080329E2
	ldr r0, [r5]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	adds r0, #8
	cmp r1, r0
	ble _080329E2
	movs r1, #0
	movs r2, #2
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x81
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_08032AF4
_080329E2:
	pop {r4, r5, pc}
	.align 2, 0
_080329E4: .4byte gUnk_020000B0

	thumb_func_start sub_080329E8
sub_080329E8: @ 0x080329E8
	push {lr}
	bl sub_08032B38
	pop {pc}

	thumb_func_start sub_080329F0
sub_080329F0: @ 0x080329F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08032A3A
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08032A46
_08032A3A:
	adds r0, r4, #0
	bl sub_08032B10
	adds r0, r4, #0
	bl sub_08004274
_08032A46:
	pop {r4, pc}

	thumb_func_start sub_08032A48
sub_08032A48: @ 0x08032A48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _08032AAE
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_08032AF4
_08032AAE:
	pop {r4, r5, pc}

	thumb_func_start sub_08032AB0
sub_08032AB0: @ 0x08032AB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032AF0
	ldrb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _08032AD6
	strb r0, [r4, #0x15]
_08032AD6:
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r2, [r5]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #0x15]
	ands r0, r2
	cmp r1, r0
	beq _08032AF0
	adds r0, r4, #0
	bl sub_08032AF4
_08032AF0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08032AF4
sub_08032AF4: @ 0x08032AF4
	push {lr}
	ldrb r2, [r0, #0x15]
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	adds r2, r0, #0
	adds r2, #0x81
	ldrb r2, [r2]
	adds r1, r1, r2
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032B10
sub_08032B10: @ 0x08032B10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	pop {r4, pc}

	thumb_func_start sub_08032B38
sub_08032B38: @ 0x08032B38
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x84
	ldrb r0, [r2]
	cmp r0, #1
	beq _08032B88
	cmp r0, #1
	bgt _08032B50
	cmp r0, #0
	beq _08032B56
	b _08032C6A
_08032B50:
	cmp r0, #2
	beq _08032BB2
	b _08032C6A
_08032B56:
	ldrb r1, [r5, #0xe]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B68
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r5, #0x36]
_08032B68:
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C6A
	strb r3, [r2]
	movs r0, #0x18
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #2
	b _08032BA8
_08032B88:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C6A
	movs r0, #2
	strb r0, [r2]
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #4
_08032BA8:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08032AF4
	b _08032C6A
_08032BB2:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #0
	bne _08032BF4
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r3, [r2]
	strb r3, [r5, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldrb r2, [r5, #0x15]
	adds r0, r2, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032BEC
	movs r0, #0x10
	subs r0, r0, r2
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_08032BEC:
	adds r0, r5, #0
	bl sub_08032AF4
	b _08032C64
_08032BF4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C64
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x80
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r3, [r5, #0x15]
	adds r0, r3, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032C46
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _08032C3E
	ands r3, r0
	cmp r3, #0
	beq _08032C3A
	movs r0, #0x12
	b _08032C3C
_08032C3A:
	movs r0, #0xe
_08032C3C:
	strb r0, [r4]
_08032C3E:
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	movs r0, #1
	strh r0, [r6]
_08032C46:
	ldrb r2, [r4]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	lsls r1, r1, #0x18
	ldrb r2, [r5, #0x15]
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x1c
	cmp r1, r0
	beq _08032C64
	adds r1, r2, #4
	adds r0, r5, #0
	bl UpdateSprite
_08032C64:
	adds r0, r5, #0
	bl sub_08032B10
_08032C6A:
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08032C74
sub_08032C74: @ 0x08032C74
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08032C90 @ =gUnk_080CEA1C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08032C90: .4byte gUnk_080CEA1C

	thumb_func_start sub_08032C94
sub_08032C94: @ 0x08032C94
	push {lr}
	ldr r2, _08032CA8 @ =gUnk_080CEA34
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08032CA8: .4byte gUnk_080CEA34

	thumb_func_start sub_08032CAC
sub_08032CAC: @ 0x08032CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032CC0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08032CC0:
	ldr r1, _08032D18 @ =gUnk_080CEA1C
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032D3A
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	bgt _08032D2C
	cmp r0, #2
	blt _08032D2C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	movs r1, #0xc8
	cmp r0, #0
	beq _08032CF0
	movs r1, #0x5a
_08032CF0:
	strb r1, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	ldrb r5, [r4, #0x15]
	bl Random
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08032D1C
	adds r2, r5, #4
	b _08032D20
	.align 2, 0
_08032D18: .4byte gUnk_080CEA1C
_08032D1C:
	adds r2, r5, #0
	adds r2, #0x1c
_08032D20:
	movs r1, #0
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r4, #0x15]
	strh r1, [r4, #0x24]
	b _08032D3A
_08032D2C:
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
_08032D3A:
	pop {r4, r5, pc}

	thumb_func_start sub_08032D3C
sub_08032D3C: @ 0x08032D3C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032D66
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	adds r0, r4, #0
	bl sub_080331E8
_08032D66:
	adds r0, r4, #0
	bl sub_08001324

	thumb_func_start nullsub_156
nullsub_156: @ 0x08032D6C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_157
nullsub_157: @ 0x08032D70
	bx lr
	.align 2, 0

	thumb_func_start sub_08032D74
sub_08032D74: @ 0x08032D74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_08033058
	pop {r4, pc}

	thumb_func_start sub_08032D84
sub_08032D84: @ 0x08032D84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032D9C
	adds r0, r4, #0
	bl sub_080330C0
	b _08032DAC
_08032D9C:
	adds r0, r4, #0
	bl sub_08033364
	cmp r0, #0
	beq _08032DAC
	adds r0, r4, #0
	bl sub_08033100
_08032DAC:
	adds r0, r4, #0
	bl sub_08032F64
	pop {r4, pc}

	thumb_func_start sub_08032DB4
sub_08032DB4: @ 0x08032DB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032DCA
	adds r0, r4, #0
	bl sub_08033058
_08032DCA:
	adds r0, r4, #0
	bl sub_08032F48
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032DD4
sub_08032DD4: @ 0x08032DD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032E3C
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080331B4
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032E18
	ldrb r0, [r4, #0x15]
	adds r0, #0x1c
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	b _08032E28
_08032E18:
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
_08032E28:
	strb r0, [r2]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	b _08032E4E
_08032E3C:
	adds r0, r4, #0
	bl sub_08032F90
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_08032F64
_08032E4E:
	pop {r4, pc}

	thumb_func_start sub_08032E50
sub_08032E50: @ 0x08032E50
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032E70
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
	b _08032E82
_08032E70:
	adds r0, r4, #0
	bl sub_08033000
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_08032F64
_08032E82:
	pop {r4, pc}

	thumb_func_start sub_08032E84
sub_08032E84: @ 0x08032E84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032EA4
	adds r0, r4, #0
	bl sub_08033320
	adds r0, r4, #0
	bl sub_080330C0
	b _08032EC0
_08032EA4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08032EC0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08032EC0
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080332A8
_08032EC0:
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032ED0
sub_08032ED0: @ 0x08032ED0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08032F48
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032F06
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	adds r0, r4, #0
	bl sub_080331E8
_08032F06:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	ands r0, r5
	cmp r0, #0
	bne _08032F20
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
_08032F20:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08032F24
sub_08032F24: @ 0x08032F24
	push {lr}
	adds r2, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032F38
	movs r1, #0
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	b _08032F3C
_08032F38:
	movs r1, #4
	ldrb r0, [r2, #0x14]
_08032F3C:
	adds r1, r1, r0
	adds r0, r2, #0
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032F48
sub_08032F48: @ 0x08032F48
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bne _08032F5A
	adds r0, r4, #0
	bl sub_08004274
_08032F5A:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032F64
sub_08032F64: @ 0x08032F64
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08032F82
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
_08032F82:
	adds r0, r4, #0
	bl sub_08032F48
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}

	thumb_func_start sub_08032F90
sub_08032F90: @ 0x08032F90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08032FC0
	ldrb r0, [r2, #0xe]
	cmp r0, #0x10
	bne _08032FA8
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
_08032FA8:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032FFE
	movs r0, #8
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	bl sub_08033280
	b _08032FFE
_08032FC0:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032FFE
	movs r0, #4
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032FE4
	ldrb r0, [r2, #0x15]
	adds r0, #0x1c
	b _08032FE8
_08032FE4:
	ldrb r0, [r2, #0x15]
	adds r0, #4
_08032FE8:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl UpdateSprite
_08032FFE:
	pop {pc}

	thumb_func_start sub_08033000
sub_08033000: @ 0x08033000
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033056
	movs r0, #0x10
	strb r0, [r2, #0xf]
	adds r3, r2, #0
	adds r3, #0x82
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033034
	ldrb r0, [r2, #0x15]
	adds r0, #0x18
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	b _08033044
_08033034:
	ldrb r0, [r2, #0x15]
	adds r0, #8
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
_08033044:
	strb r0, [r3]
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl UpdateSprite
_08033056:
	pop {pc}

	thumb_func_start sub_08033058
sub_08033058: @ 0x08033058
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	adds r0, #0x80
	strb r6, [r0]
	bl Random
	ldr r1, _080330A0 @ =gUnk_080CEA50
	movs r4, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080330A8
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _080330A8
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	ldr r1, _080330A4 @ =gUnk_080CEA54
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r4
	b _080330AC
	.align 2, 0
_080330A0: .4byte gUnk_080CEA50
_080330A4: .4byte gUnk_080CEA54
_080330A8:
	bl Random
_080330AC:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08032F24
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080330C0
sub_080330C0: @ 0x080330C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080330E2
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x18
	b _080330E4
_080330E2:
	movs r0, #6
_080330E4:
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_08033100
sub_08033100: @ 0x08033100
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08033132
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	b _08033150
_08033132:
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080331B4
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_08033150:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_08033174
sub_08033174: @ 0x08033174
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080331A4
	bl Random
	movs r1, #0x18
	ands r0, r1
	adds r0, #0x18
	b _080331A6
_080331A4:
	movs r0, #0xc
_080331A6:
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_080331B4
sub_080331B4: @ 0x080331B4
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	adds r1, r0, #0
	movs r0, #0xf0
	ands r1, r0
	movs r2, #0x1e
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080331D0
	movs r2, #0x3c
	b _080331E4
_080331D0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080331DA
	movs r2, #0x2d
_080331DA:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _080331E4
	movs r2, #0x4b
_080331E4:
	strb r2, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_080331E8
sub_080331E8: @ 0x080331E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r3, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #5
	beq _08033220
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803320C
	movs r0, #0xf
	b _0803320E
_0803320C:
	movs r0, #7
_0803320E:
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033238
	movs r3, #1
	ldrb r0, [r5, #0x14]
	lsls r6, r0, #1
	b _08033238
_08033220:
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	cmp r0, #0
	bne _08033238
	movs r3, #1
	ldrb r0, [r5, #0x15]
	lsrs r6, r0, #1
_08033238:
	cmp r3, #0
	beq _08033278
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08033278
	ldr r2, _0803327C @ =gUnk_080CEA56
	adds r2, r6, r2
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	movs r1, #0x20
	eors r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
_08033278:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803327C: .4byte gUnk_080CEA56

	thumb_func_start sub_08033280
sub_08033280: @ 0x08033280
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080332A4
	strb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	bl UpdateSprite
_080332A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080332A8
sub_080332A8: @ 0x080332A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	strb r0, [r5]
	strb r6, [r4, #0x15]
	ldrb r0, [r5]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r6, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r6, r0
	beq _080332E4
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080332E8
_080332E4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080332E8
sub_080332E8: @ 0x080332E8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x82
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	subs r2, r1, r0
	cmp r2, #0
	ble _08033304
	cmp r2, #4
	bgt _08033310
	movs r0, #1
	b _08033312
_08033304:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08033310
	movs r0, #1
	b _08033312
_08033310:
	movs r0, #2
_08033312:
	strb r0, [r3]
	strb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_08033320
sub_08033320: @ 0x08033320
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	lsls r5, r0, #2
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08033360
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #1
	beq _08033350
	cmp r1, #2
	beq _08033354
	bl Random
	movs r1, #0x10
	ands r1, r0
	movs r0, #0x1c
	cmp r1, #0
	beq _08033356
_08033350:
	movs r0, #4
	b _08033356
_08033354:
	movs r0, #0x1c
_08033356:
	adds r0, r0, r5
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _08033362
_08033360:
	strb r5, [r4, #0x15]
_08033362:
	pop {r4, r5, pc}

	thumb_func_start sub_08033364
sub_08033364: @ 0x08033364
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	movs r3, #0x38
	cmp r0, #0
	beq _0803337E
	movs r3, #0x48
_0803337E:
	adds r0, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080333AA
	ldr r0, _080333B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r1, #2
	movs r0, #0x1c
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r4, #0x14]
	cmp r0, r1
	bne _080333B4
_080333AA:
	movs r0, #1
	b _080333B6
	.align 2, 0
_080333B0: .4byte gUnk_020000B0
_080333B4:
	movs r0, #0
_080333B6:
	pop {r4, pc}

	thumb_func_start sub_080333B8
sub_080333B8: @ 0x080333B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080333D0 @ =gUnk_080CEB38
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080333D0: .4byte gUnk_080CEB38

	thumb_func_start sub_080333D4
sub_080333D4: @ 0x080333D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803340E
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803340E
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x76
	adds r0, r4, #0
	bl sub_080A2CC0
_0803340E:
	ldr r2, _08033444 @ =gUnk_080CEB50
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033440
	adds r0, r4, #0
	bl sub_0803350C
_08033440:
	pop {r4, pc}
	.align 2, 0
_08033444: .4byte gUnk_080CEB50

	thumb_func_start sub_08033448
sub_08033448: @ 0x08033448
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #1
	cmp r0, #0x1d
	bhi _080334E0
	lsls r0, r0, #2
	ldr r1, _08033464 @ =_08033468
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033464: .4byte _08033468
_08033468: @ jump table
	.4byte _080334FA @ case 0
	.4byte _080334E0 @ case 1
	.4byte _080334E0 @ case 2
	.4byte _080334E0 @ case 3
	.4byte _080334E0 @ case 4
	.4byte _080334E0 @ case 5
	.4byte _080334E0 @ case 6
	.4byte _080334E0 @ case 7
	.4byte _080334E0 @ case 8
	.4byte _080334E0 @ case 9
	.4byte _080334E0 @ case 10
	.4byte _080334E0 @ case 11
	.4byte _080334E0 @ case 12
	.4byte _080334E0 @ case 13
	.4byte _080334FA @ case 14
	.4byte _080334E0 @ case 15
	.4byte _080334E0 @ case 16
	.4byte _080334E0 @ case 17
	.4byte _080334FA @ case 18
	.4byte _080334E0 @ case 19
	.4byte _080334E0 @ case 20
	.4byte _080334E0 @ case 21
	.4byte _080334E0 @ case 22
	.4byte _080334E0 @ case 23
	.4byte _080334E0 @ case 24
	.4byte _080334E0 @ case 25
	.4byte _080334FA @ case 26
	.4byte _080334E0 @ case 27
	.4byte _080334FA @ case 28
	.4byte _080334FA @ case 29
_080334E0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080334F6
	adds r0, r4, #0
	bl CopyPosition
_080334F6:
	bl sub_0805E780
_080334FA:
	ldr r1, _08033504 @ =gUnk_080CEB38
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08033504: .4byte gUnk_080CEB38

	thumb_func_start nullsub_158
nullsub_158: @ 0x08033508
	bx lr
	.align 2, 0

	thumb_func_start sub_0803350C
sub_0803350C: @ 0x0803350C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08033520
	adds r0, r4, #0
	bl sub_0806F69C
_08033520:
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803353A
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0803353A:
	pop {r4, pc}

	thumb_func_start sub_0803353C
sub_0803353C: @ 0x0803353C
	push {lr}
	ldr r1, _08033548 @ =gUnk_080CEB74
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08033548: .4byte gUnk_080CEB74

	thumb_func_start sub_0803354C
sub_0803354C: @ 0x0803354C
	push {lr}
	ldr r2, _08033560 @ =gUnk_080CEB8C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08033560: .4byte gUnk_080CEB8C

	thumb_func_start sub_08033564
sub_08033564: @ 0x08033564
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033628
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0xe
	beq _080335E4
	cmp r0, #0xe
	bgt _08033586
	cmp r0, #0
	beq _08033590
	b _08033628
_08033586:
	cmp r0, #0x14
	beq _080335EE
	cmp r0, #0x15
	beq _080335E4
	b _08033628
_08033590:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x9f
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, _080335DC @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _080335E0 @ =gUnk_02002A40
	ldrb r2, [r4, #0xa]
	adds r0, r2, #1
	adds r3, r1, #0
	adds r3, #0xba
	strb r0, [r3]
	adds r1, #0xc8
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _08033628
	bl sub_0805E780
	b _08033628
	.align 2, 0
_080335DC: .4byte gLinkState
_080335E0: .4byte gUnk_02002A40
_080335E4:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _08033628
_080335EE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
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
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08033624
	str r1, [r4, #0x54]
	movs r0, #0xe
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl CopyPosition
_08033624:
	bl sub_0805E780
_08033628:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803362C
sub_0803362C: @ 0x0803362C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08033648
	ldr r0, _0803364C @ =gUnk_080CEB98
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08033648:
	pop {r4, pc}
	.align 2, 0
_0803364C: .4byte gUnk_080CEB98

	thumb_func_start sub_08033650
sub_08033650: @ 0x08033650
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08033658
sub_08033658: @ 0x08033658
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08033660
sub_08033660: @ 0x08033660
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08033672
	adds r0, r4, #0
	bl sub_0804A7D4
_08033672:
	pop {r4, pc}

	thumb_func_start sub_08033674
sub_08033674: @ 0x08033674
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08033744
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080336A8
sub_080336A8: @ 0x080336A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080336C0
	adds r0, r4, #0
	bl sub_08033744
	b _080336CE
_080336C0:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080336CE
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
_080336CE:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080336DC
sub_080336DC: @ 0x080336DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	beq _0803371E
	cmp r0, #0xc
	bgt _080336FC
	cmp r0, #0
	beq _0803372E
	b _08033740
_080336FC:
	cmp r0, #0x18
	beq _08033716
	cmp r0, #0x24
	bne _08033740
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	b _08033740
_08033716:
	adds r0, r2, #0
	bl sub_080A29BC
	b _08033740
_0803371E:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
	b _08033740
_0803372E:
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	bl sub_08033744
_08033740:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08033744
sub_08033744: @ 0x08033744
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0803378C @ =gUnk_080CEBA4
	movs r0, #0x70
	ands r0, r5
	lsrs r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0xe]
	movs r0, #0xc
	ands r0, r5
	lsls r4, r0, #1
	adds r0, r6, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08033796
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08033796
	adds r0, r6, #0
	bl sub_08049EE4
	adds r4, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	beq _08033790
	adds r4, #4
	b _08033792
	.align 2, 0
_0803378C: .4byte gUnk_080CEBA4
_08033790:
	adds r4, #0x1c
_08033792:
	movs r0, #0x18
	ands r4, r0
_08033796:
	strb r4, [r6, #0x15]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803379C
sub_0803379C: @ 0x0803379C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080337B8 @ =gUnk_080CEBEC
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080337B8: .4byte gUnk_080CEBEC

	thumb_func_start sub_080337BC
sub_080337BC: @ 0x080337BC
	push {lr}
	ldr r2, _080337D0 @ =gUnk_080CEC04
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080337D0: .4byte gUnk_080CEC04

	thumb_func_start sub_080337D4
sub_080337D4: @ 0x080337D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080337E8
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080337E8:
	ldr r1, _08033868 @ =gUnk_080CEBEC
	adds r0, r4, #0
	bl sub_0804AA30
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08033864
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803381A
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803381A
	adds r0, r4, #0
	bl sub_08033E1C
_0803381A:
	ldrb r1, [r5]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	bne _08033864
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	beq _08033864
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x49
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08033D78
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
_08033864:
	pop {r4, r5, pc}
	.align 2, 0
_08033868: .4byte gUnk_080CEBEC

	thumb_func_start nullsub_159
nullsub_159: @ 0x0803386C
	bx lr
	.align 2, 0

	thumb_func_start sub_08033870
sub_08033870: @ 0x08033870
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	beq _0803388E
	adds r0, r4, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _0803388E
	adds r0, r4, #0
	bl sub_08033E1C
_0803388E:
	pop {r4, pc}

	thumb_func_start sub_08033890
sub_08033890: @ 0x08033890
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	strb r1, [r6, #0xe]
	strb r1, [r6, #0xf]
	ldr r0, [r6, #0x2c]
	ldr r3, _0803394C @ =0xFFF00000
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r0, r2
	str r0, [r6, #0x7c]
	adds r4, r6, #0
	adds r4, #0x80
	ldr r0, [r6, #0x30]
	ands r0, r3
	orrs r0, r2
	str r0, [r4]
	ldr r0, [r6, #0x7c]
	str r0, [r6, #0x2c]
	ldr r0, [r4]
	str r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x79
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08033950 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _08033954 @ =0x00004022
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl UpdateCollisionLayer
	ldrb r1, [r6, #0xa]
	movs r0, #0x7d
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _08033928
	bl sub_0805E780
_08033928:
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	str r4, [r6, #0x54]
	str r6, [r4, #0x50]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08033940
	adds r0, r6, #0
	bl sub_08033EA8
_08033940:
	adds r0, r6, #0
	movs r1, #0
	bl UpdateSprite
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803394C: .4byte 0xFFF00000
_08033950: .4byte gRoomControls
_08033954: .4byte 0x00004022

	thumb_func_start sub_08033958
sub_08033958: @ 0x08033958
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033982
	adds r0, r4, #0
	bl sub_08033E1C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
	b _08033A72
_08033982:
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08033992
	subs r0, #1
	strb r0, [r1]
	b _08033A72
_08033992:
	ldr r0, [r4, #0x7c]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r5, r0, #0
	cmp r5, #0x10
	beq _080339E0
	cmp r5, #0x10
	bhi _080339BC
	cmp r5, #0
	beq _080339C6
	cmp r5, #8
	beq _080339F0
	b _08033A10
_080339BC:
	cmp r5, #0x18
	beq _08033A00
	cmp r5, #0xff
	bne _08033A10
	b _08033A72
_080339C6:
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033A72
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _080339DC @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	b _08033A0A
	.align 2, 0
_080339DC: .4byte gLinkEntity
_080339E0:
	ldr r0, _080339EC @ =gLinkEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	b _08033A0A
	.align 2, 0
_080339EC: .4byte gLinkEntity
_080339F0:
	ldr r0, _080339FC @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	b _08033A0A
	.align 2, 0
_080339FC: .4byte gLinkEntity
_08033A00:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r1, _08033A74 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r1, r2]
_08033A0A:
	subs r0, r0, r1
	cmp r0, #0x30
	bgt _08033A72
_08033A10:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08033A1E
	bl sub_0806F520
	cmp r0, #0
	bne _08033A72
_08033A1E:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033A2C
	movs r0, #1
	strb r0, [r1]
_08033A2C:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	ldr r1, _08033A78 @ =0xFFF00000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_08033A72:
	pop {r4, r5, pc}
	.align 2, 0
_08033A74: .4byte gLinkEntity
_08033A78: .4byte 0xFFF00000

	thumb_func_start sub_08033A7C
sub_08033A7C: @ 0x08033A7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033A90
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033AC8
_08033A90:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033AC8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x59
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
_08033AC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08033ACC
sub_08033ACC: @ 0x08033ACC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033AE0
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033B42
_08033AE0:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08033AF8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08033B42
_08033AF8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033B3C
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldr r2, [r4, #0x2c]
	ldr r1, _08033B38 @ =0xFFF00000
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	str r2, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	b _08033B42
	.align 2, 0
_08033B38: .4byte 0xFFF00000
_08033B3C:
	adds r0, r4, #0
	bl sub_08033D78
_08033B42:
	pop {r4, pc}

	thumb_func_start sub_08033B44
sub_08033B44: @ 0x08033B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033B62
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033C82
_08033B62:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08033B76
	b _08033C82
_08033B76:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0
	mov r8, r0
	adds r1, r4, #0
	adds r1, #0x80
	str r1, [sp, #4]
	adds r6, r4, #0
	adds r6, #0x29
	adds r2, r4, #0
	adds r2, #0x7b
	str r2, [sp]
	adds r5, r4, #0
	adds r5, #0x74
	adds r3, r4, #0
	adds r3, #0x38
	str r3, [sp, #8]
	movs r7, #0x76
	adds r7, r7, r4
	mov sl, r7
	ldr r0, _08033C20 @ =gRoomControls
	mov sb, r0
_08033BB2:
	ldr r1, [r4, #0x2c]
	ldr r3, _08033C24 @ =0xFFF00000
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x30]
	str r1, [r4, #0x7c]
	ldr r1, [sp, #4]
	str r0, [r1]
	ldrb r0, [r6]
	movs r2, #0x39
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6]
	movs r0, #0x78
	ldr r3, [sp]
	strb r0, [r3]
	movs r7, #0x2e
	ldrsh r2, [r4, r7]
	mov r1, sb
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r7, #0x32
	ldrsh r0, [r4, r7]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	strh r2, [r5]
	ldrh r0, [r5]
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	bl sub_080001DA
	mov r3, sl
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _08033C28 @ =0x00004022
	cmp r0, r7
	beq _08033C2C
	movs r0, #1
	add r8, r0
	b _08033C68
	.align 2, 0
_08033C20: .4byte gRoomControls
_08033C24: .4byte 0xFFF00000
_08033C28: .4byte 0x00004022
_08033C2C:
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	cmp r0, #2
	beq _08033C54
	cmp r0, #2
	bgt _08033C42
	cmp r0, #0
	beq _08033C4C
	b _08033C68
_08033C42:
	cmp r0, #4
	beq _08033C5A
	cmp r0, #6
	beq _08033C62
	b _08033C68
_08033C4C:
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	b _08033C68
_08033C54:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	b _08033C66
_08033C5A:
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	b _08033C68
_08033C62:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x10
_08033C66:
	strh r0, [r4, #0x2e]
_08033C68:
	mov r1, r8
	cmp r1, #0
	beq _08033BB2
	ldr r0, _08033C90 @ =0x00004022
	ldrh r1, [r5]
	ldr r3, [sp, #8]
	ldrb r2, [r3]
	bl UpdateCollisionLayer
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08033C82:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08033C90: .4byte 0x00004022

	thumb_func_start sub_08033C94
sub_08033C94: @ 0x08033C94
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_08004276
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #1
	beq _08033CD2
	cmp r0, #1
	bgt _08033CB2
	cmp r0, #0
	beq _08033CB8
	b _08033D76
_08033CB2:
	cmp r0, #2
	beq _08033D18
	b _08033D76
_08033CB8:
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08033CD2
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08033CD2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08033D76
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x63
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #0x14
	strb r0, [r4, #0x15]
	bl Random
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08033D12
	cmp r1, #2
	beq _08033D68
	b _08033D6E
_08033D12:
	ldrb r0, [r4, #0x15]
	adds r0, #8
	b _08033D6C
_08033D18:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08033D24
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08033D2A
_08033D24:
	adds r0, r4, #0
	bl sub_08033D78
_08033D2A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033D76
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #0x14
	strb r0, [r4, #0x15]
	bl Random
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08033D62
	cmp r1, #3
	beq _08033D68
	b _08033D6E
_08033D62:
	ldrb r0, [r4, #0x15]
	adds r0, #8
	b _08033D6C
_08033D68:
	ldrb r0, [r4, #0x15]
	adds r0, #0x18
_08033D6C:
	strb r0, [r4, #0x15]
_08033D6E:
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_08033D76:
	pop {r4, pc}

	thumb_func_start sub_08033D78
sub_08033D78: @ 0x08033D78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x15]
	movs r2, #0x18
	ands r2, r0
	lsrs r2, r2, #2
	ldr r0, _08033DE4 @ =gUnk_080CEC1C
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r4, _08033DE8 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r3, #0x3f
	ands r5, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r5, r0
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080002B0
	adds r1, r0, #0
	ldr r0, _08033DEC @ =0x000001C5
	cmp r1, r0
	bhi _08033DCE
	subs r0, #1
	cmp r1, r0
	bhs _08033DE2
_08033DCE:
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080002E0
	subs r0, #1
	cmp r0, #0x3e
	bls _08033DE2
	adds r0, r6, #0
	bl sub_080AEF88
_08033DE2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08033DE4: .4byte gUnk_080CEC1C
_08033DE8: .4byte gRoomControls
_08033DEC: .4byte 0x000001C5

	thumb_func_start sub_08033DF0
sub_08033DF0: @ 0x08033DF0
	push {lr}
	movs r2, #0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08033E16
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	beq _08033E10
	cmp r0, #3
	bgt _08033E0A
	cmp r0, #2
	beq _08033E16
	b _08033E18
_08033E0A:
	cmp r0, #4
	bne _08033E18
	b _08033E16
_08033E10:
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bls _08033E18
_08033E16:
	movs r2, #1
_08033E18:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_08033E1C
sub_08033E1C: @ 0x08033E1C
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r3, #5
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	ldr r1, _08033EA4 @ =0xFFF00000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x19
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	adds r0, #0xd0
	strh r0, [r4, #0x24]
	str r2, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_080A2CFC
	pop {r4, pc}
	.align 2, 0
_08033EA4: .4byte 0xFFF00000

	thumb_func_start sub_08033EA8
sub_08033EA8: @ 0x08033EA8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08033EC4 @ =gLinkState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08033EC8
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x95
	b _08033ECE
	.align 2, 0
_08033EC4: .4byte gLinkState
_08033EC8:
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x63
_08033ECE:
	strb r0, [r1]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08033ED4
sub_08033ED4: @ 0x08033ED4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08033EEC @ =gUnk_080CEC88
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08033EEC: .4byte gUnk_080CEC88

	thumb_func_start sub_08033EF0
sub_08033EF0: @ 0x08033EF0
	push {lr}
	ldr r2, _08033F04 @ =gUnk_080CECA0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08033F04: .4byte gUnk_080CECA0

	thumb_func_start sub_08033F08
sub_08033F08: @ 0x08033F08
	push {lr}
	ldr r1, _08033F14 @ =gUnk_080CEC88
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08033F14: .4byte gUnk_080CEC88

	thumb_func_start nullsub_160
nullsub_160: @ 0x08033F18
	bx lr
	.align 2, 0

	thumb_func_start sub_08033F1C
sub_08033F1C: @ 0x08033F1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08033F38 @ =gUnk_080CECB4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803499C
	pop {r4, pc}
	.align 2, 0
_08033F38: .4byte gUnk_080CECB4
