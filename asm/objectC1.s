	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectC1
ObjectC1: @ 0x080A2560
	push {lr}
	ldr r2, _080A2574 @ =gUnk_08125084
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A2574: .4byte gUnk_08125084

	thumb_func_start sub_080A2578
sub_080A2578: @ 0x080A2578
	push {lr}
	movs r1, #8
	strb r1, [r0, #0xc]
	bl sub_080A259C
	pop {pc}

	thumb_func_start sub_080A2584
sub_080A2584: @ 0x080A2584
	push {lr}
	bl UnfreezeTime
	ldr r1, _080A2598 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0
_080A2598: .4byte gUnk_02034490

	thumb_func_start sub_080A259C
sub_080A259C: @ 0x080A259C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _080A25DC @ =gPlayerEntity
	ldrb r1, [r5, #0x10]
	movs r7, #0x7f
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r6, #4
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _080A269C
	cmp r0, #1
	bgt _080A25E0
	cmp r0, #0
	beq _080A25E6
	b _080A273C
	.align 2, 0
_080A25DC: .4byte gPlayerEntity
_080A25E0:
	cmp r0, #2
	beq _080A26B4
	b _080A273C
_080A25E6:
	movs r0, #1
	movs r2, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _080A2670 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080A2678
	ldrb r0, [r4, #0xa]
	bl sub_080542AC
	ldr r1, _080A2674 @ =0x0000045B
	cmp r0, #0
	beq _080A2688
	adds r1, #3
	b _080A2688
	.align 2, 0
_080A2670: .4byte gPlayerState
_080A2674: .4byte 0x0000045B
_080A2678:
	ldrb r0, [r4, #0xa]
	bl sub_080542AC
	ldr r1, _080A2698 @ =0x000001B9
	cmp r0, #0
	beq _080A2688
	movs r1, #0xb8
	lsls r1, r1, #2
_080A2688:
	lsrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0xff
	ands r1, r0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _080A273C
	.align 2, 0
_080A2698: .4byte 0x000001B9
_080A269C:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A273C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080A273C
_080A26B4:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldr r0, _080A2764 @ =gTextBox
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2762
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A273C
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	strb r0, [r5, #0x10]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r5, #0x18]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r1, _080A2768 @ =gPlayerState
	adds r0, r4, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	strb r0, [r1, #0xb]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, [r4, #0x70]
	str r0, [r1, #0x30]
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	adds r1, #0x8a
	strb r0, [r1]
_080A273C:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _080A2762
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionEntityOnTop
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x1e]
	bl GetSpriteSubEntryOffsetDataPointer
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r1, [r0, #1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
_080A2762:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2764: .4byte gTextBox
_080A2768: .4byte gPlayerState
