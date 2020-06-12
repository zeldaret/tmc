	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809631C
sub_0809631C: @ 0x0809631C
	push {lr}
	ldr r2, _08096330 @ =gUnk_08123168
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08096330: .4byte gUnk_08123168

	thumb_func_start sub_08096334
sub_08096334: @ 0x08096334
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r4, #0
	movs r6, #0x80
	strh r6, [r5, #0x24]
	ldr r0, _08096358 @ =gUnk_080FD2A8
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0809634E
	b _08096494
_0809634E:
	cmp r0, #1
	bgt _0809635C
	cmp r0, #0
	beq _08096368
	b _0809650A
	.align 2, 0
_08096358: .4byte gUnk_080FD2A8
_0809635C:
	cmp r0, #2
	bne _08096362
	b _080964A6
_08096362:
	cmp r0, #3
	beq _080963FC
	b _0809650A
_08096368:
	movs r0, #0x1a
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080963DA
	movs r0, #0x1b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080963A4
	ldr r0, _0809639C @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	ldr r0, _080963A0 @ =0x00004022
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r2, [r1]
	movs r1, #0xdc
	bl SetTile
	b _0809650A
	.align 2, 0
_0809639C: .4byte gLinkEntity
_080963A0: .4byte 0x00004022
_080963A4:
	ldrb r0, [r5, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	bne _080963C8
	adds r0, r5, #0
	movs r1, #0xa
	bl UpdateSprite
	ldrh r0, [r5, #0x32]
	adds r0, #4
	strh r0, [r5, #0x32]
	movs r0, #4
	strb r0, [r5, #0xc]
	ldr r0, _080963C4 @ =0x0000403B
	b _080964C4
	.align 2, 0
_080963C4: .4byte 0x0000403B
_080963C8:
	strb r4, [r5, #0xb]
	movs r0, #2
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_080969A4
	bl sub_0805E780
	b _0809650A
_080963DA:
	ldr r1, _080963F8 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xd0
	strh r0, [r5, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x44
	strh r0, [r5, #0x32]
	movs r0, #4
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0xa]
	adds r1, #3
	adds r0, r5, #0
	bl UpdateSprite
	b _0809651A
	.align 2, 0
_080963F8: .4byte gRoomControls
_080963FC:
	movs r0, #0x1a
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08096450
	movs r0, #0x1b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0809644C
	ldr r0, _08096444 @ =gLinkEntity
	adds r1, r0, #0
	adds r1, #0x29
	ldrb r2, [r1]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	subs r2, #1
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r2, r1
	ldrb r3, [r4]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	adds r1, r0, #0
	adds r1, #0x79
	strb r6, [r1]
	ldr r3, _08096448 @ =0xFFE80000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	b _08096450
	.align 2, 0
_08096444: .4byte gLinkEntity
_08096448: .4byte 0xFFE80000
_0809644C:
	bl sub_0805E780
_08096450:
	adds r0, r5, #0
	movs r1, #0x6b
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _0809646E
	ldr r2, _0809648C @ =0xFFE40000
	ldr r3, _08096490 @ =0xFFD80000
	adds r0, r5, #0
	bl PositionRelative
_0809646E:
	movs r0, #0x10
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0x19]
	adds r0, r5, #0
	movs r1, #0xc
	bl UpdateSprite
	adds r0, r5, #0
	bl sub_0809651C
	b _0809651A
	.align 2, 0
_0809648C: .4byte 0xFFE40000
_08096490: .4byte 0xFFD80000
_08096494:
	ldrb r0, [r5, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0x19]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	b _0809650A
_080964A6:
	ldrb r0, [r5, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	bne _080964F8
	adds r0, r5, #0
	movs r1, #0xb
	bl UpdateSprite
	ldrh r0, [r5, #0x32]
	adds r0, #4
	strh r0, [r5, #0x32]
	movs r0, #4
	strb r0, [r5, #0xc]
	ldr r0, _080964F0 @ =0x00004032
_080964C4:
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080964F4 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	b _0809651A
	.align 2, 0
_080964F0: .4byte 0x00004032
_080964F4: .4byte gRoomControls
_080964F8:
	strb r4, [r5, #0xb]
	movs r0, #3
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_080969A4
	bl sub_0805E780
	b _0809651A
_0809650A:
	ldrb r1, [r5, #0xa]
	adds r1, #3
	adds r0, r5, #0
	bl UpdateSprite
	adds r0, r5, #0
	bl sub_0809651C
_0809651A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809651C
sub_0809651C: @ 0x0809651C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r3, [r6, #0xa]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080965D6
	cmp r3, #3
	bne _0809653C
	adds r0, r6, #0
	bl sub_08078930
	adds r0, r6, #0
	bl sub_0800445C
	b _080965C8
_0809653C:
	ldr r0, [r6, #0x50]
	ldr r2, _0809655C @ =0xFFE40000
	ldr r3, _08096560 @ =0xFFD80000
	adds r1, r6, #0
	bl PositionRelative
	ldr r1, [r6, #0x50]
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bne _08096586
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	beq _08096564
	cmp r0, #2
	beq _08096580
	b _08096570
	.align 2, 0
_0809655C: .4byte 0xFFE40000
_08096560: .4byte 0xFFD80000
_08096564:
	ldr r0, _0809657C @ =gLinkState
	ldrb r1, [r0, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08096580
_08096570:
	adds r0, r6, #0
	movs r1, #4
	bl UpdateSprite
	b _08096586
	.align 2, 0
_0809657C: .4byte gLinkState
_08096580:
	adds r0, r6, #0
	bl sub_08004274
_08096586:
	ldr r0, [r6, #0x50]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r6, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r4, [r6, #0x50]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r6, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r6, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r6, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #0x1b]
_080965C8:
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0xcc
	movs r3, #0
	bl sub_0805EC9C
	b _080966F6
_080965D6:
	ldr r1, _080965FC @ =gLinkState
	ldrb r2, [r1, #0x1a]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x1a]
	movs r0, #5
	strb r0, [r1, #5]
	ldrb r1, [r1, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08096600
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x19
	adds r1, #3
	adds r0, r6, #0
	bl UpdateSprite
	b _08096606
	.align 2, 0
_080965FC: .4byte gLinkState
_08096600:
	adds r0, r6, #0
	bl sub_08004274
_08096606:
	ldr r0, _08096664 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r4, _08096668 @ =gUnk_08123184
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r6, #0x2e]
	adds r0, r0, r2
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r3, r2, #0
	ands r0, r3
	movs r2, #8
	adds r5, r6, #0
	adds r5, #0x70
	movs r7, #0
	orrs r0, r2
	strh r0, [r5]
	adds r1, #1
	adds r1, r1, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	ands r0, r3
	orrs r0, r2
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrh r0, [r5]
	ldrh r1, [r1]
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl sub_080002BC
	cmp r0, #0x19
	bne _08096670
	ldr r0, _0809666C @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #3
	strb r1, [r0]
	b _08096676
	.align 2, 0
_08096664: .4byte gLinkEntity
_08096668: .4byte gUnk_08123184
_0809666C: .4byte gUnk_0200AF00
_08096670:
	ldr r0, _080966F8 @ =gUnk_0200AF00
	adds r0, #0x2f
	strb r7, [r0]
_08096676:
	ldr r0, _080966FC @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r6, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r6, #0
	bl sub_080002B8
	cmp r0, #0x19
	bne _0809669C
	ldrb r1, [r4]
	movs r0, #0xdc
	bl sub_0807BA8C
	adds r0, r6, #0
	bl sub_08096A78
_0809669C:
	ldr r2, _08096700 @ =gLinkState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080966F6
	ldr r0, _080966F8 @ =gUnk_0200AF00
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #3
	bne _080966F6
	movs r0, #0
	strb r0, [r2, #5]
	movs r0, #5
	strb r0, [r6, #0xc]
	adds r0, #0xfb
	strh r0, [r6, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x18]
	ldrb r1, [r4]
	movs r0, #0xdc
	bl sub_0807BA8C
	movs r0, #0x79
	bl PlaySFX
_080966F6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080966F8: .4byte gUnk_0200AF00
_080966FC: .4byte gLinkEntity
_08096700: .4byte gLinkState

	thumb_func_start sub_08096704
sub_08096704: @ 0x08096704
	push {lr}
	ldr r2, _08096718 @ =gUnk_0812318C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08096718: .4byte gUnk_0812318C

	thumb_func_start sub_0809671C
sub_0809671C: @ 0x0809671C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1a
	bl SetGlobalFlag
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_121
nullsub_121: @ 0x08096730
	bx lr
	.align 2, 0

	thumb_func_start sub_08096734
sub_08096734: @ 0x08096734
	push {lr}
	movs r0, #0x1a
	bl ClearGlobalFlag
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08096740
sub_08096740: @ 0x08096740
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08096758
sub_08096758: @ 0x08096758
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809677C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0xa
	bl UpdateSprite
_0809677C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08096780
sub_08096780: @ 0x08096780
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080967D4 @ =gUnk_0812319C
	ldrb r0, [r5, #0xa]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r5, #0
	bl GetTileTypeByEntity
	cmp r4, r0
	bne _080967DC
	adds r0, r5, #0
	bl sub_08004274
	ldr r2, _080967D8 @ =gLinkState
	ldrb r0, [r2, #0xb]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xb]
	ldrb r0, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #7]
	orrs r1, r0
	strb r1, [r2, #7]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080967E0
	movs r0, #6
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	bl sub_080A29BC
	b _080967E0
	.align 2, 0
_080967D4: .4byte gUnk_0812319C
_080967D8: .4byte gLinkState
_080967DC:
	movs r0, #0xc0
	strb r0, [r5, #0xe]
_080967E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080967E4
sub_080967E4: @ 0x080967E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x70
	ldrh r5, [r0]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	cmp r5, r2
	bne _08096802
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r1, [r0]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _0809681C
_08096802:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r3, [r0]
	adds r0, r2, #0
	adds r2, r5, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_0809681C:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08096830
	adds r0, r4, #0
	bl sub_08096A78
_08096830:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08096834
sub_08096834: @ 0x08096834
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	beq _08096842
	bl sub_08078B48
_08096842:
	ldr r0, _08096854 @ =gUnk_081231A0
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08096854: .4byte gUnk_081231A0

	thumb_func_start sub_08096858
sub_08096858: @ 0x08096858
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	bl SetLocalFlag
	movs r3, #0
	movs r0, #0xf
	strb r0, [r5, #0xe]
	ldr r1, _080968BC @ =gUnk_081231AC
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x19
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	strb r3, [r5, #0xb]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	cmp r2, #0
	bne _080968C4
	movs r0, #0xe7
	lsls r0, r0, #1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080968C0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	b _080968F0
	.align 2, 0
_080968BC: .4byte gUnk_081231AC
_080968C0: .4byte gRoomControls
_080968C4:
	ldr r0, _080968F8 @ =0x000001CD
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080968FC @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080968F0:
	ldr r0, _08096900 @ =0x000001DB
	bl PlaySFX
	pop {r4, r5, r6, pc}
	.align 2, 0
_080968F8: .4byte 0x000001CD
_080968FC: .4byte gRoomControls
_08096900: .4byte 0x000001DB

	thumb_func_start sub_08096904
sub_08096904: @ 0x08096904
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08096984
	ldrh r0, [r5, #0x32]
	subs r0, #0x10
	strh r0, [r5, #0x32]
	ldr r1, _08096974 @ =gUnk_081231AE
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08096978 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0xf]
	cmp r0, r1
	bne _08096980
	ldr r2, _0809697C @ =gLinkState
	ldrb r1, [r2, #0xb]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0xb]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r0, #0x3c
	b _08096982
	.align 2, 0
_08096974: .4byte gUnk_081231AE
_08096978: .4byte gRoomControls
_0809697C: .4byte gLinkState
_08096980:
	movs r0, #0xf
_08096982:
	strb r0, [r5, #0xe]
_08096984:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08096988
sub_08096988: @ 0x08096988
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080969A2
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080969A2
	movs r0, #0x72
	bl PlaySFX
_080969A2:
	pop {pc}

	thumb_func_start sub_080969A4
sub_080969A4: @ 0x080969A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080969E8
	movs r0, #0xe7
	lsls r0, r0, #1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080969E4 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl sub_0807B7D8
	b _08096A14
	.align 2, 0
_080969E4: .4byte gRoomControls
_080969E8:
	ldr r0, _08096A6C @ =0x000001CD
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08096A70 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl sub_0807B7D8
_08096A14:
	ldrb r0, [r5, #0xb]
	ldrb r1, [r5, #0xf]
	cmp r0, r1
	beq _08096A64
	ldr r2, _08096A74 @ =gUnk_081231B4
	mov r8, r2
	ldr r7, _08096A70 @ =gRoomControls
	movs r6, #0x3f
_08096A24:
	ldrh r0, [r5, #0x32]
	subs r0, #0x10
	strh r0, [r5, #0x32]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	ldrh r2, [r7, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	ldrh r3, [r7, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0xf]
	cmp r0, r1
	bne _08096A24
_08096A64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08096A6C: .4byte 0x000001CD
_08096A70: .4byte gRoomControls
_08096A74: .4byte gUnk_081231B4

	thumb_func_start sub_08096A78
sub_08096A78: @ 0x08096A78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x1b
	bl SetGlobalFlag
	ldrb r1, [r4, #0xa]
	lsrs r1, r1, #1
	adds r1, #8
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_08004168
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _08096ACC @ =0x0000403B
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _08096AD0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r5, #0x3f
	ands r1, r5
	movs r6, #0x32
	ldrsh r2, [r4, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_08096ACC: .4byte 0x0000403B
_08096AD0: .4byte gRoomControls
