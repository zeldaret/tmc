	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Mama
Mama: @ 0x0806C39C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0806C3E2
	cmp r5, #1
	bgt _0806C3B0
	cmp r5, #0
	beq _0806C3B6
	b _0806C450
_0806C3B0:
	cmp r5, #2
	beq _0806C436
	b _0806C450
_0806C3B6:
	adds r0, r4, #0
	bl sub_0806C454
	cmp r0, #0
	beq _0806C450
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C450
_0806C3E2:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C420
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806C41C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C450
	.align 2, 0
_0806C41C: .4byte gLinkEntity
_0806C420:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl GetNextFrame
	b _0806C450
_0806C436:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806C450
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_0806C450:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806C454
sub_0806C454: @ 0x0806C454
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806C470 @ =gUnk_08113754
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806C474
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #1
	b _0806C476
	.align 2, 0
_0806C470: .4byte gUnk_08113754
_0806C474:
	movs r0, #0
_0806C476:
	pop {r4, pc}

	thumb_func_start Mama_Head
Mama_Head: @ 0x0806C478
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806C4A8
sub_0806C4A8: @ 0x0806C4A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0806C4D8
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	cmp r1, #0
	bge _0806C4CC
	movs r1, #3
_0806C4CC:
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	movs r0, #1
_0806C4D8:
	str r0, [r5, #0x14]
	pop {r4, r5, pc}

	thumb_func_start sub_0806C4DC
sub_0806C4DC: @ 0x0806C4DC
	push {lr}
	ldr r1, _0806C4F0 @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _0806C4F4 @ =gUnk_08113760
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806C4F0: .4byte gUnk_02002A40
_0806C4F4: .4byte gUnk_08113760

	thumb_func_start sub_0806C4F8
sub_0806C4F8: @ 0x0806C4F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start Mama_Fusion
Mama_Fusion: @ 0x0806C510
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806C548
	adds r0, r4, #0
	bl sub_0806C454
	cmp r0, #0
	beq _0806C54E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	subs r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0806C54E
_0806C548:
	adds r0, r4, #0
	bl GetNextFrame
_0806C54E:
	pop {r4, pc}
