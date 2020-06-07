	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806B3AC
sub_0806B3AC: @ 0x0806B3AC
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B3C2
	adds r0, r2, #0
	bl sub_0806B41C
	b _0806B3C8
_0806B3C2:
	adds r0, r2, #0
	bl sub_0806B3CC
_0806B3C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806B3CC
sub_0806B3CC: @ 0x0806B3CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B3F4
	ldr r1, _0806B418 @ =gUnk_08112E1C
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B414
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08078778
_0806B3F4:
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0806B40E
	movs r0, #0
	strb r0, [r1]
	bl TextboxTryNoOverlap
_0806B40E:
	adds r0, r4, #0
	bl sub_0806ED78
_0806B414:
	pop {r4, pc}
	.align 2, 0
_0806B418: .4byte gUnk_08112E1C

	thumb_func_start sub_0806B41C
sub_0806B41C: @ 0x0806B41C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806B470
	cmp r0, #1
	bgt _0806B430
	cmp r0, #0
	beq _0806B436
	b _0806B4EC
_0806B430:
	cmp r0, #2
	beq _0806B4DE
	b _0806B4EC
_0806B436:
	ldr r1, _0806B46C @ =gUnk_08112E1C
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B4EC
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _0806B462
	adds r0, r4, #0
	movs r1, #0x25
	movs r2, #0
	bl CreateFX
_0806B462:
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806B4EC
	.align 2, 0
_0806B46C: .4byte gUnk_08112E1C
_0806B470:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806B4D4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806B4C8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08002632
	ldr r1, _0806B4CC @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _0806B4B2
	adds r3, #6
_0806B4B2:
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0806B4D0 @ =gLinkState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	b _0806B4EC
	.align 2, 0
_0806B4C8: .4byte gLinkEntity
_0806B4CC: .4byte gUnk_08001A7C
_0806B4D0: .4byte gLinkState
_0806B4D4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806B4EC
_0806B4DE:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806B4EC
	movs r0, #1
	strb r0, [r4, #0xc]
_0806B4EC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806B4F0
sub_0806B4F0: @ 0x0806B4F0
	push {lr}
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #3
	ldr r2, _0806B500 @ =gUnk_08112E2C
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806B500: .4byte gUnk_08112E2C

	thumb_func_start sub_0806B504
sub_0806B504: @ 0x0806B504
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
	movs r0, #0x21
	bl sub_0801E7F4
	cmp r0, #0
	beq _0806B518
	movs r4, #3
	b _0806B52A
_0806B518:
	movs r0, #0x86
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B52A
	movs r4, #0
	movs r0, #0x86
	bl sub_0807CCB4
_0806B52A:
	ldr r0, _0806B53C @ =gUnk_08112E54
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B53C: .4byte gUnk_08112E54

	thumb_func_start sub_0806B540
sub_0806B540: @ 0x0806B540
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x84
	ldr r4, [r0]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0806B588
	cmp r0, #1
	bgt _0806B558
	cmp r0, #0
	beq _0806B562
	b _0806B600
_0806B558:
	cmp r0, #2
	beq _0806B5AC
	cmp r0, #3
	beq _0806B5EE
	b _0806B600
_0806B562:
	ldr r0, _0806B584 @ =0x00002312
	adds r1, r2, #0
	bl TextboxNoOverlap
	movs r0, #0x3f
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B606
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0x3f
	bl sub_0807CCB4
	b _0806B600
	.align 2, 0
_0806B584: .4byte 0x00002312
_0806B588:
	ldr r0, _0806B5A4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806B600
	movs r0, #2
	strb r0, [r4, #0x18]
	ldr r0, _0806B5A8 @ =0x00002315
	adds r1, r2, #0
	bl TextboxNoOverlap
	b _0806B600
	.align 2, 0
_0806B5A4: .4byte gTextBox
_0806B5A8: .4byte 0x00002315
_0806B5AC:
	ldr r0, _0806B5D4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806B600
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0806B5D8 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B5DC
	movs r0, #0x58
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	b _0806B5E6
	.align 2, 0
_0806B5D4: .4byte gTextBox
_0806B5D8: .4byte gUnk_02002A40
_0806B5DC:
	movs r0, #0x3f
	movs r1, #0x64
	movs r2, #0
	bl sub_080A7C18
_0806B5E6:
	movs r0, #0xf
	bl sub_0807CD10
	b _0806B600
_0806B5EE:
	ldr r0, _0806B5FC @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _0806B600
	movs r0, #0x2d
	strh r0, [r4, #0x10]
	b _0806B606
	.align 2, 0
_0806B5FC: .4byte gLinkEntity
_0806B600:
	ldr r1, _0806B608 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806B606:
	pop {r4, pc}
	.align 2, 0
_0806B608: .4byte gUnk_02033280

	thumb_func_start sub_0806B60C
sub_0806B60C: @ 0x0806B60C
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

	thumb_func_start sub_0806B624
sub_0806B624: @ 0x0806B624
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B65C
	ldr r1, _0806B658 @ =gUnk_08112E1C
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B662
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
	movs r1, #2
	bl UpdateSprite
	b _0806B662
	.align 2, 0
_0806B658: .4byte gUnk_08112E1C
_0806B65C:
	adds r0, r4, #0
	bl sub_08004274
_0806B662:
	pop {r4, pc}
