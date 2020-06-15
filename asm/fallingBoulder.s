	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start FallingBoulder
FallingBoulder: @ 0x0802C228
	push {lr}
	ldr r1, _0802C234 @ =gUnk_080CD540
	bl EnemyFunctionHandler
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
	bl InitializeAnimation
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
	bl InitializeAnimation
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
