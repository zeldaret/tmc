	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Madderpillar
Madderpillar: @ 0x08029858
	push {lr}
	ldr r2, _0802986C @ =gUnk_080CCD44
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802986C: .4byte gUnk_080CCD44

	thumb_func_start sub_08029870
sub_08029870: @ 0x08029870
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08029888 @ =gUnk_080CCD60
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08029888: .4byte gUnk_080CCD60

	thumb_func_start sub_0802988C
sub_0802988C: @ 0x0802988C
	push {lr}
	ldr r2, _080298A0 @ =gUnk_080CCD78
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080298A0: .4byte gUnk_080CCD78

	thumb_func_start sub_080298A4
sub_080298A4: @ 0x080298A4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _08029970
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1e
	bhi _08029948
	lsls r0, r1, #2
	ldr r1, _080298C8 @ =_080298CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080298C8: .4byte _080298CC
_080298CC: @ jump table
	.4byte _08029970 @ case 0
	.4byte _08029970 @ case 1
	.4byte _08029970 @ case 2
	.4byte _08029970 @ case 3
	.4byte _08029948 @ case 4
	.4byte _08029948 @ case 5
	.4byte _08029948 @ case 6
	.4byte _08029948 @ case 7
	.4byte _08029948 @ case 8
	.4byte _08029948 @ case 9
	.4byte _08029948 @ case 10
	.4byte _08029948 @ case 11
	.4byte _08029948 @ case 12
	.4byte _08029948 @ case 13
	.4byte _08029948 @ case 14
	.4byte _08029970 @ case 15
	.4byte _08029948 @ case 16
	.4byte _08029948 @ case 17
	.4byte _08029948 @ case 18
	.4byte _08029970 @ case 19
	.4byte _08029948 @ case 20
	.4byte _08029948 @ case 21
	.4byte _08029948 @ case 22
	.4byte _08029948 @ case 23
	.4byte _08029948 @ case 24
	.4byte _08029948 @ case 25
	.4byte _08029948 @ case 26
	.4byte _08029970 @ case 27
	.4byte _08029948 @ case 28
	.4byte _08029948 @ case 29
	.4byte _08029970 @ case 30
