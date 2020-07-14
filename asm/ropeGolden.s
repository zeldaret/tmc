	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start RopeGolden
RopeGolden: @ 0x080381AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _080381D0
	ldr r0, _080381CC @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _080381F2
	.align 2, 0
_080381CC: .4byte gUnk_080012C8
_080381D0:
	ldr r4, _080381F4 @ =gUnk_080CF4C8
	adds r0, r5, #0
	bl GetNextFunction
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
	bl SetChildOffset
_080381F2:
	pop {r4, r5, pc}
	.align 2, 0
_080381F4: .4byte gUnk_080CF4C8

	thumb_func_start sub_080381F8
sub_080381F8: @ 0x080381F8
	push {lr}
	ldr r2, _0803820C @ =gUnk_080CF4E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803820C: .4byte gUnk_080CF4E0

	thumb_func_start sub_08038210
sub_08038210: @ 0x08038210
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038224
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038224:
	ldr r1, _08038230 @ =gUnk_080CF4C8
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08038230: .4byte gUnk_080CF4C8

	thumb_func_start sub_08038234
sub_08038234: @ 0x08038234
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803824A
	ldrb r0, [r4, #0xb]
	bl SetGlobalFlag
_0803824A:
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x58
	bl CreateDeathFx
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038258
sub_08038258: @ 0x08038258
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0803826A
	bl DeleteThisEntity
_0803826A:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080383AC
	pop {r4, pc}

	thumb_func_start sub_0803827C
sub_0803827C: @ 0x0803827C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803828C
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080382BC
_0803828C:
	ldr r5, _080382B8 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_0804A044
	cmp r0, #0xff
	bne _080382B0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _080382BC
_080382B0:
	adds r0, r4, #0
	bl sub_080383E4
	b _080382E8
	.align 2, 0
_080382B8: .4byte gLinkEntity
_080382BC:
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080382D6
	adds r0, r4, #0
	bl sub_080383AC
	b _080382E8
_080382D6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080382E8
	adds r0, r4, #0
	bl sub_080383AC
_080382E8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080382EC
sub_080382EC: @ 0x080382EC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038300
	movs r0, #3
	strb r0, [r1, #0xc]
_08038300:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08038304
sub_08038304: @ 0x08038304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	adds r0, r4, #0
	bl sub_080AEF88
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

	thumb_func_start sub_080383AC
sub_080383AC: @ 0x080383AC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, #0xf8
	strh r0, [r4, #0x24]
	ldr r1, _080383E0 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _080383DC
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_080383DC:
	pop {r4, pc}
	.align 2, 0
_080383E0: .4byte gLinkEntity

	thumb_func_start sub_080383E4
sub_080383E4: @ 0x080383E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldr r1, _0803842C @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_0803842C: .4byte gLinkEntity
