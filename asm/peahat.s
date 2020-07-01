	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Peahat
Peahat: @ 0x0801FF5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FF84
	ldr r1, _0801FF80 @ =gUnk_080CA570
	adds r0, r4, #0
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	b _0801FF94
	.align 2, 0
_0801FF80: .4byte gUnk_080CA570
_0801FF84:
	ldr r0, _0801FF98 @ =gUnk_080CA588
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801FF94:
	pop {r4, pc}
	.align 2, 0
_0801FF98: .4byte gUnk_080CA588

	thumb_func_start sub_0801FF9C
sub_0801FF9C: @ 0x0801FF9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801FFD4 @ =gUnk_080CA590
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FFD2
	ldr r2, _0801FFD8 @ =gUnk_080CA5B8
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
_0801FFD2:
	pop {r4, pc}
	.align 2, 0
_0801FFD4: .4byte gUnk_080CA590
_0801FFD8: .4byte gUnk_080CA5B8

	thumb_func_start sub_0801FFDC
sub_0801FFDC: @ 0x0801FFDC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x82
	ldrb r0, [r6]
	cmp r0, #0
	beq _08020068
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	cmp r1, #0x94
	bne _08020018
	movs r0, #3
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _08020010
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrh r0, [r5, #0x36]
	subs r0, #8
	strh r0, [r5, #0x36]
_08020010:
	movs r0, #0
	strb r0, [r6]
	movs r0, #2
	b _0802001E
_08020018:
	cmp r1, #0x9b
	bne _08020042
	movs r0, #1
_0802001E:
	strb r0, [r4, #0x14]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x3d
	movs r0, #0xe2
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	b _08020068
_08020042:
	cmp r1, #0x80
	bne _08020068
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08020068
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl GetNextFrame
_08020068:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802007A
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802007A:
	ldr r1, _08020084 @ =gUnk_080CA570
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020084: .4byte gUnk_080CA570

	thumb_func_start sub_08020088
sub_08020088: @ 0x08020088
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802009C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080200AC
_0802009C:
	ldr r0, _080200B0 @ =gUnk_080CA5BC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080200AC:
	pop {r4, pc}
	.align 2, 0
_080200B0: .4byte gUnk_080CA5BC

	thumb_func_start sub_080200B4
sub_080200B4: @ 0x080200B4
	push {lr}
	adds r2, r0, #0
	movs r1, #1
	strb r1, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r2, #0x1d]
	ldrb r3, [r2, #0x14]
	cmp r3, #0
	bne _080200E2
	strb r1, [r2, #0x14]
	movs r0, #5
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x81
	strb r3, [r0]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl InitializeAnimation
_080200E2:
	pop {pc}

	thumb_func_start sub_080200E4
sub_080200E4: @ 0x080200E4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080200EC
sub_080200EC: @ 0x080200EC
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_080200F4
sub_080200F4: @ 0x080200F4
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_5
nullsub_5: @ 0x08020100
	bx lr
	.align 2, 0

	thumb_func_start sub_08020104
sub_08020104: @ 0x08020104
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08020128
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0802012E
_08020128:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802012E:
	pop {pc}

	thumb_func_start sub_08020130
sub_08020130: @ 0x08020130
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	bl Random
	strb r0, [r4, #0xf]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	bl Random
	ands r0, r5
	movs r1, #0xfe
	cmp r0, #0
	beq _08020162
	movs r1, #2
_08020162:
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08020180
sub_08020180: @ 0x08020180
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0
	beq _08020192
	subs r0, #1
	strb r0, [r5]
_08020192:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080201D4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080201D4
	ldrb r1, [r4, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080201D4
	ldr r0, _0802021C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x30
	bl sub_08049F1C
	cmp r0, #0
	beq _080201D4
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080201D4:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802020C
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08020604
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0802020C
	bl Random
	movs r1, #1
	ands r1, r0
	movs r2, #0xfe
	cmp r1, #0
	beq _08020206
	movs r2, #2
_08020206:
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
_0802020C:
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}
	.align 2, 0
_0802021C: .4byte gUnk_020000B0

	thumb_func_start sub_08020220
sub_08020220: @ 0x08020220
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08020284
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0802024C
	lsrs r0, r0, #0x1c
	movs r1, #3
	ands r0, r1
	movs r1, #4
	subs r1, r1, r0
	adds r0, r5, #0
	bl InitializeAnimationAnimation
	b _08020292
_0802024C:
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x78
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r0, _0802027C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #0
	bl Random
	ldr r2, _08020280 @ =gUnk_080CA5D4
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0802028A
	.align 2, 0
_0802027C: .4byte gUnk_020000B0
_08020280: .4byte gUnk_080CA5D4
_08020284:
	adds r0, r5, #0
	bl sub_080205F8
_0802028A:
	adds r0, r5, #0
	movs r1, #4
	bl InitializeAnimationAnimation
_08020292:
	pop {r4, r5, pc}

	thumb_func_start sub_08020294
sub_08020294: @ 0x08020294
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080202F8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080202B4
	adds r0, r4, #0
	bl sub_080205F8
_080202B4:
	ldrb r1, [r4, #0xe]
	cmp r1, #0x3c
	bls _080202E6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080202C8
	ldrh r0, [r4, #0x24]
	adds r0, #4
	strh r0, [r4, #0x24]
_080202C8:
	ldr r0, _080202F0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080202E6
	ldr r0, _080202F4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080202E6:
	adds r0, r4, #0
	bl sub_080AEFE0
	b _080202FE
	.align 2, 0
_080202F0: .4byte gUnk_030010A0
_080202F4: .4byte gUnk_020000B0
_080202F8:
	adds r0, r4, #0
	bl sub_080205F8
_080202FE:
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimationAnimation
	pop {r4, pc}

	thumb_func_start sub_08020308
sub_08020308: @ 0x08020308
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08020332
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl GetNextFrame
	b _0802034E
_08020332:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08020340
	ldrh r0, [r4, #0x24]
	subs r0, #8
	strh r0, [r4, #0x24]
_08020340:
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimationAnimation
_0802034E:
	pop {r4, pc}

	thumb_func_start sub_08020350
sub_08020350: @ 0x08020350
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	beq _08020398
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _0802037C
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
_0802037C:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xff
	bne _0802038A
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
_0802038A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl GetNextFrame
	b _080203BE
_08020398:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080203BE
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x96
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
_080203BE:
	pop {r4, pc}

	thumb_func_start sub_080203C0
sub_080203C0: @ 0x080203C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080203DC
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080203DC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080203DC:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080203F2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020418
_080203F2:
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0804AA1C
	movs r0, #5
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
_08020418:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802041C
sub_0802041C: @ 0x0802041C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08020438
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020438
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08020438:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0802044E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020466
_0802044E:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0804AA1C
_08020466:
	pop {r4, pc}

	thumb_func_start sub_08020468
sub_08020468: @ 0x08020468
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204A6
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080204A2
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _080204A6
_080204A2:
	movs r0, #1
	strb r0, [r4, #0xe]
_080204A6:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080204C4
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r5]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080204C4:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080204D6
	adds r0, r4, #0
	bl sub_0800442E
	b _080204DC
_080204D6:
	adds r0, r4, #0
	bl sub_080AEF88
_080204DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080204E0
sub_080204E0: @ 0x080204E0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802051A
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x3f
	movs r0, #0x70
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	strb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0802053A
_0802051A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802052A
	adds r0, r4, #0
	bl sub_0800442E
	b _0802053A
_0802052A:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_080AEF88
_0802053A:
	pop {r4, pc}

	thumb_func_start sub_0802053C
sub_0802053C: @ 0x0802053C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x28
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0x1b]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r4, #0x18]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_08020590
sub_08020590: @ 0x08020590
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080205AE
	adds r0, r4, #0
	bl DeleteEntity
	b _080205F2
_080205AE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _080205C8
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080205C8:
	ldr r0, [r4, #0x34]
	ldr r1, _080205F4 @ =0xFFFF4000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080205F2
	movs r0, #0x28
	strb r0, [r4, #0xf]
	bl Random
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
_080205F2:
	pop {r4, r5, pc}
	.align 2, 0
_080205F4: .4byte 0xFFFF4000

	thumb_func_start sub_080205F8
sub_080205F8: @ 0x080205F8
	movs r1, #4
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020604
sub_08020604: @ 0x08020604
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08020624
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08020624
	adds r0, r4, #0
	bl sub_08049EE4
	b _08020632
_08020624:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
_08020632:
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0
