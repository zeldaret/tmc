	thumb_func_start PlayerItemBomb
PlayerItemBomb: @ 0x0801B188
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801B1E0 @ =gUnk_080B77C8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r2, [r4, #0xc]
	cmp r2, #3
	beq _0801B24E
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0801B1E4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B1BC
	subs r0, r1, #1
	strb r0, [r4, #0xe]
_0801B1BC:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _0801B24E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	str r1, [r4, #0x68]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0801B24E
	.align 2, 0
_0801B1E0: .4byte gUnk_080B77C8
_0801B1E4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801B24E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0801B248
	cmp r2, #2
	bne _0801B204
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0801B204
	ldr r0, _0801B244 @ =gPlayerState
	strb r1, [r0, #5]
_0801B204:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3c
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0805EC60
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r0, r4, #0
	bl sub_0801B418
	b _0801B24E
	.align 2, 0
_0801B244: .4byte gPlayerState
_0801B248:
	adds r0, r4, #0
	bl sub_0801B3A4
_0801B24E:
	pop {r4, pc}

	thumb_func_start sub_0801B250
sub_0801B250: @ 0x0801B250
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0xa]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801B28A
	movs r0, #0x3c
	b _0801B29C
_0801B28A:
	cmp r0, #0xfe
	bne _0801B29A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2, #0xa]
	b _0801B29E
_0801B29A:
	movs r0, #0x96
_0801B29C:
	strb r0, [r2, #0xe]
_0801B29E:
	ldr r0, _0801B2BC @ =gUnk_080B77F4
	str r0, [r2, #0x48]
	movs r0, #0
	strb r0, [r2, #0x16]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B2C0
	adds r0, r2, #0
	movs r1, #5
	bl InitializeAnimation
	b _0801B2C8
	.align 2, 0
_0801B2BC: .4byte gUnk_080B77F4
_0801B2C0:
	adds r0, r2, #0
	movs r1, #0x15
	bl InitializeAnimation
_0801B2C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B2CC
sub_0801B2CC: @ 0x0801B2CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0801B2DE
	adds r0, r4, #0
	bl sub_08078930
_0801B2DE:
	movs r0, #8
	bl IsItemEquipped
	cmp r0, #1
	beq _0801B2F6
	cmp r0, #1
	blo _0801B2F2
	cmp r0, #2
	beq _0801B2FA
	b _0801B2FC
_0801B2F2:
	movs r5, #1
	b _0801B2FC
_0801B2F6:
	movs r5, #2
	b _0801B2FC
_0801B2FA:
	movs r5, #0
_0801B2FC:
	ldr r0, _0801B314 @ =gPlayerState
	adds r0, #0x92
	ldrh r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _0801B310
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0801B310:
	pop {r4, r5, pc}
	.align 2, 0
_0801B314: .4byte gPlayerState

	thumb_func_start sub_0801B318
sub_0801B318: @ 0x0801B318
	push {lr}
	ldr r2, _0801B32C @ =gUnk_080B77D8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801B32C: .4byte gUnk_080B77D8

	thumb_func_start sub_0801B330
sub_0801B330: @ 0x0801B330
	push {lr}
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	bl sub_08079BD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B340
sub_0801B340: @ 0x0801B340
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B354
sub_0801B354: @ 0x0801B354
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B368
sub_0801B368: @ 0x0801B368
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	cmp r0, #0x3c
	bls _0801B380
	movs r0, #0x3c
	strb r0, [r2, #0xe]
_0801B380:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B384
sub_0801B384: @ 0x0801B384
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_0801B38C
sub_0801B38C: @ 0x0801B38C
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0801B3A0
	bl DeleteThisEntity
_0801B3A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B3A4
sub_0801B3A4: @ 0x0801B3A4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r5, #8
	cmp r0, #0x28
	bhi _0801B3F4
	movs r5, #4
	ldr r1, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B3C4
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B3C8
_0801B3C4:
	adds r0, r1, #0
	adds r0, #0x10
_0801B3C8:
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	movs r2, #0xf0
	adds r0, r1, #0
	ands r0, r2
	subs r0, #1
	cmp r0, #0x7f
	bls _0801B3E0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r1, r0
	str r1, [r4, #0x68]
_0801B3E0:
	ldr r0, [r4, #0x68]
	ands r0, r2
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0801B3F4:
	ldrb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0801B408
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _0801B416
_0801B408:
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
_0801B416:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B418
sub_0801B418: @ 0x0801B418
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r6, #0x10
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, sb
_0801B42C:
	movs r4, #0x10
	adds r7, r6, #0
	subs r7, #0x10
_0801B432:
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	adds r2, r2, r4
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	adds r3, r3, r6
	adds r0, r5, #0
	movs r1, #3
	bl sub_08008796
	subs r4, #0x10
	cmp r4, r8
	bge _0801B432
	adds r6, r7, #0
	cmp r6, sb
	bge _0801B42C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
