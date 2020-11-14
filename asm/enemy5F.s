	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Enemy5F
Enemy5F: @ 0x080482C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080482D4
	bl DeleteThisEntity
_080482D4:
	ldr r0, _080482E8 @ =gUnk_080D1D48
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080482E8: .4byte gUnk_080D1D48

	thumb_func_start sub_080482EC
sub_080482EC: @ 0x080482EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08048310 @ =gScreenTransition
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08048314
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08048326
	.align 2, 0
_08048310: .4byte gScreenTransition
_08048314:
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySFX
_08048326:
	adds r0, r4, #0
	bl sub_080485D8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048330
sub_08048330: @ 0x08048330
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485D8
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048358
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08048358:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804835C
sub_0804835C: @ 0x0804835C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485D8
	ldr r0, _08048384 @ =gScreenTransition
	adds r0, #0x39
	ldrb r1, [r0]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08048382
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x80
	strh r0, [r4, #0x24]
_08048382:
	pop {r4, pc}
	.align 2, 0
_08048384: .4byte gScreenTransition

	thumb_func_start sub_08048388
sub_08048388: @ 0x08048388
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x50]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	beq _080483A0
	adds r0, r5, #0
	bl sub_080485D8
	b _080483F2
_080483A0:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #1
	ldr r0, _080483F4 @ =gUnk_080D1D98
	adds r1, r1, r0
	movs r0, #0x2e
	ldrsh r4, [r2, r0]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r6, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_080045D4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x36]
	strh r0, [r5, #0x36]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, r4
	bne _080483F2
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r0, r6
	bne _080483F2
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
_080483F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080483F4: .4byte gUnk_080D1D98

	thumb_func_start sub_080483F8
sub_080483F8: @ 0x080483F8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080485FC
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _0804841C
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048436
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	b _08048436
_0804841C:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048436
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
_08048436:
	pop {r4, r5, pc}

	thumb_func_start sub_08048438
sub_08048438: @ 0x08048438
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0804846A
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _08048454
	movs r0, #0x78
	b _08048456
_08048454:
	movs r0, #0x3c
_08048456:
	strb r0, [r4, #0xe]
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
	ldr r0, _08048474 @ =0x0000019B
	bl PlaySFX
_0804846A:
	adds r0, r4, #0
	bl sub_080485FC
	pop {r4, pc}
	.align 2, 0
_08048474: .4byte 0x0000019B

	thumb_func_start sub_08048478
sub_08048478: @ 0x08048478
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485FC
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _080484A2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080484E6
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _080484E6
_080484A2:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080484BC
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	b _080484E6
_080484BC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080484E6
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	movs r0, #0x24
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080484E6
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
_080484E6:
	pop {r4, pc}

	thumb_func_start sub_080484E8
sub_080484E8: @ 0x080484E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485FC
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08048528
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x1f
	movs r2, #0x40
	bl CreateFx
	ldr r2, [r4, #0x50]
	adds r2, #0x7b
	movs r0, #0x10
	b _08048542
_08048528:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0804854C
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldr r2, [r4, #0x50]
	adds r2, #0x7b
	movs r0, #1
_08048542:
	ldrb r4, [r4, #0xa]
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0804854C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048550
sub_08048550: @ 0x08048550
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #0xb
	bne _08048562
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _0804859E
_08048562:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804859E
	movs r0, #9
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080485FC
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySFX
_0804859E:
	pop {r4, pc}

	thumb_func_start sub_080485A0
sub_080485A0: @ 0x080485A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485FC
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080485D6
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r1, #1
	strb r1, [r4, #0xe]
	ldr r2, [r4, #0x50]
	adds r2, #0x7b
	ldrb r3, [r2]
	movs r0, #0xf
	ands r0, r3
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	orrs r0, r1
	strb r0, [r2]
_080485D6:
	pop {r4, pc}

	thumb_func_start sub_080485D8
sub_080485D8: @ 0x080485D8
	push {lr}
	adds r1, r0, #0
	ldrb r3, [r1, #0xa]
	lsls r3, r3, #1
	ldr r0, _080485F8 @ =gUnk_080D1D70
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	bl sub_0806FA90
	pop {pc}
	.align 2, 0
_080485F8: .4byte gUnk_080D1D70

	thumb_func_start sub_080485FC
sub_080485FC: @ 0x080485FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	ldr r0, _08048638 @ =gUnk_080D1D98
	adds r1, r1, r0
	ldr r0, [r4, #0x50]
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r3, #1
	ldrsb r3, [r1, r3]
	adds r1, r4, #0
	bl sub_0806FA90
	ldr r3, _0804863C @ =gUnk_080D1D78
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldr r0, [r4, #0x50]
	adds r0, #0x78
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r2, #7
	ands r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r4, #0x36]
	pop {r4, pc}
	.align 2, 0
_08048638: .4byte gUnk_080D1D98
_0804863C: .4byte gUnk_080D1D78
