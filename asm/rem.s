	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806A410
sub_0806A410: @ 0x0806A410
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	beq _0806A420
	cmp r0, #1
	beq _0806A43C
	b _0806A456
_0806A420:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A456
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	adds r0, r2, #0
	movs r1, #8
	bl InitializeAnimation
	b _0806A456
_0806A43C:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A456
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_0806A9B0
_0806A456:
	pop {pc}

	thumb_func_start sub_0806A458
sub_0806A458: @ 0x0806A458
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	beq _0806A486
	cmp r0, #1
	bgt _0806A46C
	cmp r0, #0
	beq _0806A472
	b _0806A4CA
_0806A46C:
	cmp r0, #2
	beq _0806A4A8
	b _0806A4CA
_0806A472:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A4CA
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	b _0806A4CA
_0806A486:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A4CA
	movs r0, #2
	strb r0, [r2, #0xd]
	adds r0, r2, #0
	movs r1, #0xa
	bl InitializeAnimation
	movs r0, #0x62
	bl ClearLocalFlag
	b _0806A4CA
_0806A4A8:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A4CA
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	movs r1, #2
	bl InitializeAnimation
_0806A4CA:
	pop {pc}

	thumb_func_start sub_0806A4CC
sub_0806A4CC: @ 0x0806A4CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xd]
	cmp r2, #0
	beq _0806A4E0
	cmp r2, #1
	beq _0806A52C
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	b _0806A54C
_0806A4E0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A54C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806A512
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl InitializeAnimation
	b _0806A54C
_0806A512:
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x6a
	strh r2, [r0]
	adds r0, r4, #0
	bl GetAnimationState
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	b _0806A54C
_0806A52C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A54C
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl GetAnimationState
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
_0806A54C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806A550
sub_0806A550: @ 0x0806A550
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806A568
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xc
	bl InitializeAnimation
	b _0806A5B0
_0806A568:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r0, [r5]
	cmp r0, #1
	bne _0806A590
	movs r0, #0
	strb r0, [r5]
	movs r0, #8
	movs r1, #2
	bl sub_08080964
	ldr r2, _0806A5B4 @ =gUnk_02033280
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0806A5B8 @ =0x0000011B
	bl PlaySFX
_0806A590:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A5B0
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xd
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0806A914
_0806A5B0:
	pop {r4, r5, pc}
	.align 2, 0
_0806A5B4: .4byte gUnk_02033280
_0806A5B8: .4byte 0x0000011B

	thumb_func_start nullsub_503
nullsub_503: @ 0x0806A5BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0806A5C0
sub_0806A5C0: @ 0x0806A5C0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A5E6
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_0806A5E6:
	pop {r4, pc}

	thumb_func_start sub_0806A5E8
sub_0806A5E8: @ 0x0806A5E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A60A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x10
	bl InitializeAnimation
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xe]
_0806A60A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A628
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xcc
	bl PlaySFX
_0806A628:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_0806A630
sub_0806A630: @ 0x0806A630
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A646
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x12
	bl InitializeAnimation
_0806A646:
	ldr r0, _0806A670 @ =gUnk_02033280
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A65A
	adds r0, r4, #0
	bl GetNextFrame
_0806A65A:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0806A66E
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x72
	bl PlaySFX
_0806A66E:
	pop {r4, pc}
	.align 2, 0
_0806A670: .4byte gUnk_02033280

	thumb_func_start sub_0806A674
sub_0806A674: @ 0x0806A674
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _0806A694 @ =gUnk_08112294
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _0806A6BE
	cmp r3, #1
	bgt _0806A698
	cmp r3, #0
	beq _0806A6A0
	b _0806A82A
	.align 2, 0
_0806A694: .4byte gUnk_08112294
_0806A698:
	cmp r3, #2
	bne _0806A69E
	b _0806A824
_0806A69E:
	b _0806A82A
_0806A6A0:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x13
	bl InitializeAnimation
	b _0806A82A
_0806A6BE:
	ldr r0, _0806A6E0 @ =gUnk_02033280
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6E4
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	b _0806A82A
	.align 2, 0
_0806A6E0: .4byte gUnk_02033280
_0806A6E4:
	ldr r0, [r4, #0x50]
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #9
	bne _0806A7C8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r2]
	ldrb r2, [r4, #0xe]
	cmp r2, #0
	bne _0806A724
	bl Random
	adds r2, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xe]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	add r0, sp
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	b _0806A75A
_0806A724:
	ldr r0, _0806A780 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806A75A
	subs r0, r2, #1
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r4, #0
	adds r1, #0x68
	cmp r0, #0
	bgt _0806A746
	strb r3, [r1]
_0806A746:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xf
	ble _0806A752
	movs r0, #0xff
	strb r0, [r1]
_0806A752:
	ldrb r0, [r1]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
