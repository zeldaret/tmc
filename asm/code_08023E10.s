	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08023E10
sub_08023E10: @ 0x08023E10
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08023E36
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
	movs r1, #5
	bl sub_08004260
_08023E36:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023E50
	adds r0, r4, #0
	bl sub_0805E7BC
_08023E50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08023E54
sub_08023E54: @ 0x08023E54
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bls _08023E94
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #0x10
	movs r1, #2
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _08023E94
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	ldr r1, _08023E98 @ =gUnk_080CBDF7
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_08023E94:
	pop {r4, r5, pc}
	.align 2, 0
_08023E98: .4byte gUnk_080CBDF7

	thumb_func_start sub_08023E9C
sub_08023E9C: @ 0x08023E9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08000E50
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08023EC2
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08023EC2
	adds r0, r5, #0
	bl sub_08049EE4
	adds r0, #4
	b _08023F1C
_08023EC2:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08023F0A
	movs r0, #6
	ands r0, r6
	cmp r0, #0
	beq _08023F0A
	ldr r0, _08023F00 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	ldrb r2, [r5, #0x15]
	subs r1, r0, r2
	cmp r1, #0
	beq _08023F22
	adds r0, r1, #4
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #8
	bls _08023F22
	ands r1, r3
	cmp r1, #0xf
	bhi _08023F04
	adds r0, r2, #0
	adds r0, #8
	b _08023F1C
	.align 2, 0
_08023F00: .4byte gUnk_020000B0
_08023F04:
	adds r0, r2, #0
	subs r0, #8
	b _08023F1C
_08023F0A:
	ldr r4, _08023F24 @ =gUnk_080CBDFF
	lsrs r0, r6, #4
	movs r1, #3
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r5, #0x15]
	adds r0, r0, r1
_08023F1C:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_08023F22:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023F24: .4byte gUnk_080CBDFF

	thumb_func_start sub_08023F28
sub_08023F28: @ 0x08023F28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08023F40 @ =gUnk_080CBEC4
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08023F40: .4byte gUnk_080CBEC4

	thumb_func_start sub_08023F44
sub_08023F44: @ 0x08023F44
	push {lr}
	ldr r2, _08023F58 @ =gUnk_080CBEDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023F58: .4byte gUnk_080CBEDC

	thumb_func_start sub_08023F5C
sub_08023F5C: @ 0x08023F5C
	push {r4, lr}
	mov ip, r0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x6e
	beq _08023FC8
	mov r0, ip
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08023FD0
	mov r1, ip
	adds r1, #0x86
	movs r0, #0x30
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #3
	bne _08023FD0
	mov r1, ip
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	bne _08023FD0
	subs r2, #3
	ldrb r0, [r2]
	cmp r0, #1
	beq _08023FA0
	cmp r0, #2
	beq _08023FB8
	b _08023FD0
_08023FA0:
	movs r0, #0
	ldr r1, _08023FC4 @ =0x0000FFF0
	mov r3, ip
	strh r1, [r3, #0x36]
	adds r3, #0x82
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x78
	strh r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08023FB8:
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	b _08023FD0
	.align 2, 0
_08023FC4: .4byte 0x0000FFF0
_08023FC8:
	mov r1, ip
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_08023FD0:
	ldr r1, _08023FDC @ =gUnk_080CBEC4
	mov r0, ip
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08023FDC: .4byte gUnk_080CBEC4

	thumb_func_start sub_08023FE0
sub_08023FE0: @ 0x08023FE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_08023FE8
sub_08023FE8: @ 0x08023FE8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08023FF0
sub_08023FF0: @ 0x08023FF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _08024022
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _08024022
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x77
	strb r0, [r1]
	strb r2, [r4, #0xe]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	b _08024032
_08024022:
	ldr r0, _08024034 @ =gUnk_080CBEF8
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08024032:
	pop {r4, pc}
	.align 2, 0
_08024034: .4byte gUnk_080CBEF8

	thumb_func_start sub_08024038
sub_08024038: @ 0x08024038
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_08024048
sub_08024048: @ 0x08024048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F4E8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08024058
sub_08024058: @ 0x08024058
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_08024060
sub_08024060: @ 0x08024060
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #0x6e
	beq _0802408C
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	movs r0, #0x6e
	strb r0, [r2]
	ldr r0, _08024094 @ =gLinkEntity
	ldrb r1, [r0, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
_0802408C:
	adds r0, r3, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0
_08024094: .4byte gLinkEntity

	thumb_func_start nullsub_138
nullsub_138: @ 0x08024098
	bx lr
	.align 2, 0

	thumb_func_start sub_0802409C
sub_0802409C: @ 0x0802409C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A29BC
	pop {r4, pc}

	thumb_func_start sub_080240B8
sub_080240B8: @ 0x080240B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #0xc0
	ands r1, r0
	lsrs r7, r1, #3
	adds r0, r4, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	beq _080240FC
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _080240F4
	adds r0, r1, #0
	subs r0, #0x20
	b _080240F8
_080240F4:
	adds r0, r1, #0
	adds r0, #0x20
_080240F8:
	strh r0, [r4, #0x32]
	b _08024114
_080240FC:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _0802410E
	adds r0, r1, #0
	subs r0, #0x20
	b _08024112
_0802410E:
	adds r0, r1, #0
	adds r0, #0x20
_08024112:
	strh r0, [r4, #0x2e]
_08024114:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08024120
	cmp r0, #1
	beq _0802412C
	b _08024136
_08024120:
	adds r1, r4, #0
	adds r1, #0x78
	ldr r0, _08024128 @ =0x0000FFF0
	b _08024132
	.align 2, 0
_08024128: .4byte 0x0000FFF0
_0802412C:
	adds r1, r4, #0
	adds r1, #0x78
	ldr r0, _080241BC @ =0x0000FFD0
_08024132:
	strh r0, [r1]
	strh r0, [r4, #0x36]
_08024136:
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	bl sub_08052660
	cmp r0, #0
	beq _08024150
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
_08024150:
	bl sub_08000E50
	movs r1, #0x40
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x81
	movs r6, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	strb r6, [r0]
	adds r5, r4, #0
	adds r5, #0x83
	movs r0, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x86
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	strb r6, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080249DC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080241B8
	strb r6, [r5]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _080241B8
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrh r0, [r1, #0x32]
	adds r0, #0x10
	strh r0, [r1, #0x32]
_080241B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080241BC: .4byte 0x0000FFD0

	thumb_func_start sub_080241C0
sub_080241C0: @ 0x080241C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r6, r4, #0
	adds r6, #0x80
	ldrb r5, [r6]
	cmp r5, #0
	beq _080241D8
	cmp r5, #1
	beq _08024238
	b _08024296
_080241D8:
	ldr r0, _08024218 @ =gUnk_03003F80
	ldrb r0, [r0, #0xf]
	movs r2, #0x40
	cmp r0, #0
	beq _080241E4
	movs r2, #0xa0
_080241E4:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049F64
	cmp r0, #0
	beq _08024220
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049FDC
	cmp r0, #0
	beq _08024220
	ldr r0, _0802421C @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x1e
	beq _08024220
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	strh r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08024A14
	b _08024296
	.align 2, 0
_08024218: .4byte gUnk_03003F80
_0802421C: .4byte gLinkEntity
_08024220:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024296
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08024A14
	b _08024296
_08024238:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024296
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08024290
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802426C
	adds r0, r4, #0
	bl sub_08024C94
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	b _08024296
_0802426C:
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r6]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08024E00
	adds r0, r4, #0
	bl sub_08024E1C
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08024A14
	b _08024296
_08024290:
	adds r0, r4, #0
	bl sub_08024C94
_08024296:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08024298
sub_08024298: @ 0x08024298
	push {lr}
	bl sub_08024D00
	pop {pc}

	thumb_func_start sub_080242A0
sub_080242A0: @ 0x080242A0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r0, r4, #0
	bl sub_08024CC0
	cmp r0, #0
	beq _08024334
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080242F0
	ldr r0, _080242E4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024E00
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080242E8
	strh r5, [r4, #0x24]
	b _08024306
	.align 2, 0
_080242E4: .4byte gUnk_020000B0
_080242E8:
	adds r0, r4, #0
	bl sub_08024E1C
	b _08024306
_080242F0:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08024306
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08024A14
_08024306:
	ldr r0, _08024338 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08049F1C
	cmp r0, #0
	beq _08024334
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049FDC
	cmp r0, #0
	beq _08024334
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
_08024334:
	pop {r4, r5, pc}
	.align 2, 0
_08024338: .4byte gUnk_020000B0

	thumb_func_start sub_0802433C
sub_0802433C: @ 0x0802433C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	cmp r0, #0
	beq _08024354
	cmp r0, #1
	beq _0802437A
	b _080243B6
_08024354:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080243B6
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024E00
	b _080243B6
_0802437A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080243A0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	b _080243B6
_080243A0:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r3
	cmp r0, #0
	bne _080243B6
	adds r0, r4, #0
	movs r1, #2
	movs r2, #4
	bl sub_08024A14
_080243B6:
	pop {r4, pc}

	thumb_func_start sub_080243B8
sub_080243B8: @ 0x080243B8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802446A
	cmp r0, #1
	bgt _080243D4
	cmp r0, #0
	beq _080243DA
	b _080244E4
_080243D4:
	cmp r0, #2
	beq _08024486
	b _080244E4
_080243DA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024462
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _080243F2
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08024406
_080243F2:
	movs r0, #2
	strb r0, [r5]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r1, #0x80
	strh r1, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	b _080244E4
_08024406:
	ldr r0, _08024434 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08049F1C
	cmp r0, #0
	beq _08024438
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, #0xe2
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x80
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	movs r0, #2
	strb r0, [r1, #0xc]
	b _080244E4
	.align 2, 0
_08024434: .4byte gUnk_020000B0
_08024438:
	ldrb r0, [r4, #0xe]
	subs r2, r0, #1
	strb r2, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08024462
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080244E4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1e
	adds r2, #1
	adds r0, r4, #0
	movs r1, #2
	bl sub_08024A14
	b _080244E4
_08024462:
	adds r0, r4, #0
	bl sub_08024C7C
	b _080244E4
_0802446A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080244E4
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _080244E4
_08024486:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080244E4
	movs r0, #6
	strb r0, [r4, #0xc]
	strb r1, [r5]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08024B38
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080244D8
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #1
	beq _080244C4
	cmp r0, #3
	bne _080244C8
	movs r0, #4
	b _080244CA
_080244C4:
	movs r0, #0x14
	b _080244CA
_080244C8:
	movs r0, #0x30
_080244CA:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #8
	bl sub_08024A14
	b _080244E4
_080244D8:
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08024A14
_080244E4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080244E8
sub_080244E8: @ 0x080244E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	bl sub_08024940
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #7
	bls _08024502
	b _08024924
_08024502:
	lsls r0, r0, #2
	ldr r1, _0802450C @ =_08024510
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802450C: .4byte _08024510
_08024510: @ jump table
	.4byte _08024530 @ case 0
	.4byte _080245A6 @ case 1
	.4byte _080245E4 @ case 2
	.4byte _080247F4 @ case 3
	.4byte _08024818 @ case 4
	.4byte _08024836 @ case 5
	.4byte _080248AE @ case 6
	.4byte _0802490A @ case 7
_08024530:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024592
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08024584 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #1
	bl sub_080002E0
	adds r2, r0, #0
	cmp r2, #0
	bne _08024588
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r2, [r5, #0xf]
	strh r2, [r5, #0x24]
	b _08024924
	.align 2, 0
_08024584: .4byte gRoomControls
_08024588:
	movs r0, #0x30
	strb r0, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xf]
	b _08024924
_08024592:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	beq _080245A0
	b _08024924
_080245A0:
	adds r0, r5, #0
	movs r1, #1
	b _08024902
_080245A6:
	ldrh r0, [r5, #0x36]
	adds r0, #1
	strh r0, [r5, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x10
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080245BA
	b _08024924
_080245BA:
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	strh r2, [r0]
	adds r0, r5, #0
	bl sub_08024AD8
	cmp r0, #0
	beq _080245D4
	b _0802482A
_080245D4:
	adds r0, r5, #0
	bl sub_08024C94
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	movs r1, #0x40
	b _080247EE
_080245E4:
	adds r0, r5, #0
	bl sub_08024AD8
	cmp r0, #0
	bne _080245F0
	b _080247E0
_080245F0:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802462C
	movs r7, #0x24
	ldrsh r0, [r5, r7]
	cmp r0, #0
	beq _0802460C
	strh r1, [r5, #0x24]
	b _08024612
_0802460C:
	adds r0, r5, #0
	bl sub_08024E1C
_08024612:
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08024E00
	adds r0, r5, #0
	bl sub_080249DC
	b _08024642
_0802462C:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08024642
	adds r0, r5, #0
	movs r1, #1
	movs r2, #8
	bl sub_08024A14
_08024642:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r1, [r6]
	movs r0, #0x3f
	mov sb, r0
	ands r0, r1
	cmp r0, #2
	beq _0802474C
	cmp r0, #2
	bgt _0802465C
	cmp r0, #1
	beq _080246E4
	b _08024924
_0802465C:
	cmp r0, #3
	beq _08024662
	b _08024924
_08024662:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08024670
	b _08024924
_08024670:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	movs r4, #0
	strh r2, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x84
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080249DC
	ldr r2, _080246DC @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r5, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, _080246E0 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _080246D6
	b _08024924
_080246D6:
	strb r4, [r2]
	b _08024924
	.align 2, 0
_080246DC: .4byte gLinkEntity
_080246E0: .4byte gUnk_03003F80
_080246E4:
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	movs r2, #6
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	bne _080246F6
	b _08024924
_080246F6:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	ldr r0, [r5, #0x54]
	adds r1, r5, #0
	bl sub_0806FA24
	ldrh r0, [r5, #0x36]
	subs r0, #0xe
	strh r0, [r5, #0x36]
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	ldrb r2, [r6]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	bne _08024736
	b _08024924
_08024736:
	str r5, [r4, #0x50]
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r1, [r5, #0x54]
	str r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
	str r4, [r5, #0x54]
	b _08024924
_0802474C:
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	movs r2, #6
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	bne _0802475E
	b _08024924
_0802475E:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	ldr r4, [r5, #0x54]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _080247DC @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r7, sb
	ands r1, r7
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sb
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r4, #0
	bl sub_0805E7BC
	ldrh r0, [r5, #0x36]
	subs r0, #0xe
	strh r0, [r5, #0x36]
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	ldrb r2, [r6]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	bne _080247D0
	b _08024924
_080247D0:
	str r5, [r4, #0x50]
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	str r4, [r5, #0x54]
	b _08024924
	.align 2, 0
_080247DC: .4byte gRoomControls
_080247E0:
	adds r0, r5, #0
	bl sub_08024C94
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x40
_080247EE:
	orrs r0, r1
	strb r0, [r2]
	b _08024924
_080247F4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08024804
	b _08024924
_08024804:
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	strb r2, [r5, #0xf]
	strh r2, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x82
	b _0802482E
_08024818:
	ldrh r0, [r5, #0x36]
	subs r0, #2
	strh r0, [r5, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3c
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08024924
_0802482A:
	adds r1, r5, #0
	adds r1, #0x80
_0802482E:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08024924
_08024836:
	ldrh r2, [r5, #0x36]
	movs r4, #0x36
	ldrsh r1, [r5, r4]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802484A
	adds r0, r2, #1
	strh r0, [r5, #0x36]
	b _08024924
_0802484A:
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802485E
	movs r0, #0
	strb r0, [r1]
	subs r1, #0xa
	ldr r0, _08024884 @ =0x0000FFD0
	strh r0, [r1]
_0802485E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	blt _080248A6
	cmp r0, #2
	ble _08024888
	cmp r0, #3
	bne _080248A6
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08024924
	adds r0, r5, #0
	bl sub_08024F50
	b _08024924
	.align 2, 0
_08024884: .4byte 0x0000FFD0
_08024888:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc0
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_080249DC
	b _08024924
_080248A6:
	adds r0, r5, #0
	bl sub_08024C7C
	b _08024924
_080248AE:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080248F2
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080248E8
	movs r0, #0xc0
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x80
	strb r3, [r0]
	movs r1, #0x40
	movs r0, #0x40
	strh r0, [r5, #0x24]
	strb r1, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #0
	b _08024902
_080248E8:
	movs r0, #0x40
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	b _08024924
_080248F2:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08024924
	adds r0, r5, #0
	movs r1, #2
_08024902:
	movs r2, #8
	bl sub_08024A14
	b _08024924
_0802490A:
	ldr r0, _0802493C @ =gLinkEntity
	movs r7, #0x36
	ldrsh r1, [r0, r7]
	cmp r1, #0
	bne _08024924
	adds r0, r5, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08024B38
_08024924:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _08024934
	adds r0, r5, #0
	bl sub_08024E4C
_08024934:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802493C: .4byte gLinkEntity

	thumb_func_start sub_08024940
sub_08024940: @ 0x08024940
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #0x70
	ands r5, r0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08024962
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_080249F4
_08024962:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802497C
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x36]
	cmp r5, #0
	beq _0802497C
	adds r0, #2
	strh r0, [r4, #0x36]
_0802497C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0802498A
	bl sub_08052660
	cmp r0, #0
	beq _080249CE
_0802498A:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080249A2
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080249F4
_080249A2:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080249BC
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, #0x18
	ands r0, r1
	strb r0, [r2]
	b _080249CE
_080249BC:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
_080249CE:
	adds r0, r4, #0
	bl sub_080AEFB4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}

	thumb_func_start sub_080249DC
sub_080249DC: @ 0x080249DC
	push {lr}
	ldrb r1, [r0, #0x15]
	adds r1, #2
	movs r2, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080249F4
sub_080249F4: @ 0x080249F4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	adds r1, r0, #2
	movs r0, #0x1f
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _08024A12
	strb r1, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_08004260
_08024A12:
	pop {pc}

	thumb_func_start sub_08024A14
sub_08024A14: @ 0x08024A14
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r6, #0
	cmp r5, #1
	beq _08024A40
	cmp r5, #1
	blo _08024A30
	cmp r5, #2
	beq _08024A5E
	cmp r5, #3
	beq _08024A84
	b _08024A9E
_08024A30:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _08024A9C
_08024A40:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08024C48
	cmp r0, #0
	beq _08024A9E
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _08024A9C
_08024A5E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024A9E
	ldr r0, _08024A80 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _08024A9C
	.align 2, 0
_08024A80: .4byte gUnk_020000B0
_08024A84:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024A9E
	ldr r0, _08024AD4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_08024A9C:
	movs r6, #1
_08024A9E:
	cmp r5, #0
	beq _08024ABA
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08024ABA
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08024ABA
	movs r6, #0
_08024ABA:
	cmp r6, #0
	bne _08024AC8
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	bl sub_08024A14
_08024AC8:
	adds r0, r4, #0
	bl sub_080249DC
	strb r7, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08024AD4: .4byte gUnk_020000B0

	thumb_func_start sub_08024AD8
sub_08024AD8: @ 0x08024AD8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x83
	ldrb r2, [r3]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _08024B2A
	movs r1, #0
	movs r0, #0x3f
	ands r0, r2
	cmp r0, #3
	bne _08024B12
	ldr r0, _08024B0C @ =gUnk_03003F80
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _08024B10
	ldr r0, [r4, #0x54]
	str r1, [r0, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0xc0
	strb r0, [r3]
	movs r0, #0
	b _08024B34
	.align 2, 0
_08024B0C: .4byte gUnk_03003F80
_08024B10:
	movs r1, #1
_08024B12:
	adds r0, r4, #0
	bl sub_08024C48
	cmp r0, #0
	bne _08024B32
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	movs r0, #0
	b _08024B34
_08024B2A:
	adds r0, r4, #0
	bl sub_08024B38
	b _08024B34
_08024B32:
	movs r0, #1
_08024B34:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08024B38
sub_08024B38: @ 0x08024B38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r0, _08024B5C @ =gUnk_03003F80
	ldrb r3, [r0, #0xf]
	adds r2, r3, #0
	adds r1, r0, #0
	cmp r2, #0
	beq _08024BA0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	bne _08024B62
	cmp r2, #3
	bls _08024B60
	subs r0, r3, #3
	strb r0, [r1, #0xf]
	b _08024B62
	.align 2, 0
_08024B5C: .4byte gUnk_03003F80
_08024B60:
	strb r7, [r1, #0xf]
_08024B62:
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08024BA0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024C3C
	ldr r4, _08024B9C @ =gUnk_020000B0
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0xa0
	bl sub_08049F1C
	cmp r0, #0
	beq _08024C3C
	movs r7, #1
	ldr r0, [r4]
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08024C3C
	.align 2, 0
_08024B9C: .4byte gUnk_020000B0
_08024BA0:
	movs r0, #8
	movs r1, #2
	movs r2, #2
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08024BF0
	adds r6, r5, #0
	adds r6, #0x83
	b _08024BC4
_08024BB6:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805EB64
	adds r4, r0, #0
	cmp r4, #0
	beq _08024BF0
_08024BC4:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _08024BB6
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08024BB6
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08049F1C
	cmp r0, #0
	beq _08024BB6
	movs r7, #1
	str r4, [r5, #0x54]
	ldrb r0, [r6]
	movs r1, #1
	orrs r1, r0
	movs r0, #0xbf
	ands r1, r0
	strb r1, [r6]
_08024BF0:
	cmp r7, #0
	bne _08024C42
	movs r0, #6
	movs r1, #5
	movs r2, #6
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08024C3C
	adds r6, r5, #0
	adds r6, #0x83
	b _08024C18
_08024C0A:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EB64
	adds r4, r0, #0
	cmp r4, #0
	beq _08024C3C
_08024C18:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08024C0A
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08049F1C
	cmp r0, #0
	beq _08024C0A
	movs r7, #1
	str r4, [r5, #0x54]
	ldrb r0, [r6]
	movs r1, #2
	orrs r1, r0
	movs r0, #0xbf
	ands r1, r0
	strb r1, [r6]
_08024C3C:
	cmp r7, #0
	bne _08024C42
	str r7, [r5, #0x54]
_08024C42:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08024C48
sub_08024C48: @ 0x08024C48
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #1
	cmp r1, #0
	beq _08024C60
	movs r0, #3
	bl sub_08049DF4
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	b _08024C78
_08024C60:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08024C74
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08024C74
	movs r5, #0x36
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08024C78
_08024C74:
	str r1, [r3, #0x54]
	movs r4, #0
_08024C78:
	adds r0, r4, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08024C7C
sub_08024C7C: @ 0x08024C7C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r2, #0
	movs r1, #0x40
	strh r1, [r0, #0x24]
	strb r2, [r0, #0xe]
	movs r1, #0
	movs r2, #0x20
	bl sub_08024A14
	pop {pc}

	thumb_func_start sub_08024C94
sub_08024C94: @ 0x08024C94
	push {lr}
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #0x40
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0x80
	strb r1, [r2]
	ldrb r2, [r0, #0xf]
	movs r1, #3
	bl sub_08024A14
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08024CC0
sub_08024CC0: @ 0x08024CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	bne _08024CD4
	movs r5, #0
	b _08024CF8
_08024CD4:
	ldr r0, _08024CFC @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x50
	bl sub_08049F1C
	cmp r0, #0
	beq _08024CF0
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049FDC
	cmp r0, #0
	bne _08024CF8
_08024CF0:
	movs r5, #0
	adds r0, r4, #0
	bl sub_08024C7C
_08024CF8:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_08024CFC: .4byte gUnk_020000B0

	thumb_func_start sub_08024D00
sub_08024D00: @ 0x08024D00
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrb r0, [r1]
	cmp r0, #0
	beq _08024D1A
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
	b _08024D20
_08024D1A:
	adds r0, r4, #0
	bl sub_08024940
_08024D20:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024D46
	adds r0, r4, #0
	bl sub_08024B38
	cmp r0, #0
	beq _08024D46
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	b _08024DFC
_08024D46:
	adds r0, r4, #0
	bl sub_08024CC0
	cmp r0, #0
	beq _08024DFC
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _08024D60
	cmp r0, #1
	beq _08024DAE
	b _08024DFC
_08024D60:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024DFC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08024D90
	adds r1, r2, #4
	b _08024D94
_08024D90:
	adds r1, r2, #0
	adds r1, #0x1c
_08024D94:
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r3]
	movs r1, #0x40
	eors r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08024A14
	b _08024DFC
_08024DAE:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08024DCE
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	b _08024DFC
_08024DCE:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08024DFC
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024DEA
	adds r1, #1
	b _08024DEC
_08024DEA:
	adds r1, #0x1f
_08024DEC:
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080249DC
_08024DFC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08024E00
sub_08024E00: @ 0x08024E00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08024E34
	ldr r1, _08024E18 @ =gUnk_080CBF10
	lsls r0, r0, #1
	orrs r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_08024E18: .4byte gUnk_080CBF10

	thumb_func_start sub_08024E1C
sub_08024E1C: @ 0x08024E1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08024E34
	ldr r1, _08024E30 @ =gUnk_080CBF18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0
_08024E30: .4byte gUnk_080CBF18

	thumb_func_start sub_08024E34
sub_08024E34: @ 0x08024E34
	push {lr}
	bl sub_08000E50
	movs r1, #0x3c
	ands r1, r0
	lsrs r1, r1, #2
	ldr r0, _08024E48 @ =gUnk_080CBF20
	adds r1, r1, r0
	ldrb r0, [r1]
	pop {pc}
	.align 2, 0
_08024E48: .4byte gUnk_080CBF20

	thumb_func_start sub_08024E4C
sub_08024E4C: @ 0x08024E4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _08024F46
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r7, #0
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0xf]
	bl sub_0807953C
	cmp r0, #0
	beq _08024E84
	bl sub_08000E50
	adds r3, r4, #0
	adds r3, #0x84
	ldrb r2, [r3]
	adds r2, #1
	movs r1, #1
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r3]
_08024E84:
	ldr r0, _08024EC8 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x87
	cmp r0, #0
	beq _08024E9A
	adds r5, r2, #0
	ldrb r0, [r5]
	cmp r0, #4
	bne _08024ECC
_08024E9A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0x30
	strb r0, [r1]
	strb r7, [r2]
	adds r0, r4, #0
	bl sub_08024F50
	adds r0, r4, #0
	adds r0, #0x80
	strb r7, [r0]
	movs r1, #0x40
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08024A14
	b _08024F46
	.align 2, 0
_08024EC8: .4byte gUnk_02002A40
_08024ECC:
	ldr r6, _08024F48 @ =gLinkEntity
	bl sub_08077B2C
	ldr r2, _08024F4C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r0, [r2, #0xa]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0xe
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	strb r7, [r0]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #4
	strb r0, [r6, #0x14]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3d
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08024F46
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #8
	strb r0, [r1]
	subs r0, #0xa
	bl ModHealth
	adds r0, r6, #0
	movs r1, #0x7a
	bl sub_0800449C
_08024F46:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08024F48: .4byte gLinkEntity
_08024F4C: .4byte gUnk_03003F80

	thumb_func_start sub_08024F50
sub_08024F50: @ 0x08024F50
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08024FDC @ =gUnk_03003F80
	movs r4, #0
	strb r4, [r2, #0xa]
	ldr r0, [r2, #0x30]
	ldr r1, _08024FE0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r5, _08024FE4 @ =gLinkEntity
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806FA24
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r3, #0
	strh r4, [r5, #0x24]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r5, #0x36]
	strb r3, [r1]
	adds r2, r6, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x84
	strb r3, [r0]
	movs r0, #0x80
	strh r0, [r6, #0x24]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08024FDC: .4byte gUnk_03003F80
_08024FE0: .4byte 0xFFFFFEFF
_08024FE4: .4byte gLinkEntity

	thumb_func_start sub_08024FE8
sub_08024FE8: @ 0x08024FE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08025004 @ =gUnk_080CBF9C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08025004: .4byte gUnk_080CBF9C

	thumb_func_start sub_08025008
sub_08025008: @ 0x08025008
	push {lr}
	ldr r2, _0802501C @ =gUnk_080CBFB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802501C: .4byte gUnk_080CBFB4

	thumb_func_start sub_08025020
sub_08025020: @ 0x08025020
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080250C2
	cmp r1, #3
	ble _0802510C
	cmp r1, #0x1b
	bne _080250C2
	adds r0, r4, #0
	bl sub_0804AA1C
	ldr r1, _08025058 @ =gUnk_080CBFE8
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r1, r0
	bhs _0802505C
	subs r0, r0, r1
	strb r0, [r3]
	b _08025078
	.align 2, 0
_08025058: .4byte gUnk_080CBFE8
_0802505C:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #0x45
	movs r0, #0x83
	strb r0, [r1]
	strb r2, [r3]
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
_08025078:
	movs r2, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802508A
	str r2, [r4, #0x20]
_0802508A:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802510C
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5]
	b _0802510C
_080250C2:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x82
	bne _0802510C
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802510C
	movs r0, #0x21
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08025104
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0806FA24
_08025104:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
_0802510C:
	ldr r1, _08025118 @ =gUnk_080CBF9C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08025118: .4byte gUnk_080CBF9C

	thumb_func_start sub_0802511C
sub_0802511C: @ 0x0802511C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025142
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08025142
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025142
	adds r0, r4, #0
	bl sub_08025B18
_08025142:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802514C
sub_0802514C: @ 0x0802514C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08025178
	ldr r0, _08025174 @ =gUnk_080CBFEC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802517E
	.align 2, 0
_08025174: .4byte gUnk_080CBFEC
_08025178:
	adds r0, r4, #0
	bl sub_08025C2C
_0802517E:
	pop {r4, pc}

	thumb_func_start sub_08025180
sub_08025180: @ 0x08025180
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0x15]
	movs r1, #0x10
	eors r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
	pop {r4, pc}

	thumb_func_start sub_080251AC
sub_080251AC: @ 0x080251AC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r0, #3
	bls _080251D8
	subs r0, #3
	strb r0, [r3]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080251F4
	adds r0, r4, #0
	bl sub_08025BD4
	b _080251F4
_080251D8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #0x45
	movs r0, #0x83
	strb r0, [r1]
	strb r2, [r3]
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
_080251F4:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080251FC
sub_080251FC: @ 0x080251FC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r1, r4, #0
	adds r1, #0x82
	movs r5, #0
	movs r0, #0xf0
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08025230
sub_08025230: @ 0x08025230
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025242
	subs r0, #1
	strb r0, [r1]
_08025242:
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025270
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08025C60
	strb r0, [r4, #0x15]
_08025270:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802528C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _08025290
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	b _08025290
_0802528C:
	movs r0, #0x1e
	strb r0, [r4, #0xf]
_08025290:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	bne _080252D8
	adds r0, r4, #0
	bl sub_0802571C
	cmp r0, #0
	beq _080252DC
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080252D4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x86
	strh r1, [r0]
	b _080252DC
	.align 2, 0
_080252D4: .4byte gRoomControls
_080252D8:
	subs r0, #1
	strh r0, [r1]
_080252DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080252E0
sub_080252E0: @ 0x080252E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x7c
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x7e
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08025348 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r2, [r0]
	cmp r5, r2
	bne _0802534C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025352
	adds r0, r4, #0
	bl sub_080256B4
	b _08025352
	.align 2, 0
_08025348: .4byte gRoomControls
_0802534C:
	strh r5, [r0]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
_08025352:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r1, r0
	bne _08025388
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	cmp r0, r1
	bne _08025388
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08025388:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802538C
sub_0802538C: @ 0x0802538C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802539C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080253CC
_0802539C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080253AE
	adds r0, r4, #0
	bl sub_08004274
	b _080253CC
_080253AE:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r1, [r4, #0x20]
	ldr r0, _080253D0 @ =0x00001FFF
	cmp r1, r0
	bgt _080253CC
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_080253CC:
	pop {r4, pc}
	.align 2, 0
_080253D0: .4byte 0x00001FFF

	thumb_func_start sub_080253D4
sub_080253D4: @ 0x080253D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0802541A
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080253FE
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _0802541A
_080253FE:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08025A54
	adds r0, r4, #0
	bl sub_08025AE8
_0802541A:
	pop {r4, pc}

	thumb_func_start sub_0802541C
sub_0802541C: @ 0x0802541C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025448
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08025448:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802544C
sub_0802544C: @ 0x0802544C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08025460
	adds r0, r4, #0
	bl sub_08004274
	b _0802547A
_08025460:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802547A
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802547A:
	pop {r4, pc}

	thumb_func_start sub_0802547C
sub_0802547C: @ 0x0802547C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802549E
	adds r0, r4, #0
	bl sub_08025BD4
_0802549E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080254B0
	adds r0, r4, #0
	bl sub_08025C2C
_080254B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080254B4
sub_080254B4: @ 0x080254B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802550C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08025512
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _080254F6
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #0x43
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080256B4
	b _08025502
_080254F6:
	movs r0, #0xc
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08025502:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08025512
_0802550C:
	adds r0, r4, #0
	bl sub_08004274
_08025512:
	pop {r4, pc}

	thumb_func_start sub_08025514
sub_08025514: @ 0x08025514
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0802594C
	cmp r0, #0
	beq _08025542
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x78
	strb r0, [r1]
	b _08025550
_08025542:
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	bls _08025550
	movs r0, #0xa
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xe]
_08025550:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08025554
sub_08025554: @ 0x08025554
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	bne _0802556C
	adds r0, r4, #0
	bl sub_080256B4
	b _080255A8
_0802556C:
	ldrb r1, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025580
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_08025580:
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08025598
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080255A8
_08025598:
	adds r0, r4, #0
	bl sub_080258C4
	cmp r0, #0
	bne _080255A8
	adds r0, r4, #0
	bl sub_080256B4
_080255A8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080255AC
sub_080255AC: @ 0x080255AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r6, r0, #0
	cmp r6, #0
	bne _080255C4
	adds r0, r5, #0
	bl sub_080256B4
	b _08025638
_080255C4:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _080255D2
	subs r0, #1
	strb r0, [r1]
_080255D2:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802560C
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0xe]
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #0xf
	ands r4, r0
	cmp r4, #7
	bgt _080255FA
	subs r4, #1
_080255FA:
	subs r4, #7
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080045C4
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_0802560C:
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	bne _08025628
	adds r0, r5, #0
	bl sub_080258C4
	cmp r0, #0
	bne _0802562C
	adds r0, r5, #0
	bl sub_080256B4
	b _0802562C
_08025628:
	subs r0, #1
	strh r0, [r1]
_0802562C:
	adds r0, r5, #0
	bl sub_08025C44
	adds r0, r5, #0
	bl sub_08004274
_08025638:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802563C
sub_0802563C: @ 0x0802563C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _08025678
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D2B4
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #0x43
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	bl sub_0804AA1C
	b _080256B0
_08025678:
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x77
	bhi _080256B0
	ldr r0, _080256A4 @ =gUnk_080CBFF8
	lsrs r1, r1, #0x14
	adds r1, r1, r0
	ldrb r1, [r1]
	ldrh r2, [r2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080256B0
	adds r0, r1, #1
	ands r2, r0
	cmp r2, #0
	beq _080256A8
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
	b _080256B0
	.align 2, 0
_080256A4: .4byte gUnk_080CBFF8
_080256A8:
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D2B4
_080256B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080256B4
sub_080256B4: @ 0x080256B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0xe]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	bl sub_08000E50
	ldrb r4, [r5, #0x15]
	adds r4, #7
	movs r1, #7
	bl __modsi3
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0x1c
	ands r4, r0
	strb r4, [r5, #0x15]
	bl sub_08000E50
	ldr r2, _08025718 @ =gUnk_080CC000
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	movs r4, #0
	strh r1, [r0]
	bl sub_08000E50
	movs r1, #0x18
	bl __modsi3
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x7a
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08025718: .4byte gUnk_080CC000

	thumb_func_start sub_0802571C
sub_0802571C: @ 0x0802571C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080257B0 @ =gRoomControls
	mov sb, r0
	ldrh r0, [r7, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r7, #0x32]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0x7a
	ldrb r4, [r0]
	movs r3, #0
	ldr r0, _080257B4 @ =gUnk_080CC020
	mov r8, r0
_08025764:
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	str r3, [sp, #4]
	bl sub_080257EC
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _080257B8
	mov r3, sb
	ldrh r0, [r3, #6]
	adds r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r3, #8]
	adds r0, r5, r0
	adds r1, #2
	strh r0, [r1]
	movs r0, #1
	b _080257E0
	.align 2, 0
_080257B0: .4byte gRoomControls
_080257B4: .4byte gUnk_080CC020
_080257B8:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2f
	bls _080257C4
	movs r4, #0
_080257C4:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08025764
	adds r0, r7, #0
	adds r0, #0x7a
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
_080257E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080257EC
sub_080257EC: @ 0x080257EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	cmp r2, r0
	beq _08025822
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025822
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025822:
	adds r5, r7, #0
	subs r5, #0x10
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	mov r8, r4
	cmp r2, r0
	beq _08025852
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025852
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025852:
	adds r4, r6, #0
	subs r4, #0x10
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	adds r1, r4, #0
	cmp r2, r0
	beq _08025882
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025882
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025882:
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	cmp r2, r0
	beq _080258BC
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _080258BC
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080258BC
_080258AA:
	movs r0, #1
	b _080258BE
	.align 2, 0
_080258B0: .4byte 0x00000312
_080258B4: .4byte gUnk_080B37A0
_080258B8: .4byte gUnk_080B3E80
_080258BC:
	movs r0, #0
_080258BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080258C4
sub_080258C4: @ 0x080258C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08025922
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r3, r1, r0
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r3, r3, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802591A
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802591A
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _0802591A
	movs r0, #9
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08025942
_0802591A:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r3, r0
	ble _08025926
_08025922:
	movs r0, #0
	b _08025944
_08025926:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl sub_08000E50
	ldr r2, _08025948 @ =gUnk_080CC050
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
_08025942:
	movs r0, #1
_08025944:
	pop {r4, pc}
	.align 2, 0
_08025948: .4byte gUnk_080CC050

	thumb_func_start sub_0802594C
sub_0802594C: @ 0x0802594C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r0, _08025A20 @ =gUnk_080CC090
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r0, sl
	adds r0, #0x38
	ldrb r0, [r0]
	mov sb, r0
	ldr r3, _08025A24 @ =gRoomControls
	mov r1, sl
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r2, r1, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sl
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08025996:
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, [sp]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldr r1, [sp, #4]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r0, r4, #0x10
	str r0, [sp, #8]
	asrs r4, r4, #0x10
	lsrs r1, r5, #0x10
	str r1, [sp, #0xc]
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r4
	mov r8, r0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	subs r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	str r3, [sp, #0x10]
	bl sub_080002D4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	ldr r3, [sp, #0x10]
	orrs r6, r3
	orrs r4, r6
	orrs r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _08025A28
	adds r7, #2
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x7f
	bne _08025996
	movs r0, #0
	b _08025A44
	.align 2, 0
_08025A20: .4byte gUnk_080CC090
_08025A24: .4byte gRoomControls
_08025A28:
	ldr r2, _08025A50 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7e
	strh r0, [r1]
	movs r0, #1
_08025A44:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025A50: .4byte gRoomControls

	thumb_func_start sub_08025A54
sub_08025A54: @ 0x08025A54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r1, r0, #0
	adds r1, #0x38
	ldrb r1, [r1]
	mov sb, r1
	ldr r3, _08025AB0 @ =gRoomControls
	ldrh r2, [r0, #0x2e]
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	ldrh r1, [r0, #0x32]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	ldr r4, _08025AB4 @ =gUnk_080CC0A0
	movs r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	movs r6, #0x3f
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
_08025A82:
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	asrs r0, r0, #4
	ands r0, r6
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r7, r1
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sb
	bl sub_08025AB8
	adds r5, #1
	adds r4, #2
	cmp r5, #3
	bls _08025A82
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025AB0: .4byte gRoomControls
_08025AB4: .4byte gUnk_080CC0A0

	thumb_func_start sub_08025AB8
sub_08025AB8: @ 0x08025AB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080002E0
	cmp r0, #0
	bne _08025AD6
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	cmp r0, #0xa
	beq _08025ADA
_08025AD6:
	movs r0, #0
	b _08025AE6
_08025ADA:
	movs r0, #0x61
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0807B7D8
	movs r0, #1
_08025AE6:
	pop {r4, r5, pc}

	thumb_func_start sub_08025AE8
sub_08025AE8: @ 0x08025AE8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x22
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08025B00
	ldr r0, [r1, #0x30]
	subs r0, #1
	str r0, [r1, #0x30]
_08025B00:
	adds r0, r4, #0
	movs r1, #0x23
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08025B16
	ldr r0, [r1, #0x30]
	adds r0, #1
	str r0, [r1, #0x30]
_08025B16:
	pop {r4, pc}

	thumb_func_start sub_08025B18
sub_08025B18: @ 0x08025B18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08025BC8 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	str r1, [sp]
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	ldrh r0, [r2, #8]
	subs r1, r1, r0
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	mov sl, r0
	ldr r5, _08025BCC @ =gUnk_080CC0A8
	movs r7, #0
	movs r1, #0x3f
	mov r8, r1
	movs r2, #0x10
	rsbs r2, r2, #0
	mov sb, r2
_08025B52:
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, [sp]
	adds r0, r1, r0
	asrs r0, r0, #4
	mov r2, r8
	ands r0, r2
	movs r1, #1
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	asrs r1, r1, #4
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sl
	bl sub_08025AB8
	movs r0, #0x21
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08025BB4
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r5, r3]
	lsls r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	ldrh r1, [r4, #0x2e]
	mov r0, sb
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r1, [r4, #0x32]
	mov r0, sb
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x32]
	ldr r0, _08025BD0 @ =0x0000FFFF
	strh r0, [r4, #0x36]
_08025BB4:
	adds r7, #1
	adds r5, #2
	cmp r7, #8
	bls _08025B52
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025BC8: .4byte gRoomControls
_08025BCC: .4byte gUnk_080CC0A8
_08025BD0: .4byte 0x0000FFFF

	thumb_func_start sub_08025BD4
sub_08025BD4: @ 0x08025BD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025C22
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025C22
	movs r0, #0x21
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08025C22
	ldr r3, _08025C24 @ =gUnk_080CC0BA
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	adds r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	ldr r0, _08025C28 @ =0x0000FFF6
	strh r0, [r4, #0x36]
_08025C22:
	pop {r4, r5, pc}
	.align 2, 0
_08025C24: .4byte gUnk_080CC0BA
_08025C28: .4byte 0x0000FFF6

	thumb_func_start sub_08025C2C
sub_08025C2C: @ 0x08025C2C
	push {lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #8
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08025C44
sub_08025C44: @ 0x08025C44
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025C58
	movs r0, #0
	b _08025C5E
_08025C58:
	adds r0, r2, #0
	bl sub_080AEF88
_08025C5E:
	pop {pc}

	thumb_func_start sub_08025C60
sub_08025C60: @ 0x08025C60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08025C80
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08025C80
	adds r0, r4, #0
	bl sub_08049EE4
	b _08025C98
_08025C80:
	bl sub_08000E50
	ldr r2, _08025C9C @ =gUnk_080CC0C2
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrb r4, [r4, #0x15]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
_08025C98:
	pop {r4, pc}
	.align 2, 0
_08025C9C: .4byte gUnk_080CC0C2

	thumb_func_start sub_08025CA0
sub_08025CA0: @ 0x08025CA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08025CB8 @ =gUnk_080CC19C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08025CB8: .4byte gUnk_080CC19C

	thumb_func_start sub_08025CBC
sub_08025CBC: @ 0x08025CBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_08025CC4
sub_08025CC4: @ 0x08025CC4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08025CD0
	adds r0, r4, #0
	bl sub_08027870
_08025CD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08025CD4
sub_08025CD4: @ 0x08025CD4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r3, [r4, #0xa]
	cmp r3, #0
	bne _08025DA4
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	beq _08025CFE
	movs r0, #0xc
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r3, [r0, #3]
	ldr r0, [r4, #0x54]
	movs r1, #9
	bl sub_080042AC
	b _08025D9C
_08025CFE:
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08025D10
	cmp r0, #1
	beq _08025D28
	b _08025D9C
_08025D10:
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_08027C7C
	ldr r0, [r5]
	movs r1, #1
	strb r1, [r0, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x78
	strb r0, [r1]
	b _08025D9C
_08025D28:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08025D84
	ldr r1, [r4, #0x54]
	adds r1, #0x6d
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x68]
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x50]
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x68]
	adds r0, #0x45
	strb r3, [r0]
	adds r1, #0x45
	strb r3, [r1]
	adds r2, #0x45
	strb r3, [r2]
	ldr r0, _08025D80 @ =gUnk_02034490
	strb r3, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0804A7D4
	b _08025D9C
	.align 2, 0
_08025D80: .4byte gUnk_02034490
_08025D84:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x3f
	cmp r0, #0x50
	bhi _08025D96
	movs r1, #0xf
	cmp r0, #0x1e
	bls _08025D96
	movs r1, #0x1f
_08025D96:
	adds r0, r4, #0
	bl sub_08027C7C
_08025D9C:
	adds r0, r4, #0
	bl sub_08027870
	b _08025DBC
_08025DA4:
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025DBC
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_08025DBC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08025DC0
sub_08025DC0: @ 0x08025DC0
	push {lr}
	ldr r2, _08025DD4 @ =gUnk_080CC1B0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08025DD4: .4byte gUnk_080CC1B0

	thumb_func_start sub_08025DD8
sub_08025DD8: @ 0x08025DD8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0xa]
	cmp r1, #8
	bne _08025DF2
	movs r0, #4
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x54]
	ldr r0, [r0, #0x48]
	str r0, [r5, #0x48]
	b _0802605E
_08025DF2:
	ldr r6, _08025E48 @ =gUnk_080CC1B8
	movs r4, #3
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #1]
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	movs r1, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x76
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5, #0x19]
	orrs r0, r4
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0xa]
	ands r3, r0
	cmp r3, #1
	bne _08025E4C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
	b _08025E58
	.align 2, 0
_08025E48: .4byte gUnk_080CC1B8
_08025E4C:
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08004260
_08025E58:
	ldrb r0, [r5, #0xa]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	beq _08025E86
	cmp r6, #0
	bge _08025E68
	b _08026050
_08025E68:
	cmp r6, #3
	ble _08025E6E
	b _08026050
_08025E6E:
	ldr r4, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806FBD8
	adds r1, r0, #0
	cmp r1, #0
	beq _08025E7E
	b _08026020
_08025E7E:
	ldr r0, [r5, #0x68]
	adds r0, #0x45
	strb r1, [r0]
	b _0802605E
_08025E86:
	strb r0, [r5, #0xb]
	movs r0, #0x10
	bl sub_0801D8E0
	adds r4, r5, #0
	adds r4, #0x84
	str r0, [r4]
	cmp r0, #0
	beq _08025EA2
	adds r0, r5, #0
	bl sub_0806FBD8
	cmp r0, #0
	bne _08025EAA
_08025EA2:
	adds r0, r5, #0
	bl sub_0804A7D4
	b _0802605E
_08025EAA:
	ldr r0, [r4]
	str r0, [r5, #0x64]
	ldr r2, [r5, #0x48]
	ldr r1, _0802601C @ =gUnk_080FD238
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #3]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #4]
	strb r0, [r2, #4]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #5]
	strb r0, [r2, #5]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #6]
	strb r0, [r2, #6]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #7]
	strb r0, [r2, #7]
	strb r6, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	movs r7, #1
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r4]
	strb r6, [r0, #6]
	ldr r0, [r4]
	strb r6, [r0, #5]
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1, #1]
	ldr r0, [r4]
	strb r6, [r0, #3]
	ldr r0, [r4]
	strb r6, [r0, #4]
	ldr r1, [r4]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0xe]
	ldrb r0, [r5, #0xa]
	movs r1, #3
	orrs r1, r0
	movs r0, #0x13
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r5, #0x68]
	cmp r2, #0
	beq _08025F46
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x68]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x68]
	ldrh r0, [r5, #0x32]
	subs r0, #0xe
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x68]
	movs r0, #0xe
	strb r0, [r1, #0xe]
	ldr r0, [r5, #0x68]
	str r5, [r0, #0x50]
	ldr r0, [r5, #0x68]
	str r5, [r0, #0x68]
_08025F46:
	ldrb r0, [r5, #0xa]
	movs r1, #2
	orrs r1, r0
	movs r0, #0x13
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r5, #0x50]
	cmp r2, #0
	beq _08025F8C
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x50]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x68]
	ldrh r0, [r0, #0x32]
	subs r0, #0x12
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x50]
	movs r0, #0x12
	strb r0, [r1, #0xe]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x68]
	str r0, [r1, #0x50]
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x50]
	str r5, [r0, #0x68]
_08025F8C:
	ldrb r0, [r5, #0xa]
	adds r1, r7, #0
	orrs r1, r0
	movs r0, #0x13
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r5, #0x54]
	cmp r2, #0
	beq _08025FD6
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x54]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x32]
	subs r0, #0xe
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x54]
	movs r0, #0xe
	strb r0, [r1, #0xe]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x54]
	str r5, [r0, #0x54]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x54]
	str r5, [r0, #0x68]
_08025FD6:
	movs r0, #0x13
	movs r1, #8
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _08025FE6
	str r5, [r1, #0x54]
_08025FE6:
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _08025FFC
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
_08025FFC:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08026050
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #3
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _08026050
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	b _08026050
	.align 2, 0
_0802601C: .4byte gUnk_080FD238
_08026020:
	ldr r1, [r5, #0x48]
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #1]
	strb r0, [r1, #1]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #4]
	strb r0, [r1, #4]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #5]
	strb r0, [r1, #5]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #6]
	strb r0, [r1, #6]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #7]
	strb r0, [r1, #7]
_08026050:
	ldrb r1, [r5, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08026060
_0802605E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08026060
sub_08026060: @ 0x08026060
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802608C @ =gUnk_080CC1C8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #4
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0802608C: .4byte gUnk_080CC1C8

	thumb_func_start sub_08026090
sub_08026090: @ 0x08026090
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080260EA
	ldr r0, [r4, #0x54]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080260B8
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xfa
	strb r0, [r4, #0xe]
	ldr r0, _080260D4 @ =gRoomControls
	str r4, [r0, #0x30]
_080260B8:
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x10]
	strb r1, [r4, #0x10]
	ldr r1, [r0, #0x48]
	str r1, [r4, #0x48]
	adds r0, #0x3f
	ldrb r1, [r0]
	cmp r1, #0x7e
	bne _080260D8
	adds r0, r4, #0
	adds r0, #0x3f
	strb r1, [r0]
	b _080260E0
	.align 2, 0
_080260D4: .4byte gRoomControls
_080260D8:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x7c
	strb r0, [r1]
_080260E0:
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	bl sub_0806FA24
	b _08026106
_080260EA:
	bl sub_08078B48
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08026106
	ldr r1, _08026108 @ =gRoomControls
	ldr r0, _0802610C @ =gLinkEntity
	str r0, [r1, #0x30]
	bl sub_0805E780
_08026106:
	pop {r4, pc}
	.align 2, 0
_08026108: .4byte gRoomControls
_0802610C: .4byte gLinkEntity

	thumb_func_start sub_08026110
sub_08026110: @ 0x08026110
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _08026144 @ =gUnk_080CC1DC
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08026160
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08026160
	ldrb r0, [r6, #0xd]
	cmp r0, #8
	bne _08026148
	adds r0, r1, #0
	subs r0, #0x40
	b _0802614C
	.align 2, 0
_08026144: .4byte gUnk_080CC1DC
_08026148:
	adds r0, r1, #0
	subs r0, #0x20
_0802614C:
	strb r0, [r2, #5]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #5
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08026160
	movs r0, #0
	strb r0, [r1, #5]
_08026160:
	adds r2, r6, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #0x76
	adds r1, r1, r6
	mov ip, r1
	adds r7, r6, #0
	adds r7, #0x7a
	cmp r0, #0
	beq _08026230
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _080261D2
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x74]
	subs r0, r0, r1
	str r0, [r6, #0x74]
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x78]
	subs r0, r0, r1
	str r0, [r6, #0x78]
	mov r0, ip
	ldrh r2, [r0]
	adds r4, r6, #0
	adds r4, #0x82
	ldrb r1, [r4]
	adds r3, r6, #0
	adds r3, #0x84
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	bgt _080261AA
	mov r0, ip
	strh r1, [r0]
_080261AA:
	ldrh r2, [r7]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	bgt _080261BA
	strh r1, [r7]
_080261BA:
	mov r1, ip
	ldrh r2, [r1]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	bgt _08026230
	ldrh r0, [r7]
	cmp r0, r1
	bgt _08026230
	b _08026228
_080261D2:
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x74]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	mov r0, ip
	ldrh r2, [r0]
	adds r4, r6, #0
	adds r4, #0x81
	ldrb r1, [r4]
	adds r3, r6, #0
	adds r3, #0x84
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	blt _08026202
	mov r0, ip
	strh r1, [r0]
_08026202:
	ldrh r2, [r7]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	blt _08026212
	strh r1, [r7]
_08026212:
	mov r1, ip
	ldrh r2, [r1]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	blt _08026230
	ldrh r0, [r7]
	cmp r0, r1
	blt _08026230
_08026228:
	ldrb r0, [r6, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r6, #0xe]
_08026230:
	ldr r5, [r6, #0x48]
	mov r0, ip
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	subs r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	ldrh r1, [r7]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #7]
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08026268
	adds r0, r6, #0
	bl sub_0800445C
_08026268:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802626C
sub_0802626C: @ 0x0802626C
	push {lr}
	ldr r2, _0802629C @ =gUnk_02034490
	movs r1, #1
	strb r1, [r2]
	ldr r2, _080262A0 @ =gUnk_080CC20C
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, _080262A4 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	beq _08026298
	cmp r0, #0xf
	beq _08026298
	bl sub_08078B48
_08026298:
	pop {pc}
	.align 2, 0
_0802629C: .4byte gUnk_02034490
_080262A0: .4byte gUnk_080CC20C
_080262A4: .4byte gLinkEntity

	thumb_func_start sub_080262A8
sub_080262A8: @ 0x080262A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x82
	movs r6, #0
	movs r0, #0x90
	strb r0, [r1]
	subs r1, #1
	movs r0, #0xb0
	strb r0, [r1]
	subs r1, #1
	movs r0, #8
	strb r0, [r1]
	movs r5, #1
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	bl sub_080276F4
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080262EC
	ldr r1, _080262E8 @ =gUnk_03003F80
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r5, [r0, #3]
	b _0802631A
	.align 2, 0
_080262E8: .4byte gUnk_03003F80
_080262EC:
	adds r0, r4, #0
	adds r0, #0x7c
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #3]
	ldr r0, _0802631C @ =gLinkEntity
	strb r6, [r0, #0x14]
	ldr r0, _08026320 @ =gRoomControls
	str r4, [r0, #0x30]
	strb r5, [r0, #0xe]
	ldr r0, _08026324 @ =0x00004022
	movs r1, #0xb2
	lsls r1, r1, #2
	movs r2, #1
	bl sub_0800015E
_0802631A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802631C: .4byte gLinkEntity
_08026320: .4byte gRoomControls
_08026324: .4byte 0x00004022

	thumb_func_start sub_08026328
sub_08026328: @ 0x08026328
	push {lr}
	adds r2, r0, #0
	ldr r0, _08026354 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	beq _08026352
	adds r1, r2, #0
	adds r1, #0x7d
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
_08026352:
	pop {pc}
	.align 2, 0
_08026354: .4byte gLinkEntity

	thumb_func_start sub_08026358
sub_08026358: @ 0x08026358
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _08026398 @ =gLinkEntity
	ldrb r0, [r4, #0xc]
	cmp r0, #0xf
	beq _080263B0
	adds r1, r3, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080263A0
	adds r0, r3, #0
	adds r0, #0x7c
	strb r2, [r0]
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	strb r2, [r4, #0x14]
	ldr r1, _0802639C @ =gRoomControls
	str r3, [r1, #0x30]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _080263B0
	.align 2, 0
_08026398: .4byte gLinkEntity
_0802639C: .4byte gRoomControls
_080263A0:
	cmp r2, #0x60
	bhi _080263B0
	cmp r2, #0x5b
	bhi _080263AC
	movs r0, #4
	b _080263AE
_080263AC:
	movs r0, #2
_080263AE:
	strb r0, [r4, #0x14]
_080263B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080263B4
sub_080263B4: @ 0x080263B4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x7d
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	subs r0, #1
	mov r1, ip
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _08026410
	ldr r2, _08026400 @ =gUnk_080CC234
	adds r3, r4, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	ldrb r1, [r0]
	mov r0, ip
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0xff
	bne _08026404
	movs r0, #0x78
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _08026410
	.align 2, 0
_08026400: .4byte gUnk_080CC234
_08026404:
	ldrb r2, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x49
	movs r3, #0
	bl sub_080A2988
_08026410:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08026414
sub_08026414: @ 0x08026414
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08026474
	ldr r0, _08026478 @ =0x0000FF40
	strh r0, [r7, #0x36]
	ldr r6, [r7, #0x54]
	ldr r5, [r7, #0x50]
	ldr r4, [r7, #0x68]
	ldrb r2, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r3, #1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldrb r2, [r5, #0x18]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r5, #0x18]
	ldrb r2, [r6, #0x18]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r6, #0x18]
	ldrb r0, [r7, #0x18]
	ands r1, r0
	orrs r1, r3
	strb r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	movs r0, #0xd1
	lsls r0, r0, #1
	bl PlaySFX
_08026474:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026478: .4byte 0x0000FF40

	thumb_func_start sub_0802647C
sub_0802647C: @ 0x0802647C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	bl sub_08003FC4
	cmp r0, #0
	bne _080264A6
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	ldr r0, _080264A8 @ =0x000001A1
	bl PlaySFX
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080264A6:
	pop {r4, pc}
	.align 2, 0
_080264A8: .4byte 0x000001A1

	thumb_func_start sub_080264AC
sub_080264AC: @ 0x080264AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xd0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #6
	beq _080264D2
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08027D20
_080264D2:
	pop {r4, pc}

	thumb_func_start sub_080264D4
sub_080264D4: @ 0x080264D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026504
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_080276F4
	movs r0, #0x2e
	bl PlaySFX
_08026504:
	adds r0, r4, #0
	bl sub_080277F8
	pop {r4, pc}

	thumb_func_start sub_0802650C
sub_0802650C: @ 0x0802650C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802652C
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	ldr r1, _08026534 @ =gRoomControls
	ldr r0, _08026538 @ =gLinkEntity
	str r0, [r1, #0x30]
_0802652C:
	adds r0, r2, #0
	bl sub_08027870
	pop {pc}
	.align 2, 0
_08026534: .4byte gRoomControls
_08026538: .4byte gLinkEntity

	thumb_func_start sub_0802653C
sub_0802653C: @ 0x0802653C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08026578 @ =gRoomControls
	ldrh r5, [r1]
	cmp r5, #0
	bne _08026572
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #4
	bl sub_08027B98
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
	ldr r0, _0802657C @ =gUnk_02034490
	strb r5, [r0]
_08026572:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_08026578: .4byte gRoomControls
_0802657C: .4byte gUnk_02034490

	thumb_func_start sub_08026580
sub_08026580: @ 0x08026580
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08027AA4
	adds r7, r5, #0
	adds r7, #0x84
	ldr r0, [r7]
	ldrb r0, [r0, #1]
	cmp r0, #0x40
	bne _0802659C
	adds r0, r5, #0
	bl sub_08027BBC
	b _0802662C
_0802659C:
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #0xff
	bne _08026626
	movs r0, #0
	strh r0, [r5, #0x24]
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r4, r5, #0
	adds r4, #0x7c
	movs r0, #0x3c
	strb r0, [r4]
	ldr r1, _080265E4 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	ldr r0, [r7]
	ldrb r0, [r0, #4]
	adds r2, r4, #0
	cmp r0, #2
	bne _080265E8
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x48
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	b _080265EE
	.align 2, 0
_080265E4: .4byte gLinkEntity
_080265E8:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x10
_080265EE:
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	movs r0, #0xa0
	ands r0, r1
	cmp r0, #0
	beq _08026608
	movs r0, #0
	strb r0, [r6]
	strb r0, [r2]
	b _08026626
_08026608:
	bl sub_08000E50
	ldr r2, _08026630 @ =gUnk_080CC24F
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r1, r0, #1
	strb r1, [r6]
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026626
	lsls r0, r1, #1
	strb r0, [r6]
_08026626:
	adds r0, r5, #0
	bl sub_08027870
_0802662C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026630: .4byte gUnk_080CC24F

	thumb_func_start sub_08026634
sub_08026634: @ 0x08026634
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08027AA4
	cmp r0, #0
	beq _08026644
	b _08026748
_08026644:
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080266D6
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08026748
	adds r1, #8
	ldr r2, [r1]
	ldrb r3, [r2, #1]
	movs r0, #0x40
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	bne _080266B0
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0802668C
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, [r5]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080266B0
	movs r0, #1
	b _080266AE
_0802668C:
	movs r0, #1
	strb r0, [r2, #1]
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _080266B0
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080266B0
	ldr r1, [r5]
	movs r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, #0x81
_080266AE:
	strb r0, [r1, #1]
_080266B0:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r0, [r5]
	strb r1, [r0, #3]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0x90
	movs r3, #0xc
	bl sub_08027B98
	movs r0, #0xe0
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _08026742
_080266D6:
	ldr r0, _08026700 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080266EC
	ldr r1, _08026704 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_080266EC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026708
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802670A
	.align 2, 0
_08026700: .4byte gUnk_030010A0
_08026704: .4byte gLinkEntity
_08026708:
	movs r0, #0xc0
_0802670A:
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802672C
	ldr r0, _0802674C @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08026726
	movs r0, #0xcf
	lsls r0, r0, #1
	bl PlaySFX
_08026726:
	adds r0, r4, #0
	bl sub_080AEF88
_0802672C:
	adds r0, r4, #0
	adds r0, #0x76
	adds r1, r4, #0
	adds r1, #0x81
	ldrh r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08026742
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_08026742:
	adds r0, r4, #0
	bl sub_08027870
_08026748:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_0802674C: .4byte gUnk_030010A0

	thumb_func_start sub_08026750
sub_08026750: @ 0x08026750
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08027AA4
	ldr r1, _08026770 @ =gUnk_080CC258
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08026770: .4byte gUnk_080CC258

	thumb_func_start sub_08026774
sub_08026774: @ 0x08026774
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	adds r1, #0x83
	ldr r0, [r4, #0x50]
	adds r0, #0x83
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	ldr r0, [r4, #0x68]
	adds r0, #0x83
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _080267C6
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080267CC
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x40
	bl sub_08027B98
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #3]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl sub_080042AC
_080267C6:
	adds r0, r4, #0
	bl sub_080277F8
_080267CC:
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_080267D0
sub_080267D0: @ 0x080267D0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0xf0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #1
	beq _08026802
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0xc0
	movs r3, #0x20
	bl sub_08027B98
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl sub_080042AC
_08026802:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08026808
sub_08026808: @ 0x08026808
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	ldr r7, [r4, #0x68]
	ldr r6, [r4, #0x50]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0xbf
	bhi _08026820
	adds r0, #4
	strh r0, [r1]
_08026820:
	adds r5, r2, #0
	adds r5, #0x7a
	ldrh r0, [r5]
	cmp r0, #0xb0
	bls _08026830
	subs r0, #8
	strh r0, [r5]
	b _08026860
_08026830:
	ldr r1, _08026868 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r1, #0xa0
	strh r1, [r5]
	adds r0, r6, #0
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080276F4
	movs r0, #0xd1
	lsls r0, r0, #1
	bl PlaySFX
_08026860:
	adds r0, r4, #0
	bl sub_080277F8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026868: .4byte gLinkEntity

	thumb_func_start sub_0802686C
sub_0802686C: @ 0x0802686C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	bl sub_08003FC4
	adds r5, r0, #0
	cmp r5, #0
	beq _08026888
	adds r0, r4, #0
	bl sub_080AEF88
	b _080268BE
_08026888:
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	movs r0, #5
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r5, [r0, #3]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	adds r0, r4, #0
	bl sub_08027870
	ldr r0, [r4, #0x54]
	movs r1, #3
	bl sub_080042AC
	ldr r0, _080268C4 @ =0x000001A1
	bl PlaySFX
_080268BE:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_080268C4: .4byte 0x000001A1

	thumb_func_start sub_080268C8
sub_080268C8: @ 0x080268C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08027AA4
	ldr r1, _080268E8 @ =gUnk_080CC264
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080268E8: .4byte gUnk_080CC264

	thumb_func_start sub_080268EC
sub_080268EC: @ 0x080268EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xd0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08026912
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08027D20
_08026912:
	pop {r4, pc}

	thumb_func_start sub_08026914
sub_08026914: @ 0x08026914
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026942
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #4
	bl sub_08027B98
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
_08026942:
	adds r0, r4, #0
	bl sub_080277F8
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_0802694C
sub_0802694C: @ 0x0802694C
	push {lr}
	ldr r2, _08026964 @ =gUnk_080CC26C
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08026964: .4byte gUnk_080CC26C

	thumb_func_start sub_08026968
sub_08026968: @ 0x08026968
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0802698C
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _080269C0
_0802698C:
	ldr r6, [r2, #0x54]
	ldr r4, [r2, #0x68]
	ldr r5, [r2, #0x50]
	ldrb r1, [r2, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r3, _080269C8 @ =0xFFFFFF00
	cmp r0, #0
	beq _080269A2
	movs r3, #0x80
	lsls r3, r3, #1
_080269A2:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_080269C0:
	adds r0, r2, #0
	bl sub_08027870
	pop {r4, r5, r6, pc}
	.align 2, 0
_080269C8: .4byte 0xFFFFFF00

	thumb_func_start sub_080269CC
sub_080269CC: @ 0x080269CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r7, #0
	ldr r5, [r6, #0x54]
	ldr r0, [r6, #0x68]
	mov sl, r0
	ldr r1, [r6, #0x50]
	mov sb, r1
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	cmp r0, #0
	beq _080269F8
	ldr r0, _08026A18 @ =0xFFFFFD00
	mov r8, r0
_080269F8:
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _08026A1C
	mov r1, sl
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A1E
	.align 2, 0
_08026A18: .4byte 0xFFFFFD00
_08026A1C:
	movs r7, #1
_08026A1E:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x44
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x87
	bhi _08026A3C
	mov r1, sb
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A3E
_08026A3C:
	adds r7, #1
_08026A3E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	adds r0, #0x20
	cmp r0, #0x40
	bls _08026A7E
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026A6C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	beq _08026A7E
	adds r0, r5, #0
	movs r1, #6
	bl sub_080042AC
	b _08026A7E
_08026A6C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #5
	beq _08026A7E
	adds r0, r5, #0
	movs r1, #5
	bl sub_080042AC
_08026A7E:
	lsls r0, r4, #0x18
	cmp r0, #0
	blt _08026A90
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A92
_08026A90:
	adds r7, #1
_08026A92:
	cmp r7, #3
	beq _08026A98
	b _08026BB8
_08026A98:
	ldrb r1, [r6, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0x10]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	movs r0, #0x20
	movs r1, #0
	bl sub_08080964
	ldr r0, _08026B24 @ =0x0000010B
	bl PlaySFX
	adds r0, r6, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r4, r0, #0
	cmp r4, #0
	beq _08026B4E
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
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
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026B28
	ldrh r0, [r4, #0x2e]
	subs r0, #0x38
	b _08026B2C
	.align 2, 0
_08026B24: .4byte 0x0000010B
_08026B28:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x38
_08026B2C:
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	movs r1, #0x3e
	bl sub_080ADF80
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _08026B46
	adds r0, r4, #0
	movs r1, #0x2b
	bl sub_0801D040
	b _08026B4E
_08026B46:
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_0801D040
_08026B4E:
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x54]
	ldr r0, [r6, #0x68]
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x84
	strb r1, [r2]
	adds r3, #0x84
	strb r1, [r3]
	mov r0, sb
	adds r0, #0x7a
	movs r1, #0x98
	strh r1, [r0]
	mov r0, sl
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	strh r1, [r0]
	bl sub_08000E50
	ldr r2, _08026BB4 @ =gUnk_080CC278
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r7, r6, #0
	adds r7, #0x7c
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #0xa
	movs r3, #0
	bl sub_080A2988
	adds r4, r0, #0
	cmp r4, #0
	beq _08026BD4
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r7]
	str r0, [r1]
	b _08026BD4
	.align 2, 0
_08026BB4: .4byte gUnk_080CC278
_08026BB8:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0xef
	bhi _08026BD4
	ldr r0, [r5, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	ldr r1, _08026BE4 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r5, #0x78]
_08026BD4:
	adds r0, r6, #0
	bl sub_08027870
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026BE4: .4byte 0xFFFF8000

	thumb_func_start sub_08026BE8
sub_08026BE8: @ 0x08026BE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	adds r3, r5, #0
	adds r3, #0x3b
	ldrb r1, [r3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _08026C34
	movs r0, #7
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r2, [r0, #3]
	adds r1, #1
	movs r0, #0x2d
	strb r0, [r1]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08026C30 @ =0x00000155
	bl PlaySFX
	b _08026C38
	.align 2, 0
_08026C30: .4byte 0x00000155
_08026C34:
	subs r0, #1
	strb r0, [r1]
_08026C38:
	adds r0, r4, #0
	bl sub_08027870
	pop {r4, r5, pc}

	thumb_func_start sub_08026C40
sub_08026C40: @ 0x08026C40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x54]
	ldr r7, [r5, #0x68]
	ldr r6, [r5, #0x50]
	adds r2, r5, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	beq _08026CCC
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _08026C9C
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08026C82
	ldr r0, [r4, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x78]
	b _08026E12
_08026C82:
	ldr r0, [r4, #0x74]
	ldr r3, _08026C94 @ =0xFFFE0000
	adds r0, r0, r3
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x78]
	ldr r1, _08026C98 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x78]
	b _08026E12
	.align 2, 0
_08026C94: .4byte 0xFFFE0000
_08026C98: .4byte 0xFFFF0000
_08026C9C:
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026CBA
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _08026CCC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080042AC
	b _08026CCC
_08026CBA:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	beq _08026CCC
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
_08026CCC:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _08026CF0
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r2, _08026CEC @ =0xFFFFFD00
	cmp r0, #0
	beq _08026D00
	movs r2, #0xc0
	lsls r2, r2, #2
	b _08026D00
	.align 2, 0
_08026CEC: .4byte 0xFFFFFD00
_08026CF0:
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r2, _08026D30 @ =0xFFFFFB80
	cmp r0, #0
	beq _08026D00
	movs r2, #0x90
	lsls r2, r2, #3
_08026D00:
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D34
	adds r1, r7, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	b _08026D7E
	.align 2, 0
_08026D30: .4byte 0xFFFFFB80
_08026D34:
	adds r0, r7, #0
	adds r0, #0x82
	movs r1, #0
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D60
	adds r1, r6, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	b _08026D7E
_08026D60:
	adds r0, r6, #0
	adds r0, #0x82
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D84
	adds r1, r4, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r2, [r1]
_08026D7E:
	adds r0, r0, r2
	strh r0, [r1]
	b _08026D8A
_08026D84:
	adds r0, r4, #0
	adds r0, #0x82
	strh r1, [r0]
_08026D8A:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _08026DA4
	ldr r0, [r4, #0x74]
	ldr r3, _08026DA0 @ =0xFFFC0000
	adds r0, r0, r3
	str r0, [r4, #0x74]
	b _08026DA8
	.align 2, 0
_08026DA0: .4byte 0xFFFC0000
_08026DA4:
	movs r0, #0xa0
	strh r0, [r1]
_08026DA8:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x9f
	bhi _08026DBE
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x78]
	b _08026E0C
_08026DBE:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl sub_080276F4
	adds r0, r4, #0
	adds r0, #0x7d
	movs r2, #0
	strb r2, [r0]
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026DEE
	adds r1, r6, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
_08026DEE:
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #4
	mov r3, r8
	strb r0, [r3]
	strb r2, [r6, #0xf]
	strb r2, [r7, #0xf]
	strb r2, [r4, #0xf]
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #0x10
	bl sub_08027B98
_08026E0C:
	adds r0, r5, #0
	bl sub_08027870
_08026E12:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08026E1C
sub_08026E1C: @ 0x08026E1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _08026EE0
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xf]
	ldr r1, [r4, #0x50]
	ldrb r1, [r1, #0xf]
	ldr r2, [r4, #0x68]
	adds r0, r0, r1
	ldrb r2, [r2, #0xf]
	adds r0, r0, r2
	cmp r0, #0xa
	ble _08026EF2
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	mov r8, r1
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08027C54
	adds r5, r4, #0
	adds r5, #0x84
	cmp r0, #0
	beq _08026E72
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldr r0, [r4, #0x54]
	adds r0, #0x45
	movs r1, #0xff
	strb r1, [r0]
_08026E72:
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	cmp r0, #3
	bne _08026EA0
	adds r0, r4, #0
	adds r0, #0x45
	strb r6, [r0]
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x68]
	strb r1, [r0, #0x10]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	strb r0, [r3, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	b _08026F14
_08026EA0:
	movs r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, #0x81
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x10]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x7d
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldr r0, [r5]
	strb r6, [r0, #3]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	ldr r1, [r5]
	movs r0, #0x21
	strb r0, [r1, #1]
	b _08026EF2
_08026EE0:
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	str r2, [r0, #8]
	ldr r0, [r1]
	strb r2, [r0, #6]
_08026EF2:
	adds r0, r4, #0
	bl sub_08027C54
	cmp r0, #0
	beq _08026F14
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026F14
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_08027C7C
	bl sub_08078B48
_08026F14:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08026F1C
sub_08026F1C: @ 0x08026F1C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7c
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08026F70
	adds r0, r4, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026F68
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r2, #0
	strb r2, [r0, #3]
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5]
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	ldrb r0, [r5]
	cmp r0, #2
	bne _08026F68
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
_08026F68:
	adds r0, r4, #0
	bl sub_080277F8
	b _08026FA0
_08026F70:
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08026FA0
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0xc0
	movs r3, #0x20
	bl sub_08027B98
_08026FA0:
	add sp, #4
	pop {r4, r5, pc}

	thumb_func_start sub_08026FA4
sub_08026FA4: @ 0x08026FA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0x10]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x68]
	strb r1, [r0, #0x10]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	strb r0, [r3, #0x10]
	adds r3, r4, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	cmp r0, #0
	beq _08026FD2
	movs r0, #1
	strb r0, [r3]
_08026FD2:
	ldr r2, [r4, #0x54]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x97
	bhi _08026FFE
	movs r1, #0x80
	lsls r1, r1, #9
	ldrb r0, [r3]
	lsls r1, r0
	ldr r0, [r2, #0x78]
	adds r0, r0, r1
	str r0, [r2, #0x78]
	ldr r2, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldrb r3, [r3]
	lsls r1, r3
	ldr r0, [r2, #0x74]
	subs r0, r0, r1
	str r0, [r2, #0x74]
	b _0802705C
_08026FFE:
	movs r0, #7
	strb r0, [r4, #0xd]
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x2d
	strb r0, [r1]
	ldr r0, _08027044 @ =0x00000155
	bl PlaySFX
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08027048
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802705C
	adds r0, r1, #0
	movs r1, #8
	bl sub_080042AC
	b _0802705C
	.align 2, 0
_08027044: .4byte 0x00000155
_08027048:
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	beq _0802705C
	adds r0, r1, #0
	movs r1, #7
	bl sub_080042AC
_0802705C:
	adds r0, r4, #0
	bl sub_08027870
	pop {r4, r5, pc}

	thumb_func_start sub_08027064
sub_08027064: @ 0x08027064
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	ldr r0, [r5, #0x68]
	mov sb, r0
	ldr r1, [r5, #0x50]
	mov r8, r1
	movs r0, #0x60
	strh r0, [r5, #0x24]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08027098
	ldr r0, _080270C8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08027098
	movs r0, #0x7c
	bl PlaySFX
_08027098:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r3, [r0]
	ldrb r1, [r3, #3]
	adds r7, r0, #0
	cmp r1, #0
	beq _080270E0
	ldr r0, _080270CC @ =gLinkEntity
	movs r2, #0x32
	ldrsh r4, [r5, r2]
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	cmp r4, r2
	beq _080270E0
	ldr r0, _080270C8 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080270D4
	cmp r4, r2
	ble _080270D0
	strb r1, [r3, #0xc]
	b _080270D4
	.align 2, 0
_080270C8: .4byte gUnk_030010A0
_080270CC: .4byte gLinkEntity
_080270D0:
	movs r0, #0x10
	strb r0, [r3, #0xc]
_080270D4:
	ldr r0, [r7]
	ldrb r0, [r0, #0xc]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEF88
_080270E0:
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bne _080270FC
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0802710E
	movs r0, #0x18
	b _08027110
_080270FC:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802710E
	movs r0, #0x18
	b _08027110
_0802710E:
	movs r0, #8
_08027110:
	strb r0, [r5, #0x15]
	ldr r1, [r7]
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08027152
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	ldrh r1, [r1, #0xe]
	cmp r0, r1
	bne _0802714A
	mov r0, r8
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x1e
	strb r0, [r1]
	ldr r1, [r7]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _080271FE
_0802714A:
	adds r0, r5, #0
	bl sub_080AEF88
	b _080271FE
_08027152:
	adds r0, r6, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	mov r0, sb
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	mov r0, r8
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	adds r1, r5, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080271FE
	mov r0, r8
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r3, #0
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	cmp r0, #1
	bls _080271B2
	ldr r0, _080271DC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	movs r3, #8
	cmp r1, r0
	ble _080271B2
	movs r3, #0x18
_080271B2:
	ldr r2, [r7]
	ldrb r1, [r2, #3]
	cmp r1, #5
	beq _080271C0
	ldrb r0, [r5, #0x15]
	cmp r0, r3
	bne _080271E0
_080271C0:
	movs r4, #0
	movs r0, #6
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	bl sub_080276F4
	ldr r0, [r7]
	strb r4, [r0, #3]
	adds r1, r5, #0
	adds r1, #0x7d
	movs r0, #0xf
	b _080271FC
	.align 2, 0
_080271DC: .4byte gLinkEntity
_080271E0:
	adds r0, r1, #1
	strb r0, [r2, #3]
	b _080271FE
_080271E6:
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	cmp r0, #4
	beq _080271F6
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x1e
	b _080271FC
_080271F6:
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x3c
_080271FC:
	strb r0, [r1]
_080271FE:
	adds r0, r5, #0
	bl sub_08027870
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802720C
sub_0802720C: @ 0x0802720C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	bhi _080272CA
	lsls r0, r0, #2
	ldr r1, _08027228 @ =_0802722C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027228: .4byte _0802722C
_0802722C: @ jump table
	.4byte _080272C4 @ case 0
	.4byte _08027260 @ case 1
	.4byte _08027260 @ case 2
	.4byte _0802726E @ case 3
	.4byte _080272AA @ case 4
	.4byte _0802726E @ case 5
	.4byte _080272CA @ case 6
	.4byte _080272CA @ case 7
	.4byte _08027282 @ case 8
	.4byte _080272CA @ case 9
	.4byte _080272A0 @ case 10
	.4byte _080272CA @ case 11
	.4byte _08027260 @ case 12
_08027260:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xa0
	strh r0, [r1]
	subs r1, #4
	strh r0, [r1]
	b _080272AA
_0802726E:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _080272CA
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0
	strb r0, [r1]
	b _080272AA
_08027282:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bhi _080272CA
	adds r0, r4, #0
	bl sub_0802757C
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080272CA
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	b _080272CA
_080272A0:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	bne _080272B2
_080272AA:
	adds r0, r4, #0
	bl sub_0802757C
	b _080272CA
_080272B2:
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _080272CA
	movs r0, #0
	strb r0, [r2]
	strb r0, [r1]
	b _080272CA
_080272C4:
	adds r0, r4, #0
	bl sub_0802757C
_080272CA:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r4, #0x34]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080272D4
sub_080272D4: @ 0x080272D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0xd]
	cmp r0, #0xc
	bls _080272E2
	b _08027532
_080272E2:
	lsls r0, r0, #2
	ldr r1, _080272EC @ =_080272F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080272EC: .4byte _080272F0
_080272F0: @ jump table
	.4byte _08027508 @ case 0
	.4byte _08027324 @ case 1
	.4byte _08027324 @ case 2
	.4byte _08027332 @ case 3
	.4byte _0802733E @ case 4
	.4byte _08027332 @ case 5
	.4byte _08027368 @ case 6
	.4byte _08027532 @ case 7
	.4byte _08027346 @ case 8
	.4byte _08027454 @ case 9
	.4byte _0802748C @ case 10
	.4byte _08027532 @ case 11
	.4byte _08027324 @ case 12
_08027324:
	adds r1, r6, #0
	adds r1, #0x7a
	movs r0, #0xa0
	strh r0, [r1]
	subs r1, #4
	strh r0, [r1]
	b _0802733E
_08027332:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802733E
	b _08027532
_0802733E:
	adds r0, r6, #0
	bl sub_0802757C
	b _08027532
_08027346:
	ldrb r0, [r6, #0xf]
	cmp r0, #2
	bls _0802734E
	b _08027532
_0802734E:
	adds r0, r6, #0
	bl sub_0802757C
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027360
	b _08027532
_08027360:
	ldrb r0, [r6, #0xf]
	adds r0, #1
	strb r0, [r6, #0xf]
	b _08027532
_08027368:
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #6
	strb r1, [r5, #7]
	adds r0, r6, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _080273A4
	b _08027532
_080273A4:
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027444
	adds r2, r6, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08027444
	ldr r0, [r6, #0x54]
	ldr r0, [r0, #0x68]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	ldr r0, [r0, #0x50]
	ldrb r1, [r2]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	ldrb r1, [r2]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	bl sub_08027D20
	adds r2, r0, #0
	cmp r2, #0
	beq _08027406
	ldrh r0, [r6, #0x2e]
	adds r0, #1
	strh r0, [r2, #0x2e]
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r0, #0x20
	adds r1, r2, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	strb r1, [r0]
_08027406:
	ldr r0, [r6, #0x54]
	bl sub_08027C54
	cmp r0, #0
	beq _0802741C
	ldr r0, [r6, #0x54]
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	beq _08027428
_0802741C:
	ldr r0, _08027424 @ =0x00000127
	bl PlaySFX
	b _08027444
	.align 2, 0
_08027424: .4byte 0x00000127
_08027428:
	bl sub_08078B48
	ldr r0, _0802744C @ =gRoomControls
	ldr r2, [r6, #0x54]
	str r2, [r0, #0x30]
	ldr r1, _08027450 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	movs r0, #9
	strb r0, [r2, #0xd]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_08027444:
	adds r0, r6, #0
	bl sub_08027A60
	b _08027484
	.align 2, 0
_0802744C: .4byte gRoomControls
_08027450: .4byte gUnk_02034490
_08027454:
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #6
	strb r1, [r5, #7]
_08027484:
	adds r0, r6, #0
	bl sub_0800445C
	b _08027532
_0802748C:
	adds r2, r6, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802749E
	adds r0, r6, #0
	bl sub_0802757C
	b _080274AE
_0802749E:
	adds r1, r6, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _080274AE
	movs r0, #0
	strb r0, [r2]
	strb r0, [r1]
_080274AE:
	adds r2, r6, #0
	adds r2, #0x83
	adds r0, r6, #0
	adds r0, #0x81
	ldrb r1, [r0]
	lsrs r0, r1, #1
	ldrb r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _080274F4
	lsls r0, r2, #0x18
	cmp r0, #0
	ble _080274E0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xc
	bl sub_080042AC
	b _08027532
_080274E0:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xb
	bl sub_080042AC
	b _08027532
_080274F4:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_080042AC
	b _08027532
_08027508:
	ldr r0, [r6, #0x54]
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _08027532
	adds r0, r6, #0
	bl sub_0802757C
	adds r0, r6, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #1
	bne _08027532
	adds r1, r6, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _08027532
	subs r0, #4
	strb r0, [r1]
_08027532:
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r6, #0x34]
	adds r1, r6, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_080042B8
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08027548
sub_08027548: @ 0x08027548
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #8
	bl sub_08027B98
	adds r0, r4, #0
	adds r0, #0x7d
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_080276F4
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802757C
sub_0802757C: @ 0x0802757C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x7d
	ldrb r1, [r6]
	cmp r1, #0
	beq _080275BA
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080275AE
	ldr r0, [r5, #0x54]
	adds r0, #0x7d
	ldrb r0, [r0]
	movs r1, #0x83
	adds r1, r1, r5
	mov sl, r1
	cmp r0, #0
	beq _08027676
	movs r0, #0
	strb r0, [r6]
	b _08027676
_080275AE:
	subs r0, r1, #1
	strb r0, [r6]
	movs r2, #0x83
	adds r2, r2, r5
	mov sl, r2
	b _08027676
_080275BA:
	movs r0, #0x85
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	mov sb, r1
	cmp r1, #1
	bne _0802761E
	adds r1, r5, #0
	adds r1, #0x82
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x83
	adds r2, r5, #0
	adds r2, #0x81
	movs r4, #0
	ldrsb r4, [r0, r4]
	movs r3, #0
	ldrsb r3, [r2, r3]
	mov r8, r1
	mov sl, r0
	adds r7, r2, #0
	cmp r4, r3
	blt _08027676
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08027616
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, #0x86
	ldrh r1, [r1]
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	b _0802761A
_08027616:
	mov r2, sb
	strb r2, [r6]
_0802761A:
	ldrb r0, [r7]
	b _08027670
_0802761E:
	adds r2, r5, #0
	adds r2, #0x82
	adds r1, r5, #0
	adds r1, #0x86
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x83
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r3, [r0]
	mov r8, r2
	mov sl, r1
	adds r7, r0, #0
	cmn r4, r3
	bgt _08027676
	movs r1, #1
	mov r2, ip
	strb r1, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0802766A
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, #0x86
	ldrh r1, [r1]
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	b _0802766C
_0802766A:
	strb r1, [r6]
_0802766C:
	ldrb r0, [r7]
	rsbs r0, r0, #0
_08027670:
	lsls r0, r0, #8
	mov r1, r8
	strh r0, [r1]
_08027676:
	ldr r2, [r5, #0x50]
	adds r0, r2, #0
	adds r0, #0x63
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0x62
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #8
	mov r0, sl
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0806F62C
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080276D2
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x2c]
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x54]
	ldrb r1, [r0, #0xe]
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r2, #0x83
	ldrb r2, [r2]
	bl sub_0806F62C
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x54]
	ldrb r2, [r1, #0xa]
	bl sub_080279AC
_080276D2:
	ldr r0, [r5, #0x68]
	ldrb r2, [r5, #0xa]
	adds r1, r5, #0
	bl sub_080279AC
	mov r1, sl
	ldrb r0, [r1]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080276F4
sub_080276F4: @ 0x080276F4
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	ldr r5, [r0, #0x54]
	ldr r4, [r0, #0x68]
	ldr r0, [r0, #0x50]
	mov ip, r0
	adds r0, #0x84
	movs r2, #0
	strb r2, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	strb r2, [r0]
	mov r0, ip
	adds r0, #0x7e
	movs r7, #0
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r2, [r0]
	mov r0, ip
	adds r0, #0x7d
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r7, [r0]
	ldr r0, _080277AC @ =gUnk_080CC27C
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r2, [r0]
	adds r3, r5, #0
	adds r3, #0x86
	strh r2, [r3]
	ldrb r0, [r0, #2]
	adds r2, r5, #0
	adds r2, #0x81
	strb r0, [r2]
	ldr r0, _080277B0 @ =gUnk_080CC2BC
	adds r0, r1, r0
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x86
	strh r2, [r3]
	ldrb r0, [r0, #2]
	adds r2, r4, #0
	adds r2, #0x81
	strb r0, [r2]
	ldr r0, _080277B4 @ =gUnk_080CC29C
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r2, ip
	adds r2, #0x86
	strh r0, [r2]
	ldrb r0, [r1, #2]
	mov r1, ip
	adds r1, #0x81
	strb r0, [r1]
	cmp r6, #0
	bne _080277AA
	mov r0, ip
	adds r0, #0x85
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x85
	strb r7, [r0]
	adds r0, r5, #0
	adds r0, #0x85
	strb r7, [r0]
	mov r0, ip
	adds r0, #0x82
	strh r6, [r0]
	adds r0, r4, #0
	adds r0, #0x82
	strh r6, [r0]
	adds r0, r5, #0
	adds r0, #0x82
	strh r6, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #7
	ldrh r1, [r2]
	bl __divsi3
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x7d
	strb r0, [r1]
_080277AA:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080277AC: .4byte gUnk_080CC27C
_080277B0: .4byte gUnk_080CC2BC
_080277B4: .4byte gUnk_080CC29C

	thumb_func_start sub_080277B8
sub_080277B8: @ 0x080277B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x54]
	adds r3, r1, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	cmp r4, r0
	bls _080277DC
	adds r0, r0, r2
	strh r0, [r3]
	ldr r0, [r1, #0x74]
	ldr r2, _080277D8 @ =0xFFFE8000
	adds r0, r0, r2
	str r0, [r1, #0x74]
	b _080277F0
	.align 2, 0
_080277D8: .4byte 0xFFFE8000
_080277DC:
	strh r4, [r3]
	adds r1, #0x7c
	movs r0, #8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080277F0:
	adds r0, r5, #0
	bl sub_080277F8
	pop {r4, r5, pc}

	thumb_func_start sub_080277F8
sub_080277F8: @ 0x080277F8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r3, [r6, #0x54]
	ldr r5, [r6, #0x68]
	ldr r4, [r6, #0x50]
	ldrh r2, [r6, #0x2e]
	strh r2, [r5, #0x2e]
	movs r7, #0xe
	strb r7, [r5, #0xe]
	ldrh r0, [r6, #0x32]
	subs r0, #0xe
	strh r0, [r5, #0x32]
	strh r2, [r4, #0x2e]
	movs r0, #0x7a
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0]
	subs r1, #0xa0
	asrs r1, r1, #4
	movs r0, #0x12
	subs r0, r0, r1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xe]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	strh r2, [r3, #0x2e]
	mov r1, ip
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _0802784E
	subs r0, #0xa0
	asrs r0, r0, #2
	movs r1, #0xe
	subs r1, r1, r0
	strb r1, [r3, #0xe]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08027850
	movs r0, #0
	strb r0, [r3, #0xe]
	b _08027850
_0802784E:
	strb r7, [r3, #0xe]
_08027850:
	ldrb r1, [r3, #0xe]
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r3, #0x32]
	ldr r0, [r3, #0x74]
	str r0, [r4, #0x74]
	ldr r0, [r3, #0x78]
	str r0, [r4, #0x78]
	ldr r0, [r3, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r3, #0x78]
	str r0, [r5, #0x78]
	adds r0, r6, #0
	bl sub_08027984
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08027870
sub_08027870: @ 0x08027870
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, [r7, #0x54]
	ldr r5, [r7, #0x68]
	ldr r6, [r7, #0x50]
	ldr r0, [r4, #0x74]
	str r0, [r6, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r6, #0x78]
	ldr r0, [r4, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r5, #0x78]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r6, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _080278C2
	movs r0, #0xe
	b _080278CC
_080278C2:
	ldrh r1, [r1]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #3
	adds r0, #0xe
_080278CC:
	strb r0, [r5, #0xe]
	adds r1, r6, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _080278EA
	adds r2, r4, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	subs r1, #0xa0
	asrs r1, r1, #4
	movs r0, #0x12
	subs r0, r0, r1
	strb r0, [r6, #0xe]
	b _080278FA
_080278EA:
	ldrh r1, [r1]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r0, #0x12
	strb r0, [r6, #0xe]
	adds r2, r4, #0
	adds r2, #0x7a
_080278FA:
	adds r0, r2, #0
	ldrh r1, [r0]
	cmp r1, #0xa0
	bls _0802791A
	adds r0, r1, #0
	subs r0, #0xa0
	asrs r0, r0, #2
	movs r1, #0xe
	subs r1, r1, r0
	strb r1, [r4, #0xe]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08027934
	movs r0, #0
	b _08027932
_0802791A:
	cmp r1, #0x7f
	bhi _08027928
	ldrh r1, [r0]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #2
	b _08027930
_08027928:
	ldrh r1, [r2]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #1
_08027930:
	adds r0, #0xe
_08027932:
	strb r0, [r4, #0xe]
_08027934:
	ldr r0, [r7, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r7, #0x30]
	str r0, [r5, #0x30]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0806F62C
	ldr r0, [r5, #0x2c]
	str r0, [r6, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r6, #0x30]
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #8
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r6, #0
	bl sub_0806F62C
	ldr r0, [r6, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r4, #0x30]
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r7, #0
	bl sub_08027984
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08027984
sub_08027984: @ 0x08027984
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r5, [r4, #0x68]
	ldr r6, [r4, #0x50]
	ldrb r2, [r1, #0xa]
	bl sub_080279AC
	ldrb r2, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080279AC
	ldrb r2, [r6, #0xa]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080279AC
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080279AC
sub_080279AC: @ 0x080279AC
	push {r4, r5, r6, lr}
	mov ip, r1
	movs r3, #4
	subs r3, r3, r2
	ldrh r1, [r1, #0x2e]
	ldrh r4, [r0, #0x2e]
	subs r1, r1, r4
	mov r6, ip
	adds r6, #0x62
	strb r1, [r6]
	mov r2, ip
	ldrh r1, [r2, #0x32]
	ldrh r2, [r0, #0x32]
	adds r0, r2, r3
	subs r1, r1, r0
	mov r5, ip
	adds r5, #0x63
	strb r1, [r5]
	mov r0, ip
	strh r4, [r0, #0x2e]
	adds r2, r2, r3
	strh r2, [r0, #0x32]
	ldr r1, [r0, #0x48]
	ldrb r0, [r6]
	strb r0, [r1]
	mov r2, ip
	ldr r1, [r2, #0x48]
	ldrb r0, [r5]
	strb r0, [r1, #1]
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080279E8
sub_080279E8: @ 0x080279E8
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r4, [r2, #0x54]
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08027A20
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #0xe
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	subs r1, r1, r0
	cmp r1, #0x80
	bne _08027A58
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #1
	str r0, [sp]
	adds r0, r2, #0
	movs r2, #0xa0
	movs r3, #0x20
	bl sub_08027B98
	b _08027A58
_08027A20:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xa0
	bls _08027A30
	subs r0, r1, #4
	b _08027A32
_08027A30:
	movs r0, #0xa0
_08027A32:
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r1, r0, #0
	cmp r2, #0xa0
	bls _08027A44
	subs r0, r2, #4
	b _08027A46
_08027A44:
	movs r0, #0xa0
_08027A46:
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, #0xa0
	bne _08027A58
	ldrh r0, [r1]
	cmp r0, #0xa0
	bne _08027A58
	movs r0, #1
	b _08027A5A
_08027A58:
	movs r0, #0
_08027A5A:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08027A60
sub_08027A60: @ 0x08027A60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027A78
	ldr r0, [r2, #0x74]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08027A7C
_08027A78:
	ldr r0, [r2, #0x74]
	ldr r1, _08027AA0 @ =0xFFFFC000
_08027A7C:
	adds r0, r0, r1
	str r0, [r2, #0x74]
	adds r3, r2, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	adds r2, r0, #1
	strb r2, [r3]
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x28
	bne _08027A9C
	movs r1, #0x80
	movs r0, #0x80
	ands r2, r0
	eors r2, r1
	strb r2, [r3]
_08027A9C:
	pop {pc}
	.align 2, 0
_08027AA0: .4byte 0xFFFFC000

	thumb_func_start sub_08027AA4
sub_08027AA4: @ 0x08027AA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027B94
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08027AC2
	cmp r0, #0x1b
	beq _08027B44
	b _08027B94
_08027AC2:
	movs r0, #0x84
	bl PlaySFX
	ldrb r3, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #9
	bl sub_080A2988
	ldr r0, _08027B3C @ =0x00000155
	bl PlaySFX
	adds r0, r5, #0
	adds r0, #0x84
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	movs r1, #3
	bl __divsi3
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x15
	ldrb r2, [r4, #5]
	cmp r0, r2
	beq _08027B06
	lsls r0, r1, #3
	strb r0, [r4, #5]
_08027B06:
	movs r0, #0xb4
	str r0, [r4, #8]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08027B94
	movs r0, #0x40
	strb r0, [r4, #1]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	bne _08027B2A
	adds r0, r5, #0
	bl sub_08027BBC
_08027B2A:
	adds r0, r5, #0
	bl sub_08027D20
	ldr r0, _08027B40 @ =0x00000127
	bl PlaySFX
_08027B36:
	movs r0, #1
	b _08027B96
	.align 2, 0
_08027B3C: .4byte 0x00000155
_08027B40: .4byte 0x00000127
_08027B44:
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	ldr r0, [r5, #0x4c]
	ldrb r0, [r0, #0xa]
	adds r0, #1
	cmp r0, #2
	beq _08027B74
	cmp r0, #2
	bgt _08027B60
	cmp r0, #1
	beq _08027B84
	b _08027B36
_08027B60:
	cmp r0, #3
	bne _08027B36
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x1a
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xe0
	lsls r0, r0, #1
	b _08027B90
_08027B74:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08027B90
_08027B84:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #4
	adds r0, #0xf0
_08027B90:
	strh r0, [r1]
	b _08027B36
_08027B94:
	movs r0, #0
_08027B96:
	pop {r4, r5, pc}

	thumb_func_start sub_08027B98
sub_08027B98: @ 0x08027B98
	push {r4, lr}
	mov ip, r0
	ldr r4, [sp, #8]
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #1
	strb r2, [r0]
	subs r0, #1
	strb r3, [r0]
	cmp r4, #0xff
	beq _08027BB4
	mov r0, ip
	strb r4, [r0, #0xe]
	b _08027BBA
_08027BB4:
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xe]
_08027BBA:
	pop {r4, pc}

	thumb_func_start sub_08027BBC
sub_08027BBC: @ 0x08027BBC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r0, #0xa
	strb r0, [r6, #0xd]
	adds r5, r6, #0
	adds r5, #0x84
	ldr r0, [r5]
	strb r4, [r0, #1]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #1
	bl sub_080276F4
	ldr r0, [r6, #0x54]
	adds r0, #0x7d
	strb r4, [r0]
	movs r3, #0
	strh r4, [r6, #0x24]
	ldr r0, [r5]
	strb r3, [r0, #3]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r1, r0
	ble _08027C0A
	movs r0, #0x18
	strb r0, [r6, #0x15]
	ldr r2, [r6, #0x54]
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0x85
	strb r3, [r0]
	adds r1, #0x85
	strb r3, [r1]
	adds r2, #0x85
	strb r3, [r2]
	b _08027C22
_08027C0A:
	movs r0, #8
	strb r0, [r6, #0x15]
	ldr r3, [r6, #0x54]
	ldr r2, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x85
	strb r1, [r2]
	adds r3, #0x85
	strb r1, [r3]
_08027C22:
	ldrb r0, [r6, #0x15]
	lsrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldr r0, _08027C44 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _08027C52
	cmp r1, r0
	ble _08027C48
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0
	b _08027C50
	.align 2, 0
_08027C44: .4byte gLinkEntity
_08027C48:
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0x10
_08027C50:
	strb r0, [r1, #0xc]
_08027C52:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08027C54
sub_08027C54: @ 0x08027C54
	push {lr}
	ldr r2, _08027C74 @ =gUnk_080CC2DC
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #4]
	adds r1, r1, r2
	ldr r0, [r0, #0x54]
	adds r0, #0x45
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08027C78
	movs r0, #0
	b _08027C7A
	.align 2, 0
_08027C74: .4byte gUnk_080CC2DC
_08027C78:
	movs r0, #1
_08027C7A:
	pop {pc}

	thumb_func_start sub_08027C7C
sub_08027C7C: @ 0x08027C7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x54]
	bl sub_08027C9C
	ldr r0, [r4, #0x68]
	adds r1, r5, #0
	bl sub_08027C9C
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl sub_08027C9C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08027C9C
sub_08027C9C: @ 0x08027C9C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08000E50
	ands r0, r4
	cmp r0, #0
	bne _08027D1E
	adds r0, r5, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D1E
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	subs r0, r0, r1
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	bl sub_08000E50
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	subs r0, r0, r1
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	bl sub_08000E50
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08027D1E:
	pop {r4, r5, pc}

	thumb_func_start sub_08027D20
sub_08027D20: @ 0x08027D20
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D66
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x3e
	bl sub_080ADF80
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08027D5E
	adds r0, r4, #0
	movs r1, #0x2b
	bl sub_0801D040
	b _08027D66
_08027D5E:
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_0801D040
_08027D66:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08027D6C
sub_08027D6C: @ 0x08027D6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08027D88 @ =gUnk_080CC6FC
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08027D88: .4byte gUnk_080CC6FC

	thumb_func_start sub_08027D8C
sub_08027D8C: @ 0x08027D8C
	push {lr}
	ldr r2, _08027DA0 @ =gUnk_080CC714
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08027DA0: .4byte gUnk_080CC714

	thumb_func_start sub_08027DA4
sub_08027DA4: @ 0x08027DA4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #1
	bne _08027DC4
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x8c
	strb r0, [r2]
	b _08027E0E
_08027DC4:
	ldrb r0, [r4, #0xc]
	cmp r0, #7
	bne _08027DD2
	adds r0, r4, #0
	bl sub_0802810C
	b _08027E0E
_08027DD2:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08027E0E
	movs r1, #0x7f
	ands r1, r2
	cmp r1, #0
	bne _08027E0E
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x5f
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08027E38 @ =gLinkEntity
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
_08027E0E:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E1C
	movs r0, #0x20
	strb r0, [r4, #0xe]
_08027E1C:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027E2E
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08027E2E:
	ldr r1, _08027E3C @ =gUnk_080CC6FC
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08027E38: .4byte gLinkEntity
_08027E3C: .4byte gUnk_080CC6FC

	thumb_func_start sub_08027E40
sub_08027E40: @ 0x08027E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _08027E62
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _08027E62
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r0, [r5]
	bl sub_08028224
_08027E62:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_139
nullsub_139: @ 0x08027E6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08027E70
sub_08027E70: @ 0x08027E70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r3, [r4, #0xa]
	cmp r3, #1
	beq _08027EA6
	cmp r3, #1
	bgt _08027E88
	cmp r3, #0
	beq _08027E8E
	b _08027EE4
_08027E88:
	cmp r3, #2
	beq _08027EC4
	b _08027EE4
_08027E8E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strb r3, [r4, #0xe]
	b _08027EE4
_08027EA6:
	movs r2, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08027EE4
_08027EC4:
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r3, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08027EE4:
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	strb r0, [r4, #0x14]
	adds r1, #1
	strb r0, [r1]
	subs r1, #3
	movs r0, #0xff
	strb r0, [r1]
	pop {r4, pc}

	thumb_func_start sub_08027EFC
sub_08027EFC: @ 0x08027EFC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	beq _08027F7C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08027F68
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08027F32
	bl sub_08000E50
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0
	beq _08027F32
	adds r0, r4, #0
	bl sub_08049EE4
	b _08027F38
_08027F32:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
_08027F38:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08027F5A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	movs r0, #8
	strb r0, [r4, #0xe]
_08027F5A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	b _08027F7C
_08027F68:
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08027F7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_12
nullsub_12: @ 0x08027F80
	bx lr
	.align 2, 0

	thumb_func_start sub_08027F84
sub_08027F84: @ 0x08027F84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08027FB0
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A29BC
_08027FB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08027FB4
sub_08027FB4: @ 0x08027FB4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08027FD6
	movs r1, #1
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r0, [r2, #0xe]
	adds r3, r2, #0
	adds r3, #0x3b
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
_08027FD6:
	adds r0, r2, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08027FE0
sub_08027FE0: @ 0x08027FE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08028028
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	movs r2, #8
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x41
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08028028:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802802C
sub_0802802C: @ 0x0802802C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802805A
	movs r2, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x15]
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	bl sub_080A29BC
_0802805A:
	pop {r4, pc}

	thumb_func_start sub_0802805C
sub_0802805C: @ 0x0802805C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #2
	bl sub_08004276
	bl sub_0807953C
	cmp r0, #0
	beq _0802807E
	bl sub_08000E50
	ldrb r2, [r5, #0xf]
	adds r2, #1
	movs r1, #1
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r5, #0xf]
_0802807E:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x18
	bhi _0802808E
	ldr r0, _08028098 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802809C
_0802808E:
	adds r0, r5, #0
	bl sub_0802810C
	b _08028102
	.align 2, 0
_08028098: .4byte gUnk_02002A40
_0802809C:
	bl sub_08077B2C
	ldr r2, _08028104 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _08028108 @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080280F0
	adds r0, r5, #0
	bl sub_080281A0
_080280F0:
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08028102
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_08028102:
	pop {r4, r5, pc}
	.align 2, 0
_08028104: .4byte gUnk_03003F80
_08028108: .4byte gLinkEntity

	thumb_func_start sub_0802810C
sub_0802810C: @ 0x0802810C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08028198 @ =gUnk_03003F80
	movs r1, #0
	movs r0, #0x41
	strb r0, [r2, #2]
	strb r1, [r2, #0xa]
	ldr r0, [r2, #0x30]
	subs r1, #0x11
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _0802819C @ =gLinkEntity
	mov ip, r0
	ldrb r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	movs r3, #0
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	mov r5, ip
	adds r5, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r1, ip
	adds r1, #0x63
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, ip
	strh r0, [r2, #0x36]
	strb r3, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08028196
	movs r0, #0xee
	strb r0, [r1]
_08028196:
	pop {r4, r5, pc}
	.align 2, 0
_08028198: .4byte gUnk_03003F80
_0802819C: .4byte gLinkEntity

	thumb_func_start sub_080281A0
sub_080281A0: @ 0x080281A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x19
	strb r0, [r4, #0xf]
	movs r0, #0xe
	bl sub_080281E0
	cmp r0, #0
	beq _080281BA
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0xe
	b _080281CA
_080281BA:
	movs r0, #0xd
	bl sub_080281E0
	cmp r0, #0
	beq _080281D6
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0xd
_080281CA:
	strb r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #3
	bl TextboxTryNoOverlap
	b _080281DE
_080281D6:
	movs r0, #1
	rsbs r0, r0, #0
	bl ModHealth
_080281DE:
	pop {r4, pc}

	thumb_func_start sub_080281E0
sub_080281E0: @ 0x080281E0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _0802821A
	ldr r6, _08028220 @ =gUnk_02002A40
	adds r5, r6, #0
	adds r5, #0xb4
	ldrb r0, [r5]
	bl sub_080544B4
	cmp r0, #0
	beq _08028200
	strb r4, [r5]
_08028200:
	adds r5, r6, #0
	adds r5, #0xb5
	ldrb r0, [r5]
	bl sub_080544B4
	cmp r0, #0
	beq _08028210
	strb r4, [r5]
_08028210:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807CAA0
	movs r4, #1
_0802821A:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08028220: .4byte gUnk_02002A40

	thumb_func_start sub_08028224
sub_08028224: @ 0x08028224
	push {lr}
	movs r1, #0
	movs r2, #1
	bl sub_080A7C18
	ldr r0, _08028238 @ =0x00000579
	bl TextboxTryNoOverlap
	pop {pc}
	.align 2, 0
_08028238: .4byte 0x00000579

	thumb_func_start sub_0802823C
sub_0802823C: @ 0x0802823C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08028268 @ =gUnk_080CC790
	bl sub_0800129E
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08028266
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08028266
	adds r0, r4, #0
	bl sub_0806FA24
_08028266:
	pop {r4, pc}
	.align 2, 0
_08028268: .4byte gUnk_080CC790

	thumb_func_start sub_0802826C
sub_0802826C: @ 0x0802826C
	push {lr}
	ldr r2, _08028280 @ =gUnk_080CC7A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08028280: .4byte gUnk_080CC7A8

	thumb_func_start sub_08028284
sub_08028284: @ 0x08028284
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028298
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08028298:
	ldr r1, _080282BC @ =gUnk_080CC790
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080282DE
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _080282C0
	adds r0, r4, #0
	bl sub_08028754
	b _080282DE
	.align 2, 0
_080282BC: .4byte gUnk_080CC790
_080282C0:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080282DE
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #7
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028784
_080282DE:
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r5, [r0]
	cmp r5, #0
	bne _0802830C
	movs r0, #0
	strh r5, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287E0
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	str r5, [r4, #0x54]
_0802830C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_13
nullsub_13: @ 0x08028310
	bx lr
	.align 2, 0

	thumb_func_start sub_08028314
sub_08028314: @ 0x08028314
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #5
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	subs r0, #7
	strb r1, [r0]
	adds r0, #8
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802835E
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080287E0
	b _08028368
_0802835E:
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08028604
_08028368:
	movs r0, #3
	bl sub_080A7EE0
	cmp r0, #0
	beq _08028376
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08028376:
	pop {r4, pc}

	thumb_func_start sub_08028378
sub_08028378: @ 0x08028378
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802838A
	subs r0, #1
	strb r0, [r1]
_0802838A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080283B8
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #0xf
	bls _080283B0
	adds r0, r4, #0
	bl sub_08028728
	b _080283FC
_080283B0:
	adds r0, r4, #0
	bl sub_08028604
	b _080283FC
_080283B8:
	adds r0, r4, #0
	bl sub_080286CC
	cmp r0, #0
	beq _080283CE
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_080283CE:
	adds r0, r4, #0
	bl sub_080288A4
	cmp r0, #0
	beq _080283FC
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287E0
_080283FC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _08028414
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028418
	adds r0, r4, #0
	bl sub_08028754
	b _08028418
_08028414:
	adds r0, #1
	strb r0, [r4, #0xf]
_08028418:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}

	thumb_func_start sub_08028420
sub_08028420: @ 0x08028420
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802844C
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08028604
	b _08028462
_0802844C:
	adds r0, r4, #0
	bl sub_080286CC
	cmp r0, #0
	beq _08028462
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_08028462:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _0802847A
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802847E
	adds r0, r4, #0
	bl sub_08028754
	b _0802847E
_0802847A:
	adds r0, #1
	strb r0, [r4, #0xf]
_0802847E:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028488
sub_08028488: @ 0x08028488
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08028520
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	beq _080284D2
	cmp r1, #2
	ble _080284F0
	cmp r1, #3
	beq _080284B4
	cmp r1, #4
	beq _080284E6
	b _080284F0
_080284B4:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_08004488
	b _0802850A
_080284D2:
	strb r1, [r4, #0xc]
	strh r2, [r4, #0x24]
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x40
	b _08028508
_080284E6:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_080284F0:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r3]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x22
_08028508:
	strb r1, [r4, #0xe]
_0802850A:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080287E0
_08028520:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}

	thumb_func_start sub_08028528
sub_08028528: @ 0x08028528
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08028542
	strb r5, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028728
	b _08028600
_08028542:
	adds r0, r4, #0
	bl sub_080288C0
	ldr r1, _08028590 @ =gUnk_080CC944
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #6]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #7]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08028594
	movs r0, #0
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028784
	adds r1, r4, #0
	adds r1, #0x7b
	b _080285EE
	.align 2, 0
_08028590: .4byte gUnk_080CC944
_08028594:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _080285BC
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	adds r5, r0, #0
	ldrb r0, [r4, #0x15]
	adds r1, r5, #0
	bl sub_08028828
	cmp r0, #0
	beq _080285BC
	strb r5, [r4, #0x15]
_080285BC:
	ldrb r1, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080285D6
	movs r0, #0xf0
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFX
_080285D6:
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bne _080285EE
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080285EE:
	ldrb r0, [r1]
	cmp r0, #0x20
	bls _080285FA
	adds r0, r4, #0
	bl sub_080AEF88
_080285FA:
	adds r0, r4, #0
	bl sub_08004274
_08028600:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08028604
sub_08028604: @ 0x08028604
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4, #0xf]
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _080286B0
	bl sub_08000E50
	ldr r2, _08028650 @ =gUnk_080CC7BC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08028658
	bl sub_08000E50
	ldr r2, _08028654 @ =gUnk_080CC7D0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x18
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080286B8
	.align 2, 0
_08028650: .4byte gUnk_080CC7BC
_08028654: .4byte gUnk_080CC7D0
_08028658:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r5, r0, #0
	adds r6, r4, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0
	bne _08028684
	bl sub_08000E50
	ldr r2, _08028680 @ =gUnk_080CC7C0
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	b _080286A2
	.align 2, 0
_08028680: .4byte gUnk_080CC7C0
_08028684:
	bl sub_08000E50
	ldr r2, _080286AC @ =gUnk_080CC7C0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_080286A2:
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080286B8
	.align 2, 0
_080286AC: .4byte gUnk_080CC7C0
_080286B0:
	movs r0, #0xc
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
	ldrb r0, [r4, #0x15]
_080286B8:
	lsrs r5, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r5, r0
	beq _080286C8
	strb r5, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080287E0
_080286C8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080286CC
sub_080286CC: @ 0x080286CC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028724
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08028724
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _080286FC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl sub_0806FC80
	cmp r0, #0
	bne _08028720
_080286FC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _08028724
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	ldrb r5, [r5, #0x14]
	cmp r0, r5
	bne _08028724
_08028720:
	movs r0, #1
	b _08028726
_08028724:
	movs r0, #0
_08028726:
	pop {r4, r5, pc}

	thumb_func_start sub_08028728
sub_08028728: @ 0x08028728
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287B4
	adds r4, #0x82
	movs r0, #2
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08028754
sub_08028754: @ 0x08028754
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	movs r2, #0
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080287B4
	adds r4, #0x82
	movs r0, #3
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028784
sub_08028784: @ 0x08028784
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080287B4
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0xe]
	adds r4, #0x82
	movs r0, #4
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_080287B4
sub_080287B4: @ 0x080287B4
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	movs r0, #0
	strh r1, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080287E0
	pop {pc}

	thumb_func_start sub_080287E0
sub_080287E0: @ 0x080287E0
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x14]
	lsrs r2, r0, #1
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0802881E
	lsls r0, r0, #2
	ldr r1, _080287FC @ =_08028800
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080287FC: .4byte _08028800
_08028800: @ jump table
	.4byte _0802881E @ case 0
	.4byte _08028814 @ case 1
	.4byte _0802881C @ case 2
	.4byte _08028818 @ case 3
	.4byte _08028814 @ case 4
_08028814:
	adds r2, #4
	b _0802881E
_08028818:
	adds r2, #8
	b _0802881E
_0802881C:
	adds r2, #0xc
_0802881E:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_08028828
sub_08028828: @ 0x08028828
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r0, r3, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r4, #4
	ands r1, r2
	cmp r0, r1
	bne _08028852
	adds r0, r3, #5
	movs r1, #7
	ands r0, r1
	adds r2, r4, #5
	ands r2, r1
	cmp r0, #2
	bhi _08028852
	cmp r2, #2
	bhi _08028852
	movs r0, #1
	b _08028854
_08028852:
	movs r0, #0
_08028854:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028858
sub_08028858: @ 0x08028858
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080288C0
	ldr r1, _080288A0 @ =gUnk_080CC944
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #6]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #7]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028890
	strh r0, [r4, #0x24]
_08028890:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080288A0: .4byte gUnk_080CC944

	thumb_func_start sub_080288A4
sub_080288A4: @ 0x080288A4
	ldr r2, _080288BC @ =gUnk_080CC7D8
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r0, #0x2a]
	ldrh r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080288BC: .4byte gUnk_080CC7D8

	thumb_func_start sub_080288C0
sub_080288C0: @ 0x080288C0
	push {lr}
	mov ip, r0
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _08028908
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028908
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #9
	movs r3, #0
	strh r0, [r1]
	adds r2, #0x42
	ldrb r1, [r2]
	mov r0, ip
	adds r0, #0x42
	strb r1, [r0]
	strb r3, [r2]
_08028908:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802890C
sub_0802890C: @ 0x0802890C
	push {lr}
	ldr r1, _08028918 @ =gUnk_080CC9C8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08028918: .4byte gUnk_080CC9C8

	thumb_func_start sub_0802891C
sub_0802891C: @ 0x0802891C
	push {lr}
	ldr r2, _08028930 @ =gUnk_080CC9E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08028930: .4byte gUnk_080CC9E0

	thumb_func_start sub_08028934
sub_08028934: @ 0x08028934
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	bne _08028988
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x42
	bne _08028988
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080290E0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08028982
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
_08028982:
	ldr r0, _0802898C @ =0x000001BB
	bl sub_08004488
_08028988:
	pop {r4, pc}
	.align 2, 0
_0802898C: .4byte 0x000001BB

	thumb_func_start nullsub_140
nullsub_140: @ 0x08028990
	bx lr
	.align 2, 0

	thumb_func_start sub_08028994
sub_08028994: @ 0x08028994
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	movs r5, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	strb r5, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08028E9C
	ldr r0, [r4, #0x7c]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080289D4
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080289FC
_080289D4:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0802925C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E0
	b _08028A42
_080289FC:
	strb r5, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08028A44 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x76
	strh r1, [r0]
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	subs r1, #0x34
	movs r0, #0x41
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028FFC
_08028A42:
	pop {r4, r5, pc}
	.align 2, 0
_08028A44: .4byte gRoomControls

	thumb_func_start sub_08028A48
sub_08028A48: @ 0x08028A48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08028A5A
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08028A72
_08028A5A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08028F98
	cmp r0, #0
	beq _08028A72
	adds r0, r4, #0
	bl sub_08029078
	strb r5, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
_08028A72:
	pop {r4, r5, pc}

	thumb_func_start sub_08028A74
sub_08028A74: @ 0x08028A74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bls _08028A84
	b _08028BA6
_08028A84:
	lsls r0, r0, #2
	ldr r1, _08028A90 @ =_08028A94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08028A90: .4byte _08028A94
_08028A94: @ jump table
	.4byte _08028AA8 @ case 0
	.4byte _08028ACA @ case 1
	.4byte _08028B1A @ case 2
	.4byte _08028B54 @ case 3
	.4byte _08028B76 @ case 4
_08028AA8:
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	strb r6, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	b _08028B6C
_08028ACA:
	movs r6, #1
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08028AF6
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #2
	bl sub_080290E0
	b _08028BA6
_08028AF6:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08028BA6
	adds r0, r4, #0
	bl sub_08028FDC
	cmp r0, #0
	beq _08028B14
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
_08028B14:
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08028BA6
_08028B1A:
	movs r6, #1
	adds r0, r4, #0
	bl sub_080290FC
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08028BA6
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08028BA6
_08028B54:
	movs r6, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
_08028B6C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
	b _08028BA6
_08028B76:
	movs r6, #2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028BA6
	adds r0, r4, #0
	movs r1, #0
	bl sub_08028F98
	adds r5, r0, #0
	cmp r5, #0
	beq _08028BB4
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	b _08028BC2
_08028BA6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08028F98
	adds r5, r0, #0
	cmp r5, #0
	bne _08028BC2
_08028BB4:
	adds r0, r4, #0
	bl sub_08028FFC
	strb r5, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
_08028BC2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08028BC4
sub_08028BC4: @ 0x08028BC4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08028BD4
	cmp r0, #1
	beq _08028C14
	b _08028C76
_08028BD4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08028C0E
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028C76
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #5
	bl sub_080290E0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08028C76
_08028C0E:
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08028C76
_08028C14:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028C76
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #5
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080290E0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r2, r0, #0
	cmp r2, #0
	beq _08028C66
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x36]
	subs r0, #0xc
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #2
	bl sub_0805E3A0
_08028C66:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	adds r0, r4, #0
	bl sub_0802925C
_08028C76:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}

	thumb_func_start sub_08028C84
sub_08028C84: @ 0x08028C84
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028CD2
	movs r0, #0x30
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r5, r0, #0
	cmp r5, #0
	beq _08028CB4
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08028CD2
	adds r0, r4, #0
	bl sub_0804AA1C
	b _08028CD2
_08028CB4:
	adds r0, r4, #0
	bl sub_08028FDC
	adds r1, r4, #0
	adds r1, #0x80
	cmp r0, #0
	bne _08028CC8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08028CD2
_08028CC8:
	strb r5, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E0
_08028CD2:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08028F0C
	pop {r4, r5, pc}
	.align 2, 0
