	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WindTribespeople
WindTribespeople: @ 0x0806C780
	push {lr}
	ldr r2, _0806C794 @ =gUnk_08113A7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806C794: .4byte gUnk_08113A7C

	thumb_func_start sub_0806C798
sub_0806C798: @ 0x0806C798
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806C7D0 @ =gUnk_08113A1C
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806C7CE
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
	bl sub_0807DD50
	adds r0, r4, #0
	bl sub_0806C7D4
_0806C7CE:
	pop {r4, pc}
	.align 2, 0
_0806C7D0: .4byte gUnk_08113A1C

	thumb_func_start sub_0806C7D4
sub_0806C7D4: @ 0x0806C7D4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0806C7F4
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C82C
_0806C7F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bne _0806C82C
	movs r0, #0x58
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0806C82C
	movs r0, #0x63
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806C82C
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _0806C82C
	movs r0, #7
	strb r0, [r4, #0xb]
	ldr r1, _0806C830 @ =gUnk_08014A80
	adds r0, r4, #0
	bl sub_0807DD80
_0806C82C:
	pop {r4, pc}
	.align 2, 0
_0806C830: .4byte gUnk_08014A80

	thumb_func_start sub_0806C834
sub_0806C834: @ 0x0806C834
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806C858 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806C856
	ldrb r0, [r2, #0xc]
	subs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
	adds r0, r2, #0
	bl InitializeAnimation
_0806C856:
	pop {pc}
	.align 2, 0
_0806C858: .4byte gTextBox

	thumb_func_start sub_0806C85C
sub_0806C85C: @ 0x0806C85C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806C86C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806C86C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806C870
sub_0806C870: @ 0x0806C870
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

	thumb_func_start WindTribespeople_Head
WindTribespeople_Head: @ 0x0806C888
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r7, #0x3f
	ands r7, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0806C8D4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #9
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0806FFD8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	b _0806C90A
_0806C8D4:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C8E2
	movs r6, #1
	movs r5, #0
	b _0806C8E6
_0806C8E2:
	movs r6, #0
	movs r5, #1
_0806C8E6:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FF60
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
_0806C90A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0806C90C
sub_0806C90C: @ 0x0806C90C
	push {lr}
	movs r2, #0
	str r2, [r1, #0x14]
	ldr r3, _0806C924 @ =gUnk_08113A8C
	ldrb r2, [r0, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0806C924: .4byte gUnk_08113A8C

	thumb_func_start sub_0806C928
sub_0806C928: @ 0x0806C928
	push {lr}
	ldr r1, _0806C93C @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _0806C940 @ =gUnk_08113ABC
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806C93C: .4byte gUnk_02002A40
_0806C940: .4byte gUnk_08113ABC

	thumb_func_start sub_0806C944
sub_0806C944: @ 0x0806C944
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0806C956
	movs r1, #0
	b _0806C964
_0806C956:
	movs r0, #0x63
	bl CheckLocalFlag
	movs r1, #2
	cmp r0, #0
	beq _0806C964
	movs r1, #1
_0806C964:
	ldr r0, _0806C974 @ =gUnk_08113B0C
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806C974: .4byte gUnk_08113B0C

	thumb_func_start sub_0806C978
sub_0806C978: @ 0x0806C978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, _0806C998 @ =gUnk_08113B12
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806C998: .4byte gUnk_08113B12

	thumb_func_start sub_0806C99C
sub_0806C99C: @ 0x0806C99C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x58
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r4, r1, #0x1f
	movs r0, #2
	ands r4, r0
	movs r0, #0x63
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806C9BC
	adds r4, #1
_0806C9BC:
	ldr r0, _0806C9CC @ =gUnk_08113B16
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806C9CC: .4byte gUnk_08113B16

	thumb_func_start sub_0806C9D0
sub_0806C9D0: @ 0x0806C9D0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x64
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806C9E2
	movs r4, #1
_0806C9E2:
	ldr r0, _0806C9F4 @ =gUnk_08113B1E
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806C9F4: .4byte gUnk_08113B1E

	thumb_func_start sub_0806C9F8
sub_0806C9F8: @ 0x0806C9F8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, _0806CA18 @ =gUnk_08113B22
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806CA18: .4byte gUnk_08113B22

	thumb_func_start sub_0806CA1C
sub_0806CA1C: @ 0x0806CA1C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806CA28 @ =0x0000251B
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806CA28: .4byte 0x0000251B

	thumb_func_start sub_0806CA2C
sub_0806CA2C: @ 0x0806CA2C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806CA38 @ =0x00002527
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806CA38: .4byte 0x00002527

	thumb_func_start sub_0806CA3C
sub_0806CA3C: @ 0x0806CA3C
	push {lr}
	ldr r1, _0806CA48 @ =gUnk_08113B28
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806CA48: .4byte gUnk_08113B28

	thumb_func_start sub_0806CA4C
sub_0806CA4C: @ 0x0806CA4C
	push {lr}
	ldr r1, _0806CA58 @ =gUnk_08113B30
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806CA58: .4byte gUnk_08113B30

	thumb_func_start sub_0806CA5C
sub_0806CA5C: @ 0x0806CA5C
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, _0806CA8C @ =gUnk_08113B38
	ldrb r1, [r4, #0x18]
	adds r2, r1, #1
	strb r2, [r4, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r1, r3
	ldrb r1, [r1]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0xb]
	cmp r0, #0xa
	bne _0806CA7E
	movs r0, #0xe8
	bl sub_08004488
_0806CA7E:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0806CA8A
	ldr r1, _0806CA90 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806CA8A:
	pop {r4, pc}
	.align 2, 0
_0806CA8C: .4byte gUnk_08113B38
_0806CA90: .4byte gUnk_02033280

	thumb_func_start WindTribespeople_Fusion
WindTribespeople_Fusion: @ 0x0806CA94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806CAD4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806CAD0 @ =gUnk_08113A1C
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806CADA
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
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _0806CADA
	.align 2, 0
_0806CAD0: .4byte gUnk_08113A1C
_0806CAD4:
	adds r0, r4, #0
	bl sub_08004274
_0806CADA:
	pop {r4, pc}