_08029948:
	movs r1, #0
	movs r4, #2
	strb r4, [r5, #0xc]
	strb r1, [r5, #0xe]
	adds r2, r5, #0
	adds r2, #0x3f
	movs r0, #0x6b
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x77
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0xfe
	bl sub_08004488
	ldr r0, [r5, #0x54]
	strb r4, [r0, #0xc]
_08029970:
	ldr r1, _0802997C @ =gUnk_080CCD60
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0802997C: .4byte gUnk_080CCD60

	thumb_func_start sub_08029980
sub_08029980: @ 0x08029980
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08029990
	subs r0, #1
	strb r0, [r1, #0xf]
	b _08029996
_08029990:
	adds r0, r1, #0
	bl sub_0804A7D4
_08029996:
	pop {pc}

	thumb_func_start nullsub_14
nullsub_14: @ 0x08029998
	bx lr
	.align 2, 0
	
	
	thumb_func_start sub_0802999C
sub_0802999C: @ 0x0802999C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08029A90 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _08029A8E
	movs r0, #0x18
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl PositionRelative
	str r4, [r7, #0x54]
	movs r0, #0x18
	movs r1, #2
	bl CreateEnemy
	adds r5, r0, #0
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #4
	bl PositionRelative
	str r5, [r4, #0x54]
	movs r0, #0x18
	movs r1, #3
	bl CreateEnemy
	adds r4, r0, #0
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #3
	bl PositionRelative
	str r4, [r5, #0x54]
	movs r0, #0x18
	movs r1, #4
	bl CreateEnemy
	adds r5, r0, #0
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #2
	bl PositionRelative
	str r5, [r4, #0x54]
	movs r0, #0x18
	movs r1, #5
	bl CreateEnemy
	adds r6, r0, #0
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	movs r3, #1
	bl PositionRelative
	str r6, [r5, #0x54]
	movs r0, #0x18
	movs r1, #6
	bl CreateEnemy
	adds r4, r0, #0
	str r7, [r4, #0x54]
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl PositionRelative
	str r4, [r6, #0x54]
	movs r4, #1
	strb r4, [r7, #0xc]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r7, #0x15]
	movs r2, #0
	movs r0, #0xa0
	strh r0, [r7, #0x24]
	movs r0, #0xff
	strb r0, [r7, #0x14]
	ldr r0, [r7, #0x30]
	adds r0, #6
	str r0, [r7, #0x30]
	str r7, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #0x74
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, r7, #0
	bl sub_08029E0C
	adds r0, r7, #0
	bl sub_08029EEC
_08029A8E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029A90: .4byte gUnk_03003DBC

	thumb_func_start sub_08029A94
sub_08029A94: @ 0x08029A94
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0802A098
	pop {r4, pc}

	thumb_func_start sub_08029AA4
sub_08029AA4: @ 0x08029AA4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029ADA
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	adds r2, r1, #0
	adds r2, #0x3f
	movs r0, #0x6a
	strb r0, [r2]
	adds r2, #0x3b
	adds r0, #0xfe
	strh r0, [r2]
	subs r2, #5
	movs r0, #4
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_08029EEC
	ldr r0, _08029ADC @ =0x0000019D
	bl sub_08004488
_08029ADA:
	pop {pc}
	.align 2, 0
_08029ADC: .4byte 0x0000019D

	thumb_func_start sub_08029AE0
sub_08029AE0: @ 0x08029AE0
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0802A16C
	adds r0, r4, #0
	bl sub_0802A098
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029B28
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
	subs r1, #5
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08029EEC
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	movs r0, #0xc1
	lsls r0, r0, #1
	bl sub_08004488
_08029B28:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029B2C
sub_08029B2C: @ 0x08029B2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A14C
	cmp r0, #0
	beq _08029B7A
	adds r2, r4, #0
	adds r2, #0x86
	ldrb r0, [r2]
	cmp r0, #0
	beq _08029B60
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029B8A
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	adds r0, r4, #0
	bl DeleteEntity
	b _08029B8A
_08029B60:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #4
	subs r1, r1, r0
	movs r0, #0x5a
	subs r0, r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r2]
	b _08029B8A
_08029B7A:
	ldr r0, _08029B8C @ =gUnk_080CCD88
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08029B8A:
	pop {r4, pc}
	.align 2, 0
_08029B8C: .4byte gUnk_080CCD88

	thumb_func_start sub_08029B90
sub_08029B90: @ 0x08029B90
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802A058
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _08029BBA
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _08029BC2
_08029BBA:
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_08029BC2:
	pop {r4, pc}

	thumb_func_start sub_08029BC4
sub_08029BC4: @ 0x08029BC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0802A18C
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	adds r0, r4, #0
	bl sub_08029FE4
	cmp r0, #0
	beq _08029BF2
	ldrb r0, [r4, #0xa]
	movs r2, #4
	cmp r0, #1
	bhi _08029BE8
	movs r2, #0
_08029BE8:
	ldrb r1, [r4, #0x14]
	adds r1, r1, r2
	adds r0, r4, #0
	bl InitializeAnimation
_08029BF2:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	subs r1, r1, r5
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	adds r0, r4, #0
	bl sub_08029FB4
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08029C08
sub_08029C08: @ 0x08029C08
	movs r1, #3
	strb r1, [r0, #0xc]
	ldr r2, _08029C28 @ =gUnk_080CCDA0
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x6b
	strb r1, [r2]
	ldr r1, [r0, #0x54]
	movs r0, #2
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08029C28: .4byte gUnk_080CCDA0

	thumb_func_start sub_08029C2C
sub_08029C2C: @ 0x08029C2C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029C4E
	movs r0, #4
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0x6c
	bl sub_08004488
_08029C4E:
	pop {pc}

	thumb_func_start sub_08029C50
sub_08029C50: @ 0x08029C50
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029C68
	movs r0, #5
	strb r0, [r1, #0xc]
	adds r1, #0x3f
	movs r0, #0x6a
	strb r0, [r1]
_08029C68:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08029C6C
sub_08029C6C: @ 0x08029C6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A18C
	adds r0, r4, #0
	bl sub_08029BC4
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08029C90
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	b _08029C96
_08029C90:
	adds r0, r4, #0
	bl sub_0802A16C
_08029C96:
	pop {r4, pc}

	thumb_func_start sub_08029C98
sub_08029C98: @ 0x08029C98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A14C
	cmp r0, #0
	beq _08029CB6
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	adds r0, r4, #0
	bl DeleteEntity
	b _08029CC6
_08029CB6:
	ldr r0, _08029CC8 @ =gUnk_080CCDA8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08029CC6:
	pop {r4, pc}
	.align 2, 0
_08029CC8: .4byte gUnk_080CCDA8

	thumb_func_start sub_08029CCC
sub_08029CCC: @ 0x08029CCC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802A058
	adds r0, r4, #0
	movs r1, #8
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_08029CF0
sub_08029CF0: @ 0x08029CF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08029FE4
	cmp r0, #0
	beq _08029D06
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl InitializeAnimation
_08029D06:
	pop {r4, pc}

	thumb_func_start sub_08029D08
sub_08029D08: @ 0x08029D08
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x47
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08029D14
sub_08029D14: @ 0x08029D14
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08029D42
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029D70
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0x6c
	bl sub_08004488
	b _08029D70
_08029D42:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029D70
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6c
	strb r0, [r1]
	ldr r0, _08029D74 @ =gUnk_080FD298
	str r0, [r4, #0x48]
	movs r0, #0x6b
	bl sub_08004488
_08029D70:
	pop {r4, pc}
	.align 2, 0
_08029D74: .4byte gUnk_080FD298

	thumb_func_start sub_08029D78
sub_08029D78: @ 0x08029D78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A0F8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029DA6
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6a
	strb r0, [r1]
	ldr r0, _08029DA8 @ =gUnk_080FD2A0
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitializeAnimation
_08029DA6:
	pop {r4, pc}
	.align 2, 0
_08029DA8: .4byte gUnk_080FD2A0

	thumb_func_start sub_08029DAC
sub_08029DAC: @ 0x08029DAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029DD8
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r0, #0x77
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl InitializeAnimation
_08029DD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029DDC
sub_08029DDC: @ 0x08029DDC
	movs r1, #7
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08029DE4
sub_08029DE4: @ 0x08029DE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08029CF0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08029E02
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	b _08029E08
_08029E02:
	adds r0, r4, #0
	bl sub_0802A16C
_08029E08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029E0C
sub_08029E0C: @ 0x08029E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _08029EE0 @ =gUnk_080CCDC8
	adds r1, r1, r0
	str r1, [sp]
	bl Random
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	subs r1, #1
	mov sl, r1
	bl Random
	adds r1, r0, #0
	movs r0, #0xf
	ands r0, r1
	movs r1, #3
	bl __modsi3
	mov sb, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08029EE4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	mov r8, r0
	movs r2, #0x3f
	ands r0, r2
	mov r8, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	movs r7, #0
_08029E72:
	ldr r0, [sp]
	add r0, sb
	ldrb r4, [r0]
	lsrs r0, r4, #3
	lsls r0, r0, #1
	ldr r1, _08029EE8 @ =gUnk_080B4488
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, r8
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r6, r5, #0
	adds r6, #0x74
	cmp r0, #0
	bne _08029EA6
	str r4, [sp, #4]
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	subs r0, r1, r0
	subs r1, r4, r1
	cmp r0, r1
	bne _08029EBA
_08029EA6:
	mov r0, sb
	add r0, sl
	adds r0, #3
	movs r1, #3
	bl __modsi3
	mov sb, r0
	adds r7, #1
	cmp r7, #2
	bls _08029E72
_08029EBA:
	cmp r7, #3
	bne _08029EC0
	ldr r4, [sp, #4]
_08029EC0:
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	cmp r0, r1
	beq _08029ECA
	strb r1, [r6]
_08029ECA:
	strb r4, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08029F0C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029EE0: .4byte gUnk_080CCDC8
_08029EE4: .4byte gRoomControls
_08029EE8: .4byte gUnk_080B4488

	thumb_func_start sub_08029EEC
sub_08029EEC: @ 0x08029EEC
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x15]
	adds r2, r3, #0
	adds r2, #0x75
	lsrs r0, r0, #3
	ldrb r2, [r2]
	adds r1, r0, r2
	ldrb r0, [r3, #0x14]
	cmp r1, r0
	beq _08029F0A
	strb r1, [r3, #0x14]
	adds r0, r3, #0
	bl InitAnimationForceUpdate
_08029F0A:
	pop {pc}

	thumb_func_start sub_08029F0C
sub_08029F0C: @ 0x08029F0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _08029F30
	cmp r0, #1
	bgt _08029F22
	cmp r0, #0
	beq _08029F2C
	b _08029F44
_08029F22:
	cmp r0, #2
	beq _08029F36
	cmp r0, #3
	beq _08029F3C
	b _08029F44
_08029F2C:
	ldrh r0, [r1, #0x32]
	b _08029F3E
_08029F30:
	ldrh r0, [r1, #0x2e]
	adds r0, #0x10
	b _08029F40
_08029F36:
	ldrh r0, [r1, #0x32]
	adds r0, #0x10
	b _08029F40
_08029F3C:
	ldrh r0, [r1, #0x2e]
_08029F3E:
	subs r0, #0x10
_08029F40:
	adds r1, #0x78
	strh r0, [r1]
_08029F44:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08029F48
sub_08029F48: @ 0x08029F48
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _08029F78
	cmp r0, #1
	bgt _08029F5E
	cmp r0, #0
	beq _08029F68
	b _08029FB0
_08029F5E:
	cmp r0, #2
	beq _08029F88
	cmp r0, #3
	beq _08029F9C
	b _08029FB0
_08029F68:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08029FB0
	b _08029F96
_08029F78:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029FB0
	b _08029FAA
_08029F88:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029FB0
_08029F96:
	strh r0, [r2, #0x32]
	movs r0, #1
	b _08029FB2
_08029F9C:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08029FB0
_08029FAA:
	strh r0, [r2, #0x2e]
	movs r0, #1
	b _08029FB2
_08029FB0:
	movs r0, #0
_08029FB2:
	pop {pc}

	thumb_func_start sub_08029FB4
sub_08029FB4: @ 0x08029FB4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r6, [r0, #0x54]
	adds r6, #0x78
	ldr r0, [r0, #0x50]
	adds r0, #0x7e
	ldrb r0, [r0]
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	adds r5, #8
	movs r0, #0xf
	ands r5, r0
	adds r4, #8
	ands r4, r0
	lsls r4, r4, #4
	orrs r5, r4
	strb r5, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08029FE4
sub_08029FE4: @ 0x08029FE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x78
	ldr r0, [r5, #0x50]
	adds r0, #0x7e
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0xe
	bl __modsi3
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	subs r1, #8
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
	lsrs r6, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r5, #0x32]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r5, #0
	bl sub_08004274
	movs r1, #0xff
	cmp r4, #0
	beq _0802A032
	movs r1, #3
	cmp r4, #0
	ble _0802A032
	movs r1, #1
_0802A032:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0802A042
	movs r1, #0
	cmp r0, #0
	ble _0802A042
	movs r1, #2
_0802A042:
	cmp r1, #0xff
	beq _0802A052
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	beq _0802A052
	strb r1, [r5, #0x14]
	movs r0, #1
	b _0802A054
_0802A052:
	movs r0, #0
_0802A054:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802A058
sub_0802A058: @ 0x0802A058
	adds r2, r0, #0
	adds r0, #0x78
	movs r1, #0x88
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A098
sub_0802A098: @ 0x0802A098
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802A0B8
	strb r0, [r5]
_0802A0B8:
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08029F48
	cmp r0, #0
	beq _0802A0E4
	adds r0, r4, #0
	bl sub_08029E0C
	adds r0, r4, #0
	bl sub_08029EEC
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802A0E4:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	subs r1, r1, r5
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	adds r0, r4, #0
	bl sub_08029FB4
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802A0F8
sub_0802A0F8: @ 0x0802A0F8
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x45
	ldrb r4, [r0]
	cmp r4, #0
	beq _0802A134
	subs r0, #4
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A14A
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A14A
	adds r2, r3, #0
	movs r3, #0
	adds r4, r1, #0
_0802A122:
	ldr r2, [r2, #0x54]
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r3, #1
	cmp r3, #5
	bls _0802A122
	b _0802A14A
_0802A134:
	ldr r2, [r3, #0x50]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r0, [r3, #0x50]
	adds r0, #0x45
	strb r4, [r0]
	ldr r1, [r3, #0x50]
	movs r0, #0x69
	strb r0, [r1, #0xf]
_0802A14A:
	pop {r4, pc}

	thumb_func_start sub_0802A14C
sub_0802A14C: @ 0x0802A14C
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A166
	adds r0, r1, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A168
_0802A166:
	movs r2, #1
_0802A168:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_0802A16C
sub_0802A16C: @ 0x0802A16C
	push {lr}
	ldr r3, _0802A188 @ =gUnk_080CCDD4
	ldr r1, [r0, #0x50]
	adds r1, #0x7a
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0802A188: .4byte gUnk_080CCDD4

	thumb_func_start sub_0802A18C
sub_0802A18C: @ 0x0802A18C
	push {lr}
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A234
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1e
	bhi _0802A22C
	lsls r0, r0, #2
	ldr r1, _0802A1AC @ =_0802A1B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802A1AC: .4byte _0802A1B0
_0802A1B0: @ jump table
	.4byte _0802A234 @ case 0
	.4byte _0802A234 @ case 1
	.4byte _0802A234 @ case 2
	.4byte _0802A234 @ case 3
	.4byte _0802A22C @ case 4
	.4byte _0802A22C @ case 5
	.4byte _0802A22C @ case 6
	.4byte _0802A22C @ case 7
	.4byte _0802A22C @ case 8
	.4byte _0802A22C @ case 9
	.4byte _0802A22C @ case 10
	.4byte _0802A22C @ case 11
	.4byte _0802A22C @ case 12
	.4byte _0802A22C @ case 13
	.4byte _0802A22C @ case 14
	.4byte _0802A234 @ case 15
	.4byte _0802A22C @ case 16
	.4byte _0802A22C @ case 17
	.4byte _0802A22C @ case 18
	.4byte _0802A234 @ case 19
	.4byte _0802A22C @ case 20
	.4byte _0802A22C @ case 21
	.4byte _0802A22C @ case 22
	.4byte _0802A22C @ case 23
	.4byte _0802A22C @ case 24
	.4byte _0802A22C @ case 25
	.4byte _0802A22C @ case 26
	.4byte _0802A234 @ case 27
	.4byte _0802A22C @ case 28
	.4byte _0802A22C @ case 29
	.4byte _0802A234 @ case 30
_0802A22C:
	movs r0, #0x97
	lsls r0, r0, #1
	bl sub_08004488
_0802A234:
	pop {pc}
	.align 2, 0
