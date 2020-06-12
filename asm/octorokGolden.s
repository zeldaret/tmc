	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08037C3C
sub_08037C3C: @ 0x08037C3C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	cmp r0, #0
	beq _08037C5C
	ldr r0, _08037C58 @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08037C7E
	.align 2, 0
_08037C58: .4byte gUnk_080012C8
_08037C5C:
	ldr r4, _08037C80 @ =gUnk_080CF46C
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
	bl SetChildOffset
_08037C7E:
	pop {r4, r5, pc}
	.align 2, 0
_08037C80: .4byte gUnk_080CF46C

	thumb_func_start sub_08037C84
sub_08037C84: @ 0x08037C84
	push {lr}
	ldr r2, _08037C98 @ =gUnk_080CF484
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037C98: .4byte gUnk_080CF484

	thumb_func_start sub_08037C9C
sub_08037C9C: @ 0x08037C9C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037CB0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037CB0:
	ldr r1, _08037CBC @ =gUnk_080CF46C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037CBC: .4byte gUnk_080CF46C

	thumb_func_start sub_08037CC0
sub_08037CC0: @ 0x08037CC0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037CD6
	ldrb r0, [r4, #0xb]
	bl SetGlobalFlag
_08037CD6:
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x58
	bl CreateDeathFx
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037CE4
sub_08037CE4: @ 0x08037CE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08037CF6
	bl sub_0805E780
_08037CF6:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08037E14
	pop {r4, pc}

	thumb_func_start sub_08037D0C
sub_08037D0C: @ 0x08037D0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08037D1C
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08037D26
_08037D1C:
	adds r0, r4, #0
	bl sub_08037E90
	cmp r0, #0
	bne _08037D52
_08037D26:
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08037D40
	adds r0, r4, #0
	bl sub_08037E14
	b _08037D52
_08037D40:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037D52
	adds r0, r4, #0
	bl sub_08037E14
_08037D52:
	pop {r4, pc}

	thumb_func_start sub_08037D54
sub_08037D54: @ 0x08037D54
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08037DC4
	movs r0, #2
	eors r0, r1
	strb r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08037E0C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _08037E0C
	ldrb r0, [r4, #0x15]
	strb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	ldr r0, _08037DBC @ =gUnk_080CF490
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, _08037DC0 @ =0x0000FFFD
	strh r0, [r2, #0x36]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_08004488
	b _08037E0C
	.align 2, 0
_08037DBC: .4byte gUnk_080CF490
_08037DC0: .4byte 0x0000FFFD
_08037DC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037E0C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037DEE
	strb r3, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	orrs r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08037E14
	b _08037E0C
_08037DEE:
	ldr r1, _08037E10 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_08037E0C:
	pop {r4, pc}
	.align 2, 0
_08037E10: .4byte gLinkEntity

	thumb_func_start sub_08037E14
sub_08037E14: @ 0x08037E14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #8
	strb r0, [r5, #0xe]
	ldr r1, _08037E6C @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #4
	movs r0, #0x18
	ands r4, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	ldr r1, _08037E70 @ =0x00002004
	adds r0, r0, r1
	lsrs r3, r4, #2
	ldr r1, _08037E74 @ =gUnk_080CF498
	adds r3, r3, r1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _08037E78
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _08037E7A
	.align 2, 0
_08037E6C: .4byte gLinkEntity
_08037E70: .4byte 0x00002004
_08037E74: .4byte gUnk_080CF498
_08037E78:
	strb r4, [r5, #0x15]
_08037E7A:
	ldrb r0, [r5, #0x15]
	lsrs r4, r0, #3
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _08037E8E
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl InitializeAnimation
_08037E8E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08037E90
sub_08037E90: @ 0x08037E90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037EA8 @ =gLinkEntity
	movs r2, #8
	bl sub_0804A044
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08037EAC
	movs r0, #0
	b _08037EC6
	.align 2, 0
_08037EA8: .4byte gLinkEntity
_08037EAC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x15]
	lsrs r0, r1, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #1
_08037EC6:
	pop {r4, pc}