_0806A75A:
	ldrb r2, [r4, #0xf]
	cmp r2, #0
	bne _0806A784
	bl Random
	adds r2, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xf]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	add r0, sp
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	b _0806A82A
	.align 2, 0
_0806A780: .4byte gUnk_030010A0
_0806A784:
	ldr r0, _0806A7C4 @ =gUnk_030010A0
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806A82A
	subs r0, r2, #1
	strb r0, [r4, #0xf]
	adds r3, r4, #0
	adds r3, #0x63
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r2, r4, #0
	adds r2, #0x69
	cmp r0, #0
	blt _0806A7AA
	movs r0, #0xff
	strb r0, [r2]
_0806A7AA:
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0806A7BA
	movs r0, #1
	strb r0, [r2]
_0806A7BA:
	ldrb r0, [r2]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	b _0806A82A
	.align 2, 0
_0806A7C4: .4byte gUnk_030010A0
_0806A7C8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x62
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806A7FE
	cmp r2, #0
	ble _0806A7F0
	subs r0, #1
	strb r0, [r1]
_0806A7F0:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806A7FE
	adds r0, r2, #1
	strb r0, [r1]
_0806A7FE:
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806A82A
	cmp r2, #0
	ble _0806A814
	subs r0, #1
	strb r0, [r1]
_0806A814:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806A82A
	adds r0, r2, #1
	strb r0, [r1]
	b _0806A82A
_0806A824:
	adds r0, r4, #0
	bl GetNextFrame
_0806A82A:
	add sp, #8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806A830
sub_0806A830: @ 0x0806A830
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A84E
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x14
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806A84E:
	ldr r0, _0806A88C @ =gUnk_02033280
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0806A860
	bl DeleteThisEntity
_0806A860:
	adds r0, r4, #0
	bl GetNextFrame
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0806A88A
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x37
	movs r1, #5
	movs r2, #0
	bl CreateNPC
	adds r1, r0, #0
	cmp r1, #0
	beq _0806A88A
	adds r0, r4, #0
	bl PositionEntityOnTop
_0806A88A:
	pop {r4, pc}
	.align 2, 0
_0806A88C: .4byte gUnk_02033280

	thumb_func_start sub_0806A890
sub_0806A890: @ 0x0806A890
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A8AE
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x15
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806A8AE:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A8C6
	bl DeleteThisEntity
_0806A8C6:
	pop {r4, pc}

	thumb_func_start sub_0806A8C8
sub_0806A8C8: @ 0x0806A8C8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806A8F0
	movs r0, #0x37
	movs r1, #2
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A8F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	str r5, [r4, #0x50]
_0806A8F0:
	movs r0, #0x37
	movs r1, #3
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A910
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	str r5, [r4, #0x50]
_0806A910:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806A914
sub_0806A914: @ 0x0806A914
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x37
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A938
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
_0806A938:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806A93C
sub_0806A93C: @ 0x0806A93C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078778
	ldr r3, _0806A954 @ =gUnk_0811229C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_0806A954: .4byte gUnk_0811229C

	thumb_func_start sub_0806A958
sub_0806A958: @ 0x0806A958
	push {lr}
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	beq _0806A966
	ldr r1, _0806A968 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806A966:
	pop {pc}
	.align 2, 0
_0806A968: .4byte gUnk_02033280

	thumb_func_start sub_0806A96C
sub_0806A96C: @ 0x0806A96C
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	str r3, [r1, #0x14]
	movs r0, #0x39
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806A9A8
	ldrb r0, [r2, #0xc]
	cmp r0, #3
	beq _0806A992
	movs r0, #3
	strb r0, [r2, #0xc]
	strb r3, [r2, #0xd]
	b _0806A9A8
_0806A992:
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	bls _0806A9A8
	mov r4, ip
	strb r3, [r4]
	movs r0, #1
	str r0, [r1, #0x14]
	ldr r2, _0806A9AC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	orrs r0, r1
	strb r0, [r2, #7]
_0806A9A8:
	pop {r4, pc}
	.align 2, 0
_0806A9AC: .4byte gUnk_02033280

	thumb_func_start sub_0806A9B0
sub_0806A9B0: @ 0x0806A9B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	bl Random
	ldr r2, _0806A9E4 @ =gUnk_081122A0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #9
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #9
	bl InitializeAnimation
	movs r0, #0x62
	bl SetLocalFlag
	pop {r4, pc}
	.align 2, 0
_0806A9E4: .4byte gUnk_081122A0

	thumb_func_start sub_0806A9E8
sub_0806A9E8: @ 0x0806A9E8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x37
	movs r1, #4
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AA0C
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0806AA0C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806AA10
sub_0806AA10: @ 0x0806AA10
	push {lr}
	bl sub_0806A914
	pop {pc}

	thumb_func_start sub_0806AA18
sub_0806AA18: @ 0x0806AA18
	push {lr}
	adds r2, r0, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0
	beq _0806AA2C
	ldr r1, _0806AA28 @ =0x00004408
	b _0806AA3C
	.align 2, 0
_0806AA28: .4byte 0x00004408
_0806AA2C:
	ldr r0, _0806AA48 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	ldr r1, _0806AA4C @ =0x0000440D
	cmp r0, #0
	bne _0806AA3C
	subs r1, #6
_0806AA3C:
	adds r0, r1, #0
	adds r1, r2, #0
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806AA48: .4byte gUnk_030010A0
_0806AA4C: .4byte 0x0000440D

	thumb_func_start sub_0806AA50
sub_0806AA50: @ 0x0806AA50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #1
	beq _0806AB38
	cmp r0, #1
	bgt _0806AA6A
	cmp r0, #0
	beq _0806AA70
	b _0806AB64
_0806AA6A:
	cmp r0, #2
	beq _0806AB5C
	b _0806AB64
_0806AA70:
	str r0, [r5, #0x14]
	movs r0, #0x8f
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806AA84
	ldr r2, _0806AA80 @ =gUnk_081122A8
	b _0806AA9A
	.align 2, 0
_0806AA80: .4byte gUnk_081122A8
_0806AA84:
	movs r0, #0x15
	bl GetInventoryValue
	cmp r0, #0
	bne _0806AA98
	ldr r2, _0806AA94 @ =gUnk_081122B0
	b _0806AA9A
	.align 2, 0
_0806AA94: .4byte gUnk_081122B0
_0806AA98:
	ldr r2, _0806AAD0 @ =gUnk_081122B8
_0806AA9A:
	ldr r1, _0806AAD4 @ =gRoomVars
	ldr r0, [r1, #0x68]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r7, [r0]
	mov r8, r1
	mov r4, r8
	ldr r0, [r4, #0x68]
	adds r0, #1
	str r0, [r4, #0x68]
	cmp r0, #2
	bls _0806AAB6
	movs r0, #0
	str r0, [r4, #0x68]
_0806AAB6:
	adds r0, r7, #0
	adds r1, r6, #0
	bl TextboxNoOverlap
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _0806AAEE
	cmp r0, #1
	blo _0806AAD8
	cmp r0, #2
	beq _0806AB02
	b _0806AB1C
	.align 2, 0
_0806AAD0: .4byte gUnk_081122B8
_0806AAD4: .4byte gRoomVars
_0806AAD8:
	adds r0, r4, #0
	adds r0, #0xac
	str r6, [r0]
	adds r0, r6, #0
	movs r1, #7
	bl sub_0805EA78
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x20]
	b _0806AB1C
_0806AAEE:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #7
	bl sub_0805EB64
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	b _0806AB14
_0806AB02:
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #7
	bl sub_0805EB64
	adds r1, r0, #0
	mov r0, r8
	adds r0, #0xb4
_0806AB14:
	str r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
_0806AB1C:
	ldr r0, _0806AB34 @ =0x0000441E
	cmp r7, r0
	bne _0806AB2C
	movs r0, #0x8f
	bl SetLocalFlag
	movs r0, #1
	str r0, [r5, #0x14]
_0806AB2C:
	movs r0, #1
	strb r0, [r5, #0x18]
	b _0806AB64
	.align 2, 0
_0806AB34: .4byte 0x0000441E
_0806AB38:
	ldr r0, _0806AB58 @ =gRoomVars
	ldr r1, [r5, #4]
	lsls r1, r1, #2
	adds r0, #0xac
	adds r1, r1, r0
	ldr r1, [r1]
	movs r2, #0x36
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0806AB64
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	movs r0, #2
	strb r0, [r5, #0x18]
	b _0806AB64
	.align 2, 0
_0806AB58: .4byte gRoomVars
_0806AB5C:
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0806AB6A
_0806AB64:
	ldr r1, _0806AB70 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806AB6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806AB70: .4byte gUnk_02033280

	thumb_func_start sub_0806AB74
sub_0806AB74: @ 0x0806AB74
	push {lr}
	adds r2, r0, #0
	ldr r1, _0806AB94 @ =gRoomVars
	movs r0, #1
	strb r0, [r1, #3]
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	ldr r1, _0806AB98 @ =gRoomControls
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r0, #0xa7
	bgt _0806AB92
	adds r0, r1, #0
	adds r0, #0xa8
	strh r0, [r2, #0x32]
_0806AB92:
	pop {pc}
	.align 2, 0
_0806AB94: .4byte gRoomVars
_0806AB98: .4byte gRoomControls

	thumb_func_start sub_0806AB9C
sub_0806AB9C: @ 0x0806AB9C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #0x37
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	cmp r0, #0
	beq _0806ABBC
	bl DeleteEntity
_0806ABBC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807F950
	add sp, #4
	pop {r4, r5, pc}
