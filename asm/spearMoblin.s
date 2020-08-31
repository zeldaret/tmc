	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start SpearMoblin
SpearMoblin: @ 0x0802823C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08028268 @ =gUnk_080CC790
	bl EnemyFunctionHandler
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08028266
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08028266
	adds r0, r4, #0
	bl CopyPosition
_08028266:
	pop {r4, pc}
	.align 2, 0
_08028268: .4byte gUnk_080CC790

	thumb_func_start sub_0802826C
sub_0802826C: @ 0x0802826C
	push {lr}
	ldr r2, _08028280 @ =gUnk_080CC7A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08028280: .4byte gUnk_080CC7A8

	thumb_func_start sub_08028284
sub_08028284: @ 0x08028284
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028298
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08028298:
	ldr r1, _080282BC @ =gUnk_080CC790
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080282DE
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _080282C0
	adds r0, r4, #0
	bl sub_08028754
	b _080282DE
	.align 2, 0
_080282BC: .4byte gUnk_080CC790
_080282C0:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080282DE
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #7
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028784
_080282DE:
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r5, [r0]
	cmp r5, #0
	bne _0802830C
	movs r0, #0
	strh r5, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287E0
	ldr r0, [r4, #0x54]
	bl DeleteEntity
	str r5, [r4, #0x54]
_0802830C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_13
nullsub_13: @ 0x08028310
	bx lr
	.align 2, 0

	thumb_func_start sub_08028314
sub_08028314: @ 0x08028314
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #5
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	subs r0, #7
	strb r1, [r0]
	adds r0, #8
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802835E
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080287E0
	b _08028368
_0802835E:
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08028604
_08028368:
	movs r0, #3
	bl sub_080A7EE0
	cmp r0, #0
	beq _08028376
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08028376:
	pop {r4, pc}

	thumb_func_start sub_08028378
sub_08028378: @ 0x08028378
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802838A
	subs r0, #1
	strb r0, [r1]
_0802838A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080283B8
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #0xf
	bls _080283B0
	adds r0, r4, #0
	bl sub_08028728
	b _080283FC
_080283B0:
	adds r0, r4, #0
	bl sub_08028604
	b _080283FC
_080283B8:
	adds r0, r4, #0
	bl sub_080286CC
	cmp r0, #0
	beq _080283CE
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_080283CE:
	adds r0, r4, #0
	bl sub_080288A4
	cmp r0, #0
	beq _080283FC
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287E0
_080283FC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _08028414
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028418
	adds r0, r4, #0
	bl sub_08028754
	b _08028418
_08028414:
	adds r0, #1
	strb r0, [r4, #0xf]
_08028418:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}

	thumb_func_start sub_08028420
sub_08028420: @ 0x08028420
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802844C
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08028604
	b _08028462
_0802844C:
	adds r0, r4, #0
	bl sub_080286CC
	cmp r0, #0
	beq _08028462
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_08028462:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _0802847A
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802847E
	adds r0, r4, #0
	bl sub_08028754
	b _0802847E
_0802847A:
	adds r0, #1
	strb r0, [r4, #0xf]
_0802847E:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028488
sub_08028488: @ 0x08028488
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08028520
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	beq _080284D2
	cmp r1, #2
	ble _080284F0
	cmp r1, #3
	beq _080284B4
	cmp r1, #4
	beq _080284E6
	b _080284F0
_080284B4:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	movs r0, #0x8f
	lsls r0, r0, #1
	bl EnqueueSFX
	b _0802850A
_080284D2:
	strb r1, [r4, #0xc]
	strh r2, [r4, #0x24]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x40
	b _08028508
_080284E6:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_080284F0:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r3]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x22
_08028508:
	strb r1, [r4, #0xe]
_0802850A:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080287E0
_08028520:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}

	thumb_func_start sub_08028528
sub_08028528: @ 0x08028528
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08028542
	strb r5, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028728
	b _08028600
_08028542:
	adds r0, r4, #0
	bl sub_080288C0
	ldr r1, _08028590 @ =gUnk_080CC944
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #6]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #7]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08028594
	movs r0, #0
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028784
	adds r1, r4, #0
	adds r1, #0x7b
	b _080285EE
	.align 2, 0
_08028590: .4byte gUnk_080CC944
_08028594:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _080285BC
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFacingDirection
	adds r5, r0, #0
	ldrb r0, [r4, #0x15]
	adds r1, r5, #0
	bl sub_08028828
	cmp r0, #0
	beq _080285BC
	strb r5, [r4, #0x15]
_080285BC:
	ldrb r1, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080285D6
	movs r0, #0xf0
	bl EnqueueSFX
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFx
_080285D6:
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bne _080285EE
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080285EE:
	ldrb r0, [r1]
	cmp r0, #0x20
	bls _080285FA
	adds r0, r4, #0
	bl ProcessMovement
_080285FA:
	adds r0, r4, #0
	bl GetNextFrame
_08028600:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08028604
sub_08028604: @ 0x08028604
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

	thumb_func_start sub_080286CC
sub_080286CC: @ 0x080286CC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028724
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08028724
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _080286FC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl sub_0806FC80
	cmp r0, #0
	bne _08028720
_080286FC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _08028724
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	ldrb r5, [r5, #0x14]
	cmp r0, r5
	bne _08028724
_08028720:
	movs r0, #1
	b _08028726
_08028724:
	movs r0, #0
_08028726:
	pop {r4, r5, pc}

	thumb_func_start sub_08028728
sub_08028728: @ 0x08028728
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287B4
	adds r4, #0x82
	movs r0, #2
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08028754
sub_08028754: @ 0x08028754
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	movs r2, #0
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080287B4
	adds r4, #0x82
	movs r0, #3
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028784
sub_08028784: @ 0x08028784
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080287B4
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0xe]
	adds r4, #0x82
	movs r0, #4
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_080287B4
sub_080287B4: @ 0x080287B4
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	movs r0, #0
	strh r1, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080287E0
	pop {pc}

	thumb_func_start sub_080287E0
sub_080287E0: @ 0x080287E0
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x14]
	lsrs r2, r0, #1
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0802881E
	lsls r0, r0, #2
	ldr r1, _080287FC @ =_08028800
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080287FC: .4byte _08028800
_08028800: @ jump table
	.4byte _0802881E @ case 0
	.4byte _08028814 @ case 1
	.4byte _0802881C @ case 2
	.4byte _08028818 @ case 3
	.4byte _08028814 @ case 4
_08028814:
	adds r2, #4
	b _0802881E
_08028818:
	adds r2, #8
	b _0802881E
_0802881C:
	adds r2, #0xc
_0802881E:
	adds r0, r3, #0
	adds r1, r2, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_08028828
sub_08028828: @ 0x08028828
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r0, r3, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r4, #4
	ands r1, r2
	cmp r0, r1
	bne _08028852
	adds r0, r3, #5
	movs r1, #7
	ands r0, r1
	adds r2, r4, #5
	ands r2, r1
	cmp r0, #2
	bhi _08028852
	cmp r2, #2
	bhi _08028852
	movs r0, #1
	b _08028854
_08028852:
	movs r0, #0
_08028854:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028858
sub_08028858: @ 0x08028858
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080288C0
	ldr r1, _080288A0 @ =gUnk_080CC944
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #6]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #7]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028890
	strh r0, [r4, #0x24]
_08028890:
	adds r0, r4, #0
	bl ProcessMovement
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0
_080288A0: .4byte gUnk_080CC944

	thumb_func_start sub_080288A4
sub_080288A4: @ 0x080288A4
	ldr r2, _080288BC @ =gUnk_080CC7D8
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r0, #0x2a]
	ldrh r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080288BC: .4byte gUnk_080CC7D8

	thumb_func_start sub_080288C0
sub_080288C0: @ 0x080288C0
	push {lr}
	mov ip, r0
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _08028908
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028908
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #9
	movs r3, #0
	strh r0, [r1]
	adds r2, #0x42
	ldrb r1, [r2]
	mov r0, ip
	adds r0, #0x42
	strb r1, [r0]
	strb r3, [r2]
_08028908:
	pop {pc}
	.align 2, 0
