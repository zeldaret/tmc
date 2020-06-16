	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WallMaster
WallMaster: @ 0x0802A408
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802A430 @ =gUnk_080CD07C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_0802A430: .4byte gUnk_080CD07C

	thumb_func_start sub_0802A434
sub_0802A434: @ 0x0802A434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A78C
	ldr r1, _0802A450 @ =gUnk_080CD094
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0802A450: .4byte gUnk_080CD094

	thumb_func_start sub_0802A454
sub_0802A454: @ 0x0802A454
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x75
	beq _0802A4A8
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r1, r2, #0
	ands r1, r0
	cmp r1, #0
	beq _0802A474
	cmp r1, #0x1e
	bne _0802A4A8
_0802A474:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0802A4D8 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	adds r2, r4, #0
	adds r2, #0x7e
	strh r0, [r2]
	ldrh r2, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x80
	strh r2, [r0]
	ldrh r0, [r1, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0802A4A8
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0802A4A8:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A4BC
	cmp r1, #4
	bls _0802A4BC
	subs r0, #4
	strb r0, [r2]
_0802A4BC:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A4CE
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802A4CE:
	ldr r1, _0802A4DC @ =gUnk_080CD07C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802A4D8: .4byte gLinkEntity
_0802A4DC: .4byte gUnk_080CD07C

	thumb_func_start nullsub_142
nullsub_142: @ 0x0802A4E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A4E4
sub_0802A4E4: @ 0x0802A4E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl Random
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r1, [r0]
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_0802A7D0
	pop {r4, pc}

	thumb_func_start sub_0802A534
sub_0802A534: @ 0x0802A534
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A548
	subs r0, #1
	strh r0, [r1]
	b _0802A5B0
_0802A548:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802A5B0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A5B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r2, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #0x32]
	strh r0, [r4, #0x32]
	ldr r0, _0802A5B4 @ =0x0000FF80
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0802A7D0
_0802A5B0:
	pop {r4, pc}
	.align 2, 0
_0802A5B4: .4byte 0x0000FF80

	thumb_func_start sub_0802A5B8
sub_0802A5B8: @ 0x0802A5B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A5E8
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802A60E
	ldr r0, _0802A5E4 @ =0x0000012D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0802A60E
	.align 2, 0
_0802A5E4: .4byte 0x0000012D
_0802A5E8:
	ldrh r0, [r4, #0x36]
	adds r0, #3
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802A60E
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strh r2, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0802A60E:
	pop {r4, pc}

	thumb_func_start sub_0802A610
sub_0802A610: @ 0x0802A610
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802A7D0
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802A63A
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802A64C
_0802A63A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A64C
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x75
	strb r0, [r1]
_0802A64C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802A650
sub_0802A650: @ 0x0802A650
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrh r0, [r4, #0x36]
	subs r0, #2
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0802A69A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x74
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
_0802A69A:
	pop {r4, pc}

	thumb_func_start sub_0802A69C
sub_0802A69C: @ 0x0802A69C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldr r2, _0802A6E4 @ =gLinkState
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #0x1a]
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r1, _0802A6E8 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r1, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x36]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _0802A6F0
	cmp r0, r1
	bge _0802A6EC
	subs r0, r2, #1
	b _0802A6EE
	.align 2, 0
_0802A6E4: .4byte gLinkState
_0802A6E8: .4byte gLinkEntity
_0802A6EC:
	adds r0, r2, #1
_0802A6EE:
	strh r0, [r4, #0x36]
_0802A6F0:
	adds r0, r4, #0
	bl sub_08004274
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802A712
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802A72E
_0802A712:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A72E
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	ldr r2, _0802A730 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r2, #0x18]
_0802A72E:
	pop {r4, pc}
	.align 2, 0
_0802A730: .4byte gLinkEntity

	thumb_func_start sub_0802A734
sub_0802A734: @ 0x0802A734
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802A768
	bl sub_0805E5A8
	ldr r1, _0802A760 @ =gUnk_0813AB1C
	ldr r0, _0802A764 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl DoExitTransition
	b _0802A780
	.align 2, 0
_0802A760: .4byte gUnk_0813AB1C
_0802A764: .4byte gArea
_0802A768:
	ldr r0, [r4, #0x34]
	ldr r1, _0802A784 @ =0xFFFE0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r1, _0802A788 @ =gLinkState
	ldrb r0, [r1, #0xa]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
_0802A780:
	pop {r4, pc}
	.align 2, 0
_0802A784: .4byte 0xFFFE0000
_0802A788: .4byte gLinkState

	thumb_func_start sub_0802A78C
sub_0802A78C: @ 0x0802A78C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0802A7CC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802A7BC
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802A7CC
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A7CC
	subs r0, #1
	strh r0, [r1]
	b _0802A7CC
_0802A7BC:
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #1
	adds r0, r4, #0
	adds r0, #0x7a
	strh r1, [r0]
_0802A7CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802A7D0
sub_0802A7D0: @ 0x0802A7D0
	push {r4, lr}
	ldr r3, _0802A800 @ =gUnk_080CD0B0
	movs r1, #0x7d
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r2, r1, #1
	mov r4, ip
	strb r2, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0802A800: .4byte gUnk_080CD0B0
