	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080323BC
sub_080323BC: @ 0x080323BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080323D8 @ =gUnk_080CE7B0
	bl EnemyFunctionHandler
	movs r3, #0x12
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
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
	bl InitAnimationForceUpdate
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
	bl InitAnimationForceUpdate
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
	bl UpdateAnimationSingleFrame
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
	bl UpdateAnimationSingleFrame
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
	bl InitAnimationForceUpdate
_08032524:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
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
	bl UpdateAnimationSingleFrame
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
	bl InitAnimationForceUpdate
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
	bl InitAnimationForceUpdate
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
	bl InitializeAnimation
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
	bl InitAnimationForceUpdate
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
	bl InitAnimationForceUpdate
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
