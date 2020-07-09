	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Pesto
Pesto: @ 0x08023F28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08023F40 @ =gUnk_080CBEC4
	bl GetNextFunction
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
	bl GetNextFrame
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
	bl GetNextFrame
	pop {pc}

	thumb_func_start sub_08024048
sub_08024048: @ 0x08024048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F4E8
	adds r0, r4, #0
	bl GetNextFrame
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
	bl GetNextFrame
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
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A29BC
	pop {r4, pc}

	thumb_func_start sub_080240B8
sub_080240B8: @ 0x080240B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl Random
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
	bl CheckIsDungeon
	cmp r0, #0
	beq _08024150
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
_08024150:
	bl Random
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
	ldr r0, _08024218 @ =gLinkState
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
_08024218: .4byte gLinkState
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
	bl GetFacingDirection
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
	bl GetFacingDirection
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
	ldr r2, _080246E0 @ =gLinkState
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
_080246E0: .4byte gLinkState
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
	bl CopyPosition
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
	bl CopyPosition
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
	bl SetTile
	adds r0, r4, #0
	bl DeleteEntity
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
	bl Random
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
	bl CheckIsDungeon
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
	bl GetNextFrame
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
	bl InitializeAnimation
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
	bl InitializeAnimation
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
	bl GetFacingDirection
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
	bl GetFacingDirection
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
	bl GetFacingDirection
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
	bl Random
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
	ldr r0, _08024B0C @ =gLinkState
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
_08024B0C: .4byte gLinkState
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
	ldr r0, _08024B5C @ =gLinkState
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
_08024B5C: .4byte gLinkState
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
	bl GetNextFrame
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
	bl Random
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
	bl Random
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
	bl Random
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
	bl Random
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
	ldr r2, _08024F4C @ =gLinkState
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
_08024F4C: .4byte gLinkState

	thumb_func_start sub_08024F50
sub_08024F50: @ 0x08024F50
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08024FDC @ =gLinkState
	movs r4, #0
	strb r4, [r2, #0xa]
	ldr r0, [r2, #0x30]
	ldr r1, _08024FE0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r5, _08024FE4 @ =gLinkEntity
	adds r0, r6, #0
	adds r1, r5, #0
	bl CopyPosition
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
_08024FDC: .4byte gLinkState
_08024FE0: .4byte 0xFFFFFEFF
_08024FE4: .4byte gLinkEntity
