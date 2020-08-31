	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start CloudPiranha
CloudPiranha: @ 0x08038430
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803844C @ =gUnk_080CF4F0
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_0803844C: .4byte gUnk_080CF4F0

	thumb_func_start sub_08038450
sub_08038450: @ 0x08038450
	push {lr}
	ldr r2, _08038464 @ =gUnk_080CF508
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038464: .4byte gUnk_080CF508

	thumb_func_start sub_08038468
sub_08038468: @ 0x08038468
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803847C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803847C:
	ldr r1, _080384B0 @ =gUnk_080CF4F0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080384D8
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x5a
	bne _080384CA
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	beq _080384BA
	cmp r0, #0x14
	bgt _080384B4
	cmp r0, #0xe
	beq _080384C0
	b _080384D8
	.align 2, 0
_080384B0: .4byte gUnk_080CF4F0
_080384B4:
	cmp r0, #0x15
	beq _080384C0
	b _080384D8
_080384BA:
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080384D8
_080384C0:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _080384D8
_080384CA:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x1d
	bne _080384D8
	adds r0, r4, #0
	bl sub_08038754
_080384D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_163
nullsub_163: @ 0x080384DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080384E0
sub_080384E0: @ 0x080384E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	movs r0, #1
	strb r0, [r6, #0xc]
	bl Random
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r6, #0x15]
	lsrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x10]
	strb r4, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	adds r0, #0x82
	strb r4, [r0]
	bl Random
	ands r0, r5
	adds r1, r6, #0
	adds r1, #0x80
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x81
	strb r4, [r0]
	subs r1, #0x41
	movs r0, #0x72
	strb r0, [r1]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl InitializeAnimation
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08038534
sub_08038534: @ 0x08038534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08038594
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08038578
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803856A
	adds r1, #7
	b _0803856C
_0803856A:
	adds r1, #1
_0803856C:
	movs r0, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	b _0803858A
_08038578:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
_0803858A:
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	b _080385C8
_08038594:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080385C8
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_0803872C
	cmp r0, #0
	beq _080385C8
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_080385C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080385CC
sub_080385CC: @ 0x080385CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x60
	bl sub_0803872C
	cmp r0, #0
	beq _08038604
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	b _08038648
_08038604:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038648
	movs r6, #0x10
	strb r6, [r4, #0xf]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08038622
	adds r0, r4, #0
	bl sub_0806FCAC
	b _08038638
_08038622:
	ldrb r5, [r4, #0x14]
	bl Random
	ands r0, r6
	cmp r0, #0
	beq _08038632
	adds r1, r5, #2
	b _08038634
_08038632:
	adds r1, r5, #6
_08038634:
	movs r0, #7
	ands r0, r1
_08038638:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08038648:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803864C
sub_0803864C: @ 0x0803864C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0803872C
	cmp r0, #0
	beq _08038668
	adds r0, r4, #0
	bl sub_08038754
	b _080386B4
_08038668:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080386B4
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r0, [r2]
	cmp r0, #0
	bne _08038698
	ldrh r0, [r4, #0x24]
	adds r0, #0x40
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	ble _080386B4
	movs r0, #1
	strb r0, [r2]
	b _080386B4
_08038698:
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080386AE
	adds r0, r2, #0
	subs r0, #0x50
	strh r0, [r4, #0x24]
	b _080386B4
_080386AE:
	adds r0, r4, #0
	bl sub_08038754
_080386B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080386B8
sub_080386B8: @ 0x080386B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	adds r1, r0, #0
	cmp r1, #1
	bne _08038720
	strb r1, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3f
	movs r0, #0x72
	strb r0, [r2]
	strb r1, [r4, #0xe]
	movs r0, #0x80
	strb r0, [r4, #0xf]
	strh r0, [r4, #0x24]
	subs r2, #0x16
	ldrb r1, [r2]
	subs r0, #0xb9
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x92
	lsls r0, r0, #1
	bl EnqueSFX
	adds r0, r4, #0
	movs r1, #0x70
	bl sub_0801D2B4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08038720
	adds r0, r4, #0
	bl ResolveEntityOnTop
_08038720:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038724
sub_08038724: @ 0x08038724
	push {lr}
	bl sub_08038754
	pop {pc}

	thumb_func_start sub_0803872C
sub_0803872C: @ 0x0803872C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08038750
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _08038750
	movs r0, #1
	b _08038752
_08038750:
	movs r0, #0
_08038752:
	pop {r4, r5, pc}

	thumb_func_start sub_08038754
sub_08038754: @ 0x08038754
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080387C0 @ =0x0000012B
	bl EnqueSFX
	adds r0, r4, #0
	movs r1, #0x71
	bl sub_0801D2B4
	ldrb r2, [r4, #0x15]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080387C4
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #9
	adds r0, r4, #0
	bl InitializeAnimation
	b _080387D8
	.align 2, 0
_080387C0: .4byte 0x0000012B
_080387C4:
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #8
	adds r0, r4, #0
	bl InitializeAnimation
_080387D8:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080387EE
	adds r0, r4, #0
	bl ResolveEntityOnTop
_080387EE:
	pop {r4, pc}

	thumb_func_start sub_080387F0
sub_080387F0: @ 0x080387F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _08038890
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _08038890
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08038868 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xf
	beq _08038836
	cmp r0, #0x2a
	bne _0803883A
_08038836:
	movs r0, #0x20
	strb r0, [r5]
_0803883A:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #1
	ldr r1, _0803886C @ =gUnk_080CF520
	adds r0, r0, r1
	ldrb r5, [r4, #0x15]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002CC
	cmp r0, #0xf
	beq _0803885A
	cmp r0, #0x2a
	bne _08038870
_0803885A:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	b _0803887E
	.align 2, 0
_08038868: .4byte gRoomControls
_0803886C: .4byte gUnk_080CF520
_08038870:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803887E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
_0803887E:
	ldrb r0, [r4, #0x15]
	cmp r5, r0
	beq _08038890
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08038890:
	adds r0, r4, #0
	bl GetNextFrame
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _080388A8
	adds r0, r4, #0
	bl ProcessMovement
	b _080388B2
_080388A8:
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806F69C
_080388B2:
	pop {r4, r5, r6, pc}
