	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806E4A0
sub_0806E4A0: @ 0x0806E4A0
	push {lr}
	ldr r2, _0806E4B4 @ =gUnk_081145B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806E4B4: .4byte gUnk_081145B4

	thumb_func_start sub_0806E4B8
sub_0806E4B8: @ 0x0806E4B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080787A8
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806E4EC
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806E4EC
sub_0806E4EC: @ 0x0806E4EC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0806E50E
	adds r0, #1
	strb r0, [r5, #0xd]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0806E50E:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E552
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0806E52A
	movs r0, #3
	b _0806E52C
_0806E52A:
	movs r0, #2
_0806E52C:
	strb r0, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, #0xd]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0806E552
	ldr r4, _0806E560 @ =gUnk_081145C8
	bl Random
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl sub_08004488
_0806E552:
	adds r0, r5, #0
	bl sub_0806E65C
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0
_0806E560: .4byte gUnk_081145C8

	thumb_func_start sub_0806E564
sub_0806E564: @ 0x0806E564
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806E5AA
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0806E590
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r2
	lsls r1, r1, #6
	subs r2, #0x42
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x18]
_0806E590:
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
_0806E5AA:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0806E5D4
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806E5CE
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0806E5D4
_0806E5CE:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0806E5D4:
	adds r0, r4, #0
	bl sub_0806E65C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806E5E4
sub_0806E5E4: @ 0x0806E5E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806E622
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0806E612
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r5
	lsls r1, r1, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x18]
_0806E612:
	bl Random
	adds r1, r0, #0
	ands r1, r5
	adds r1, #2
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0806E622:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E638
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806E638:
	adds r0, r4, #0
	bl sub_0806E65C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806E648
sub_0806E648: @ 0x0806E648
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806E658
	movs r0, #1
	strb r0, [r4, #0xc]
_0806E658:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806E65C
sub_0806E65C: @ 0x0806E65C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806E6A6
	ldr r0, _0806E688 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E694
	cmp r2, #2
	bne _0806E68C
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806E698
	.align 2, 0
_0806E688: .4byte gLinkState
_0806E68C:
	adds r0, r4, #0
	bl sub_0806E6A8
	b _0806E698
_0806E694:
	bl sub_080791D0
_0806E698:
	movs r0, #0xd5
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806E6A6:
	pop {r4, pc}

	thumb_func_start sub_0806E6A8
sub_0806E6A8: @ 0x0806E6A8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_08002632
	ldr r1, _0806E6D4 @ =gUnk_02002A40
	ldr r2, _0806E6D8 @ =0x000001C1
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xf3
	bne _0806E6C2
	movs r5, #1
_0806E6C2:
	ldr r0, _0806E6DC @ =gUnk_081145D0
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806E6D4: .4byte gUnk_02002A40
_0806E6D8: .4byte 0x000001C1
_0806E6DC: .4byte gUnk_081145D0

	thumb_func_start sub_0806E6E0
sub_0806E6E0: @ 0x0806E6E0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806E706
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _0806E70C
_0806E706:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_0806E70C:
	pop {pc}
	.align 2, 0
