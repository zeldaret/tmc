	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080327F4
sub_080327F4: @ 0x080327F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803280C @ =gUnk_080CE978
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803280C: .4byte gUnk_080CE978

	thumb_func_start sub_08032810
sub_08032810: @ 0x08032810
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08032840 @ =gUnk_080CE990
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803283C
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803283C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0803283C:
	pop {r4, pc}
	.align 2, 0
_08032840: .4byte gUnk_080CE990

	thumb_func_start sub_08032844
sub_08032844: @ 0x08032844
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080328AE
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08032896
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r3, #0x10
	strb r3, [r4, #0xf]
	ldrb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08032886
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08032882
	adds r0, r2, #2
	b _08032884
_08032882:
	subs r0, r2, #2
_08032884:
	strb r0, [r4, #0x15]
_08032886:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	subs r0, r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08032AF4
	b _080328AE
_08032896:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080328AE
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080328AE:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080328B8
sub_080328B8: @ 0x080328B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080328FC @ =gUnk_080CE9A4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080328F8
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08032AF4
_080328F8:
	pop {r4, pc}
	.align 2, 0
_080328FC: .4byte gUnk_080CE9A4

	thumb_func_start sub_08032900
sub_08032900: @ 0x08032900
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803290C
sub_0803290C: @ 0x0803290C
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08032914
sub_08032914: @ 0x08032914
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08032926
	adds r0, r4, #0
	bl sub_0804A7D4
_08032926:
	pop {r4, pc}

	thumb_func_start sub_08032928
sub_08032928: @ 0x08032928
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	strb r5, [r6, #0xc]
	strb r4, [r6, #0xf]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r5, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldrh r1, [r6, #0x2e]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r6, #0x32]
	adds r1, r6, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r6, #0
	bl sub_08032AF4
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803298C
sub_0803298C: @ 0x0803298C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08032AB0
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _080329E2
	ldr r5, _080329E4 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x88
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _080329E2
	ldr r0, [r5]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	adds r0, #8
	cmp r1, r0
	ble _080329E2
	movs r1, #0
	movs r2, #2
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x81
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_08032AF4
_080329E2:
	pop {r4, r5, pc}
	.align 2, 0
_080329E4: .4byte gUnk_020000B0

	thumb_func_start sub_080329E8
sub_080329E8: @ 0x080329E8
	push {lr}
	bl sub_08032B38
	pop {pc}

	thumb_func_start sub_080329F0
sub_080329F0: @ 0x080329F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08032A3A
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x36]
	adds r0, #8
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
	b _08032A46
_08032A3A:
	adds r0, r4, #0
	bl sub_08032B10
	adds r0, r4, #0
	bl sub_08004274
_08032A46:
	pop {r4, pc}

	thumb_func_start sub_08032A48
sub_08032A48: @ 0x08032A48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _08032AAE
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_08032AF4
_08032AAE:
	pop {r4, r5, pc}

	thumb_func_start sub_08032AB0
sub_08032AB0: @ 0x08032AB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032AF0
	ldrb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _08032AD6
	strb r0, [r4, #0x15]
_08032AD6:
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r2, [r5]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #0x15]
	ands r0, r2
	cmp r1, r0
	beq _08032AF0
	adds r0, r4, #0
	bl sub_08032AF4
_08032AF0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08032AF4
sub_08032AF4: @ 0x08032AF4
	push {lr}
	ldrb r2, [r0, #0x15]
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	adds r2, r0, #0
	adds r2, #0x81
	ldrb r2, [r2]
	adds r1, r1, r2
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032B10
sub_08032B10: @ 0x08032B10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	pop {r4, pc}

	thumb_func_start sub_08032B38
sub_08032B38: @ 0x08032B38
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x84
	ldrb r0, [r2]
	cmp r0, #1
	beq _08032B88
	cmp r0, #1
	bgt _08032B50
	cmp r0, #0
	beq _08032B56
	b _08032C6A
_08032B50:
	cmp r0, #2
	beq _08032BB2
	b _08032C6A
_08032B56:
	ldrb r1, [r5, #0xe]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B68
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r5, #0x36]
_08032B68:
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C6A
	strb r3, [r2]
	movs r0, #0x18
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #2
	b _08032BA8
_08032B88:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C6A
	movs r0, #2
	strb r0, [r2]
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #4
_08032BA8:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08032AF4
	b _08032C6A
_08032BB2:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #0
	bne _08032BF4
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r3, [r2]
	strb r3, [r5, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldrb r2, [r5, #0x15]
	adds r0, r2, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032BEC
	movs r0, #0x10
	subs r0, r0, r2
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_08032BEC:
	adds r0, r5, #0
	bl sub_08032AF4
	b _08032C64
_08032BF4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C64
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x80
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r3, [r5, #0x15]
	adds r0, r3, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032C46
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _08032C3E
	ands r3, r0
	cmp r3, #0
	beq _08032C3A
	movs r0, #0x12
	b _08032C3C
_08032C3A:
	movs r0, #0xe
_08032C3C:
	strb r0, [r4]
_08032C3E:
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	movs r0, #1
	strh r0, [r6]
_08032C46:
	ldrb r2, [r4]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	lsls r1, r1, #0x18
	ldrb r2, [r5, #0x15]
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x1c
	cmp r1, r0
	beq _08032C64
	adds r1, r2, #4
	adds r0, r5, #0
	bl UpdateSprite
_08032C64:
	adds r0, r5, #0
	bl sub_08032B10
_08032C6A:
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, r6, pc}
	.align 2, 0
