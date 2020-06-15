	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start SpikedBeetle
SpikedBeetle: @ 0x0802B5F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802B60C @ =gUnk_080CD2D8
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
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
	bl InitializeAnimation
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
	bl InitializeAnimation
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
	bl InitializeAnimation
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
	bl InitializeAnimation
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
	bl InitializeAnimation
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
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
