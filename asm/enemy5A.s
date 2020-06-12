	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080456D8
sub_080456D8: @ 0x080456D8
	push {lr}
	ldr r1, _080456E4 @ =gUnk_080D1888
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_080456E4: .4byte gUnk_080D1888

	thumb_func_start sub_080456E8
sub_080456E8: @ 0x080456E8
	push {lr}
	ldr r2, _080456FC @ =gUnk_080D18A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080456FC: .4byte gUnk_080D18A0

	thumb_func_start sub_08045700
sub_08045700: @ 0x08045700
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080457D0
	ldr r0, [r5, #0x50]
	ldr r3, [r0, #0x50]
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080457D0
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0xe
	beq _08045728
	cmp r0, #0x15
	bne _08045778
_08045728:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804575C
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrb r0, [r5, #0xe]
	adds r0, #2
	orrs r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldrb r2, [r5, #0xe]
	adds r2, #2
	orrs r1, r2
	bl InitializeAnimation
_0804575C:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804576C
	movs r0, #0xbd
	lsls r0, r0, #1
	bl PlaySFX
	b _080457D0
_0804576C:
	ldr r0, _08045774 @ =0x00000119
	bl PlaySFX
	b _080457D0
	.align 2, 0
_08045774: .4byte 0x00000119
_08045778:
	adds r2, r5, #0
	adds r2, #0x45
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080457D0
	movs r0, #0xff
	strb r0, [r2]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _080457D0
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _080457D0
	adds r0, r3, #0
	adds r0, #0x76
	movs r1, #1
	ldrb r2, [r5, #0xb]
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080457D0
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	movs r4, #6
	orrs r1, r4
	adds r0, r5, #0
	bl InitializeAnimation
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	bl InitializeAnimation
_080457D0:
	ldr r1, _080457DC @ =gUnk_080D1888
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_080457DC: .4byte gUnk_080D1888

	thumb_func_start nullsub_173
nullsub_173: @ 0x080457E0
	bx lr
	.align 2, 0

	thumb_func_start sub_080457E4
sub_080457E4: @ 0x080457E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08045850 @ =gTextBox
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	cmp r2, #0
	bne _08045868
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #4
	strb r2, [r0]
	strb r2, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x30
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08045854
	adds r0, r4, #0
	bl sub_08045A00
	movs r0, #0x5a
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _0804585A
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	ldrb r0, [r4, #0xe]
	strb r0, [r1, #0xe]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xb]
	adds r0, r4, #0
	bl CopyPosition
	b _0804585A
	.align 2, 0
_08045850: .4byte gTextBox
_08045854:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
_0804585A:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	movs r0, #1
	orrs r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
_08045868:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804586C
sub_0804586C: @ 0x0804586C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08045A28
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _080458AA
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080458C2
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804589A
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0804589A:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
	b _080458C2
_080458AA:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080458C2
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_080458C2:
	pop {r4, pc}

	thumb_func_start sub_080458C4
sub_080458C4: @ 0x080458C4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08045A28
	ldr r1, [r5, #0x50]
	ldrb r2, [r5, #0xa]
	cmp r2, #0
	beq _080458D6
	ldr r1, [r1, #0x50]
_080458D6:
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	bne _08045934
	adds r0, r1, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045934
	movs r0, #0
	movs r4, #4
	strb r4, [r5, #0xc]
	strb r0, [r5, #0xf]
	cmp r2, #0
	beq _08045934
	ldrb r0, [r5, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r5, #0x10]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804591C
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	movs r4, #5
	orrs r1, r4
	adds r0, r5, #0
	bl InitializeAnimation
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	bl InitializeAnimation
	b _08045934
_0804591C:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	adds r0, r5, #0
	bl InitializeAnimation
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	bl InitializeAnimation
_08045934:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08045938
sub_08045938: @ 0x08045938
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08045A28
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045980
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08045980
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08045966
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x32
	b _0804597E
_08045966:
	ldr r0, [r4, #0x50]
	ldr r2, [r0, #0x50]
	adds r2, #0x76
	movs r0, #1
	ldrb r1, [r4, #0xb]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x31
_0804597E:
	strb r0, [r1]
_08045980:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08045984
sub_08045984: @ 0x08045984
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08045A28
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080459A6
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080459FE
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080459FE
_080459A6:
	ldr r2, [r4, #0x50]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080459B0
	ldr r2, [r2, #0x50]
_080459B0:
	ldrb r0, [r2, #0x14]
	cmp r0, #2
	bhi _080459FE
	ldrb r0, [r2, #0xc]
	cmp r0, #3
	beq _080459FE
	movs r0, #0
	movs r3, #1
	strb r3, [r4, #0xc]
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080459DA
	subs r1, #0x46
	movs r0, #0x33
	strb r0, [r1]
_080459DA:
	adds r0, r2, #0
	adds r0, #0x75
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080459EE
	strb r3, [r4, #0xe]
	b _080459F0
_080459EE:
	strb r0, [r4, #0xe]
_080459F0:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	movs r0, #1
	orrs r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
_080459FE:
	pop {r4, pc}

	thumb_func_start sub_08045A00
sub_08045A00: @ 0x08045A00
	push {lr}
	adds r1, r0, #0
	ldrb r3, [r1, #0xb]
	lsls r3, r3, #1
	ldr r0, _08045A24 @ =gUnk_080D18B4
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r3, #3
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {pc}
	.align 2, 0
_08045A24: .4byte gUnk_080D18B4

	thumb_func_start sub_08045A28
sub_08045A28: @ 0x08045A28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _08045A3E
	adds r0, r5, #0
	bl sub_08004274
_08045A3E:
	adds r6, r5, #0
	adds r6, #0x5a
	ldrb r0, [r6]
	movs r1, #0x70
	mov r8, r1
	mov r4, r8
	ands r4, r0
	ldrb r7, [r5, #0xa]
	cmp r7, #0
	bne _08045AF8
	adds r0, r5, #0
	bl sub_08045A00
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #1
	beq _08045AA4
	cmp r0, #1
	bgt _08045A6E
	cmp r0, #0
	beq _08045A78
	b _08045B7C
_08045A6E:
	cmp r0, #2
	beq _08045ABC
	cmp r0, #3
	beq _08045AE8
	b _08045B7C
_08045A78:
	cmp r4, #0x20
	beq _08045A8C
	cmp r4, #0x20
	bhi _08045A86
	cmp r4, #0
	beq _08045A96
	b _08045B7C
_08045A86:
	cmp r4, #0x40
	beq _08045A96
	b _08045B7C
_08045A8C:
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #1
	b _08045B5A
_08045A96:
	movs r0, #2
	strb r0, [r2]
	ldr r1, _08045AA0 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AA0: .4byte 0x0000013F
_08045AA4:
	cmp r4, #0
	beq _08045AB0
	cmp r4, #0x10
	bne _08045B7C
	strb r7, [r1]
	b _08045B58
_08045AB0:
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08045AB8 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AB8: .4byte 0x0000013F
_08045ABC:
	cmp r4, #0x20
	beq _08045AD0
	cmp r4, #0x20
	bhi _08045ACA
	cmp r4, #0x10
	beq _08045ADA
	b _08045B7C
_08045ACA:
	cmp r4, #0x40
	beq _08045ADE
	b _08045B7C
_08045AD0:
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #1
	b _08045B5A
_08045ADA:
	strb r7, [r1]
	b _08045B58
_08045ADE:
	strb r0, [r1]
	ldr r1, _08045AE4 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AE4: .4byte 0x0000013F
_08045AE8:
	cmp r4, #0
	bne _08045B7C
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08045AF4 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AF4: .4byte 0x0000013F
_08045AF8:
	ldr r0, [r5, #0x50]
	ldr r3, _08045B18 @ =0xFFFF0000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #1
	beq _08045B3A
	cmp r0, #1
	bgt _08045B1C
	cmp r0, #0
	beq _08045B22
	b _08045B7C
	.align 2, 0
_08045B18: .4byte 0xFFFF0000
_08045B1C:
	cmp r0, #2
	beq _08045B68
	b _08045B7C
_08045B22:
	ldrb r0, [r6]
	mov r1, r8
	ands r1, r0
	cmp r1, #0x10
	beq _08045B54
	cmp r1, #0x20
	bne _08045B7C
	movs r0, #1
	strb r0, [r2]
	movs r1, #0x9f
	lsls r1, r1, #1
	b _08045B5A
_08045B3A:
	ldrb r0, [r6]
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08045B4A
	cmp r1, #0x10
	beq _08045B54
	b _08045B7C
_08045B4A:
	strb r1, [r2]
	ldr r1, _08045B50 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045B50: .4byte 0x0000013F
_08045B54:
	movs r0, #2
	strb r0, [r2]
_08045B58:
	ldr r1, _08045B64 @ =0x0000013B
_08045B5A:
	adds r0, r5, #0
	bl sub_0801D2B4
	b _08045B7C
	.align 2, 0
_08045B64: .4byte 0x0000013B
_08045B68:
	ldrb r0, [r6]
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	bne _08045B7C
	strb r1, [r2]
	ldr r1, _08045B84 @ =0x0000013F
	adds r0, r5, #0
	bl sub_0801D2B4
_08045B7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08045B84: .4byte 0x0000013F
