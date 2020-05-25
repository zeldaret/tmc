	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0806FA6C
sub_0806FA6C: @ 0x0806FA6C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x62
	ldrb r2, [r2]
	adds r3, r1, #0
	adds r3, #0x62
	strb r2, [r3]
	adds r2, r0, #0
	adds r2, #0x63
	ldrb r2, [r2]
	adds r3, #1
	strb r2, [r3]
	movs r2, #0
	movs r3, #0
	bl PositionRelative
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806FA90
sub_0806FA90: @ 0x0806FA90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0x62
	ldrb r4, [r4]
	movs r5, #0x62
	strb r4, [r5, r1]
	adds r4, r0, #0
	adds r4, #0x63
	ldrb r4, [r4]
	movs r5, #0x63
	strb r4, [r5, r1]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {r4, r5, pc}

	thumb_func_start sub_0806FAB0
sub_0806FAB0: @ 0x0806FAB0
	ldr r2, _0806FAD4 @ =gUnk_08114F78
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x29
	movs r2, #7
	ands r2, r0
	ldrb r3, [r1]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0806FAD4: .4byte gUnk_08114F78

	thumb_func_start sub_0806FAD8
sub_0806FAD8: @ 0x0806FAD8
	ldr r2, _0806FAFC @ =gUnk_08114F80
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x29
	movs r2, #7
	ands r2, r0
	ldrb r3, [r1]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0806FAFC: .4byte gUnk_08114F80

	thumb_func_start sub_0806FB00
sub_0806FB00: @ 0x0806FB00
	push {r4, lr}
	mov ip, r0
	adds r4, r1, #0
	cmp r3, #0
	bne _0806FB0C
	movs r3, #1
_0806FB0C:
	mov r1, ip
	adds r1, #0x7e
	movs r0, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x7f
	strb r3, [r0]
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	adds r0, #0x80
	strh r1, [r0]
	mov r1, ip
	ldrh r0, [r1, #0x32]
	adds r1, #0x82
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x84
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806FB38
sub_0806FB38: @ 0x0806FB38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x7e
	adds r7, r5, #0
	adds r7, #0x7f
	ldrb r0, [r6]
	ldrb r1, [r7]
	cmp r0, r1
	bhs _0806FBA0
	adds r0, #1
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x84
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r5, #0
	adds r4, #0x80
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r1, r1, r0
	ldrb r0, [r6]
	muls r0, r1, r0
	lsls r0, r0, #8
	ldrb r1, [r7]
	bl __divsi3
	asrs r0, r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
	adds r0, r5, #0
	adds r0, #0x86
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r5, #0
	adds r4, #0x82
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r1, r1, r0
	ldrb r0, [r6]
	muls r0, r1, r0
	lsls r0, r0, #8
	ldrb r1, [r7]
	bl __divsi3
	asrs r0, r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	movs r0, #0
	b _0806FBB2
_0806FBA0:
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r0, [r0]
	strh r0, [r5, #0x2e]
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r5, #0x32]
	movs r0, #1
_0806FBB2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0806FBB4
sub_0806FBB4: @ 0x0806FBB4
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806FBD0 @ =gUnk_030010A0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0806FBC8
	ldr r0, _0806FBD4 @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0806FBCC
_0806FBC8:
	movs r0, #6
	strb r0, [r1, #0xd]
_0806FBCC:
	pop {pc}
	.align 2, 0
_0806FBD0: .4byte gUnk_030010A0
_0806FBD4: .4byte gUnk_03003F80

	thumb_func_start sub_0806FBD8
sub_0806FBD8: @ 0x0806FBD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBEC
	movs r0, #0xc
	bl sub_0801D8E0
	str r0, [r4, #0x48]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806FBEC
sub_0806FBEC: @ 0x0806FBEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_0801DA0C
	movs r0, #0
	str r0, [r4, #0x48]
	pop {r4, pc}

	thumb_func_start sub_0806FBFC
sub_0806FBFC: @ 0x0806FBFC
	push {r4, r5, r6, lr}
	adds r5, r3, #0
	ldr r4, _0806FC20 @ =gLinkEntity
	movs r6, #0x2e
	ldrsh r3, [r4, r6]
	subs r3, r3, r0
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	subs r0, r0, r1
	movs r1, #0
	cmp r3, r2
	bhs _0806FC1A
	cmp r0, r5
	bhs _0806FC1A
	movs r1, #1
_0806FC1A:
	adds r0, r1, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806FC20: .4byte gLinkEntity

	thumb_func_start sub_0806FC24
sub_0806FC24: @ 0x0806FC24
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _0806FC44 @ =gUnk_080046A4
	bl sub_08007DD6
	cmp r0, #0
	beq _0806FC4C
	lsls r0, r0, #3
	ldr r1, _0806FC48 @ =gUnk_080047F6
	adds r0, r0, r1
	ldrh r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	b _0806FC4E
	.align 2, 0
_0806FC44: .4byte gUnk_080046A4
_0806FC48: .4byte gUnk_080047F6
_0806FC4C:
	movs r0, #0
_0806FC4E:
	pop {r4, pc}

	thumb_func_start sub_0806FC50
sub_0806FC50: @ 0x0806FC50
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _0806FC74 @ =gUnk_080046A4
	bl sub_08007DD6
	cmp r0, #0
	beq _0806FC70
	ldr r1, _0806FC78 @ =gUnk_080047F6
	lsls r0, r0, #3
	adds r2, r0, r1
	ldrh r0, [r2]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806FC7C
_0806FC70:
	movs r0, #0
	b _0806FC7E
	.align 2, 0
_0806FC74: .4byte gUnk_080046A4
_0806FC78: .4byte gUnk_080047F6
_0806FC7C:
	adds r0, r2, #0
_0806FC7E:
	pop {r4, pc}

	thumb_func_start sub_0806FC80
sub_0806FC80: @ 0x0806FC80
	push {r4, r5, lr}
	lsls r4, r2, #4
	movs r2, #0x2e
	ldrsh r3, [r1, r2]
	movs r5, #0x32
	ldrsh r2, [r1, r5]
	adds r1, r3, #0
	bl sub_080041DC
	cmp r4, r0
	bhs _0806FC9A
	movs r0, #0
	b _0806FC9C
_0806FC9A:
	movs r0, #1
_0806FC9C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806FCA0
sub_0806FCA0: @ 0x0806FCA0
	push {lr}
	bl sub_080045C4
	bl sub_0806F5A4
	pop {pc}

	thumb_func_start sub_0806FCAC
sub_0806FCAC: @ 0x0806FCAC
	push {lr}
	bl sub_080045C4
	bl sub_0806F5B0
	pop {pc}

	thumb_func_start sub_0806FCB8
sub_0806FCB8: @ 0x0806FCB8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	subs r0, r0, r1
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	subs r1, r1, r2
	adds r2, r3, #0
	bl sub_0806FCD0
	pop {r4, r5, pc}

	thumb_func_start sub_0806FCD0
sub_0806FCD0: @ 0x0806FCD0
	push {r4, lr}
	movs r3, #0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	adds r4, r0, #0
	muls r4, r0, r4
	adds r0, r4, #0
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	cmp r2, r0
	blt _0806FCEE
	movs r3, #1
_0806FCEE:
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806FCF4
sub_0806FCF4: @ 0x0806FCF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	movs r2, #0
	cmp r1, #0
	bge _0806FD04
	rsbs r1, r1, #0
_0806FD04:
	cmp r4, #0
	beq _0806FD1A
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r1, r0, #0
	adds r0, r4, #0
	muls r0, r1, r0
	lsrs r1, r0, #8
	subs r2, r4, r1
_0806FD1A:
	cmp r5, #0
	beq _0806FD22
	cmp r5, #3
	bne _0806FD24
_0806FD22:
	rsbs r2, r2, #0
_0806FD24:
	cmp r5, #0
	beq _0806FD2C
	cmp r5, #2
	bne _0806FD32
_0806FD2C:
	adds r0, r6, #0
	adds r0, #0x63
	b _0806FD36
_0806FD32:
	adds r0, r6, #0
	adds r0, #0x62
_0806FD36:
	strb r2, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806FD3C
sub_0806FD3C: @ 0x0806FD3C
	ldrb r2, [r0, #0x18]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0806FD54
sub_0806FD54: @ 0x0806FD54
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0806FD6C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0806FD70
	movs r0, #0
	b _0806FD84
	.align 2, 0
_0806FD6C: .4byte gUnk_03003F80
_0806FD70:
	ldr r0, _0806FD88 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r4, #0x32
	ldrsh r2, [r0, r4]
	subs r2, #9
	adds r0, r3, #0
	movs r3, #0x48
	bl sub_0806FCB8
_0806FD84:
	pop {r4, pc}
	.align 2, 0
_0806FD88: .4byte gLinkEntity

	thumb_func_start sub_0806FD8C
sub_0806FD8C: @ 0x0806FD8C
	push {lr}
	ldr r0, _0806FD9C @ =gUnk_020000C0
	movs r1, #0xc0
	lsls r1, r1, #4
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_0806FD9C: .4byte gUnk_020000C0

	thumb_func_start sub_0806FDA0
sub_0806FDA0: @ 0x0806FDA0
	push {r4, lr}
	movs r3, #1
	ldr r1, _0806FDD8 @ =gUnk_020000C0
	movs r4, #0xff
	movs r2, #0x61
	adds r2, r2, r1
	mov ip, r2
	adds r2, r1, #0
	adds r2, #0x40
	adds r1, r0, #0
	adds r1, #0x28
_0806FDB6:
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0806FDDC
	strb r3, [r1]
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r2, #1]
	strb r4, [r2, #0x11]
	mov r0, ip
	strb r4, [r0]
	strb r4, [r0, #0x10]
	movs r0, #1
	b _0806FDEA
	.align 2, 0
_0806FDD8: .4byte gUnk_020000C0
_0806FDDC:
	movs r0, #0x40
	add ip, r0
	adds r2, #0x40
	adds r3, #1
	cmp r3, #0x2f
	bls _0806FDB6
	movs r0, #0
_0806FDEA:
	pop {r4, pc}

	thumb_func_start sub_0806FDEC
sub_0806FDEC: @ 0x0806FDEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_0806FDA0
	cmp r0, #0
	bne _0806FE02
	movs r0, #0
	b _0806FE74
_0806FE02:
	adds r0, r6, #0
	bl sub_0801D230
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #6
	ldr r1, _0806FE7C @ =gUnk_020000C0
	adds r5, r0, r1
	movs r7, #0
	ldrh r1, [r4, #2]
	ldr r0, _0806FE80 @ =0x000003FF
	ands r0, r1
	movs r1, #0x27
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _0806FE6C
_0806FE26:
	ldr r1, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	adds r0, r6, #0
	bl sub_0801D040
	adds r2, r0, #0
	ldr r3, [r4]
	lsls r1, r3, #6
	lsrs r1, r1, #0x16
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x1a
	adds r0, r5, #0
	bl sub_0806FEE8
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806FE56
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0806FEFC
_0806FE56:
	adds r5, #0x10
	adds r4, #4
	adds r7, #1
	cmp r7, #3
	bhi _0806FE6C
	ldrh r1, [r4, #2]
	ldr r2, _0806FE80 @ =0x000003FF
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0806FE26
_0806FE6C:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #1
_0806FE74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806FE7C: .4byte gUnk_020000C0
_0806FE80: .4byte 0x000003FF

	thumb_func_start sub_0806FE84
sub_0806FE84: @ 0x0806FE84
	push {r4, r5, r6, lr}
	adds r0, #0x28
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	subs r0, r2, #1
	cmp r0, #0x7e
	bhi _0806FEB4
	lsls r1, r2, #6
	ldr r0, _0806FEB8 @ =gUnk_020000C0
	adds r6, r1, r0
	movs r5, #0
	adds r4, r6, #0
_0806FE9E:
	ldrb r0, [r4, #5]
	bl sub_0801D244
	adds r4, #0x10
	adds r5, #1
	cmp r5, #3
	bls _0806FE9E
	adds r0, r6, #0
	movs r1, #0x40
	bl sub_0801D630
_0806FEB4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806FEB8: .4byte gUnk_020000C0

	thumb_func_start sub_0806FEBC
sub_0806FEBC: @ 0x0806FEBC
	adds r0, #0x28
	ldrb r3, [r0]
	lsls r3, r3, #6
	lsls r1, r1, #4
	ldr r0, _0806FEE4 @ =gUnk_020000C0
	adds r1, r1, r0
	adds r3, r3, r1
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r2, [r3, #0xc]
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	bx lr
	.align 2, 0
_0806FEE4: .4byte gUnk_020000C0

	thumb_func_start sub_0806FEE8
sub_0806FEE8: @ 0x0806FEE8
	strb r3, [r0, #8]
	strh r1, [r0, #2]
	strb r2, [r0, #5]
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0806FEFC
sub_0806FEFC: @ 0x0806FEFC
	adds r1, #0x60
	ldrh r1, [r1]
	ldrb r2, [r0, #8]
	adds r1, r1, r2
	strh r1, [r0, #0xa]
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0806FF10
sub_0806FF10: @ 0x0806FF10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	adds r0, #0x28
	ldrb r2, [r0]
	lsls r2, r2, #6
	lsls r1, r1, #4
	ldr r0, _0806FF44 @ =gUnk_020000C0
	adds r1, r1, r0
	adds r4, r2, r1
	adds r0, r5, #0
	bl sub_0801D108
	ldrb r1, [r4, #5]
	cmp r1, r0
	beq _0806FF40
	adds r0, r1, #0
	bl sub_0801D244
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801D040
	strb r0, [r4, #5]
_0806FF40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806FF44: .4byte gUnk_020000C0

	thumb_func_start sub_0806FF48
sub_0806FF48: @ 0x0806FF48
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #6
	lsls r1, r1, #4
	ldr r3, _0806FF5C @ =gUnk_020000C0
	adds r1, r1, r3
	adds r0, r0, r1
	strb r2, [r0, #4]
	bx lr
	.align 2, 0
_0806FF5C: .4byte gUnk_020000C0

	thumb_func_start sub_0806FF60
sub_0806FF60: @ 0x0806FF60
	push {lr}
	adds r3, r2, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #6
	ldr r2, _0806FF84 @ =gUnk_020000C0
	adds r0, r0, r2
	lsls r1, r1, #4
	adds r2, r0, r1
	ldrb r0, [r2, #1]
	cmp r0, r3
	beq _0806FF82
	strb r3, [r2, #1]
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806FF82:
	pop {pc}
	.align 2, 0
_0806FF84: .4byte gUnk_020000C0

	thumb_func_start sub_0806FF88
sub_0806FF88: @ 0x0806FF88
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r0, #0x28
	ldrb r4, [r0]
	lsls r4, r4, #6
	ldr r0, _0806FFB8 @ =gUnk_020000C0
	adds r4, r4, r0
	lsls r5, r5, #4
	adds r5, r4, r5
	lsls r2, r2, #4
	adds r4, r4, r2
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #1]
	bl sub_080700C8
	ldrb r1, [r5, #6]
	ldrb r2, [r0]
	adds r1, r1, r2
	strb r1, [r4, #6]
	ldrb r1, [r5, #7]
	ldrb r0, [r0, #1]
	adds r1, r1, r0
	strb r1, [r4, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0806FFB8: .4byte gUnk_020000C0

	thumb_func_start sub_0806FFBC
sub_0806FFBC: @ 0x0806FFBC
	push {r4, lr}
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #6
	lsls r1, r1, #4
	ldr r4, _0806FFD4 @ =gUnk_020000C0
	adds r1, r1, r4
	adds r0, r0, r1
	strb r2, [r0, #6]
	strb r3, [r0, #7]
	pop {r4, pc}
	.align 2, 0
_0806FFD4: .4byte gUnk_020000C0

	thumb_func_start sub_0806FFD8
sub_0806FFD8: @ 0x0806FFD8
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r0, #0x28
	ldrb r4, [r0]
	lsls r4, r4, #6
	ldr r0, _08070008 @ =gUnk_020000C0
	adds r4, r4, r0
	lsls r5, r5, #4
	adds r5, r4, r5
	lsls r2, r2, #4
	adds r4, r4, r2
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #1]
	bl sub_080700C8
	ldrb r1, [r5, #6]
	ldrb r2, [r0, #2]
	adds r1, r1, r2
	strb r1, [r4, #6]
	ldrb r1, [r5, #7]
	ldrb r0, [r0, #3]
	adds r1, r1, r0
	strb r1, [r4, #7]
	pop {r4, r5, pc}
	.align 2, 0
_08070008: .4byte gUnk_020000C0

	thumb_func_start sub_0807000C
sub_0807000C: @ 0x0807000C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x28
	ldrb r4, [r7]
	lsls r4, r4, #6
	ldr r0, _08070074 @ =gUnk_020000C0
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807007C
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0807007C
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807007C
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #3
	bl sub_0807007C
	orrs r5, r0
	cmp r5, #0
	beq _08070072
	ldr r3, _08070078 @ =gUnk_02024490
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r7]
	strb r1, [r0, #7]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r0, #4]
	movs r1, #0xf
	ands r1, r2
	movs r2, #0x30
	orrs r1, r2
	strb r1, [r0, #4]
_08070072:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08070074: .4byte gUnk_020000C0
_08070078: .4byte gUnk_02024490

	thumb_func_start sub_0807007C
sub_0807007C: @ 0x0807007C
	push {lr}
	lsls r1, r1, #4
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080700C4
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080700C4
	ldrb r0, [r2, #1]
	cmp r0, #0xff
	beq _080700C4
	ldrh r0, [r2, #2]
	lsls r0, r0, #4
	ldr r1, _080700C0 @ =gUnk_080029B4
	adds r3, r0, r1
	ldr r1, [r3, #4]
	cmp r1, #0
	beq _080700C4
	ldrb r0, [r2, #1]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r1, [r2, #9]
	ldrh r1, [r0, #2]
	lsls r1, r1, #5
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	movs r0, #1
	b _080700C6
	.align 2, 0
_080700C0: .4byte gUnk_080029B4
_080700C4:
	movs r0, #0
_080700C6:
	pop {pc}

	thumb_func_start sub_080700C8
sub_080700C8: @ 0x080700C8
	lsls r0, r0, #1
	ldr r2, _080700E4 @ =gUnk_089FB780
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r2, #0x10
	adds r0, r0, r2
	adds r1, r0, r1
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r2]
	adds r0, r1, r0
	bx lr
	.align 2, 0
_080700E4: .4byte gUnk_089FB780

	thumb_func_start sub_080700E8
sub_080700E8: @ 0x080700E8
	push {lr}
	ldr r2, _080700FC @ =gUnk_0811B98C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080700FC: .4byte gUnk_0811B98C

	thumb_func_start sub_08070100
sub_08070100: @ 0x08070100
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #0x40
	str r0, [r5, #0x74]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	ldr r2, _0807017C @ =gLinkEntity
	ldr r1, _08070180 @ =gUnk_0811B9A0
	ldrb r0, [r5, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r4, [r2, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
	ldrb r0, [r5, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x8a
	strb r0, [r1]
	ldr r0, _08070184 @ =gUnk_0811B9D0
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _08070188
	strb r3, [r5, #0xa]
	b _0807018C
	.align 2, 0
_0807017C: .4byte gLinkEntity
_08070180: .4byte gUnk_0811B9A0
_08070184: .4byte gUnk_0811B9D0
_08070188:
	movs r0, #0
	strb r0, [r5, #0xa]
_0807018C:
	ldrb r1, [r2, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r5, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x14]
	lsrs r3, r3, #1
	lsls r3, r3, #3
	ldr r0, _080701F0 @ =gUnk_0811B9A8
	adds r3, r3, r0
	ldrb r1, [r3]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r3, #1]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r3, #4]
	adds r4, r5, #0
	adds r4, #0x58
	strb r0, [r4]
	movs r0, #2
	ldrsb r0, [r3, r0]
	str r0, [r5, #0x6c]
	movs r0, #3
	ldrsb r0, [r3, r0]
	str r0, [r5, #0x70]
	adds r0, r5, #0
	bl sub_0801766C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, _080701F4 @ =0x000001DD
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_080701F0: .4byte gUnk_0811B9A8
_080701F4: .4byte 0x000001DD

	thumb_func_start sub_080701F8
sub_080701F8: @ 0x080701F8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08070244 @ =gUnk_0811B9C8
	ldrb r1, [r5, #0x14]
	adds r2, r1, r0
	movs r6, #0
	ldrsb r6, [r2, r6]
	adds r1, #1
	adds r1, r1, r0
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08008782
	adds r4, r0, #0
	cmp r4, #0
	beq _08070248
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #2]
	movs r0, #0x53
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08070260
	ldrb r0, [r4, #3]
	strb r0, [r1, #0xe]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r6
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #0x32]
	adds r0, r0, r7
	strh r0, [r1, #0x32]
	b _08070260
	.align 2, 0
_08070244: .4byte gUnk_0811B9C8
_08070248:
	ldr r0, [r5, #0x74]
	subs r0, #1
	str r0, [r5, #0x74]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08070260
	ldr r0, [r5, #0x78]
	subs r0, #1
	str r0, [r5, #0x78]
	cmp r0, r1
	bne _08070268
_08070260:
	adds r0, r5, #0
	bl sub_08070458
	b _0807037A
_08070268:
	adds r0, r5, #0
	bl sub_08004274
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08070280
	adds r0, r5, #0
	bl sub_0800451C
_08070280:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _08070354 @ =gUnk_03000BF0
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _08070358 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _0807036A
	ldr r1, _0807035C @ =gUnk_08003E44
	movs r3, #0x2e
	ldrsh r2, [r5, r3]
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	adds r0, r5, #0
	bl sub_080040D8
	cmp r0, #0
	bne _08070364
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0x19
	bne _0807036A
	movs r0, #4
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrh r2, [r5, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	ands r1, r0
	orrs r1, r2
	strh r1, [r5, #0x32]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	movs r1, #0x14
	bl sub_08004260
	ldr r0, _08070360 @ =0x00004020
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	ldrh r2, [r7, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	ldrh r3, [r7, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r4]
	bl sub_0800015E
	b _0807037A
	.align 2, 0
_08070354: .4byte gUnk_03000BF0
_08070358: .4byte gLinkEntity
_0807035C: .4byte gUnk_08003E44
_08070360: .4byte 0x00004020
_08070364:
	adds r0, r5, #0
	bl sub_08070458
_0807036A:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807037A
	adds r0, r5, #0
	bl sub_08070458
_0807037A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807037C
sub_0807037C: @ 0x0807037C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08070394
	bl sub_0805E780
_08070394:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08070398
sub_08070398: @ 0x08070398
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080703B8
	bl sub_0805E780
_080703B8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080703BC
sub_080703BC: @ 0x080703BC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08070404 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r0, #0
	ldr r0, _08070408 @ =0x00004021
	cmp r1, r0
	beq _0807042E
	cmp r1, r0
	bhi _0807040C
	subs r0, #1
	cmp r1, r0
	beq _08070420
	b _08070412
	.align 2, 0
_08070404: .4byte gUnk_03000BF0
_08070408: .4byte 0x00004021
_0807040C:
	ldr r0, _08070418 @ =0x00004070
	cmp r1, r0
	beq _0807041C
_08070412:
	movs r0, #0
	str r0, [r4, #0x7c]
	b _0807042E
	.align 2, 0
_08070418: .4byte 0x00004070
_0807041C:
	movs r0, #0xff
	str r0, [r4, #0x78]
_08070420:
	ldr r0, [r4, #0x78]
	subs r0, #1
	str r0, [r4, #0x78]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08070436
_0807042E:
	adds r0, r4, #0
	bl sub_08070458
	b _08070454
_08070436:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	cmp r1, #0
	beq _08070454
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0807044E
	ldrb r0, [r4, #0xc]
	cmp r0, #0x1a
	bne _08070454
_0807044E:
	adds r0, r4, #0
	bl sub_08070458
_08070454:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08070458
sub_08070458: @ 0x08070458
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
	ldr r5, [r4, #0x7c]
	cmp r5, #0
	beq _0807049E
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080704B4 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0800015E
_0807049E:
	adds r0, r4, #0
	movs r1, #0x13
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08017744
	ldr r0, _080704B8 @ =0x00000199
	bl sub_080A3268
	pop {r4, r5, r6, pc}
	.align 2, 0
_080704B4: .4byte gUnk_03000BF0
_080704B8: .4byte 0x00000199

	thumb_func_start sub_080704BC
sub_080704BC: @ 0x080704BC
	push {lr}
	ldr r2, _080704D0 @ =gUnk_0811B9D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080704D0: .4byte gUnk_0811B9D8

	thumb_func_start sub_080704D4
sub_080704D4: @ 0x080704D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_080A3268
	adds r0, r4, #0
	bl sub_080704FC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080704FC
sub_080704FC: @ 0x080704FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0807052C @ =gLinkEntity
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x80
	ands r0, r2
	ldr r1, _08070530 @ =gUnk_03003F80
	cmp r0, #0
	bne _08070518
	ldr r0, [r1, #0x2c]
	cmp r4, r0
	beq _08070534
_08070518:
	ldr r0, [r1, #0x2c]
	cmp r4, r0
	bne _08070522
	movs r0, #0
	str r0, [r1, #0x2c]
_08070522:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08070566
	.align 2, 0
_0807052C: .4byte gLinkEntity
_08070530: .4byte gUnk_03003F80
_08070534:
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0xf
	beq _08070562
	ldrb r1, [r5, #0x1e]
	adds r0, #0x91
	subs r0, r1, r0
	ldrb r2, [r4, #0x1e]
	cmp r0, r2
	beq _08070558
	adds r0, r1, #0
	adds r0, #0x6f
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08070558:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078E84
	b _08070566
_08070562:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_08070566:
	ldr r2, _08070580 @ =gLinkEntity
	ldrb r1, [r2, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08070584
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	movs r0, #1
	eors r2, r0
	b _0807058A
	.align 2, 0
_08070580: .4byte gLinkEntity
_08070584:
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
_0807058A:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807059C
sub_0807059C: @ 0x0807059C
	push {lr}
	ldr r0, _080705A8 @ =gUnk_02034490
	movs r1, #0x18
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_080705A8: .4byte gUnk_02034490

	thumb_func_start sub_080705AC
sub_080705AC: @ 0x080705AC
	push {lr}
	ldr r0, _08070614 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08070674
	ldr r0, _08070618 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08070674
	ldr r0, _0807061C @ =gUnk_02034490
	ldrb r0, [r0]
	cmp r0, #0
	bne _08070674
	ldr r0, _08070620 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08070674
	ldr r1, _08070624 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070674
	adds r0, r1, #0
	adds r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070674
	ldr r1, _08070628 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08070674
	ldr r0, _0807062C @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08070674
	adds r2, r1, #0
	adds r2, #0xa8
	ldrb r0, [r2]
	cmp r0, #0
	bne _08070630
	adds r0, r1, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _08070632
	.align 2, 0
_08070614: .4byte gUnk_03000FF0
_08070618: .4byte gUnk_03000FD0
_0807061C: .4byte gUnk_02034490
_08070620: .4byte gUnk_02000050
_08070624: .4byte gUnk_02002A40
_08070628: .4byte gUnk_03003F80
_0807062C: .4byte gUnk_03003DC0
_08070630:
	ldrb r0, [r2]
_08070632:
	subs r0, #0x12
	cmp r0, #0xa
	bhi _08070678
	lsls r0, r0, #2
	ldr r1, _08070644 @ =_08070648
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08070644: .4byte _08070648
_08070648: @ jump table
	.4byte _08070674 @ case 0
	.4byte _08070674 @ case 1
	.4byte _08070678 @ case 2
	.4byte _08070674 @ case 3
	.4byte _08070674 @ case 4
	.4byte _08070678 @ case 5
	.4byte _08070678 @ case 6
	.4byte _08070678 @ case 7
	.4byte _08070678 @ case 8
	.4byte _08070678 @ case 9
	.4byte _08070674 @ case 10
_08070674:
	movs r0, #0
	b _0807067E
_08070678:
	bl sub_080A4D88
	movs r0, #1
_0807067E:
	pop {pc}

	thumb_func_start sub_08070680
sub_08070680: @ 0x08070680
	push {lr}
	ldr r2, _08070694 @ =gUnk_0811B9E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08070694: .4byte gUnk_0811B9E0

	thumb_func_start sub_08070698
sub_08070698: @ 0x08070698
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, _08070788 @ =gUnk_03003F80
	movs r0, #0xff
	strb r0, [r6]
	ldr r1, _0807078C @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r6, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r6, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x20
	strb r0, [r4, #0x16]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x79
	strb r0, [r1]
	ldr r0, _08070790 @ =gUnk_08114F88
	str r0, [r4, #0x48]
	movs r0, #1
	strh r0, [r4, #0x12]
	adds r0, #0xff
	strh r0, [r6, #8]
	adds r0, r4, #0
	bl sub_0806FDA0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AE008
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08070726
	adds r0, r4, #0
	bl sub_08016A30
_08070726:
	movs r0, #0x10
	bl sub_0805436C
	cmp r0, #2
	beq _08070734
	bl sub_08077728
_08070734:
	bl sub_0807A108
	bl sub_0807AEE4
	bl sub_08078EFC
	adds r5, r0, #0
	cmp r5, #0
	bne _08070784
	bl sub_0807921C
	bl sub_0807A1B8
	adds r1, r6, #0
	adds r1, #0x26
	ldrb r0, [r1]
	cmp r0, #0
	beq _08070784
	movs r0, #1
	strb r0, [r1]
	bl sub_08079938
	adds r1, r6, #0
	adds r1, #0xa8
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807ACCC
	str r5, [sp]
	movs r0, #6
	movs r1, #0xf
	movs r2, #6
	movs r3, #0xb
	bl sub_0805EB2C
	cmp r0, #0
	beq _08070784
	bl sub_0805E7BC
_08070784:
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_08070788: .4byte gUnk_03003F80
_0807078C: .4byte gLinkEntity
_08070790: .4byte gUnk_08114F88

	thumb_func_start sub_08070794
sub_08070794: @ 0x08070794
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _080707F0 @ =gUnk_03003F80
	adds r3, r6, #0
	adds r3, #0xa8
	movs r4, #0
	strb r4, [r3]
	ldr r1, [r6, #0x30]
	movs r7, #0x10
	adds r0, r1, #0
	ands r0, r7
	mov ip, r6
	cmp r0, #0
	beq _08070818
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	strb r4, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x80
	strb r0, [r6, #6]
	strb r7, [r3]
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	adds r0, #0x5c
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	cmp r0, r1
	bne _080707F8
	ldrh r0, [r5, #0x12]
	cmp r0, #2
	bne _080707F8
	ldr r0, _080707F4 @ =gLinkEntity
	bl sub_080042B8
	b _08070800
	.align 2, 0
_080707F0: .4byte gUnk_03003F80
_080707F4: .4byte gLinkEntity
_080707F8:
	movs r0, #0x97
	lsls r0, r0, #2
	mov r1, ip
	strh r0, [r1, #8]
_08070800:
	ldr r0, _08070814 @ =gLinkEntity
	bl sub_0806F948
	bl sub_08077B2C
	adds r0, r5, #0
	bl sub_08077698
	b _08070BE4
	.align 2, 0
_08070814: .4byte gLinkEntity
_08070818:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08070842
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r3]
	movs r1, #0
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0807083A
	movs r1, #1
_0807083A:
	adds r0, r5, #0
	bl sub_08070BEC
	b _08070BE4
_08070842:
	movs r4, #0x80
	lsls r4, r4, #0xc
	ands r4, r1
	cmp r4, #0
	beq _08070852
	bl sub_08079938
	b _08070BE4
_08070852:
	adds r0, r5, #0
	bl sub_080085B0
	adds r0, r5, #0
	adds r0, #0x40
	strb r4, [r0]
	bl sub_08078EFC
	cmp r0, #0
	beq _08070868
	b _08070BE4
_08070868:
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080708AC
	ldrb r1, [r6, #2]
	movs r2, #0xc0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080708AC
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _0807088E
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070892
_0807088E:
	strh r2, [r5, #0x24]
	b _080708AC
_08070892:
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	beq _0807089C
	movs r0, #0xe0
	b _080708AA
_0807089C:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	beq _080708A6
	movs r0, #0x80
	b _080708AA
_080708A6:
	movs r0, #0xa0
	lsls r0, r0, #1
_080708AA:
	strh r0, [r5, #0x24]
_080708AC:
	ldr r4, _08070918 @ =gUnk_03003F80
	ldrb r0, [r4, #6]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #6]
	ldr r0, [r4, #0x30]
	ldr r6, _0807091C @ =0x10000002
	ands r0, r6
	cmp r0, #0
	bne _080708C4
	bl sub_0807A1B8
_080708C4:
	bl sub_08078EFC
	cmp r0, #0
	beq _080708CE
	b _08070BE4
_080708CE:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080708D6
	b _080709D8
_080708D6:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080708E4
	b _080709D8
_080708E4:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08070924
	bl sub_080782C0
	cmp r0, #0
	beq _08070924
	ldr r0, _08070920 @ =gUnk_02034350
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08070902
	bl sub_08077B2C
_08070902:
	ldr r0, [r4, #0x30]
	ands r0, r6
	cmp r0, #0
	beq _0807090C
	b _08070BE4
_0807090C:
	bl sub_0807A1B8
	bl sub_08078EFC
	b _08070BE4
	.align 2, 0
_08070918: .4byte gUnk_03003F80
_0807091C: .4byte 0x10000002
_08070920: .4byte gUnk_02034350
_08070924:
	ldr r0, _0807094C @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	ldr r2, _08070950 @ =0x00041635
	ands r1, r2
	adds r0, #0xaa
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _080709D8
	bl sub_08019840
	cmp r0, #0xf
	bls _08070940
	b _08070BE4
_08070940:
	lsls r0, r0, #2
	ldr r1, _08070954 @ =_08070958
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807094C: .4byte gUnk_03003F80
_08070950: .4byte 0x00041635
_08070954: .4byte _08070958
_08070958: @ jump table
	.4byte _08070998 @ case 0
	.4byte _08070BE4 @ case 1
	.4byte _08070BE4 @ case 2
	.4byte _080709A8 @ case 3
	.4byte _080709C2 @ case 4
	.4byte _08070BE4 @ case 5
	.4byte _08070BE4 @ case 6
	.4byte _08070BE4 @ case 7
	.4byte _08070BE4 @ case 8
	.4byte _08070BE4 @ case 9
	.4byte _08070BE4 @ case 10
	.4byte _08070BE4 @ case 11
	.4byte _08070BE4 @ case 12
	.4byte _08070BE4 @ case 13
	.4byte _08070BE4 @ case 14
	.4byte _080709B4 @ case 15
_08070998:
	ldr r0, _080709A4 @ =gUnk_03003F80
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	b _080709D8
	.align 2, 0
_080709A4: .4byte gUnk_03003F80
_080709A8:
	ldr r1, _080709B0 @ =gUnk_03003F80
	movs r0, #0x80
	strb r0, [r1, #6]
	b _080709D8
	.align 2, 0
_080709B0: .4byte gUnk_03003F80
_080709B4:
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	bl sub_080797EC
	b _08070BE4
_080709C2:
	ldr r0, _080709D4 @ =gUnk_03003F80
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	bl sub_080797EC
	b _08070BE4
	.align 2, 0
_080709D4: .4byte gUnk_03003F80
_080709D8:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r1, [r6]
	subs r0, #8
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0807AC54
	cmp r0, #0
	beq _080709FC
	b _08070BE4
_080709FC:
	adds r0, r5, #0
	bl sub_08077698
	bl sub_08078EFC
	cmp r0, #0
	beq _08070A0C
	b _08070BE4
_08070A0C:
	bl sub_080792D8
	ldr r4, _08070A78 @ =gUnk_03003F80
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #0xa]
	orrs r0, r1
	cmp r0, #0
	bne _08070A32
	bl sub_08079550
	cmp r0, #0
	beq _08070A26
	b _08070BE4
_08070A26:
	adds r0, r5, #0
	bl sub_08078F74
	cmp r0, #0
	beq _08070A32
	b _08070BE4
_08070A32:
	adds r0, r5, #0
	bl sub_08073904
	bl sub_08078EFC
	cmp r0, #0
	beq _08070A42
	b _08070BE4
_08070A42:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _08070AAC
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _08070A80
	movs r0, #7
	ands r0, r2
	cmp r0, #3
	beq _08070A7C
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08070A7C
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08008926
	b _08070A80
	.align 2, 0
_08070A78: .4byte gUnk_03003F80
_08070A7C:
	movs r0, #0xff
	strb r0, [r5, #0x15]
_08070A80:
	bl sub_08079E08
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08070A94
	b _08070BE4
_08070A94:
	ldr r0, _08070AA8 @ =gUnk_03003F80
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08070A9E
	b _08070BE4
_08070A9E:
	adds r0, r5, #0
	bl sub_080042B8
	b _08070BE4
	.align 2, 0
_08070AA8: .4byte gUnk_03003F80
_08070AAC:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08070ABA
	b _08070BBC
_08070ABA:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070AD4
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #7
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0807ACCC
	b _08070B56
_08070AD4:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _08070AEE
	ldrb r0, [r6]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r6]
_08070AEE:
	ldrb r1, [r4, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08070B00
	adds r0, r5, #0
	bl sub_08008AA0
	b _08070B1E
_08070B00:
	ldrb r0, [r4, #0x12]
	cmp r0, #0x17
	bne _08070B0E
	adds r0, r5, #0
	bl sub_08008926
	b _08070B1E
_08070B0E:
	cmp r0, #1
	bne _08070B18
	bl sub_08078F60
	b _08070B1E
_08070B18:
	adds r0, r5, #0
	bl sub_08008AA0
_08070B1E:
	ldr r2, _08070BB8 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1b]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08070B56
	ldrb r3, [r2, #0xd]
	strb r3, [r5, #0x15]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08070B56
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08070B52
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
_08070B52:
	bl sub_0807A108
_08070B56:
	movs r4, #0
	ldr r3, _08070BB8 @ =gUnk_03003F80
	ldrb r2, [r3, #7]
	ldrb r0, [r5, #0x15]
	orrs r0, r2
	movs r1, #0x80
	ands r0, r1
	ldrb r1, [r3, #0xa]
	orrs r0, r1
	cmp r0, #0
	bne _08070B8E
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _08070B8E
	movs r4, #1
	ldrb r0, [r7]
	cmp r0, #0
	bne _08070B8E
	ldrb r1, [r3, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08070B8C
	ldrb r0, [r3, #0x12]
	cmp r0, #0x17
	beq _08070B8E
_08070B8C:
	movs r4, #3
_08070B8E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08070BEC
	adds r0, r5, #0
	bl sub_08008AC6
	ldrb r0, [r7]
	cmp r0, #0
	bne _08070BE4
	ldr r1, _08070BB8 @ =gUnk_03003F80
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _08070BE4
	ldrb r0, [r1, #0x12]
	cmp r0, #0x1e
	beq _08070BE4
	adds r0, r5, #0
	bl sub_0806F948
	b _08070BE4
	.align 2, 0
_08070BB8: .4byte gUnk_03003F80
_08070BBC:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _08070BC8
	adds r0, r5, #0
	bl sub_080042B8
_08070BC8:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070BE4
	ldr r0, _08070BE8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08070BE4
	adds r0, r5, #0
	bl sub_080A2A64
_08070BE4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08070BE8: .4byte gUnk_030010A0

	thumb_func_start sub_08070BEC
sub_08070BEC: @ 0x08070BEC
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08070BFE
	bl sub_080797EC
	b _08070C02
_08070BFE:
	bl sub_08079938
_08070C02:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08070C0E
	bl sub_08079E08
_08070C0E:
	pop {r4, pc}

	thumb_func_start sub_08070C10
sub_08070C10: @ 0x08070C10
	push {lr}
	ldr r2, _08070C34 @ =gUnk_03003F80
	movs r1, #0xff
	strb r1, [r2, #0xd]
	movs r1, #0x80
	strb r1, [r2, #6]
	adds r2, #0xa8
	movs r1, #0xa
	strb r1, [r2]
	ldr r2, _08070C38 @ =gUnk_0811BA60
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08070C34: .4byte gUnk_03003F80
_08070C38: .4byte gUnk_0811BA60

	thumb_func_start sub_08070C3C
sub_08070C3C: @ 0x08070C3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004168
	ldr r2, _08070C64 @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #5
	orrs r1, r0
	ldr r0, _08070C68 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r2, #0x30]
	movs r0, #0
	strb r0, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08070C6C
	movs r0, #0xdd
	lsls r0, r0, #1
	b _08070C7E
	.align 2, 0
_08070C64: .4byte gUnk_03003F80
_08070C68: .4byte 0xFFFFFBFF
_08070C6C:
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08070C7A
	movs r0, #0x8b
	lsls r0, r0, #3
	b _08070C7E
_08070C7A:
	movs r0, #0xdc
	lsls r0, r0, #1
_08070C7E:
	strh r0, [r2, #8]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_08077B2C
	bl sub_0807A108
	movs r0, #0x7b
	bl sub_080A3268
	movs r0, #0x85
	bl sub_080A3268
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08070CB4
sub_08070CB4: @ 0x08070CB4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080042B8
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08070D1A
	ldr r0, _08070CF4 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	ldr r4, _08070CF8 @ =gUnk_03003F80
	cmp r0, #0
	beq _08070CFC
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08070CFC
	movs r0, #6
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x30]
	ldrb r1, [r5, #0x18]
	adds r0, #2
	ands r0, r1
	strb r0, [r5, #0x18]
	b _08070D1A
	.align 2, 0
_08070CF4: .4byte gUnk_02002A40
_08070CF8: .4byte gUnk_03003F80
_08070CFC:
	ldr r0, [r4, #0x30]
	ldr r1, _08070D1C @ =0xFFFF7FFB
	ands r0, r1
	str r0, [r4, #0x30]
	bl sub_08079458
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0x20
	strb r0, [r1]
	subs r0, #0x22
	bl ModHealth
_08070D1A:
	pop {r4, r5, pc}
	.align 2, 0
_08070D1C: .4byte 0xFFFF7FFB

	thumb_func_start sub_08070D20
sub_08070D20: @ 0x08070D20
	push {lr}
	ldr r2, _08070D34 @ =gUnk_0811BA68
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08070D34: .4byte gUnk_0811BA68

	thumb_func_start sub_08070D38
sub_08070D38: @ 0x08070D38
	push {r4, lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
	adds r0, r2, #0
	adds r0, #0x42
	strb r4, [r0]
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	ldr r3, _08070D94 @ =gUnk_03003F80
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r2, #0xe]
	movs r0, #1
	strh r0, [r2, #0x12]
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08070D98
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r3, #8]
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	b _08070DA2
	.align 2, 0
_08070D94: .4byte gUnk_03003F80
_08070D98:
	ldr r0, _08070DBC @ =0x00000C18
	strh r0, [r3, #8]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_08070DA2:
	ldr r0, _08070DC0 @ =gUnk_03003F80
	movs r1, #0x80
	strb r1, [r0, #2]
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_080A3268
	bl sub_08077B2C
	bl sub_08078F60
	pop {r4, pc}
	.align 2, 0
_08070DBC: .4byte 0x00000C18
_08070DC0: .4byte gUnk_03003F80

	thumb_func_start sub_08070DC4
sub_08070DC4: @ 0x08070DC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080085B0
	bl sub_08079E08
	bl sub_0807A1B8
	bl sub_08078EFC
	cmp r0, #0
	bne _08070E76
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08070E76
	ldr r6, _08070E18 @ =gUnk_03003F80
	strb r0, [r6, #2]
	bl sub_08078EFC
	adds r5, r0, #0
	cmp r5, #0
	bne _08070E76
	bl sub_08079D48
	cmp r0, #0
	bne _08070E10
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070E1C
_08070E10:
	strb r5, [r6, #2]
	bl sub_080791D0
	b _08070E76
	.align 2, 0
_08070E18: .4byte gUnk_03003F80
_08070E1C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08070E32
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	b _08070E76
_08070E32:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _08070E56
	bl sub_08008B22
	cmp r0, #0
	beq _08070E56
	movs r0, #7
	strb r0, [r6, #0x11]
	bl sub_08079938
	bl sub_080791BC
	b _08070E76
_08070E56:
	movs r0, #1
	strh r0, [r4, #0x12]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r2, _08070E78 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08070E76
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #8]
_08070E76:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08070E78: .4byte gUnk_03003F80

	thumb_func_start sub_08070E7C
sub_08070E7C: @ 0x08070E7C
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _08070E94
	ldr r0, _08070E98 @ =gUnk_03003F80
	strb r1, [r0, #2]
	bl sub_080791D0
_08070E94:
	pop {pc}
	.align 2, 0
_08070E98: .4byte gUnk_03003F80

	thumb_func_start sub_08070E9C
sub_08070E9C: @ 0x08070E9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	beq _08070EAE
	bl sub_08056360
	b _08070ED2
_08070EAE:
	ldr r1, _08070ED4 @ =gUnk_03003F80
	adds r2, r1, #0
	adds r2, #0x27
	movs r0, #4
	strb r0, [r2]
	adds r1, #0xa8
	movs r0, #0x13
	strb r0, [r1]
	bl sub_0807A1B8
	ldr r1, _08070ED8 @ =gUnk_0811BA74
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08070ED2:
	pop {r4, pc}
	.align 2, 0
_08070ED4: .4byte gUnk_03003F80
_08070ED8: .4byte gUnk_0811BA74

	thumb_func_start sub_08070EDC
sub_08070EDC: @ 0x08070EDC
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _08070F10 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08070EFE
	movs r0, #1
	strb r0, [r2, #0xd]
_08070EFE:
	ldr r2, _08070F14 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08070F18
	bl sub_08079938
	b _08070F1C
	.align 2, 0
_08070F10: .4byte gUnk_02000050
_08070F14: .4byte gUnk_03003F80
_08070F18:
	ldr r0, _08070F20 @ =0x00000C18
	strh r0, [r2, #8]
_08070F1C:
	pop {pc}
	.align 2, 0
_08070F20: .4byte 0x00000C18

	thumb_func_start sub_08070F24
sub_08070F24: @ 0x08070F24
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, _08070F4C @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08070F4A
	ldrb r0, [r4, #0x11]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x11]
	bl sub_080791D0
_08070F4A:
	pop {r4, pc}
	.align 2, 0
_08070F4C: .4byte gUnk_02000050

	thumb_func_start sub_08070F50
sub_08070F50: @ 0x08070F50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08070F9C @ =gUnk_03003F80
	adds r0, #0xa8
	movs r1, #0x15
	strb r1, [r0]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _08070FA0 @ =gUnk_0811BA7C
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _08070F9A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA30
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r1, [r0, #1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
_08070F9A:
	pop {r4, r5, pc}
	.align 2, 0
_08070F9C: .4byte gUnk_03003F80
_08070FA0: .4byte gUnk_0811BA7C

	thumb_func_start sub_08070FA4
sub_08070FA4: @ 0x08070FA4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0x14]
	ldr r3, _08070FE8 @ =gUnk_03003F80
	ldr r2, [r3, #0x30]
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #0x30]
	strb r1, [r3, #2]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08071008
	movs r0, #8
	ands r2, r0
	cmp r2, #0
	beq _08070FF0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_080542AC
	ldr r1, _08070FEC @ =0x0000045B
	cmp r0, #0
	beq _08071004
	adds r1, #3
	b _08071004
	.align 2, 0
_08070FE8: .4byte gUnk_03003F80
_08070FEC: .4byte 0x0000045B
_08070FF0:
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_080542AC
	ldr r1, _08071018 @ =0x000001B9
	cmp r0, #0
	beq _08071004
	movs r1, #0xb8
	lsls r1, r1, #2
_08071004:
	ldr r0, _0807101C @ =gUnk_03003F80
	strh r1, [r0, #8]
_08071008:
	movs r0, #1
	strb r0, [r4, #0xd]
	bl sub_08077B2C
	bl sub_08078F60
	pop {r4, pc}
	.align 2, 0
_08071018: .4byte 0x000001B9
_0807101C: .4byte gUnk_03003F80

	thumb_func_start sub_08071020
sub_08071020: @ 0x08071020
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08071036
	movs r0, #2
	strb r0, [r4, #0xd]
_08071036:
	pop {r4, pc}

	thumb_func_start sub_08071038
sub_08071038: @ 0x08071038
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	bl sub_08078EFC
	cmp r0, #0
	bne _08071078
	ldr r0, _0807107C @ =gUnk_02000050
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	cmp r2, #0
	bne _08071078
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08071078
	str r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	subs r0, #5
	movs r1, #0xf8
	strb r1, [r0]
	ldr r0, _08071080 @ =gUnk_03003F80
	strb r2, [r0, #2]
	bl sub_080791D0
_08071078:
	pop {r4, pc}
	.align 2, 0
_0807107C: .4byte gUnk_02000050
_08071080: .4byte gUnk_03003F80

	thumb_func_start sub_08071084
sub_08071084: @ 0x08071084
	push {lr}
	ldr r1, _080710A0 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #0xb
	strb r2, [r1]
	ldr r2, _080710A4 @ =gUnk_0811BA88
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080710A0: .4byte gUnk_03003F80
_080710A4: .4byte gUnk_0811BA88

	thumb_func_start sub_080710A8
sub_080710A8: @ 0x080710A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldr r1, _080710EC @ =gUnk_03003F80
	ldr r3, [r1, #0x30]
	movs r0, #1
	orrs r3, r0
	ldr r0, _080710F0 @ =0xFFFFF3FF
	ands r3, r0
	str r3, [r1, #0x30]
	strb r2, [r1, #0xc]
	ldrb r2, [r1, #5]
	ldrb r0, [r1, #0x1b]
	orrs r0, r2
	adds r5, r1, #0
	cmp r0, #0
	bne _080710FA
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080710FA
	bl sub_08077B2C
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080710F4
	movs r0, #0x84
	lsls r0, r0, #3
	b _080710F8
	.align 2, 0
_080710EC: .4byte gUnk_03003F80
_080710F0: .4byte 0xFFFFF3FF
_080710F4:
	movs r0, #0x81
	lsls r0, r0, #4
_080710F8:
	strh r0, [r5, #8]
_080710FA:
	movs r0, #0
	strb r0, [r5, #0x1e]
	ldrb r1, [r4, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #1
	bl sub_08079FC4
	lsls r0, r0, #4
	subs r0, #4
	lsls r0, r0, #0xc
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	bl sub_0807A108
	movs r0, #0x7c
	bl sub_080A3268
	movs r0, #0x78
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08071130
sub_08071130: @ 0x08071130
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _08071206
	ldr r6, _080711B4 @ =gUnk_03003F80
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	bne _08071158
	adds r0, r5, #0
	bl sub_080042B8
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08071206
_08071158:
	adds r0, r5, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08071206
	strb r0, [r6, #2]
	adds r0, r5, #0
	bl sub_0800455E
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _0807117E
	bl sub_0800455E
_0807117E:
	adds r0, r5, #0
	movs r1, #7
	bl sub_08008790
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _08071206
	bl sub_0807A1B8
	bl sub_08078EFC
	adds r4, r0, #0
	cmp r4, #0
	bne _08071206
	bl sub_08079D48
	cmp r0, #0
	beq _080711AC
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _080711B8
_080711AC:
	strb r4, [r6, #2]
	bl sub_080791D0
	b _08071206
	.align 2, 0
_080711B4: .4byte gUnk_03003F80
_080711B8:
	movs r0, #6
	strb r0, [r5, #0xe]
	ldrb r1, [r6, #5]
	ldrb r0, [r6, #0xb]
	orrs r0, r1
	cmp r0, #0
	bne _080711EE
	ldr r1, [r6, #0x30]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080711EE
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _080711E0
	ldr r0, _080711DC @ =0x00000424
	b _080711E4
	.align 2, 0
_080711DC: .4byte 0x00000424
_080711E0:
	movs r0, #0x82
	lsls r0, r0, #4
_080711E4:
	strh r0, [r6, #8]
	adds r1, r5, #0
	adds r1, #0x58
	movs r0, #0xff
	strb r0, [r1]
_080711EE:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xd]
	bl sub_08078F60
	adds r0, r5, #0
	adds r0, #0x42
	strb r4, [r0]
	movs r0, #0x7d
	bl sub_080A3268
_08071206:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08071208
sub_08071208: @ 0x08071208
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08071244 @ =gUnk_03003F80
	ldrb r1, [r2, #5]
	ldrb r0, [r2, #0xb]
	orrs r0, r1
	cmp r0, #0
	bne _08071228
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08071228
	adds r0, r4, #0
	bl sub_080042B8
_08071228:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08071240
	ldr r1, _08071244 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r1, #2]
	bl sub_080791D0
_08071240:
	pop {r4, pc}
	.align 2, 0
_08071244: .4byte gUnk_03003F80

	thumb_func_start sub_08071248
sub_08071248: @ 0x08071248
	push {lr}
	ldr r3, _08071274 @ =gUnk_03003F80
	adds r2, r3, #0
	adds r2, #0xa8
	movs r1, #0x16
	strb r1, [r2]
	ldr r1, [r3, #0x30]
	movs r2, #4
	orrs r1, r2
	str r1, [r3, #0x30]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r2, _08071278 @ =gUnk_0811BA94
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071274: .4byte gUnk_03003F80
_08071278: .4byte gUnk_0811BA94

	thumb_func_start sub_0807127C
sub_0807127C: @ 0x0807127C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	strb r0, [r2]
	ldr r5, _080712AC @ =gUnk_03003F80
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080712B4
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, _080712B0 @ =0x00000C19
	strh r0, [r5, #8]
	movs r0, #0x84
	bl sub_080A3268
	b _080712E4
	.align 2, 0
_080712AC: .4byte gUnk_03003F80
_080712B0: .4byte 0x00000C19
_080712B4:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	bne _080712C4
	adds r0, r4, #0
	bl sub_08004168
_080712C4:
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0
	bl CreateFX
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080712E0
	ldr r0, _080712DC @ =0x0000072C
	b _080712E2
	.align 2, 0
_080712DC: .4byte 0x0000072C
_080712E0:
	ldr r0, _080712EC @ =0x0000044C
_080712E2:
	strh r0, [r5, #8]
_080712E4:
	bl sub_08077B2C
	pop {r4, r5, pc}
	.align 2, 0
_080712EC: .4byte 0x0000044C

	thumb_func_start sub_080712F0
sub_080712F0: @ 0x080712F0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080042B8
	movs r5, #0
	ldr r3, _08071314 @ =gUnk_03003F80
	ldr r0, [r3, #0x30]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08071318
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807133E
	b _08071342
	.align 2, 0
_08071314: .4byte gUnk_03003F80
_08071318:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807133E
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xce
	beq _0807133C
	ldr r0, _08071338 @ =0x000002CE
	strh r0, [r3, #8]
	b _0807133E
	.align 2, 0
_08071338: .4byte 0x000002CE
_0807133C:
	movs r5, #1
_0807133E:
	cmp r5, #0
	beq _0807137A
_08071342:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x20
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x59
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r2, _0807137C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08079458
_0807137A:
	pop {r4, r5, pc}
	.align 2, 0
_0807137C: .4byte gUnk_03003F80

	thumb_func_start sub_08071380
sub_08071380: @ 0x08071380
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080713E8 @ =gUnk_03003F80
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #0xe
	strb r0, [r1]
	ldr r1, _080713EC @ =gUnk_0811BA9C
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xd]
	cmp r0, #7
	beq _080713FC
	cmp r0, #2
	bls _080713FC
	ldr r0, [r5, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080713FC
	ldr r0, _080713F0 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080713FC
	bl sub_08052660
	cmp r0, #0
	bne _080713D0
	ldr r0, _080713F4 @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #3
	bne _080713F8
_080713D0:
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0xf8
	bl sub_080A3268
	b _080713FC
	.align 2, 0
_080713E8: .4byte gUnk_03003F80
_080713EC: .4byte gUnk_0811BA9C
_080713F0: .4byte gUnk_03000FF0
_080713F4: .4byte gUnk_02033A90
_080713F8:
	bl sub_0804ACF8
_080713FC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08071400
sub_08071400: @ 0x08071400
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	ldr r0, _0807149C @ =gUnk_02033A90
	ldrh r3, [r0, #0x12]
	ldrh r5, [r0, #0x14]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	cmp r2, r3
	bne _0807142A
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, r5
	beq _08071444
_0807142A:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	bl sub_08079E08
_08071444:
	adds r0, r4, #0
	bl sub_08073904
	adds r0, r4, #0
	bl sub_080042B8
	ldr r2, _080714A0 @ =gUnk_03003F80
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0807147C
	ldr r0, [r2, #0x30]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0x30]
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x18]
	subs r0, #0x45
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0807149C @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #4
	bne _0807147C
	ldr r0, _080714A4 @ =0x0000052C
	strh r0, [r2, #8]
_0807147C:
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r0, _0807149C @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #3
	beq _0807149A
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0807149A:
	pop {r4, r5, pc}
	.align 2, 0
_0807149C: .4byte gUnk_02033A90
_080714A0: .4byte gUnk_03003F80
_080714A4: .4byte 0x0000052C

	thumb_func_start sub_080714A8
sub_080714A8: @ 0x080714A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08071524 @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #5
	bgt _080714BE
	cmp r0, #4
	blt _080714BE
	ldr r0, _08071528 @ =gLinkEntity
	bl sub_0806F948
_080714BE:
	ldr r3, _0807152C @ =gUnk_03003F80
	ldrb r1, [r3, #0xd]
	movs r0, #0x84
	ands r0, r1
	cmp r0, #0
	bne _0807153E
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	beq _080714D4
	movs r0, #8
	strb r0, [r4, #0xe]
_080714D4:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08071538
	ldrb r0, [r3, #0xd]
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #7
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xf]
	ldr r1, [r3, #0x30]
	movs r0, #8
	ands r0, r1
	ldr r4, _08071530 @ =0x0000080C
	adds r2, r4, #0
	cmp r0, #0
	beq _08071516
	ldr r0, _08071534 @ =0x0000041C
	adds r2, r0, #0
_08071516:
	strh r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #0x30]
	b _0807156A
	.align 2, 0
_08071524: .4byte gUnk_02033A90
_08071528: .4byte gLinkEntity
_0807152C: .4byte gUnk_03003F80
_08071530: .4byte 0x0000080C
_08071534: .4byte 0x0000041C
_08071538:
	ldrb r0, [r3, #0xd]
	strb r0, [r4, #0x15]
	b _08071542
_0807153E:
	movs r0, #8
	strb r0, [r4, #0xe]
_08071542:
	ldr r0, _0807155C @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #4
	bne _08071560
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08071566
	adds r0, r4, #0
	bl sub_080042B8
	b _0807156A
	.align 2, 0
_0807155C: .4byte gUnk_02033A90
_08071560:
	adds r0, r4, #0
	bl sub_08077698
_08071566:
	bl sub_08079938
_0807156A:
	pop {r4, pc}

	thumb_func_start sub_0807156C
sub_0807156C: @ 0x0807156C
	push {lr}
	ldr r2, _080715A0 @ =gUnk_03000BF0
	movs r1, #0
	str r1, [r2, #0x30]
	ldr r2, _080715A4 @ =gUnk_02034490
	movs r1, #1
	strb r1, [r2]
	movs r1, #3
	strb r1, [r0, #0xd]
	movs r1, #0x1e
	strb r1, [r0, #0xf]
	ldr r2, _080715A8 @ =gUnk_03003F80
	movs r1, #0xe7
	lsls r1, r1, #3
	strh r1, [r2, #8]
	movs r1, #6
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	bl sub_08077B20
	bl sub_0805E544
	pop {pc}
	.align 2, 0
_080715A0: .4byte gUnk_03000BF0
_080715A4: .4byte gUnk_02034490
_080715A8: .4byte gUnk_03003F80

	thumb_func_start sub_080715AC
sub_080715AC: @ 0x080715AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080715CC
	adds r0, r4, #0
	bl sub_080042B8
	ldr r0, _080715D0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080715CC
	movs r0, #4
	strb r0, [r4, #0xd]
_080715CC:
	pop {r4, pc}
	.align 2, 0
_080715D0: .4byte gUnk_03003F80

	thumb_func_start sub_080715D4
sub_080715D4: @ 0x080715D4
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #5
	strb r0, [r3, #0xd]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	strb r2, [r3, #0xf]
	ldrb r0, [r3, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r0, r3, #0
	adds r0, #0x80
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, r3, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	ldr r2, _08071628 @ =gUnk_03003F80
	ldr r0, _0807162C @ =0x000002C3
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08071630 @ =0x0000016F
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_08071628: .4byte gUnk_03003F80
_0807162C: .4byte 0x000002C3
_08071630: .4byte 0x0000016F

	thumb_func_start sub_08071634
sub_08071634: @ 0x08071634
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08071654
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, [r1]
	adds r0, #0x80
	lsls r0, r0, #0x14
	lsrs r7, r0, #0x17
	adds r4, r1, #0
	b _0807166A
_08071654:
	adds r4, r5, #0
	adds r4, #0x80
	ldrb r1, [r4]
	lsrs r1, r1, #6
	movs r0, #3
	eors r1, r0
	adds r1, #1
	movs r0, #0x10
	bl __divsi3
	asrs r7, r0, #1
_0807166A:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	bls _08071684
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x17
	b _08071694
_08071684:
	cmp r3, r1
	bne _0807168C
	movs r3, #0x10
	b _08071694
_0807168C:
	ldr r1, _080716B0 @ =gUnk_0811BABC
	lsrs r0, r3, #5
	adds r0, r0, r1
	ldrb r3, [r0]
_08071694:
	movs r0, #0x80
	lsls r0, r0, #9
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #2
	beq _080716EA
	cmp r0, #2
	bgt _080716B4
	cmp r0, #1
	beq _080716BA
	b _08071754
	.align 2, 0
_080716B0: .4byte gUnk_0811BABC
_080716B4:
	cmp r0, #3
	beq _0807171E
	b _08071754
_080716BA:
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	ldrb r1, [r1]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	cmp r0, #0x80
	bls _080716D6
	subs r0, r0, r7
	str r0, [r4]
_080716D6:
	lsls r1, r3, #1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, r8
	lsls r1, r0, #1
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _08071754
_080716EA:
	ldr r0, [r4]
	adds r0, r0, r7
	str r0, [r4]
	ldr r1, [r2]
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r1, r6
	bls _08071710
	ldr r0, _0807170C @ =0x0000017F
	cmp r1, r0
	bhi _08071702
	lsrs r3, r3, #1
_08071702:
	subs r0, r1, r3
	cmp r0, #0xff
	bhi _08071716
	str r6, [r2]
	b _08071718
	.align 2, 0
_0807170C: .4byte 0x0000017F
_08071710:
	cmp r1, #0x80
	bls _08071718
	subs r0, r1, r3
_08071716:
	str r0, [r2]
_08071718:
	ldr r0, [r5, #0x34]
	mov r1, r8
	b _08071750
_0807171E:
	ldr r0, [r4]
	ldr r6, _08071740 @ =0x0000033F
	cmp r0, r6
	bhi _0807172A
	adds r0, r0, r7
	str r0, [r4]
_0807172A:
	ldr r1, [r2]
	cmp r1, r6
	bls _08071744
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	movs r0, #6
	strb r0, [r5, #0xd]
	b _0807174A
	.align 2, 0
_08071740: .4byte 0x0000033F
_08071744:
	lsls r0, r3, #1
	adds r0, r1, r0
	str r0, [r2]
_0807174A:
	mov r0, r8
	lsls r1, r0, #1
	ldr r0, [r5, #0x34]
_08071750:
	subs r0, r0, r1
	str r0, [r5, #0x34]
_08071754:
	ldr r1, [r4]
	ldr r2, [r2]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	bl sub_080042B8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807176C
sub_0807176C: @ 0x0807176C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080717C6
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080717CA
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _080717AC @ =gUnk_02033A90
	ldrb r0, [r1, #0x17]
	cmp r0, #3
	bne _080717B0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080717CA
	adds r0, r4, #0
	bl sub_080717F8
	b _080717CA
	.align 2, 0
_080717AC: .4byte gUnk_02033A90
_080717B0:
	cmp r0, #6
	bne _080717C0
	ldr r0, _080717BC @ =gUnk_0813AB58
	bl sub_08080840
	b _080717CA
	.align 2, 0
_080717BC: .4byte gUnk_0813AB58
_080717C0:
	movs r0, #1
	strb r0, [r1, #0x19]
	b _080717CA
_080717C6:
	subs r0, #1
	strb r0, [r4, #0xe]
_080717CA:
	pop {r4, pc}

	thumb_func_start sub_080717CC
sub_080717CC: @ 0x080717CC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080717E4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080717F4
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080717E8
	subs r0, #1
	strb r0, [r1, #0xe]
	b _080717F4
	.align 2, 0
_080717E4: .4byte gUnk_03000FD0
_080717E8:
	adds r0, r1, #0
	bl sub_080717F8
	movs r0, #0x10
	bl sub_080500F4
_080717F4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080717F8
sub_080717F8: @ 0x080717F8
	push {r4, lr}
	ldr r2, _08071850 @ =gUnk_02033A90
	ldrb r1, [r2, #0x16]
	lsls r1, r1, #1
	strb r1, [r0, #0x14]
	ldr r3, _08071854 @ =gUnk_0811BAC4
	ldrb r1, [r2, #0x16]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r4, [r2, #0x12]
	adds r1, r1, r4
	movs r4, #0
	strh r1, [r0, #0x2e]
	ldrb r1, [r2, #0x16]
	lsls r1, r1, #1
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r3, [r2, #0x14]
	adds r1, r1, r3
	strh r1, [r0, #0x32]
	movs r1, #0xb4
	strb r1, [r2, #0x1a]
	ldr r1, _08071858 @ =gUnk_02034490
	strb r4, [r1]
	movs r1, #9
	strb r1, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldr r3, _0807185C @ =gUnk_03003F80
	ldr r1, [r3, #0x30]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	str r1, [r3, #0x30]
	bl sub_0805EC60
	bl sub_0805E564
	pop {r4, pc}
	.align 2, 0
_08071850: .4byte gUnk_02033A90
_08071854: .4byte gUnk_0811BAC4
_08071858: .4byte gUnk_02034490
_0807185C: .4byte gUnk_03003F80

	thumb_func_start sub_08071860
sub_08071860: @ 0x08071860
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	beq _08071876
	bl sub_08056360
	bl sub_08071A6C
	b _08071896
_08071876:
	ldr r0, _08071898 @ =gUnk_03003F80
	adds r0, #0xa8
	movs r1, #0x13
	strb r1, [r0]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0807189C @ =gUnk_0811BAD4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08071896:
	pop {r4, pc}
	.align 2, 0
_08071898: .4byte gUnk_03003F80
_0807189C: .4byte gUnk_0811BAD4

	thumb_func_start sub_080718A0
sub_080718A0: @ 0x080718A0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08077B2C
	ldr r0, _080718EC @ =gUnk_03000B80
	adds r0, #0x63
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r1, _080718F0 @ =gUnk_03003DC0
	movs r2, #6
	movs r0, #6
	strb r0, [r1]
	ldrb r1, [r4, #0x11]
	subs r0, #0x16
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	ldr r5, _080718F4 @ =gUnk_03003F80
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080718F8
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3b
	ands r0, r1
	strb r0, [r2]
	bl sub_08052BB8
	b _08071938
	.align 2, 0
_080718EC: .4byte gUnk_03000B80
_080718F0: .4byte gUnk_03003DC0
_080718F4: .4byte gUnk_03003F80
_080718F8:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08071928
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _08071914
	ldr r0, _08071910 @ =0x000003CA
	b _08071916
	.align 2, 0
_08071910: .4byte 0x000003CA
_08071914:
	ldr r0, _08071924 @ =0x000003C6
_08071916:
	strh r0, [r5, #8]
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08071938
	.align 2, 0
_08071924: .4byte 0x000003C6
_08071928:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08071938
	strb r0, [r5, #2]
_08071938:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807193C
sub_0807193C: @ 0x0807193C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08071986
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _08071986
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _0807197C
	ldr r1, _08071978 @ =gUnk_03003F80
	movs r0, #0xf3
	lsls r0, r0, #2
	b _08071980
	.align 2, 0
_08071978: .4byte gUnk_03003F80
_0807197C:
	ldr r1, _08071988 @ =gUnk_03003F80
	ldr r0, _0807198C @ =0x000003C7
_08071980:
	strh r0, [r1, #8]
	bl sub_08052BB8
_08071986:
	pop {r4, pc}
	.align 2, 0
_08071988: .4byte gUnk_03003F80
_0807198C: .4byte 0x000003C7

	thumb_func_start sub_08071990
sub_08071990: @ 0x08071990
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080719C0 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080719E2
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	ldr r3, _080719C4 @ =gUnk_03003F80
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080719D8
	ldrb r0, [r2, #0x14]
	cmp r0, #2
	bne _080719CC
	ldr r0, _080719C8 @ =0x000003CD
	strh r0, [r3, #8]
	b _08071A4A
	.align 2, 0
_080719C0: .4byte gUnk_02000050
_080719C4: .4byte gUnk_03003F80
_080719C8: .4byte 0x000003CD
_080719CC:
	ldr r0, _080719D4 @ =0x000003C9
	strh r0, [r3, #8]
	b _08071A4A
	.align 2, 0
_080719D4: .4byte 0x000003C9
_080719D8:
	bl sub_08071A6C
	bl sub_08079258
	b _08071A4A
_080719E2:
	ldr r4, _08071A20 @ =gUnk_03003F80
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08071A4A
	ldrb r0, [r2, #0x14]
	movs r3, #0
	cmp r0, #2
	bne _080719F8
	movs r3, #4
_080719F8:
	ldr r0, [r2, #0x54]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08071A24
	adds r0, r3, #0
	adds r0, #0xc8
	adds r1, r2, #0
	adds r1, #0x58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _08071A44
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r0, r1, #0
	adds r0, r3, r0
	strh r0, [r4, #8]
	b _08071A4A
	.align 2, 0
_08071A20: .4byte gUnk_03003F80
_08071A24:
	adds r0, r3, #0
	adds r0, #0xc7
	adds r1, r2, #0
	adds r1, #0x58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _08071A44
	ldr r1, _08071A40 @ =0x000003C7
	adds r0, r3, r1
	strh r0, [r4, #8]
	b _08071A4A
	.align 2, 0
_08071A40: .4byte 0x000003C7
_08071A44:
	adds r0, r2, #0
	bl sub_080042B8
_08071A4A:
	pop {r4, pc}

	thumb_func_start sub_08071A4C
sub_08071A4C: @ 0x08071A4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08071A68
	bl sub_08071A6C
	bl sub_0807921C
_08071A68:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08071A6C
sub_08071A6C: @ 0x08071A6C
	ldr r1, _08071A84 @ =gUnk_03003DC0
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08071A88 @ =gLinkEntity
	ldrb r1, [r3, #0x11]
	lsrs r2, r1, #4
	subs r0, #0x10
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	bx lr
	.align 2, 0
_08071A84: .4byte gUnk_03003DC0
_08071A88: .4byte gLinkEntity

	thumb_func_start sub_08071A8C
sub_08071A8C: @ 0x08071A8C
	push {lr}
	ldr r1, _08071AA8 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #0x19
	strb r2, [r1]
	ldr r2, _08071AAC @ =gUnk_0811BAE4
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071AA8: .4byte gUnk_03003F80
_08071AAC: .4byte gUnk_0811BAE4

	thumb_func_start sub_08071AB0
sub_08071AB0: @ 0x08071AB0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	ldr r1, _08071AD8 @ =gUnk_03003F80
	ldr r2, [r1, #0x30]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #0x30]
	ldrb r4, [r3, #0xa]
	cmp r4, #1
	bne _08071ADC
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #0x24]
	strb r1, [r3, #0xe]
	strb r4, [r3, #0xf]
	b _08071AE8
	.align 2, 0
_08071AD8: .4byte gUnk_03003F80
_08071ADC:
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	beq _08071AE6
	movs r0, #0x40
_08071AE6:
	strh r0, [r3, #0x24]
_08071AE8:
	adds r0, r3, #0
	bl sub_08071AF0
	pop {r4, pc}

	thumb_func_start sub_08071AF0
sub_08071AF0: @ 0x08071AF0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08071B34 @ =gUnk_03003F80
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08071B44
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08071B58
	ldr r0, _08071B38 @ =gUnk_0811BAF0
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _08071B3C
	strb r2, [r4, #0xf]
	ldrh r0, [r1, #2]
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	b _08071B58
	.align 2, 0
_08071B34: .4byte gUnk_03003F80
_08071B38: .4byte gUnk_0811BAF0
_08071B3C:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _08071B5C
_08071B44:
	ldrb r0, [r5, #6]
	subs r0, #1
	strb r0, [r5, #6]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08071B58
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08071B58:
	bl sub_08079E08
_08071B5C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08071B60
sub_08071B60: @ 0x08071B60
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08071BAC @ =gUnk_03003F80
	movs r2, #0
	movs r0, #2
	strb r0, [r5, #6]
	ldr r0, [r5, #0x30]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x30]
	strb r2, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080728AC
	movs r0, #6
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08071BA8
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r5, #8]
	movs r0, #3
	strh r0, [r4, #0x12]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #0x3c
	adds r0, r4, #0
	bl sub_080042AC
_08071BA8:
	pop {r4, r5, pc}
	.align 2, 0
_08071BAC: .4byte gUnk_03003F80

	thumb_func_start sub_08071BB0
sub_08071BB0: @ 0x08071BB0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r2, _08071BD4 @ =gUnk_0811BB2C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, _08071BD8 @ =gUnk_03003F80
	adds r0, #0xa8
	movs r1, #0x12
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_08071BD4: .4byte gUnk_0811BB2C
_08071BD8: .4byte gUnk_03003F80

	thumb_func_start sub_08071BDC
sub_08071BDC: @ 0x08071BDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08071C10 @ =gUnk_03003F80
	ldr r0, [r5, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08071C9C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _08071C1C
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08071C14
	movs r0, #0x84
	lsls r0, r0, #3
	strh r0, [r5, #8]
	b _08071C9C
	.align 2, 0
_08071C10: .4byte gUnk_03003F80
_08071C14:
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #8]
	b _08071C9C
_08071C1C:
	strb r0, [r5, #0xc]
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08071C4C
	ldrb r0, [r5, #0x12]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08071C42
	adds r0, r4, #0
	bl sub_0807A298
	bl sub_08079458
	movs r0, #0xa
	strb r0, [r4, #0xc]
_08071C42:
	ldr r0, _08071C48 @ =0x00000C1A
	b _08071C5A
	.align 2, 0
_08071C48: .4byte 0x00000C1A
_08071C4C:
	movs r0, #8
	ands r1, r0
	movs r0, #0xde
	lsls r0, r0, #1
	cmp r1, #0
	beq _08071C5A
	ldr r0, _08071CA0 @ =0x00000459
_08071C5A:
	ldr r2, _08071CA4 @ =gUnk_03003F80
	movs r3, #0
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	ldr r1, _08071CA8 @ =0xFEDBF2FE
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r5, r4, #0
	adds r5, #0x29
	ldrb r1, [r5]
	subs r0, #0x3d
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r3, [r2, #2]
	strb r3, [r2, #6]
	adds r0, r4, #0
	bl sub_0800451C
	bl sub_08077B2C
	movs r0, #0x87
	bl sub_080A3268
_08071C9C:
	pop {r4, r5, pc}
	.align 2, 0
_08071CA0: .4byte 0x00000459
_08071CA4: .4byte gUnk_03003F80
_08071CA8: .4byte 0xFEDBF2FE

	thumb_func_start sub_08071CAC
sub_08071CAC: @ 0x08071CAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08071CFE
	ldr r1, _08071CE0 @ =gUnk_03003F80
	ldr r2, [r1, #0x30]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08071CEC
	movs r0, #8
	ands r2, r0
	ldr r0, _08071CE4 @ =0x000002BD
	cmp r2, #0
	beq _08071CEE
	ldr r0, _08071CE8 @ =0x0000045A
	b _08071CEE
	.align 2, 0
_08071CE0: .4byte gUnk_03003F80
_08071CE4: .4byte 0x000002BD
_08071CE8: .4byte 0x0000045A
_08071CEC:
	ldr r0, _08071D00 @ =0x00000C1B
_08071CEE:
	strh r0, [r1, #8]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x7b
	bl sub_080A3268
_08071CFE:
	pop {r4, pc}
	.align 2, 0
_08071D00: .4byte 0x00000C1B

	thumb_func_start sub_08071D04
sub_08071D04: @ 0x08071D04
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080042B8
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08071D7A
	movs r4, #0
	movs r0, #0x28
	bl sub_080544DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08071D3A
	ldr r0, _08071D6C @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0xb5
	movs r1, #0x20
	strb r1, [r0]
	movs r0, #0x40
	movs r1, #0x60
	movs r2, #2
	bl CreateObject
	movs r4, #0x20
_08071D3A:
	cmp r4, #0
	beq _08071D74
	adds r0, r4, #0
	bl ModHealth
	movs r2, #0
	movs r0, #3
	strb r0, [r5, #0xd]
	ldr r1, _08071D70 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x3c
	strb r2, [r0]
	movs r0, #0xff
	strb r0, [r5, #0x15]
	movs r3, #0
	strh r2, [r5, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	movs r0, #1
	strb r0, [r1, #2]
	adds r1, #0x26
	strb r3, [r1]
	b _08071D7A
	.align 2, 0
_08071D6C: .4byte gUnk_02002A40
_08071D70: .4byte gUnk_03003F80
_08071D74:
	ldr r1, _08071D7C @ =gUnk_030010A0
	movs r0, #1
	strb r0, [r1, #5]
_08071D7A:
	pop {r4, r5, pc}
	.align 2, 0
_08071D7C: .4byte gUnk_030010A0

	thumb_func_start sub_08071D80
sub_08071D80: @ 0x08071D80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r5, _08071DB4 @ =gUnk_03003F80
	movs r0, #1
	strb r0, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08073904
	ldrb r1, [r5, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08071DB2
	movs r0, #0
	strb r0, [r5, #2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	bl sub_0805E564
	bl sub_080791D0
_08071DB2:
	pop {r4, r5, pc}
	.align 2, 0
_08071DB4: .4byte gUnk_03003F80

	thumb_func_start sub_08071DB8
sub_08071DB8: @ 0x08071DB8
	push {lr}
	ldr r2, _08071DCC @ =gUnk_0811BB3C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071DCC: .4byte gUnk_0811BB3C

	thumb_func_start sub_08071DD0
sub_08071DD0: @ 0x08071DD0
	push {lr}
	adds r2, r0, #0
	ldr r1, _08071DF4 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r2, #0xe]
	adds r3, r1, #0
	adds r3, #0x39
	ldrb r0, [r3]
	cmp r0, #0
	beq _08071DF8
	movs r0, #0
	strb r0, [r3]
	movs r0, #2
	strb r0, [r2, #0xd]
	adds r0, #0xfe
	b _08071E00
	.align 2, 0
_08071DF4: .4byte gUnk_03003F80
_08071DF8:
	movs r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x8a
	lsls r0, r0, #1
_08071E00:
	strh r0, [r1, #8]
	pop {pc}

	thumb_func_start sub_08071E04
sub_08071E04: @ 0x08071E04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08071E38
	ldr r5, _08071E34 @ =gUnk_03003F80
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08071E38
	bl sub_0807A1B8
	ldrb r0, [r5, #0x12]
	cmp r0, #1
	bne _08071E38
	movs r0, #7
	strb r0, [r5, #0x11]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #0x30]
	bl sub_080791BC
	b _08071E72
	.align 2, 0
_08071E34: .4byte gUnk_03003F80
_08071E38:
	adds r0, r4, #0
	bl sub_080042B8
	bl sub_08079B24
	cmp r0, #0
	bne _08071E4E
	adds r0, r4, #0
	bl sub_08079708
	b _08071E72
_08071E4E:
	bl sub_080792D8
	bl sub_0807953C
	cmp r0, #0
	beq _08071E60
	ldrb r0, [r4, #0xe]
	subs r0, #2
	b _08071E64
_08071E60:
	ldrb r0, [r4, #0xe]
	subs r0, #1
_08071E64:
	strb r0, [r4, #0xe]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _08071E72
	bl sub_080791BC
_08071E72:
	pop {r4, r5, pc}

	thumb_func_start sub_08071E74
sub_08071E74: @ 0x08071E74
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	bl sub_08079E08
	ldrb r0, [r4, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08071E96
	bl sub_080791BC
_08071E96:
	pop {r4, pc}

	thumb_func_start sub_08071E98
sub_08071E98: @ 0x08071E98
	push {lr}
	ldr r2, _08071EAC @ =gUnk_0811BB48
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071EAC: .4byte gUnk_0811BB48

	thumb_func_start sub_08071EB0
sub_08071EB0: @ 0x08071EB0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077B2C
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08077C3C
	cmp r0, #0
	beq _08071F12
	ldr r3, _08071EE4 @ =gUnk_03003F80
	adds r2, r3, #0
	adds r2, #0x38
	ldrb r1, [r2]
	adds r0, #0x68
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r2]
	cmp r0, #0x20
	bne _08071EEC
	ldr r0, _08071EE8 @ =0x00000614
	strh r0, [r3, #8]
	b _08071F12
	.align 2, 0
_08071EE4: .4byte gUnk_03003F80
_08071EE8: .4byte 0x00000614
_08071EEC:
	cmp r0, #0x20
	blt _08071F00
	cmp r0, #0x25
	bgt _08071F00
	ldr r0, _08071EFC @ =0x000002DF
	strh r0, [r3, #8]
	b _08071F12
	.align 2, 0
_08071EFC: .4byte 0x000002DF
_08071F00:
	movs r0, #0xc2
	lsls r0, r0, #3
	strh r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	movs r1, #2
	bl sub_0807CAA0
_08071F12:
	pop {r4, pc}

	thumb_func_start sub_08071F14
sub_08071F14: @ 0x08071F14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08071F32
	ldr r1, _08071F34 @ =gUnk_03003F80
	movs r0, #0
	str r0, [r1, #0x2c]
	bl sub_0807921C
_08071F32:
	pop {r4, pc}
	.align 2, 0
_08071F34: .4byte gUnk_03003F80

	thumb_func_start sub_08071F38
sub_08071F38: @ 0x08071F38
	push {lr}
	ldr r2, _08071F4C @ =gUnk_0811BB50
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071F4C: .4byte gUnk_0811BB50

	thumb_func_start sub_08071F50
sub_08071F50: @ 0x08071F50
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x78
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _08071F78 @ =gUnk_03003F80
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1, #8]
	bl sub_08077B20
	ldr r0, _08071F7C @ =0x00000195
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_08071F78: .4byte gUnk_03003F80
_08071F7C: .4byte 0x00000195

	thumb_func_start sub_08071F80
sub_08071F80: @ 0x08071F80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r5, r0, #0
	cmp r5, #0
	bne _08071FB8
	adds r0, r4, #0
	bl sub_08016A04
	ldr r0, _08071FB4 @ =gUnk_03003F80
	strb r5, [r0, #2]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _08071FB8
	bl sub_08079D48
	cmp r0, #0
	bne _08071FB8
	adds r0, r4, #0
	bl sub_08072008
	b _08072004
	.align 2, 0
_08071FB4: .4byte gUnk_03003F80
_08071FB8:
	bl sub_08079B24
	cmp r0, #0
	bne _08071FC8
	adds r0, r4, #0
	bl sub_08079708
	b _08071FFE
_08071FC8:
	ldr r0, _08071FEC @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08071FFE
	bl sub_0807953C
	cmp r0, #0
	beq _08071FF0
	ldrb r0, [r4, #0xe]
	subs r0, #3
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #2
	b _08071FF4
	.align 2, 0
_08071FEC: .4byte gUnk_03003F80
_08071FF0:
	adds r1, r4, #0
	adds r1, #0x62
_08071FF4:
	strb r0, [r1]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _08072004
_08071FFE:
	adds r0, r4, #0
	bl sub_08072008
_08072004:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08072008
sub_08072008: @ 0x08072008
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x3d
	movs r2, #0
	movs r0, #0xa0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x42
	strb r2, [r0]
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x62
	strb r2, [r0]
	ldr r2, _08072044 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08072048 @ =0xFFFFF7FE
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	movs r1, #0xd
	movs r2, #0
	bl CreateFX
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_08072044: .4byte gUnk_03003F80
_08072048: .4byte 0xFFFFF7FE

	thumb_func_start sub_0807204C
sub_0807204C: @ 0x0807204C
	push {lr}
	ldr r2, _08072060 @ =gUnk_0811BB58
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072060: .4byte gUnk_0811BB58

	thumb_func_start sub_08072064
sub_08072064: @ 0x08072064
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r2, _08072094 @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #8]
	bl sub_08077B2C
	pop {pc}
	.align 2, 0
_08072094: .4byte gUnk_03003F80

	thumb_func_start sub_08072098
sub_08072098: @ 0x08072098
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080720B4
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080720D8
	b _080720C2
_080720B4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080720D8
_080720C2:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080720D4
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_080720D4:
	bl sub_080791BC
_080720D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080720DC
sub_080720DC: @ 0x080720DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _080720F8
	ldr r0, _080720FC @ =gUnk_0811BB60
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080720F8:
	pop {r4, pc}
	.align 2, 0
_080720FC: .4byte gUnk_0811BB60

	thumb_func_start sub_08072100
sub_08072100: @ 0x08072100
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _08072148 @ =gUnk_08114F88
	str r0, [r4, #0x48]
	ldr r2, _0807214C @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807213A
	movs r0, #0xff
	strb r0, [r4, #0x15]
_0807213A:
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072154
	ldr r0, _08072150 @ =0x00000404
	b _08072158
	.align 2, 0
_08072148: .4byte gUnk_08114F88
_0807214C: .4byte gUnk_03003F80
_08072150: .4byte 0x00000404
_08072154:
	movs r0, #0x82
	lsls r0, r0, #1
_08072158:
	strh r0, [r2, #8]
	bl sub_08077B2C
	adds r0, r4, #0
	bl sub_08072168
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08072168
sub_08072168: @ 0x08072168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, #0
	beq _0807218A
	movs r1, #0x80
	lsls r1, r1, #7
_0807218A:
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, _080721A4 @ =gUnk_03003F80
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080721A8
	adds r0, r4, #0
	bl sub_0806F69C
	b _080721AC
	.align 2, 0
_080721A4: .4byte gUnk_03003F80
_080721A8:
	bl sub_08079E08
_080721AC:
	ldr r1, _080721E0 @ =gUnk_03003F80
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0xd]
	bl sub_08019840
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080721DE
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08016A04
	bl sub_080791BC
_080721DE:
	pop {r4, pc}
	.align 2, 0
_080721E0: .4byte gUnk_03003F80

	thumb_func_start sub_080721E4
sub_080721E4: @ 0x080721E4
	push {lr}
	ldr r1, _08072208 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #0x1a
	strb r2, [r1]
	ldr r2, _0807220C @ =gUnk_0811BB68
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, _08072210 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_08072208: .4byte gUnk_03003F80
_0807220C: .4byte gUnk_0811BB68
_08072210: .4byte gUnk_0200AF00

	thumb_func_start sub_08072214
sub_08072214: @ 0x08072214
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r0, #0x80
	strh r0, [r3, #0x24]
	ldr r2, _08072244 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r3, #0xe]
	ldrb r0, [r3, #0x14]
	movs r1, #4
	eors r0, r1
	lsls r0, r0, #2
	strb r0, [r3, #0x15]
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08072248
	movs r0, #0xd3
	lsls r0, r0, #2
	b _0807224A
	.align 2, 0
_08072244: .4byte gUnk_03003F80
_08072248:
	ldr r0, _0807225C @ =0x00000944
_0807224A:
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	bl sub_08072260
	pop {pc}
	.align 2, 0
_0807225C: .4byte 0x00000944

	thumb_func_start sub_08072260
sub_08072260: @ 0x08072260
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0807229C @ =gUnk_03003F80
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	bl sub_08079E08
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080722B0
	ldr r0, [r5, #0x30]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080722A0
	movs r0, #0xd3
	lsls r0, r0, #2
	b _080722A2
	.align 2, 0
_0807229C: .4byte gUnk_03003F80
_080722A0:
	ldr r0, _080722B4 @ =0x00000944
_080722A2:
	strh r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	bl sub_080791BC
_080722B0:
	pop {r4, r5, pc}
	.align 2, 0
_080722B4: .4byte 0x00000944

	thumb_func_start sub_080722B8
sub_080722B8: @ 0x080722B8
	push {lr}
	ldr r1, _080722D4 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #0xa
	strb r2, [r1]
	ldr r2, _080722D8 @ =gUnk_0811BB70
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080722D4: .4byte gUnk_03003F80
_080722D8: .4byte gUnk_0811BB70

	thumb_func_start sub_080722DC
sub_080722DC: @ 0x080722DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r2, _08072318 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0807231C
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0x42
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0807230E
	str r4, [r0, #0x54]
_0807230E:
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r5, #8]
	b _08072332
	.align 2, 0
_08072318: .4byte gUnk_03003F80
_0807231C:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xa
	strb r0, [r1]
_08072332:
	ldr r0, [r5, #0x30]
	ldr r1, _08072350 @ =0x00000401
	orrs r0, r1
	str r0, [r5, #0x30]
	bl sub_08077B2C
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080A3268
	movs r0, #0x7a
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_08072350: .4byte 0x00000401

	thumb_func_start sub_08072354
sub_08072354: @ 0x08072354
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_0806F854
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08079744
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r3, r0, #0
	cmp r3, #0
	bne _080723C0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	strb r3, [r0]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r2, _080723C4 @ =gUnk_03003F80
	ldr r0, _080723C8 @ =0x000002C1
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	ldr r1, _080723CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFX
	movs r0, #0xd3
	lsls r0, r0, #1
	bl sub_080A3268
_080723C0:
	pop {r4, pc}
	.align 2, 0
_080723C4: .4byte gUnk_03003F80
_080723C8: .4byte 0x000002C1
_080723CC: .4byte 0xFFFFFBFF

	thumb_func_start sub_080723D0
sub_080723D0: @ 0x080723D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807240A
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	subs r0, #0x16
	bl ModHealth
	bl sub_08079458
_0807240A:
	pop {r4, pc}

	thumb_func_start sub_0807240C
sub_0807240C: @ 0x0807240C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08072448
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	ldr r2, _0807244C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08072450 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	bl sub_08079458
_08072448:
	pop {pc}
	.align 2, 0
_0807244C: .4byte gUnk_03003F80
_08072450: .4byte 0xFFFFFBFF

	thumb_func_start sub_08072454
sub_08072454: @ 0x08072454
	push {lr}
	ldr r2, _08072468 @ =gUnk_0811BB80
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072468: .4byte gUnk_0811BB80

	thumb_func_start sub_0807246C
sub_0807246C: @ 0x0807246C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r2, _0807248C @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #8]
	movs r0, #0x7b
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_0807248C: .4byte gUnk_03003F80

	thumb_func_start sub_08072490
sub_08072490: @ 0x08072490
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080724AE
	adds r0, r1, #0
	bl sub_080042B8
	bl sub_08079E08
	b _080724C2
_080724AE:
	adds r0, r1, #0
	adds r0, #0x3d
	movs r1, #0x3c
	strb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	bl ModHealth
	bl sub_080791D0
_080724C2:
	pop {pc}

	thumb_func_start sub_080724C4
sub_080724C4: @ 0x080724C4
	push {lr}
	ldr r2, _080724D8 @ =gUnk_0811BB88
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080724D8: .4byte gUnk_0811BB88

	thumb_func_start sub_080724DC
sub_080724DC: @ 0x080724DC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	bl sub_0807A108
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x29
	beq _0807254C
	ldr r1, _08072530 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072512
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072512
	adds r0, r4, #0
	bl sub_0807AE20
_08072512:
	ldr r0, _08072534 @ =gUnk_03000BF0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08072538
	ldrb r0, [r4, #0x11]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x11]
	adds r0, r4, #0
	bl sub_080728AC
	b _08072588
	.align 2, 0
_08072530: .4byte gUnk_03003F80
_08072534: .4byte gUnk_03000BF0
_08072538:
	ldr r0, _08072548 @ =gUnk_03003F80
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _08072588
	adds r0, r4, #0
	bl sub_080042B8
	b _08072588
	.align 2, 0
_08072548: .4byte gUnk_03003F80
_0807254C:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _08072570 @ =gUnk_02034350
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072588
	ldr r2, _08072574 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807257C
	ldr r0, _08072578 @ =0x00000C18
	b _08072580
	.align 2, 0
_08072570: .4byte gUnk_02034350
_08072574: .4byte gUnk_03003F80
_08072578: .4byte 0x00000C18
_0807257C:
	movs r0, #0x82
	lsls r0, r0, #1
_08072580:
	strh r0, [r2, #8]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_08072588:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807258C
sub_0807258C: @ 0x0807258C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080725D0 @ =gUnk_03000BF0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08072604
	adds r0, r4, #0
	bl sub_0807A894
	cmp r0, #0x29
	bne _080725E4
	bl sub_08079E08
	bl sub_080797C4
	cmp r0, #0
	beq _080725DC
	ldr r2, _080725D4 @ =gUnk_03003F80
	ldr r1, _080725D8 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x18]
	ldrb r1, [r4, #0x11]
	lsrs r2, r1, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	bl sub_080728AC
	b _08072604
	.align 2, 0
_080725D0: .4byte gUnk_03000BF0
_080725D4: .4byte gUnk_03003F80
_080725D8: .4byte gLinkEntity
_080725DC:
	adds r0, r4, #0
	bl sub_080042B8
	b _08072604
_080725E4:
	ldr r2, _08072624 @ =gUnk_03003F80
	ldr r1, _08072628 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x18]
	ldrb r1, [r4, #0x11]
	lsrs r2, r1, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	bl sub_080728AC
_08072604:
	ldr r1, _08072624 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072620
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072620
	adds r0, r4, #0
	bl sub_0807AE20
_08072620:
	pop {r4, pc}
	.align 2, 0
_08072624: .4byte gUnk_03003F80
_08072628: .4byte gLinkEntity

	thumb_func_start sub_0807262C
sub_0807262C: @ 0x0807262C
	push {lr}
	ldr r1, _08072648 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #9
	strb r2, [r1]
	ldr r2, _0807264C @ =gUnk_0811BB90
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072648: .4byte gUnk_03003F80
_0807264C: .4byte gUnk_0811BB90

	thumb_func_start sub_08072650
sub_08072650: @ 0x08072650
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08072698 @ =gUnk_03003F80
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0807266E
	ldr r0, _0807269C @ =gLinkEntity
	bl sub_0806F948
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0807266E:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	bl sub_08077B2C
	ldr r3, [r5, #0x30]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080726A4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080726A0 @ =0x00000C08
	b _080726BE
	.align 2, 0
_08072698: .4byte gUnk_03003F80
_0807269C: .4byte gLinkEntity
_080726A0: .4byte 0x00000C08
_080726A4:
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0x1e
	strb r1, [r0]
	movs r0, #8
	ands r3, r0
	cmp r3, #0
	beq _080726BA
	movs r0, #0x87
	lsls r0, r0, #3
	b _080726BE
_080726BA:
	movs r0, #0xab
	lsls r0, r0, #2
_080726BE:
	strh r0, [r5, #8]
	ldr r2, _080726E0 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080726E4
	movs r0, #0x79
	bl sub_080A3268
	b _080726EA
	.align 2, 0
_080726E0: .4byte gUnk_03003F80
_080726E4:
	movs r0, #0x78
	bl sub_080A3268
_080726EA:
	movs r0, #0x7e
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080726F4
sub_080726F4: @ 0x080726F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _08072744 @ =gUnk_03003F80
	ldr r2, [r3, #0x30]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _08072730
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _0807274C
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807274C
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807274C
_08072730:
	ldr r0, _08072748 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r3, #0x30]
	bl sub_08078EFC
	cmp r0, #0
	beq _08072740
	b _080728A0
_08072740:
	b _080727E0
	.align 2, 0
_08072744: .4byte gUnk_03003F80
_08072748: .4byte 0xFFFBFFFF
_0807274C:
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r0, _080727A0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807277E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807277E
	ldr r0, _080727A4 @ =gLinkEntity
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFX
	movs r0, #4
	strb r0, [r4, #0xe]
_0807277E:
	ldr r5, _080727A0 @ =gUnk_03003F80
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807278E
	bl sub_0807A1B8
_0807278E:
	bl sub_08078EFC
	cmp r0, #0
	beq _080727AC
	ldr r0, [r5, #0x30]
	ldr r1, _080727A8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	b _080728A0
	.align 2, 0
_080727A0: .4byte gUnk_03003F80
_080727A4: .4byte gLinkEntity
_080727A8: .4byte 0xFFFBFFFF
_080727AC:
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080727C4
	ldr r0, _080727C0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #0x30]
	b _080728A0
	.align 2, 0
_080727C0: .4byte 0xFFFBFFFF
_080727C4:
	adds r0, r4, #0
	bl sub_0807AC54
	cmp r0, #0
	bne _080728A0
	ldr r1, [r5, #0x30]
	movs r3, #0x94
	lsls r3, r3, #2
	ands r3, r1
	cmp r3, #0
	beq _080727EC
	ldr r0, _080727E8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #0x30]
_080727E0:
	adds r0, r4, #0
	bl sub_080728AC
	b _080728A0
	.align 2, 0
_080727E8: .4byte 0xFFFBFFFF
_080727EC:
	ldrb r0, [r5, #0x12]
	cmp r0, #0x17
	bne _080727FE
	adds r0, r4, #0
	bl sub_0800892E
	adds r5, r4, #0
	adds r5, #0x5a
	b _08072844
_080727FE:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	movs r2, #0xf
	ands r2, r0
	adds r5, r1, #0
	cmp r2, #1
	beq _0807282A
	cmp r2, #1
	bgt _08072818
	cmp r2, #0
	beq _08072822
	b _0807283C
_08072818:
	cmp r2, #2
	beq _08072832
	cmp r2, #3
	beq _0807283A
	b _0807283C
_08072822:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0807283C
_0807282A:
	ldrh r0, [r4, #0x24]
	adds r0, #0x20
	strh r0, [r4, #0x24]
	b _0807283C
_08072832:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0807283C
_0807283A:
	strh r3, [r4, #0x24]
_0807283C:
	bl sub_08078F24
	bl sub_08079E08
_08072844:
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08072860
	ldr r0, _080728A4 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08072860
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
_08072860:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08072870
	adds r0, r4, #0
	bl sub_08077698
_08072870:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072882
	ldr r0, _080728A4 @ =gUnk_03003F80
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08072886
_08072882:
	bl sub_080791D0
_08072886:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807289A
	ldr r0, _080728A4 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	ldr r2, _080728A8 @ =0xFFDBFFFF
	ands r1, r2
	str r1, [r0, #0x30]
_0807289A:
	adds r0, r4, #0
	bl sub_080042B8
_080728A0:
	pop {r4, r5, pc}
	.align 2, 0
_080728A4: .4byte gUnk_03003F80
_080728A8: .4byte 0xFFDBFFFF

	thumb_func_start sub_080728AC
sub_080728AC: @ 0x080728AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08079938
	ldr r0, _080728C8 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080728CC
	adds r0, r4, #0
	bl sub_0807B068
	b _080728D0
	.align 2, 0
_080728C8: .4byte gUnk_03003F80
_080728CC:
	bl sub_08078F60
_080728D0:
	ldr r1, _08072940 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _080728E0
	movs r0, #0
	strh r0, [r4, #0x24]
_080728E0:
	ldr r0, [r1, #0x30]
	movs r5, #0x40
	ands r5, r0
	adds r3, r0, #0
	cmp r5, #0
	bne _080728F6
	ldr r0, _08072944 @ =gLinkEntity
	ldrb r1, [r0, #0x18]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #0x18]
_080728F6:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08072910
	ldr r2, _08072944 @ =gLinkEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08072910:
	ldr r0, _08072948 @ =gUnk_03000BF0
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0807292C
	cmp r5, #0
	beq _08072928
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08072928:
	bl sub_080791D0
_0807292C:
	ldr r0, _08072940 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807293C
	bl sub_0807A1B8
_0807293C:
	pop {r4, r5, pc}
	.align 2, 0
_08072940: .4byte gUnk_03003F80
_08072944: .4byte gLinkEntity
_08072948: .4byte gUnk_03000BF0

	thumb_func_start sub_0807294C
sub_0807294C: @ 0x0807294C
	push {lr}
	ldr r1, _08072968 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #0x17
	strb r2, [r1]
	ldr r2, _0807296C @ =gUnk_0811BB98
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072968: .4byte gUnk_03003F80
_0807296C: .4byte gUnk_0811BB98

	thumb_func_start sub_08072970
sub_08072970: @ 0x08072970
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072A4C
	movs r7, #1
	strb r7, [r5, #0xd]
	ldrh r2, [r5, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	ands r1, r0
	movs r0, #0xa
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #0x32]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	strb r3, [r5, #0xe]
	ldr r2, _080729D8 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080729DC
	movs r0, #0x95
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r6, r5, #0
	adds r6, #0x38
	b _08072A14
	.align 2, 0
_080729D8: .4byte gUnk_03003F80
_080729DC:
	ldr r0, _08072A50 @ =0x0000061C
	strh r0, [r2, #8]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08072A54 @ =gUnk_03000BF0
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
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	ldr r1, _08072A58 @ =0x00004020
	adds r6, r4, #0
	cmp r0, r1
	bne _08072A14
	strb r7, [r5, #0xe]
_08072A14:
	ldr r0, _08072A5C @ =0x00004070
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _08072A54 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r6]
	bl sub_0800015E
	bl sub_08077B2C
	adds r0, r5, #0
	bl sub_08072A60
	movs r0, #0x81
	bl sub_080A3268
_08072A4C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08072A50: .4byte 0x0000061C
_08072A54: .4byte gUnk_03000BF0
_08072A58: .4byte 0x00004020
_08072A5C: .4byte 0x00004070

	thumb_func_start sub_08072A60
sub_08072A60: @ 0x08072A60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08072AC4
	ldrb r0, [r2, #0xe]
	cmp r0, #1
	bne _08072A9C
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x28
	strb r0, [r2, #0xe]
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x61
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08072A94 @ =gUnk_03003F80
	ldr r0, _08072A98 @ =0x00000624
	strh r0, [r1, #8]
	b _08072ACA
	.align 2, 0
_08072A94: .4byte gUnk_03003F80
_08072A98: .4byte 0x00000624
_08072A9C:
	movs r0, #2
	strb r0, [r2, #0xd]
	ldr r2, _08072AB4 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072ABC
	ldr r0, _08072AB8 @ =0x00000954
	strh r0, [r2, #8]
	b _08072ACA
	.align 2, 0
_08072AB4: .4byte gUnk_03003F80
_08072AB8: .4byte 0x00000954
_08072ABC:
	movs r0, #0xc4
	lsls r0, r0, #3
	strh r0, [r2, #8]
	b _08072ACA
_08072AC4:
	adds r0, r2, #0
	bl sub_080042B8
_08072ACA:
	pop {pc}

	thumb_func_start sub_08072ACC
sub_08072ACC: @ 0x08072ACC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08072AE0 @ =gUnk_03003F80
	ldrb r3, [r5, #0xd]
	lsls r2, r3, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	bne _08072AE4
	movs r0, #0
	b _08072B56
	.align 2, 0
_08072AE0: .4byte gUnk_03003F80
_08072AE4:
	ldrb r1, [r4, #0xf]
	cmp r1, #7
	bls _08072B50
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	strb r3, [r4, #0x15]
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x80
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x41
	strb r0, [r5, #2]
	bl sub_0807921C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08072B4C @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	b _08072B58
	.align 2, 0
_08072B4C: .4byte gUnk_03000BF0
_08072B50:
	lsrs r0, r2, #0x1a
	strb r0, [r4, #0x14]
	adds r0, r1, #1
_08072B56:
	strb r0, [r4, #0xf]
_08072B58:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08072B5C
sub_08072B5C: @ 0x08072B5C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	movs r1, #0x28
	subs r1, r1, r0
	asrs r1, r1, #4
	adds r1, #1
	adds r0, r5, #0
	bl sub_080042BA
	adds r0, r5, #0
	bl sub_0806F948
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08072B82
	subs r0, #1
	strb r0, [r5, #0xe]
	b _08072C40
_08072B82:
	ldr r0, _08072C04 @ =0x00004021
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08072C08 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #1
	bl sub_0807A2F8
	adds r4, r0, #0
	cmp r4, #0
	bne _08072C10
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x40
	strh r0, [r5, #0x24]
	movs r0, #0xe4
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	ldr r1, _08072C0C @ =gUnk_03003F80
	movs r0, #0x41
	strb r0, [r1, #2]
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806F854
	bl sub_0807921C
	b _08072C40
	.align 2, 0
_08072C04: .4byte 0x00004021
_08072C08: .4byte gUnk_03000BF0
_08072C0C: .4byte gUnk_03003F80
_08072C10:
	bl sub_08052620
	cmp r0, #0
	bne _08072C1E
	adds r0, r5, #0
	bl sub_08004542
_08072C1E:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r4, r4, #4
	subs r4, #4
	lsls r4, r4, #0xc
	str r4, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldr r1, _08072C44 @ =gUnk_03003F80
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r1, #8]
	movs r0, #0x7c
	bl sub_080A3268
_08072C40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08072C44: .4byte gUnk_03003F80

	thumb_func_start sub_08072C48
sub_08072C48: @ 0x08072C48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08072C98
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	ldr r4, _08072C90 @ =gUnk_03003F80
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _08072C94
	bl sub_08008B22
	cmp r0, #0
	beq _08072C98
	movs r0, #7
	strb r0, [r4, #0x11]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072C98
	bl sub_080791BC
	b _08072C98
	.align 2, 0
_08072C90: .4byte gUnk_03003F80
_08072C94:
	bl sub_0807921C
_08072C98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08072C9C
sub_08072C9C: @ 0x08072C9C
	push {lr}
	ldr r1, _08072CB8 @ =gUnk_03003F80
	adds r1, #0xa8
	movs r2, #0x11
	strb r2, [r1]
	ldr r2, _08072CBC @ =gUnk_0811BBAC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072CB8: .4byte gUnk_03003F80
_08072CBC: .4byte gUnk_0811BBAC

	thumb_func_start sub_08072CC0
sub_08072CC0: @ 0x08072CC0
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r3, _08072CF4 @ =gUnk_03003F80
	adds r1, r3, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	lsrs r1, r1, #2
	adds r1, #1
	strb r1, [r0, #0xf]
	adds r1, r3, #0
	adds r1, #0x39
	ldrb r1, [r1]
	strb r1, [r0, #0x15]
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0x24]
	ldr r0, _08072CF8 @ =0x00000524
	strh r0, [r3, #8]
	strb r2, [r3, #5]
	bx lr
	.align 2, 0
_08072CF4: .4byte gUnk_03003F80
_08072CF8: .4byte 0x00000524

	thumb_func_start sub_08072CFC
sub_08072CFC: @ 0x08072CFC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_080042BA
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08072D1C
	adds r0, r4, #0
	bl sub_0806F69C
	b _08072D4E
_08072D1C:
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r2, _08072D50 @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r0, [r1]
	cmp r0, #7
	bhi _08072D30
	movs r0, #8
	strb r0, [r1]
_08072D30:
	ldrb r0, [r1]
	lsls r0, r0, #0xc
	str r0, [r4, #0x20]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r2, #8]
	movs r0, #5
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	bl sub_08077B2C
_08072D4E:
	pop {r4, pc}
	.align 2, 0
_08072D50: .4byte gUnk_03003F80

	thumb_func_start sub_08072D54
sub_08072D54: @ 0x08072D54
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080042B8
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08072D7A
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	b _08072E80
_08072D7A:
	adds r0, r4, #0
	bl sub_0806F730
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	adds r2, r0, #0
	ldrb r5, [r4, #0xf]
	cmp r5, #1
	beq _08072DD0
	cmp r5, #1
	bgt _08072D9C
	cmp r5, #0
	beq _08072DA6
	b _08072E6C
_08072D9C:
	cmp r5, #2
	beq _08072DFA
	cmp r5, #3
	beq _08072E30
	b _08072E6C
_08072DA6:
	ldr r1, _08072DC8 @ =gUnk_0811BBD4
	ldr r0, _08072DCC @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E6C
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	b _08072E6C
	.align 2, 0
_08072DC8: .4byte gUnk_0811BBD4
_08072DCC: .4byte gLinkEntity
_08072DD0:
	ldr r1, _08072DEC @ =gUnk_0811BBD4
	ldr r0, _08072DF0 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072DF4
	strb r5, [r4, #0xe]
	b _08072E6C
	.align 2, 0
_08072DEC: .4byte gUnk_0811BBD4
_08072DF0: .4byte gLinkEntity
_08072DF4:
	movs r0, #2
	strb r0, [r4, #0xf]
	b _08072E6C
_08072DFA:
	ldrb r0, [r4, #0x14]
	movs r5, #4
	eors r0, r5
	strb r0, [r4, #0x14]
	ldr r1, _08072E28 @ =gUnk_0811BBD4
	ldr r0, _08072E2C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E22
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xf]
_08072E22:
	ldrb r0, [r4, #0x14]
	eors r0, r5
	b _08072E6A
	.align 2, 0
_08072E28: .4byte gUnk_0811BBD4
_08072E2C: .4byte gLinkEntity
_08072E30:
	ldrb r0, [r4, #0x14]
	movs r1, #4
	eors r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _08072E58 @ =gUnk_0811BBD4
	ldr r0, _08072E5C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E60
	movs r0, #1
	strb r0, [r4, #0xe]
	b _08072E64
	.align 2, 0
_08072E58: .4byte gUnk_0811BBD4
_08072E5C: .4byte gLinkEntity
_08072E60:
	movs r0, #4
	strb r0, [r4, #0xf]
_08072E64:
	ldrb r0, [r4, #0x14]
	movs r1, #4
	eors r0, r1
_08072E6A:
	strb r0, [r4, #0x14]
_08072E6C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08072E7A
	adds r0, r4, #0
	bl sub_0806F69C
	b _08072E7E
_08072E7A:
	bl sub_08079E08
_08072E7E:
	movs r0, #0
_08072E80:
	strb r0, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08072F10
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08072EAA
	adds r0, r4, #0
	bl sub_0800455E
	b _08072EB0
_08072EAA:
	adds r0, r4, #0
	bl sub_08004542
_08072EB0:
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	ldr r5, _08072EDC @ =gUnk_03003F80
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _08072EE0
	bl sub_08008B22
	cmp r0, #0
	beq _08072F10
	movs r0, #7
	strb r0, [r5, #0x11]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072F10
	bl sub_080791BC
	b _08072F10
	.align 2, 0
_08072EDC: .4byte gUnk_03003F80
_08072EE0:
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072EF4
	ldr r0, _08072EF0 @ =0x00000424
	b _08072EF8
	.align 2, 0
_08072EF0: .4byte 0x00000424
_08072EF4:
	movs r0, #0x82
	lsls r0, r0, #4
_08072EF8:
	strh r0, [r5, #8]
	movs r1, #0
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	movs r0, #0x7d
	bl sub_080A3268
_08072F10:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08072F14
sub_08072F14: @ 0x08072F14
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08072F2C
	bl sub_0807921C
	b _08072F32
_08072F2C:
	adds r0, r1, #0
	bl sub_080042B8
_08072F32:
	pop {pc}

	thumb_func_start sub_08072F34
sub_08072F34: @ 0x08072F34
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _08072F86
	ldr r6, _08072F88 @ =gUnk_03003F80
	adds r1, r6, #0
	adds r1, #0xa8
	movs r0, #0x18
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0807A1E8
	strb r0, [r6, #0x12]
	ldr r1, _08072F8C @ =gUnk_0811BBE4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r5, r4, #0
	adds r5, #0x42
	ldrb r0, [r5]
	cmp r0, #0
	beq _08072F86
	bl sub_080792D8
	ldrb r1, [r5]
	cmp r1, #0
	bne _08072F86
	movs r0, #0x1d
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	strh r1, [r4, #0x30]
	ldr r0, _08072F90 @ =0x000002CF
	strh r0, [r6, #8]
_08072F86:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08072F88: .4byte gUnk_03003F80
_08072F8C: .4byte gUnk_0811BBE4
_08072F90: .4byte 0x000002CF

	thumb_func_start sub_08072F94
sub_08072F94: @ 0x08072F94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08072FB4 @ =gUnk_03003F80
	ldrb r1, [r0, #0x12]
	adds r3, r0, #0
	cmp r1, #0x1e
	beq _08072FB8
	cmp r1, #0x1e
	blt _08072FAE
	cmp r1, #0x2c
	bgt _08072FAE
	cmp r1, #0x2a
	bge _08072FB8
_08072FAE:
	bl sub_0807921C
	b _0807308C
	.align 2, 0
_08072FB4: .4byte gUnk_03003F80
_08072FB8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	adds r2, r3, #0
	ldrb r1, [r2, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08073072
	strb r1, [r4, #0x15]
	ldrb r0, [r2, #0xd]
	cmp r0, #8
	beq _08072FDE
	cmp r0, #0x18
	bne _08073008
_08072FDE:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x1e
	beq _0807308C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08072FF8
	movs r0, #0xb5
	lsls r0, r0, #2
	b _08072FFA
_08072FF8:
	ldr r0, _08073004 @ =0x000002D5
_08072FFA:
	strh r0, [r2, #8]
	adds r0, r4, #0
	bl sub_08073094
	b _0807306A
	.align 2, 0
_08073004: .4byte 0x000002D5
_08073008:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x1e
	bne _08073020
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08073020
	adds r0, r1, #0
	adds r0, #8
	movs r1, #0x10
	ands r0, r1
	strb r0, [r4, #0x15]
_08073020:
	ldrb r1, [r4, #0x15]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807304C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08073044
	ldr r0, _08073040 @ =0x000002D1
	b _08073068
	.align 2, 0
_08073040: .4byte 0x000002D1
_08073044:
	ldr r0, _08073048 @ =0x000002D2
	b _08073068
	.align 2, 0
_08073048: .4byte 0x000002D2
_0807304C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08073064
	ldr r0, _08073060 @ =0x000002CF
	b _08073068
	.align 2, 0
_08073060: .4byte 0x000002CF
_08073064:
	movs r0, #0xb4
	lsls r0, r0, #2
_08073068:
	strh r0, [r3, #8]
_0807306A:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _0807308C
_08073072:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073088
	movs r0, #0xb5
	lsls r0, r0, #2
	strh r0, [r2, #8]
	b _0807308C
_08073088:
	ldr r0, _08073090 @ =0x000002D5
	strh r0, [r3, #8]
_0807308C:
	pop {r4, pc}
	.align 2, 0
_08073090: .4byte 0x000002D5

	thumb_func_start sub_08073094
sub_08073094: @ 0x08073094
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _080730FC @ =gUnk_0811BBEC
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	bl sub_08079E08
	bl sub_08019840
	cmp r0, #0
	bne _080731A4
	ldr r0, _08073100 @ =gUnk_03003F80
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	ldrb r0, [r0, #0x12]
	cmp r0, #0x2a
	beq _080730DE
	cmp r0, #0x2c
	beq _080730DE
	bl sub_0807A1B8
_080730DE:
	bl sub_08078EFC
	cmp r0, #0
	bne _080731A4
	ldr r1, _08073100 @ =gUnk_03003F80
	ldrb r0, [r1, #0x12]
	subs r0, #0x19
	adds r2, r1, #0
	cmp r0, #0x13
	bhi _08073178
	lsls r0, r0, #2
	ldr r1, _08073104 @ =_08073108
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080730FC: .4byte gUnk_0811BBEC
_08073100: .4byte gUnk_03003F80
_08073104: .4byte _08073108
_08073108: @ jump table
	.4byte _0807316C @ case 0
	.4byte _08073178 @ case 1
	.4byte _08073178 @ case 2
	.4byte _08073178 @ case 3
	.4byte _08073178 @ case 4
	.4byte _0807317E @ case 5
	.4byte _08073178 @ case 6
	.4byte _08073178 @ case 7
	.4byte _08073178 @ case 8
	.4byte _08073178 @ case 9
	.4byte _08073178 @ case 10
	.4byte _08073178 @ case 11
	.4byte _08073178 @ case 12
	.4byte _08073178 @ case 13
	.4byte _08073178 @ case 14
	.4byte _08073178 @ case 15
	.4byte _08073178 @ case 16
	.4byte _08073158 @ case 17
	.4byte _0807317E @ case 18
	.4byte _08073158 @ case 19
_08073158:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2, #0x30]
	b _0807317E
_0807316C:
	adds r0, r4, #0
	bl sub_08074808
	bl sub_080791D0
	b _080731A4
_08073178:
	bl sub_0807921C
	b _080731A4
_0807317E:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080731A4
	bl sub_0807A1B8
	bl sub_08078EFC
	cmp r0, #0
	bne _080731A4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
_080731A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080731A8
sub_080731A8: @ 0x080731A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080731D0 @ =gUnk_03003F80
	adds r0, #0xa8
	movs r1, #0x1c
	strb r1, [r0]
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	ldr r1, _080731D4 @ =gUnk_0811BBF8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080731D0: .4byte gUnk_03003F80
_080731D4: .4byte gUnk_0811BBF8

	thumb_func_start sub_080731D8
sub_080731D8: @ 0x080731D8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r2, #0
	strb r0, [r4, #0x10]
	movs r1, #0
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x14]
	ldrh r1, [r4, #0x2e]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r7, #8
	orrs r0, r7
	strh r0, [r4, #0x2e]
	strh r2, [r4, #0x2c]
	ldr r6, _08073214 @ =gUnk_03003F80
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073218
	movs r0, #1
	strb r0, [r4, #0xd]
	b _0807329A
	.align 2, 0
_08073214: .4byte gUnk_03003F80
_08073218:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	str r0, [r4, #0x54]
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _08073270
	ldrh r1, [r4, #0x32]
	adds r0, r5, #0
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x2e]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r4, #0x2e]
	strb r7, [r4, #0x15]
	movs r0, #2
	strb r0, [r4, #0x14]
	ldr r0, _0807326C @ =0x00000187
	bl sub_080A3268
	b _08073294
	.align 2, 0
_0807326C: .4byte 0x00000187
_08073270:
	ldrh r1, [r4, #0x32]
	adds r0, r5, #0
	ands r0, r1
	adds r0, #2
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x2e]
	adds r0, r5, #0
	ands r0, r1
	adds r0, #0xf
	strh r0, [r4, #0x2e]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	movs r0, #6
	strb r0, [r4, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #1
	bl sub_080A3268
_08073294:
	adds r0, r4, #0
	bl sub_08066DE4
_0807329A:
	ldr r2, _080732AC @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080732B4
	ldr r0, _080732B0 @ =0x00000404
	b _080732B8
	.align 2, 0
_080732AC: .4byte gUnk_03003F80
_080732B0: .4byte 0x00000404
_080732B4:
	movs r0, #0x82
	lsls r0, r0, #1
_080732B8:
	strh r0, [r2, #8]
	ldr r1, _080732CC @ =gUnk_03000BF0
	movs r0, #0
	str r0, [r1, #0x30]
	bl sub_0807A108
	bl sub_08077B2C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080732CC: .4byte gUnk_03000BF0

	thumb_func_start sub_080732D0
sub_080732D0: @ 0x080732D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x28
	beq _080732EE
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
	b _08073328
_080732EE:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	strh r1, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	ldr r0, _08073318 @ =gUnk_03003F80
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _08073320
	ldr r0, _0807331C @ =0x00000187
	bl sub_080A3268
	b _08073328
	.align 2, 0
_08073318: .4byte gUnk_03003F80
_0807331C: .4byte 0x00000187
_08073320:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl sub_080A3268
_08073328:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807332C
sub_0807332C: @ 0x0807332C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, _08073344 @ =gUnk_03003F80
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _08073348
	movs r0, #0
	b _0807334A
	.align 2, 0
_08073344: .4byte gUnk_03003F80
_08073348:
	movs r0, #0x1c
_0807334A:
	strb r0, [r4, #0x15]
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	beq _08073386
	ldr r0, _08073368 @ =gUnk_03003F80
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _0807336C
	movs r0, #2
	strb r0, [r4, #0x14]
	movs r0, #4
	b _0807337C
	.align 2, 0
_08073368: .4byte gUnk_03003F80
_0807336C:
	movs r0, #6
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	bls _0807337E
	subs r0, #1
	movs r1, #0x1f
	ands r0, r1
_0807337C:
	strb r0, [r4, #0x15]
_0807337E:
	adds r0, r4, #0
	bl sub_0806F69C
	b _080733B6
_08073386:
	ldr r0, _0807339C @ =gUnk_03003F80
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080733A4
	ldr r0, _080733A0 @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	bl sub_080791BC
	b _080733B6
	.align 2, 0
_0807339C: .4byte gUnk_03003F80
_080733A0: .4byte gUnk_03000BF0
_080733A4:
	ldr r0, _080733B8 @ =gUnk_03001000
	movs r1, #3
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #0xb]
	movs r0, #5
	movs r1, #8
	bl sub_08050054
_080733B6:
	pop {r4, pc}
	.align 2, 0
_080733B8: .4byte gUnk_03001000

	thumb_func_start sub_080733BC
sub_080733BC: @ 0x080733BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	bne _080733FC
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #4
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _080733FC
	bl sub_0805E7BC
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080733F6
	adds r0, r4, #0
	bl sub_0807AABC
	b _080733FC
_080733F6:
	adds r0, r4, #0
	bl sub_0807AA80
_080733FC:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08073418
	ldr r0, _0807341C @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	bl sub_0807921C
_08073418:
	pop {r4, pc}
	.align 2, 0
_0807341C: .4byte gUnk_03000BF0

	thumb_func_start sub_08073420
sub_08073420: @ 0x08073420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _0807345E
	bl sub_0807A1B8
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
	ldr r0, _08073460 @ =gUnk_03003F80
	adds r0, #0xa8
	movs r1, #8
	strb r1, [r0]
	ldr r1, _08073464 @ =gUnk_0811BC08
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0807345E:
	pop {r4, pc}
	.align 2, 0
_08073460: .4byte gUnk_03003F80
_08073464: .4byte gUnk_0811BC08

	thumb_func_start sub_08073468
sub_08073468: @ 0x08073468
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080734CC @ =gUnk_03003F80
	movs r1, #0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r5, #8]
	strb r1, [r5, #2]
	ldr r0, _080734D0 @ =0xFFFF0000
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x7c]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r1, [r5, #0x30]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080734AC
	orrs r1, r2
	str r1, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x61
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
_080734AC:
	bl sub_08077B2C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _080734C0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080734C8
_080734C0:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080734C8:
	pop {r4, r5, pc}
	.align 2, 0
_080734CC: .4byte gUnk_03003F80
_080734D0: .4byte 0xFFFF0000

	thumb_func_start sub_080734D4
sub_080734D4: @ 0x080734D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080734FC @ =0xFFFFF000
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _080734EE
	ldr r0, _08073500 @ =gUnk_03003F80
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080734FA
_080734EE:
	movs r0, #0x92
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_080734FA:
	pop {r4, pc}
	.align 2, 0
_080734FC: .4byte 0xFFFFF000
_08073500: .4byte gUnk_03003F80

	thumb_func_start sub_08073504
sub_08073504: @ 0x08073504
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, #0
	bge _08073516
	movs r1, #0x80
	lsls r1, r1, #4
_08073516:
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08073576
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08073576
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, _08073580 @ =gUnk_03003F80
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r0, #8]
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08073576
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x10
	strh r0, [r4, #0x24]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl sub_080A3268
_08073576:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08073580: .4byte gUnk_03003F80

	thumb_func_start sub_08073584
sub_08073584: @ 0x08073584
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080735DC @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080735C0
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _080735C0
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080735C0
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _080735E0
_080735C0:
	ldrb r0, [r6, #2]
	movs r1, #0x40
	orrs r1, r0
	strb r1, [r6, #2]
	bl sub_0807921C
	adds r0, r4, #0
	bl sub_08073904
	movs r0, #0xe6
	lsls r0, r0, #3
	strh r0, [r6, #8]
	b _08073794
	.align 2, 0
_080735DC: .4byte gUnk_03003F80
_080735E0:
	ldr r0, _0807360C @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #1
	strb r1, [r0]
	movs r0, #0
	bl sub_0807A2F8
	cmp r0, #0
	beq _08073610
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08073794
	.align 2, 0
_0807360C: .4byte gUnk_0200AF00
_08073610:
	ldr r0, _08073620 @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	cmp r0, #0x10
	bne _08073624
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _08073626
	.align 2, 0
_08073620: .4byte gUnk_02033A90
_08073624:
	strh r5, [r4, #0x24]
_08073626:
	ldr r3, _08073650 @ =gUnk_03003F80
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x80
	cmp r0, #0
	bne _0807365A
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	beq _0807365A
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _08073654
	ldr r0, [r2]
	subs r0, #0x20
	b _08073658
	.align 2, 0
_08073650: .4byte gUnk_03003F80
_08073654:
	ldr r0, [r2]
	adds r0, #0x20
_08073658:
	str r0, [r2]
_0807365A:
	ldr r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	bl sub_08079E08
	ldrb r2, [r4, #0x14]
	lsls r3, r2, #2
	ldrb r1, [r4, #0x15]
	cmp r2, #0
	bne _0807367C
	adds r3, #8
	movs r0, #0x1f
	ands r3, r0
	adds r1, #8
	ands r1, r0
_0807367C:
	subs r0, r3, #7
	cmp r0, r1
	bls _08073686
	subs r3, r2, #2
	b _0807368E
_08073686:
	adds r0, r3, #7
	cmp r0, r1
	bhs _08073694
	adds r3, r2, #2
_0807368E:
	movs r0, #7
	ands r3, r0
	b _08073696
_08073694:
	adds r3, r2, #0
_08073696:
	movs r0, #0x87
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r4, #0x14]
	cmp r3, r1
	beq _080736A8
	movs r0, #0x14
	mov r2, ip
	strb r0, [r2]
_080736A8:
	strb r3, [r4, #0x14]
	movs r5, #0
	ldr r1, _080736E4 @ =gUnk_03003F80
	ldrb r2, [r1, #0xd]
	lsrs r3, r2, #2
	mov r6, ip
	ldrb r0, [r6]
	adds r6, r1, #0
	cmp r0, #0
	beq _080736CA
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08073736
	ldrb r0, [r4, #0x14]
	cmp r0, r3
	beq _08073736
_080736CA:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080736FA
	ldrb r2, [r4, #0x14]
	cmp r2, r3
	beq _080736FA
	movs r0, #4
	eors r0, r3
	cmp r2, r0
	bne _080736E8
	movs r5, #2
	b _080736FA
	.align 2, 0
_080736E4: .4byte gUnk_03003F80
_080736E8:
	movs r0, #6
	ands r0, r3
	adds r0, #2
	movs r1, #7
	ands r0, r1
	movs r5, #3
	cmp r2, r0
	bne _080736FA
	movs r5, #1
_080736FA:
	ldr r1, _0807371C @ =gUnk_0811BC28
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	cmp r0, r1
	bne _0807372C
	ldr r0, _08073720 @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	cmp r0, #0x10
	bne _08073724
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
	b _0807372E
	.align 2, 0
_0807371C: .4byte gUnk_0811BC28
_08073720: .4byte gUnk_02033A90
_08073724:
	adds r0, r4, #0
	bl sub_080042B8
	b _0807372E
_0807372C:
	strh r0, [r6, #8]
_0807372E:
	adds r0, r4, #0
	adds r0, #0x86
	strb r5, [r0]
	b _08073762
_08073736:
	mov r2, ip
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, _0807375C @ =gUnk_0811BC30
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	cmp r0, r1
	bne _08073760
	adds r0, r4, #0
	bl sub_080042B8
	b _08073762
	.align 2, 0
_0807375C: .4byte gUnk_0811BC30
_08073760:
	strh r0, [r6, #8]
_08073762:
	ldr r0, [r4, #0x7c]
	subs r1, r0, #1
	str r1, [r4, #0x7c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08073784
	ldr r2, _08073780 @ =gUnk_03003F80
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	bl sub_0807921C
	b _08073794
	.align 2, 0
_08073780: .4byte gUnk_03003F80
_08073784:
	adds r0, r1, #0
	movs r1, #0x14
	bl __divsi3
	ldr r2, _08073798 @ =0x0000FFF8
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r4, #0x36]
_08073794:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08073798: .4byte 0x0000FFF8

	thumb_func_start sub_0807379C
sub_0807379C: @ 0x0807379C
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080737B4
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _080737BA
_080737B4:
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
_080737BA:
	pop {pc}

	thumb_func_start sub_080737BC
sub_080737BC: @ 0x080737BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, [r4, #0x34]
	movs r1, #0x98
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080737E2
	ldrh r1, [r4, #0x2e]
	b _080737E4
_080737E2:
	ldrh r1, [r4, #0x32]
_080737E4:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	bne _08073804
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0
	bne _08073804
	ldr r2, _08073808 @ =gUnk_03003F80
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	bl sub_0807921C
_08073804:
	pop {r4, pc}
	.align 2, 0
_08073808: .4byte gUnk_03003F80

	thumb_func_start sub_0807380C
sub_0807380C: @ 0x0807380C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08073854 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807382A
	ldrb r0, [r4, #0x14]
	adds r0, #2
	movs r1, #6
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0807382A:
	ldr r2, _08073858 @ =gUnk_03003F80
	ldr r1, _0807385C @ =gUnk_0811BC38
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08073860
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08003FC4
	b _0807387A
	.align 2, 0
_08073854: .4byte gUnk_030010A0
_08073858: .4byte gUnk_03003F80
_0807385C: .4byte gUnk_0811BC38
_08073860:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807387A
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
_0807387A:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08073884
sub_08073884: @ 0x08073884
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080738DC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080738A2
	ldrb r0, [r4, #0x14]
	adds r0, #2
	movs r1, #6
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_080738A2:
	ldr r2, _080738E0 @ =gUnk_03003F80
	ldr r1, _080738E4 @ =gUnk_0811BC40
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080738F0
	adds r1, r2, #0
	adds r1, #0x39
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080738EC
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080738E8 @ =gUnk_0813AD88
	adds r0, r0, r1
	bl sub_08080840
	b _080738F0
	.align 2, 0
_080738DC: .4byte gUnk_030010A0
_080738E0: .4byte gUnk_03003F80
_080738E4: .4byte gUnk_0811BC40
_080738E8: .4byte gUnk_0813AD88
_080738EC:
	bl sub_08052A4C
_080738F0:
	ldr r1, _08073900 @ =0xFFFFE800
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08073900: .4byte 0xFFFFE800

	thumb_func_start sub_08073904
sub_08073904: @ 0x08073904
	push {lr}
	ldr r3, _0807391C @ =gUnk_0811BC48
	ldr r1, _08073920 @ =gUnk_03003F80
	ldrb r2, [r1, #2]
	movs r1, #7
	ands r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807391C: .4byte gUnk_0811BC48
_08073920: .4byte gUnk_03003F80

	thumb_func_start sub_08073924
sub_08073924: @ 0x08073924
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08073964 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08073962
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08073962
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08073962
	movs r0, #0x40
	strb r0, [r2, #2]
	movs r0, #0xff
	strb r0, [r2, #0xd]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x15]
	bl sub_08077B20
	adds r0, r4, #0
	bl sub_08073968
_08073962:
	pop {r4, pc}
	.align 2, 0
_08073964: .4byte gUnk_03003F80

	thumb_func_start sub_08073968
sub_08073968: @ 0x08073968
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08073998 @ =gUnk_03003F80
	ldrb r1, [r4, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0807397C
	ldrb r0, [r4, #0xd]
	strb r0, [r5, #0x15]
_0807397C:
	bl sub_08078F24
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #0xb]
	orrs r0, r1
	cmp r0, #0
	bne _080739D4
	ldr r1, [r4, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080739A0
	ldr r0, _0807399C @ =0x0000041C
	b _080739BA
	.align 2, 0
_08073998: .4byte gUnk_03003F80
_0807399C: .4byte 0x0000041C
_080739A0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080739BC
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _080739B8
	movs r0, #0x81
	lsls r0, r0, #4
	b _080739BA
_080739B8:
	ldr r0, _080739E4 @ =0x0000080C
_080739BA:
	strh r0, [r4, #8]
_080739BC:
	ldr r0, _080739E8 @ =gUnk_03003F80
	ldrb r1, [r0, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _080739CE
	adds r0, r5, #0
	bl sub_0806F948
_080739CE:
	movs r0, #0x7c
	bl sub_080A3268
_080739D4:
	ldr r2, _080739E8 @ =gUnk_03003F80
	ldrb r1, [r2, #2]
	movs r0, #0xf8
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #2]
	pop {r4, r5, pc}
	.align 2, 0
_080739E4: .4byte 0x0000080C
_080739E8: .4byte gUnk_03003F80

	thumb_func_start sub_080739EC
sub_080739EC: @ 0x080739EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08073A14 @ =gUnk_03003F80
	ldrb r2, [r1, #2]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08073A18
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xd]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08073A0E
	movs r0, #0
	strh r0, [r4, #0x2a]
_08073A0E:
	movs r2, #0x80
	lsls r2, r2, #6
	b _08073A48
	.align 2, 0
_08073A14: .4byte gUnk_03003F80
_08073A18:
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08073A38
	ldrb r1, [r5, #2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #2]
	movs r2, #0x80
	lsls r2, r2, #7
	b _08073A48
_08073A38:
	movs r2, #0x80
	lsls r2, r2, #6
	ldrb r1, [r5, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073A48
	lsrs r2, r2, #1
_08073A48:
	ldrb r1, [r5, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08073A7E
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08073A7E
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08073A7E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r0, r1, #2
	strb r0, [r5, #2]
	movs r0, #0xba
	lsls r0, r0, #1
	strh r0, [r5, #8]
	bl sub_08078F60
	b _08073A90
_08073A7E:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08073A90
	adds r0, r4, #0
	bl sub_08073AD4
_08073A90:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08073A94
sub_08073A94: @ 0x08073A94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08073AAE
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073AB4
_08073AAE:
	adds r0, r4, #0
	bl sub_08073B60
_08073AB4:
	ldr r0, _08073ACC @ =gLinkEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _08073AC8
	ldr r1, _08073AD0 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08073924
_08073AC8:
	pop {r4, pc}
	.align 2, 0
_08073ACC: .4byte gLinkEntity
_08073AD0: .4byte gUnk_03003F80

	thumb_func_start sub_08073AD4
sub_08073AD4: @ 0x08073AD4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08073AFA
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
_08073AFA:
	ldr r6, _08073B48 @ =gUnk_03003F80
	ldrb r5, [r6, #2]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r5, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	beq _08073B32
	bl sub_0807A2B8
	movs r0, #0
	strb r0, [r6, #2]
	bl sub_0807A1B8
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08073B5C
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073B5C
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08073B32
	adds r0, r4, #0
	bl sub_08073B60
_08073B32:
	ldr r2, _08073B48 @ =gUnk_03003F80
	adds r0, r5, #1
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08073B50
	ldr r0, _08073B4C @ =0x00000424
	b _08073B54
	.align 2, 0
_08073B48: .4byte gUnk_03003F80
_08073B4C: .4byte 0x00000424
_08073B50:
	movs r0, #0x82
	lsls r0, r0, #4
_08073B54:
	strh r0, [r2, #8]
	movs r0, #0x7d
	bl sub_080A3268
_08073B5C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08073B60
sub_08073B60: @ 0x08073B60
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08073B88 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r4, #0x1b]
	strb r0, [r4, #4]
	strb r0, [r4, #2]
	bl sub_08079938
	adds r0, r5, #0
	bl sub_080085B0
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08073B86
	bl sub_080791BC
_08073B86:
	pop {r4, r5, pc}
	.align 2, 0
_08073B88: .4byte gUnk_03003F80

	thumb_func_start sub_08073B8C
sub_08073B8C: @ 0x08073B8C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08073BCC @ =gUnk_03003F80
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08073C04
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08073BB8
	adds r0, r4, #0
	bl sub_080042B8
_08073BB8:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08073BD0
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08073C28
	.align 2, 0
_08073BCC: .4byte gUnk_03003F80
_08073BD0:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08073C28
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08073C0C
	bl sub_0807A2B8
	cmp r0, #0
	bne _08073BFC
	bl sub_08079D48
	cmp r0, #0
	bne _08073C0C
_08073BFC:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08073C04:
	adds r0, r4, #0
	bl sub_08073B60
	b _08073C28
_08073C0C:
	ldr r1, _08073C2C @ =gUnk_03003F80
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_080A3268
_08073C28:
	pop {r4, r5, pc}
	.align 2, 0
_08073C2C: .4byte gUnk_03003F80

	thumb_func_start sub_08073C30
sub_08073C30: @ 0x08073C30
	push {lr}
	adds r2, r0, #0
	ldr r0, _08073C54 @ =gUnk_03003F80
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08073C4A
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08073C58
_08073C4A:
	adds r0, r2, #0
	bl sub_08073B60
	b _08073C66
	.align 2, 0
_08073C54: .4byte gUnk_03003F80
_08073C58:
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	bl sub_080042B8
_08073C66:
	pop {pc}

	thumb_func_start sub_08073C68
sub_08073C68: @ 0x08073C68
	push {lr}
	ldr r2, _08073C7C @ =gUnk_0811BC60
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08073C7C: .4byte gUnk_0811BC60

	thumb_func_start sub_08073C80
sub_08073C80: @ 0x08073C80
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08073D00 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x30]
	movs r5, #0
	ldr r0, _08073D04 @ =0x00000C18
	strh r0, [r2, #8]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r7, #4
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _08073D08 @ =gUnk_0811BC80
	str r0, [r4, #0x48]
	strb r5, [r4, #0xe]
	movs r6, #2
	strb r6, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x42
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AE008
	ldr r0, _08073D0C @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	bl sub_080809D4
	ldr r1, _08073D10 @ =gUnk_030010A0
	ldrb r0, [r1, #0xf]
	cmp r0, #9
	bne _08073D14
	strb r5, [r1, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0xd]
	b _08073D1E
	.align 2, 0
_08073D00: .4byte gUnk_03003F80
_08073D04: .4byte 0x00000C18
_08073D08: .4byte gUnk_0811BC80
_08073D0C: .4byte gUnk_03000BF0
_08073D10: .4byte gUnk_030010A0
_08073D14:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl CreateObject
_08073D1E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08073D20
sub_08073D20: @ 0x08073D20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, _08073D70 @ =gUnk_03003F80
	movs r0, #0xa8
	adds r0, r0, r5
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x39
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
	bl sub_08078F60
	adds r7, r5, #0
	adds r7, #0x26
	ldrb r0, [r7]
	cmp r0, #0
	bne _08073D60
	movs r0, #0xc0
	strh r0, [r4, #0x24]
_08073D60:
	bl sub_08079B24
	cmp r0, #0
	bne _08073D74
	adds r0, r4, #0
	bl sub_08079708
	b _08073EFC
	.align 2, 0
_08073D70: .4byte gUnk_03003F80
_08073D74:
	bl sub_08078EFC
	adds r6, r0, #0
	cmp r6, #0
	beq _08073D80
	b _08073EFC
_08073D80:
	adds r0, r4, #0
	bl sub_08073904
	bl sub_0807A1B8
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08073D96
	movs r0, #0x14
	mov r1, r8
	strb r0, [r1]
_08073D96:
	ldrb r0, [r5, #0x12]
	subs r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08073DB0
	strb r6, [r7]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_08073DB0:
	bl sub_08078EFC
	cmp r0, #0
	beq _08073DBA
	b _08073EFC
_08073DBA:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bne _08073DC2
	b _08073EFC
_08073DC2:
	ldr r0, [r5, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08073E10
	adds r0, r4, #0
	bl sub_080085B0
	bl sub_080792D8
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08073DE6
	bl sub_08079550
	cmp r0, #0
	beq _08073DE6
	b _08073EFC
_08073DE6:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073DFA
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	b _08073EFC
_08073DFA:
	bl sub_080782C0
	cmp r0, #0
	beq _08073E08
	bl sub_08078EFC
	b _08073EFC
_08073E08:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08073E10:
	bl sub_08019840
	cmp r0, #0
	bne _08073EFC
	adds r0, r4, #0
	bl sub_08077698
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r1, r0, #0
	cmp r1, #0
	bne _08073E32
	ldr r0, _08073E74 @ =gUnk_03003F80
	strb r1, [r0, #2]
_08073E32:
	ldr r2, _08073E74 @ =gUnk_03003F80
	ldrb r1, [r2, #7]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08073EFC
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08073EFC
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #8
	bgt _08073E90
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073E78
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807ACCC
	bl sub_08079E08
	b _08073E90
	.align 2, 0
_08073E74: .4byte gUnk_03003F80
_08073E78:
	ldrb r1, [r2, #0xd]
	strb r1, [r4, #0x15]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08073E90
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #1
	strb r0, [r1]
	bl sub_08079E08
_08073E90:
	ldr r5, _08073EF0 @ =gUnk_03003F80
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08073E9E
	adds r0, r4, #0
	bl sub_0806F948
_08073E9E:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0807B068
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _08073EDC
	movs r0, #0x14
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl sub_080A3268
_08073EDC:
	ldr r0, [r5, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08073EF4
	adds r0, r4, #0
	bl sub_08008AC6
	b _08073EFC
	.align 2, 0
_08073EF0: .4byte gUnk_03003F80
_08073EF4:
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #0xd
	strb r0, [r1]
_08073EFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08073F04
sub_08073F04: @ 0x08073F04
	push {lr}
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3]
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x24]
	ldr r2, _08073F48 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08077B2C
	pop {pc}
	.align 2, 0
_08073F48: .4byte gUnk_03003F80

	thumb_func_start sub_08073F4C
sub_08073F4C: @ 0x08073F4C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08073F84 @ =gUnk_02033A90
	ldrh r3, [r0, #0x12]
	ldrh r5, [r0, #0x14]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	cmp r2, r3
	bne _08073F66
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, r5
	beq _08073F88
_08073F66:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0806F69C
	b _08073FC6
	.align 2, 0
_08073F84: .4byte gUnk_02033A90
_08073F88:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0x90
	lsls r1, r1, #3
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_08074018
	ldr r1, _08073FC8 @ =gUnk_03003F80
	ldr r0, _08073FCC @ =0x0000073C
	strh r0, [r1, #8]
_08073FC6:
	pop {r4, r5, pc}
	.align 2, 0
_08073FC8: .4byte gUnk_03003F80
_08073FCC: .4byte 0x0000073C

	thumb_func_start sub_08073FD0
sub_08073FD0: @ 0x08073FD0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08073FF8
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08074016
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	bne _08073FF8
	movs r0, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x7c
	bl sub_080A3268
_08073FF8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08074016
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xb8
	lsls r0, r0, #1
	bl sub_080A3268
_08074016:
	pop {r4, pc}

	thumb_func_start sub_08074018
sub_08074018: @ 0x08074018
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	bls _0807402E
	subs r0, #0x20
	str r0, [r1]
_0807402E:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, r3
	bls _08074042
	adds r0, r1, #0
	subs r0, #0x20
	str r0, [r2]
	b _08074048
_08074042:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08074048:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r2, [r2]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_08074060
sub_08074060: @ 0x08074060
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _080740D0
	ldr r0, _080740C4 @ =gUnk_08114F88
	str r0, [r4, #0x48]
	movs r3, #0x10
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r2, #0
	adds r0, #0xfc
	strh r0, [r4, #0x24]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	strb r2, [r4, #0xf]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, _080740C8 @ =gUnk_03003F80
	ldr r0, _080740CC @ =0x0000080C
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_0805EC60
	b _080740D6
	.align 2, 0
_080740C4: .4byte gUnk_08114F88
_080740C8: .4byte gUnk_03003F80
_080740CC: .4byte 0x0000080C
_080740D0:
	adds r0, r4, #0
	bl sub_080042B8
_080740D6:
	pop {r4, pc}

	thumb_func_start sub_080740D8
sub_080740D8: @ 0x080740D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080740EA
	ldrb r0, [r4, #0x15]
	b _080740F0
_080740EA:
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	eors r0, r1
_080740F0:
	cmp r0, #8
	beq _08074128
	cmp r0, #8
	bhi _080740FE
	cmp r0, #0
	beq _08074168
	b _0807418C
_080740FE:
	cmp r0, #0x10
	beq _08074148
	cmp r0, #0x18
	bne _0807418C
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	ldrb r0, [r2, #2]
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _08074124 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _08074182
	.align 2, 0
_08074124: .4byte gUnk_03000BF0
_08074128:
	ldr r2, [r4, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r3, _08074144 @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r6, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _08074182
	.align 2, 0
_08074144: .4byte gUnk_03000BF0
_08074148:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _08074164 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #5]
	adds r0, r0, r1
	b _08074182
	.align 2, 0
_08074164: .4byte gUnk_03000BF0
_08074168:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _080741A4 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
_08074182:
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r3, #8]
	subs r5, r0, r1
_0807418C:
	ldr r2, _080741A8 @ =gUnk_080082DC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080086B4
	cmp r0, #0
	beq _080741AC
	adds r0, r4, #0
	bl sub_0806F69C
	b _080741B0
	.align 2, 0
_080741A4: .4byte gUnk_03000BF0
_080741A8: .4byte gUnk_080082DC
_080741AC:
	movs r0, #1
	strb r0, [r4, #0xf]
_080741B0:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080741C2
	bl sub_0807921C
_080741C2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080741C4
sub_080741C4: @ 0x080741C4
	push {lr}
	ldr r0, _080741F0 @ =gUnk_03003F80
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #0
	beq _080741D8
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _080741E0
_080741D8:
	ldr r0, _080741F4 @ =gLinkEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _080741F8
_080741E0:
	movs r1, #0
	strb r1, [r2, #0x11]
	adds r0, r2, #0
	adds r0, #0x37
	strb r1, [r0]
	movs r0, #1
	b _080741FA
	.align 2, 0
_080741F0: .4byte gUnk_03003F80
_080741F4: .4byte gLinkEntity
_080741F8:
	movs r0, #0
_080741FA:
	pop {pc}

	thumb_func_start nullsub_112
nullsub_112: @ 0x080741FC
	bx lr
	.align 2, 0

	thumb_func_start sub_08074200
sub_08074200: @ 0x08074200
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074226
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074226
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _08074226
	bl sub_08077B2C
	ldr r1, _08074228 @ =gUnk_03003F80
	movs r0, #3
	strb r0, [r1, #0xc]
_08074226:
	pop {r4, pc}
	.align 2, 0
_08074228: .4byte gUnk_03003F80

	thumb_func_start sub_0807422C
sub_0807422C: @ 0x0807422C
	push {lr}
	movs r1, #8
	movs r2, #0x18
	bl sub_08074244
	pop {pc}

	thumb_func_start sub_08074238
sub_08074238: @ 0x08074238
	push {lr}
	movs r1, #0
	movs r2, #0x10
	bl sub_08074244
	pop {pc}

	thumb_func_start sub_08074244
sub_08074244: @ 0x08074244
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _0807428C @ =gUnk_03003F80
	ldrb r0, [r5, #0x12]
	subs r0, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08074278
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
_08074278:
	bl sub_080741C4
	cmp r0, #0
	bne _080742A6
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	bne _08074290
	ldrb r0, [r5, #0xd]
	b _08074294
	.align 2, 0
_0807428C: .4byte gUnk_03003F80
_08074290:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
_08074294:
	cmp r6, r0
	bne _0807429C
	cmp r7, r0
	beq _080742A6
_0807429C:
	ldr r1, _080742A8 @ =gUnk_03003F80
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
_080742A6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080742A8: .4byte gUnk_03003F80

	thumb_func_start sub_080742AC
sub_080742AC: @ 0x080742AC
	push {lr}
	adds r2, r0, #0
	ldr r0, _080742E0 @ =gUnk_03003F80
	adds r1, r0, #0
	adds r1, #0x26
	ldrb r0, [r1]
	cmp r0, #0
	beq _080742C0
	movs r0, #0
	strb r0, [r1]
_080742C0:
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	pop {pc}
	.align 2, 0
_080742E0: .4byte gUnk_03003F80

	thumb_func_start sub_080742E4
sub_080742E4: @ 0x080742E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _0807430E
	ldr r2, _08074310 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807430E
	ldrb r0, [r2, #0x11]
	cmp r0, #0xf
	bne _0807430E
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
_0807430E:
	pop {r4, pc}
	.align 2, 0
_08074310: .4byte gUnk_03003F80

	thumb_func_start sub_08074314
sub_08074314: @ 0x08074314
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xd
	bgt _08074330
	movs r0, #0xcc
	lsls r0, r0, #7
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _08074336
_08074330:
	adds r0, r2, #0
	bl sub_0807A298
_08074336:
	pop {pc}

	thumb_func_start sub_08074338
sub_08074338: @ 0x08074338
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	ble _08074354
	movs r0, #0xcc
	lsls r0, r0, #7
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _0807435A
_08074354:
	adds r0, r2, #0
	bl sub_0807A298
_0807435A:
	pop {pc}

	thumb_func_start sub_0807435C
sub_0807435C: @ 0x0807435C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xb
	bgt _08074376
	movs r0, #0x66
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _0807437C
_08074376:
	adds r0, r2, #0
	bl sub_0807A298
_0807437C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08074380
sub_08074380: @ 0x08074380
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	ble _0807439A
	movs r0, #0x66
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _080743A0
_0807439A:
	adds r0, r2, #0
	bl sub_0807A298
_080743A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080743A4
sub_080743A4: @ 0x080743A4
	push {lr}
	ldr r3, _080743D0 @ =gUnk_03003F80
	ldr r1, [r3, #0x30]
	movs r2, #0x40
	orrs r1, r2
	str r1, [r3, #0x30]
	movs r3, #0
	movs r1, #0x80
	strb r1, [r0, #0xb]
	ldrb r2, [r0, #0x18]
	subs r1, #0x84
	ands r1, r2
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	adds r0, #0x42
	strb r3, [r0]
	bl sub_08077B2C
	pop {pc}
	.align 2, 0
_080743D0: .4byte gUnk_03003F80

	thumb_func_start sub_080743D4
sub_080743D4: @ 0x080743D4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074416
	adds r0, r5, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074416
	adds r0, r5, #0
	bl sub_0807AABC
	adds r0, r5, #0
	bl sub_08074808
	movs r0, #0x24
	ldrsh r4, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	ldr r2, _08074418 @ =gUnk_03003F80
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	adds r0, r5, #0
	bl sub_0806F69C
	strh r4, [r5, #0x24]
_08074416:
	pop {r4, r5, pc}
	.align 2, 0
_08074418: .4byte gUnk_03003F80

	thumb_func_start sub_0807441C
sub_0807441C: @ 0x0807441C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08074440 @ =gUnk_03003F80
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #4
	bne _08074502
	ldr r6, _08074444 @ =gUnk_02002A40
	adds r4, r6, #0
	adds r4, #0xb4
	ldrb r0, [r4]
	bl sub_0805449C
	cmp r0, #0
	beq _08074448
	ldrb r0, [r4]
	b _0807444E
	.align 2, 0
_08074440: .4byte gUnk_03003F80
_08074444: .4byte gUnk_02002A40
_08074448:
	adds r0, r6, #0
	adds r0, #0xb5
	ldrb r0, [r0]
_0807444E:
	subs r0, #1
	cmp r0, #5
	bhi _0807448A
	lsls r0, r0, #2
	ldr r1, _08074460 @ =_08074464
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08074460: .4byte _08074464
_08074464: @ jump table
	.4byte _0807447C @ case 0
	.4byte _0807447C @ case 1
	.4byte _08074480 @ case 2
	.4byte _08074484 @ case 3
	.4byte _0807448A @ case 4
	.4byte _08074488 @ case 5
_0807447C:
	movs r5, #0
	b _0807448A
_08074480:
	movs r5, #1
	b _0807448A
_08074484:
	movs r5, #2
	b _0807448A
_08074488:
	movs r5, #3
_0807448A:
	movs r4, #0
	cmp r4, r5
	bhs _080744A6
	ldr r1, _08074494 @ =gUnk_03004040
	b _080744A0
	.align 2, 0
_08074494: .4byte gUnk_03004040
_08074498:
	adds r1, #4
	adds r4, #1
	cmp r4, r5
	bhs _080744A6
_080744A0:
	ldr r0, [r1]
	cmp r0, #0
	bne _08074498
_080744A6:
	cmp r5, r4
	bls _080744D4
	adds r0, r7, #0
	movs r1, #0x10
	adds r2, r4, #0
	movs r3, #0
	bl sub_080A2988
	adds r3, r0, #0
	ldr r1, _080744D0 @ =gUnk_03004040
	lsls r0, r4, #2
	adds r0, r0, r1
	str r3, [r0]
	cmp r3, #0
	beq _08074502
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_0806FA24
	b _08074502
	.align 2, 0
_080744D0: .4byte gUnk_03004040
_080744D4:
	ldr r2, _08074504 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1b]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r0, [r7, #0x2c]
	ldr r2, _08074508 @ =0xFFF00000
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x30]
	ands r0, r2
	orrs r0, r1
	str r0, [r7, #0x30]
	bl sub_08077AEC
_08074502:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08074504: .4byte gUnk_03003F80
_08074508: .4byte 0xFFF00000

	thumb_func_start sub_0807450C
sub_0807450C: @ 0x0807450C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _0807457A
	ldr r7, _0807457C @ =gUnk_03003F80
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	bne _0807457A
	adds r4, r6, #0
	adds r4, #0x3d
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08074568
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl sub_080A3268
	movs r0, #0x18
	strb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r5, _08074580 @ =0x0000FFF0
	adds r0, r2, #0
	ands r0, r5
	movs r4, #8
	orrs r0, r4
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r1, r3, #0
	ands r1, r5
	orrs r1, r4
	bl sub_080045D4
	adds r1, r6, #0
	adds r1, #0x3e
	strb r0, [r1]
_08074568:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807457A
	adds r0, r6, #0
	movs r1, #7
	bl sub_08008790
_0807457A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807457C: .4byte gUnk_03003F80
_08074580: .4byte 0x0000FFF0

	thumb_func_start sub_08074584
sub_08074584: @ 0x08074584
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _080745AC
	ldr r0, _080745B0 @ =gUnk_03003F80
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080745A8
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _080745AC
_080745A8:
	bl sub_08078F60
_080745AC:
	pop {r4, pc}
	.align 2, 0
_080745B0: .4byte gUnk_03003F80

	thumb_func_start sub_080745B4
sub_080745B4: @ 0x080745B4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074636
	ldr r0, _080745E4 @ =gUnk_03003F80
	mov ip, r0
	ldr r3, [r0, #0x30]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	beq _080745E8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb9
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0807479C
	b _08074636
	.align 2, 0
_080745E4: .4byte gUnk_03003F80
_080745E8:
	mov r5, ip
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074618
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r5]
_08074618:
	mov r0, ip
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08074630
	mov r1, ip
	ldrb r0, [r1, #0x11]
	cmp r0, #1
	bne _08074636
_08074630:
	movs r0, #0x83
	bl sub_080A3268
_08074636:
	pop {r4, r5, pc}

	thumb_func_start sub_08074638
sub_08074638: @ 0x08074638
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08074674 @ =gUnk_03003F80
	adds r5, r0, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074670
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	movs r3, #0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r5]
_08074670:
	pop {r4, r5, pc}
	.align 2, 0
_08074674: .4byte gUnk_03003F80

	thumb_func_start sub_08074678
sub_08074678: @ 0x08074678
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	beq _08074690
	ldr r0, _0807468C @ =gUnk_03003F80
	movs r1, #0
	strb r1, [r0, #0x11]
	b _080746CE
	.align 2, 0
_0807468C: .4byte gUnk_03003F80
_08074690:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807476C
	adds r0, r4, #0
	bl sub_08079C30
	adds r1, r0, #0
	cmp r1, #0
	bne _080746B0
	ldr r0, _080746AC @ =gUnk_03003F80
	strb r1, [r0, #0x11]
	b _080746CE
	.align 2, 0
_080746AC: .4byte gUnk_03003F80
_080746B0:
	ldr r3, _080746D4 @ =gUnk_03003F80
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _0807476C
	ldrb r2, [r3, #0x1e]
	cmp r2, #0
	beq _080746D8
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080746DC
	strb r1, [r3, #0x11]
	adds r0, r3, #0
_080746CE:
	adds r0, #0x37
	strb r1, [r0]
	b _08074792
	.align 2, 0
_080746D4: .4byte gUnk_03003F80
_080746D8:
	bl sub_08077B20
_080746DC:
	ldr r1, _08074700 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #1
	bne _08074704
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFX
	b _08074714
	.align 2, 0
_08074700: .4byte gUnk_03003F80
_08074704:
	adds r0, r1, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08074720
_08074714:
	ldr r0, _0807471C @ =0x00000161
	bl sub_080A3268
	b _08074732
	.align 2, 0
_0807471C: .4byte 0x00000161
_08074720:
	ldr r0, _08074760 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08074732
	ldr r0, _08074764 @ =0x00000161
	bl sub_080A3268
_08074732:
	ldr r2, _08074768 @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0xf0
	strh r0, [r1]
	adds r1, #0x28
	movs r0, #0x1b
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #0xef
	bhi _0807476C
	subs r1, #0x69
	lsrs r0, r3, #0x1d
	adds r0, #4
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	b _08074792
	.align 2, 0
_08074760: .4byte gUnk_030010A0
_08074764: .4byte 0x00000161
_08074768: .4byte gUnk_03003F80
_0807476C:
	ldr r2, _08074794 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08074798 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFX
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x20
	strb r0, [r1]
	subs r0, #0x24
	bl ModHealth
	bl sub_08079458
_08074792:
	pop {r4, pc}
	.align 2, 0
_08074794: .4byte gUnk_03003F80
_08074798: .4byte 0xFFFBFFFF

	thumb_func_start sub_0807479C
sub_0807479C: @ 0x0807479C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	adds r2, r0, #0
	cmp r2, #0
	bne _08074804
	ldr r1, _080747C0 @ =gUnk_03003F80
	ldrb r0, [r1, #0x14]
	adds r3, r1, #0
	cmp r0, #0
	bne _080747C4
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	b _080747E6
	.align 2, 0
_080747C0: .4byte gUnk_03003F80
_080747C4:
	adds r0, r3, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x13
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080747E6:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080747FE
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074804
_080747FE:
	adds r0, r4, #0
	bl sub_08074808
_08074804:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08074808
sub_08074808: @ 0x08074808
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08077AEC
	movs r0, #0x46
	bl GetInventoryValue
	adds r3, r0, #0
	cmp r3, #1
	bne _080748B8
	ldr r1, _08074838 @ =gUnk_03003F80
	adds r2, r1, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _0807486C
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807483C
	strb r3, [r2]
	b _08074840
	.align 2, 0
_08074838: .4byte gUnk_03003F80
_0807483C:
	movs r0, #8
	strb r0, [r2]
_08074840:
	movs r1, #0
	movs r0, #0
	strh r0, [r6, #0x24]
	ldr r0, _080748AC @ =gUnk_03003F80
	adds r2, r0, #0
	adds r2, #0x89
	strb r1, [r2]
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074862
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	bl CreateFX
_08074862:
	ldr r0, _080748B0 @ =0x000001A5
	bl sub_080A3268
	bl sub_08077B2C
_0807486C:
	ldr r5, _080748AC @ =gUnk_03003F80
	adds r4, r5, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r7, #0xf
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #1
	beq _0807488A
	adds r0, r6, #0
	bl sub_08079744
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_0807488A:
	ldr r0, [r5, #0x30]
	ldr r1, _080748B4 @ =0xFFFFF3FF
	ands r0, r1
	str r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080748BE
	adds r1, r6, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xe
	bhi _080748BE
	strh r7, [r1]
	b _080748BE
	.align 2, 0
_080748AC: .4byte gUnk_03003F80
_080748B0: .4byte 0x000001A5
_080748B4: .4byte 0xFFFFF3FF
_080748B8:
	ldr r1, _080748C0 @ =gUnk_03003F80
	movs r0, #0x14
	strb r0, [r1, #0xc]
_080748BE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080748C0: .4byte gUnk_03003F80

	thumb_func_start sub_080748C4
sub_080748C4: @ 0x080748C4
	ldr r1, _080748D0 @ =gUnk_03003F80
	adds r1, #0x3f
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0
_080748D0: .4byte gUnk_03003F80

	thumb_func_start sub_080748D4
sub_080748D4: @ 0x080748D4
	push {lr}
	bl sub_080741C4
	pop {pc}

	thumb_func_start sub_080748DC
sub_080748DC: @ 0x080748DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074910
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807490A
	ldrh r0, [r4, #0x32]
	adds r0, #0xc
	strh r0, [r4, #0x32]
	ldr r0, _08074914 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807490A
	ldrh r0, [r4, #0x36]
	subs r0, #0xc
	strh r0, [r4, #0x36]
_0807490A:
	adds r0, r4, #0
	bl sub_0807AABC
_08074910:
	pop {r4, pc}
	.align 2, 0
_08074914: .4byte gUnk_03003F80

	thumb_func_start sub_08074918
sub_08074918: @ 0x08074918
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074934
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074934
	ldr r1, _08074938 @ =gUnk_03003F80
	movs r0, #0x11
	strb r0, [r1, #0xc]
_08074934:
	pop {r4, pc}
	.align 2, 0
_08074938: .4byte gUnk_03003F80

	thumb_func_start sub_0807493C
sub_0807493C: @ 0x0807493C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x44
	bl GetInventoryValue
	cmp r0, #1
	bne _08074952
	adds r0, r4, #0
	bl sub_0807496C
	b _08074966
_08074952:
	ldrh r1, [r4, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xf
	movs r2, #0
	orrs r0, r1
	strh r0, [r4, #0x32]
	ldr r0, _08074968 @ =gUnk_03003F80
	strb r2, [r0, #0x12]
_08074966:
	pop {r4, pc}
	.align 2, 0
_08074968: .4byte gUnk_03003F80

	thumb_func_start sub_0807496C
sub_0807496C: @ 0x0807496C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	adds r3, r0, #0
	cmp r3, #0
	bne _080749A2
	ldr r0, _080749A4 @ =gUnk_03003F80
	strb r3, [r0, #2]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	strb r3, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl sub_08077B2C
_080749A2:
	pop {r4, pc}
	.align 2, 0
_080749A4: .4byte gUnk_03003F80

	thumb_func_start sub_080749A8
sub_080749A8: @ 0x080749A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x44
	bl GetInventoryValue
	cmp r0, #1
	bne _080749BE
	adds r0, r4, #0
	bl sub_080749D4
	b _080749CE
_080749BE:
	ldrh r1, [r4, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x32]
	ldr r0, _080749D0 @ =gUnk_03003F80
	strb r1, [r0, #0x12]
_080749CE:
	pop {r4, pc}
	.align 2, 0
_080749D0: .4byte gUnk_03003F80

	thumb_func_start sub_080749D4
sub_080749D4: @ 0x080749D4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080741C4
	adds r3, r0, #0
	cmp r3, #0
	bne _08074A40
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	strb r3, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldr r5, _08074A2C @ =gUnk_03003F80
	adds r0, r5, #0
	adds r0, #0x26
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	bgt _08074A34
	ldr r0, _08074A30 @ =0x000002D3
	strh r0, [r5, #8]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	b _08074A3C
	.align 2, 0
_08074A2C: .4byte gUnk_03003F80
_08074A30: .4byte 0x000002D3
_08074A34:
	movs r1, #0
	ldr r0, _08074A44 @ =0x000002D6
	strh r0, [r5, #8]
	strb r1, [r4, #0x15]
_08074A3C:
	bl sub_08077B2C
_08074A40:
	pop {r4, r5, pc}
	.align 2, 0
_08074A44: .4byte 0x000002D6

	thumb_func_start sub_08074A48
sub_08074A48: @ 0x08074A48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08074A90 @ =gUnk_03003F80
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08074A86
	ldr r0, _08074A94 @ =gLinkEntity
	movs r1, #0
	movs r2, #0x54
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _08074A86
	movs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_08016A04
	ldrh r1, [r5, #0x22]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x39
	bl sub_08000152
_08074A86:
	adds r0, r4, #0
	bl sub_0807479C
	pop {r4, r5, pc}
	.align 2, 0
_08074A90: .4byte gUnk_03003F80
_08074A94: .4byte gLinkEntity

	thumb_func_start nullsub_504
nullsub_504: @ 0x08074A98
	bx lr
	.align 2, 0

	thumb_func_start sub_08074A9C
sub_08074A9C: @ 0x08074A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074AF0
	ldr r2, _08074AE0 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r1, [r0]
	subs r1, #0x80
	strh r1, [r0]
	ldrb r0, [r2, #0x11]
	cmp r0, #1
	beq _08074ACA
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08074AF0
_08074ACA:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x25
	bne _08074AE4
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	b _08074AF0
	.align 2, 0
_08074AE0: .4byte gUnk_03003F80
_08074AE4:
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #1
	movs r3, #1
	bl sub_080A2988
_08074AF0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08074AF4
sub_08074AF4: @ 0x08074AF4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08074B04 @ =gUnk_03003F80
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _08074B08
	ldrb r2, [r1, #0xd]
	b _08074B0C
	.align 2, 0
_08074B04: .4byte gUnk_03003F80
_08074B08:
	ldrb r0, [r3, #0x14]
	lsls r2, r0, #2
_08074B0C:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08074244
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08074B18
sub_08074B18: @ 0x08074B18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08074B40 @ =gUnk_03003F80
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08074B48
	bl sub_080741C4
	cmp r0, #0
	bne _08074B48
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08074B44
	adds r0, r5, #0
	bl sub_08074200
	b _08074B48
	.align 2, 0
_08074B40: .4byte gUnk_03003F80
_08074B44:
	movs r0, #0x1a
	strb r0, [r4, #0xc]
_08074B48:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08074B4C
sub_08074B4C: @ 0x08074B4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074B6E
	ldr r0, _08074B70 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08074B6E
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074B6E:
	pop {r4, pc}
	.align 2, 0
_08074B70: .4byte gUnk_03003F80

	thumb_func_start sub_08074B74
sub_08074B74: @ 0x08074B74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074B9A
	ldr r0, _08074B9C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074B9A
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074B9A:
	pop {r4, pc}
	.align 2, 0
_08074B9C: .4byte gUnk_03003F80

	thumb_func_start sub_08074BA0
sub_08074BA0: @ 0x08074BA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074BC6
	ldr r0, _08074BC8 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074BC6
	movs r0, #6
	strb r0, [r4, #0x14]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074BC6:
	pop {r4, pc}
	.align 2, 0
_08074BC8: .4byte gUnk_03003F80

	thumb_func_start sub_08074BCC
sub_08074BCC: @ 0x08074BCC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074BF2
	ldr r0, _08074BF4 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074BF2
	movs r0, #2
	strb r0, [r4, #0x14]
	movs r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074BF2:
	pop {r4, pc}
	.align 2, 0
_08074BF4: .4byte gUnk_03003F80

	thumb_func_start sub_08074BF8
sub_08074BF8: @ 0x08074BF8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077B2C
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r1, _08074C40 @ =gUnk_03003F80
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	lsls r2, r2, #0x12
	orrs r0, r2
	str r0, [r1, #0x30]
	ldrb r2, [r1, #0xa]
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r1, #0xa]
	ldrb r2, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
	adds r1, #0x27
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806F69C
	pop {r4, pc}
	.align 2, 0
_08074C40: .4byte gUnk_03003F80

	thumb_func_start sub_08074C44
sub_08074C44: @ 0x08074C44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _08074C60
	ldr r0, _08074C64 @ =gUnk_0811BC88
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08074C60:
	pop {r4, pc}
	.align 2, 0
_08074C64: .4byte gUnk_0811BC88

	thumb_func_start sub_08074C68
sub_08074C68: @ 0x08074C68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x68
	movs r2, #0
	strb r2, [r6]
	ldr r5, _08074CA0 @ =gUnk_03003F80
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r3, [r0]
	cmp r3, #1
	beq _08074CA8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, _08074CA4 @ =gUnk_02022750
	cmp r1, r0
	bne _08074CF2
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08074CF8
	b _08074CF2
	.align 2, 0
_08074CA0: .4byte gUnk_03003F80
_08074CA4: .4byte gUnk_02022750
_08074CA8:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r3, [r6]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08074CE4
	ldr r0, _08074CE0 @ =0x0000073A
	b _08074CE6
	.align 2, 0
_08074CE0: .4byte 0x0000073A
_08074CE4:
	ldr r0, _08074CF4 @ =0x00000736
_08074CE6:
	strh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
_08074CF2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08074CF4: .4byte 0x00000736

	thumb_func_start sub_08074CF8
sub_08074CF8: @ 0x08074CF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0x14]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	bl sub_0807DF74
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_08074D34
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074D20
	strb r6, [r5, #0x14]
_08074D20:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	adds r0, r5, #0
	bl sub_080042B8
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08074D34
sub_08074D34: @ 0x08074D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08074D46
	b _08074EF8
_08074D46:
	movs r7, #0x80
	lsls r7, r7, #1
	adds r5, r4, #0
	adds r5, #0x82
_08074D4E:
	ldr r1, [r6, #8]
	mvns r0, r1
	adds r2, r0, #1
	ands r2, r1
	eors r1, r2
	str r1, [r6, #8]
	cmp r2, r7
	bne _08074D60
	b _08074E82
_08074D60:
	cmp r2, r7
	bhi _08074D90
	cmp r2, #8
	beq _08074E2C
	cmp r2, #8
	bhi _08074D7C
	cmp r2, #2
	beq _08074E08
	cmp r2, #2
	bls _08074D76
	b _08074EF0
_08074D76:
	cmp r2, #1
	beq _08074DEC
	b _08074EF0
_08074D7C:
	cmp r2, #0x20
	beq _08074E62
	cmp r2, #0x20
	bhi _08074D8A
	cmp r2, #0x10
	beq _08074E54
	b _08074EF0
_08074D8A:
	cmp r2, #0x80
	beq _08074E70
	b _08074EF0
_08074D90:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _08074D9A
	b _08074EAE
_08074D9A:
	cmp r2, r0
	bhi _08074DBE
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	beq _08074E96
	cmp r2, r0
	bhi _08074DB4
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	beq _08074E90
	b _08074EF0
_08074DB4:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	beq _08074EA8
	b _08074EF0
_08074DBE:
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bne _08074DC8
	b _08074EBE
_08074DC8:
	cmp r2, r0
	bhi _08074DD6
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08074EB4
	b _08074EF0
_08074DD6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bne _08074DE0
	b _08074ED8
_08074DE0:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	bne _08074DEA
	b _08074EE4
_08074DEA:
	b _08074EF0
_08074DEC:
	ldr r2, _08074E00 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08074E04
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #8]
	b _08074EF0
	.align 2, 0
_08074E00: .4byte gUnk_03003F80
_08074E04:
	strh r7, [r2, #8]
	b _08074EF0
_08074E08:
	ldr r2, _08074E1C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08074E24
	ldr r0, _08074E20 @ =0x00000404
	strh r0, [r2, #8]
	b _08074EF0
	.align 2, 0
_08074E1C: .4byte gUnk_03003F80
_08074E20: .4byte 0x00000404
_08074E24:
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r2, #8]
	b _08074EF0
_08074E2C:
	ldr r1, _08074E3C @ =gUnk_03003F80
	ldr r0, [r1, #0x30]
	ands r0, r2
	cmp r0, #0
	beq _08074E44
	ldr r0, _08074E40 @ =0x0000041C
	b _08074E46
	.align 2, 0
_08074E3C: .4byte gUnk_03003F80
_08074E40: .4byte 0x0000041C
_08074E44:
	ldr r0, _08074E50 @ =0x0000080C
_08074E46:
	strh r0, [r1, #8]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	b _08074EF0
	.align 2, 0
_08074E50: .4byte 0x0000080C
_08074E54:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x18
	rsbs r2, r2, #0
	bl sub_080A2CFC
	b _08074EF0
_08074E62:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x18
	rsbs r2, r2, #0
	bl sub_080A2D0C
	b _08074EF0
_08074E70:
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08074EF0
_08074E82:
	ldrb r0, [r4, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08074EF0
_08074E90:
	movs r0, #0
	strh r0, [r5]
	b _08074EF0
_08074E96:
	ldrh r0, [r5]
	ldr r2, _08074EA4 @ =0x0000FFFE
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	b _08074EF0
	.align 2, 0
_08074EA4: .4byte 0x0000FFFE
_08074EA8:
	ldrh r0, [r5]
	movs r1, #1
	b _08074EB8
_08074EAE:
	ldrh r0, [r5]
	movs r1, #8
	b _08074EB8
_08074EB4:
	ldrh r0, [r5]
	movs r1, #4
_08074EB8:
	orrs r0, r1
	strh r0, [r5]
	b _08074EF0
_08074EBE:
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #6
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x18]
	b _08074EF0
_08074ED8:
	movs r1, #2
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	b _08074EF0
_08074EE4:
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
_08074EF0:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08074EF8
	b _08074D4E
_08074EF8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08074F00
sub_08074F00: @ 0x08074F00
	push {lr}
	ldr r2, _08074F18 @ =gUnk_0811BC98
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08074F18: .4byte gUnk_0811BC98

	thumb_func_start sub_08074F1C
sub_08074F1C: @ 0x08074F1C
	adds r2, r0, #0
	adds r2, #0x68
	movs r3, #0
	movs r1, #1
	strb r1, [r2]
	strb r3, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08074F2C
sub_08074F2C: @ 0x08074F2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r1, [r5]
	bl sub_0807DF74
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_08074D34
	pop {r4, r5, pc}

	thumb_func_start sub_08074F44
sub_08074F44: @ 0x08074F44
	push {lr}
	adds r0, #0x68
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, _08074F74 @ =gLinkEntity
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _08074F5A
	bl sub_0805E7BC
_08074F5A:
	ldr r2, _08074F78 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08074F80
	ldr r0, _08074F7C @ =0x0000073B
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	b _08074F84
	.align 2, 0
_08074F74: .4byte gLinkEntity
_08074F78: .4byte gUnk_03003F80
_08074F7C: .4byte 0x0000073B
_08074F80:
	ldr r0, _08074F88 @ =0x00000737
	strh r0, [r2, #8]
_08074F84:
	pop {pc}
	.align 2, 0
_08074F88: .4byte 0x00000737

	thumb_func_start sub_08074F8C
sub_08074F8C: @ 0x08074F8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	cmp r0, #1
	bne _08074FAC
	movs r0, #0
	strb r0, [r3]
	ldr r2, _08074FDC @ =gUnk_02033280
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
_08074FAC:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08074FEA
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0x14]
	ldr r1, _08074FE0 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08074FE4
	movs r0, #0x80
	lsls r0, r0, #3
	b _08074FE8
	.align 2, 0
_08074FDC: .4byte gUnk_02033280
_08074FE0: .4byte gUnk_03003F80
_08074FE4:
	movs r0, #0x80
	lsls r0, r0, #1
_08074FE8:
	strh r0, [r1, #8]
_08074FEA:
	pop {r4, pc}

	thumb_func_start sub_08074FEC
sub_08074FEC: @ 0x08074FEC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075016
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xe]
	ldr r0, _08075018 @ =gUnk_03003F80
	adds r0, #0x3a
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
_08075016:
	pop {r4, pc}
	.align 2, 0
_08075018: .4byte gUnk_03003F80

	thumb_func_start sub_0807501C
sub_0807501C: @ 0x0807501C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075086
	ldr r1, _08075044 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	strb r0, [r2, #0x14]
	adds r0, r1, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807504C
	ldr r0, _08075048 @ =0x0000041C
	b _0807504E
	.align 2, 0
_08075044: .4byte gUnk_03003F80
_08075048: .4byte 0x0000041C
_0807504C:
	ldr r0, _08075088 @ =0x0000080C
_0807504E:
	strh r0, [r1, #8]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	movs r0, #0xc8
	strh r0, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #8
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x7c
	bl sub_080A3268
_08075086:
	pop {pc}
	.align 2, 0
_08075088: .4byte 0x0000080C

	thumb_func_start sub_0807508C
sub_0807508C: @ 0x0807508C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080750AA
	adds r0, r4, #0
	bl sub_0806F69C
	b _080750F2
_080750AA:
	ldr r2, _080750BC @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _080750C0
	movs r0, #0x80
	lsls r0, r0, #3
	b _080750CE
	.align 2, 0
_080750BC: .4byte gUnk_03003F80
_080750C0:
	ldr r0, [r2, #0x30]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #1
_080750CE:
	strh r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080750F2
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	movs r0, #0x7d
	bl sub_080A3268
_080750F2:
	pop {r4, pc}

	thumb_func_start sub_080750F4
sub_080750F4: @ 0x080750F4
	push {lr}
	ldr r2, _0807510C @ =gUnk_0811BCB4
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807510C: .4byte gUnk_0811BCB4

	thumb_func_start sub_08075110
sub_08075110: @ 0x08075110
	adds r2, r0, #0
	adds r2, #0x68
	ldrb r1, [r2]
	adds r1, #1
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #0x14]
	strb r1, [r0, #0xf]
	strb r3, [r0, #0x14]
	ldr r2, _08075134 @ =gUnk_03003F80
	ldr r0, _08075138 @ =0x00000734
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_08075134: .4byte gUnk_03003F80
_08075138: .4byte 0x00000734

	thumb_func_start sub_0807513C
sub_0807513C: @ 0x0807513C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080042B8
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r0, [r4]
	cmp r0, #1
	bne _08075158
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x7c
	bl sub_080A3268
_08075158:
	ldrb r0, [r4]
	cmp r0, #2
	bne _0807516E
	movs r0, #0
	strb r0, [r4]
	ldr r0, _08075188 @ =0x0000014B
	bl sub_080A3268
	movs r0, #0x7a
	bl sub_080A3268
_0807516E:
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075186
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
_08075186:
	pop {r4, r5, pc}
	.align 2, 0
_08075188: .4byte 0x0000014B

	thumb_func_start sub_0807518C
sub_0807518C: @ 0x0807518C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080751AA
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080751AC @ =gUnk_03003F80
	ldr r0, _080751B0 @ =0x000003C9
	strh r0, [r1, #8]
_080751AA:
	pop {pc}
	.align 2, 0
_080751AC: .4byte gUnk_03003F80
_080751B0: .4byte 0x000003C9

	thumb_func_start sub_080751B4
sub_080751B4: @ 0x080751B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080751E2
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	ldr r1, _080751E4 @ =gUnk_03003F80
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
_080751E2:
	pop {r4, pc}
	.align 2, 0
_080751E4: .4byte gUnk_03003F80

	thumb_func_start sub_080751E8
sub_080751E8: @ 0x080751E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r4, _08075230 @ =gUnk_02022750
	adds r0, r4, #0
	movs r1, #0x24
	bl sub_0801D630
	str r6, [r4]
	ldr r0, _08075234 @ =gLinkEntity
	adds r0, #0x84
	str r4, [r0]
	ldr r2, _08075238 @ =gUnk_03003F80
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	movs r4, #1
	strb r4, [r0]
	adds r3, r2, #0
	adds r3, #0x39
	strb r1, [r3]
	adds r0, #2
	strb r5, [r0]
	ldr r0, [r2, #0x30]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	cmp r7, #0
	bne _08075240
	strb r7, [r3]
	ldr r6, _0807523C @ =gUnk_08009ECC
	b _08075244
	.align 2, 0
_08075230: .4byte gUnk_02022750
_08075234: .4byte gLinkEntity
_08075238: .4byte gUnk_03003F80
_0807523C: .4byte gUnk_08009ECC
_08075240:
	strb r4, [r3]
	ldr r6, _08075290 @ =gUnk_08009EF0
_08075244:
	ldr r0, _08075294 @ =gUnk_03003F80
	adds r0, #0x39
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _08075252
	movs r1, #2
_08075252:
	movs r0, #0x5b
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08075270
	ldr r0, _08075298 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807DAD0
_08075270:
	ldr r4, _08075298 @ =gLinkEntity
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #0x1c
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080A2D1C
	str r0, [r4, #0x6c]
	cmp r0, #0
	beq _0807528C
	movs r1, #3
	bl sub_0805E3A0
_0807528C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075290: .4byte gUnk_08009EF0
_08075294: .4byte gUnk_03003F80
_08075298: .4byte gLinkEntity

	thumb_func_start sub_0807529C
sub_0807529C: @ 0x0807529C
	push {lr}
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r1, #8
	bl sub_080A2D0C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080752AC
sub_080752AC: @ 0x080752AC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _080752D0
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0x29
	beq _080752DC
	movs r0, #1
	strb r0, [r4, #0x18]
	movs r0, #6
	strb r0, [r4, #0x19]
	b _080752DC
_080752D0:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080752E2
_080752DC:
	ldr r1, _080752E4 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_080752E2:
	pop {r4, r5, pc}
	.align 2, 0
_080752E4: .4byte gUnk_02033280

	thumb_func_start sub_080752E8
sub_080752E8: @ 0x080752E8
	push {lr}
	ldr r3, _080752FC @ =gUnk_0811BCC4
	ldrb r2, [r0, #1]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_080752FC: .4byte gUnk_0811BCC4

	thumb_func_start sub_08075300
sub_08075300: @ 0x08075300
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077BD4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	pop {r4, r5, pc}

	thumb_func_start sub_08075314
sub_08075314: @ 0x08075314
	push {lr}
	ldr r2, _08075330 @ =gUnk_03003F80
	adds r2, #0xa8
	movs r3, #2
	strb r3, [r2]
	ldr r3, _08075334 @ =gUnk_0811BD44
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075330: .4byte gUnk_03003F80
_08075334: .4byte gUnk_0811BD44

	thumb_func_start sub_08075338
sub_08075338: @ 0x08075338
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r4, _0807536C @ =gUnk_03003F80
	ldr r1, [r4, #0x30]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08075370
	ldrb r0, [r5, #9]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r5, #9]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x75
	bl sub_080A3268
	b _080754B4
	.align 2, 0
_0807536C: .4byte gUnk_03003F80
_08075370:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _080753DC
	movs r6, #7
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #3
	beq _080753E4
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0
	bne _080753E4
	ldr r3, _080753D4 @ =gLinkEntity
	ldr r1, [r3, #0x20]
	ldr r0, _080753D8 @ =0x00017FFF
	cmp r1, r0
	bhi _080753E4
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080753E4
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _080753E4
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xab
	strb r6, [r0]
	movs r0, #8
	asrs r0, r7
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r4, #4]
	orrs r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08077B98
	movs r0, #6
	strb r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08075898
	b _080754B4
	.align 2, 0
_080753D4: .4byte gLinkEntity
_080753D8: .4byte 0x00017FFF
_080753DC:
	ldr r2, _080753F0 @ =gLinkEntity
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _080753F4
_080753E4:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080759B8
	b _080754B4
	.align 2, 0
_080753F0: .4byte gLinkEntity
_080753F4:
	movs r6, #0x80
	lsls r6, r6, #0xb
	ands r6, r1
	cmp r6, #0
	beq _08075480
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0807541E
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080754B4
	bl sub_0805E7BC
	str r6, [r4, #0x2c]
	b _080754B4
_0807541E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r7
	lsls r0, r1, #4
	orrs r0, r1
	ldrb r2, [r4, #4]
	orrs r0, r2
	strb r0, [r4, #4]
	ldrb r2, [r4, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	orrs r1, r0
	strb r1, [r4, #0xb]
	strb r3, [r5, #4]
	movs r0, #0x14
	strb r0, [r5, #7]
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #9]
	adds r1, r4, #0
	adds r1, #0xab
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_08077DF4
	movs r0, #0x77
	bl sub_080A3268
	b _080754B4
_08075480:
	ldrb r1, [r4, #0x1b]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075492
	strb r6, [r4, #0x1b]
	adds r0, r2, #0
	bl sub_0806F948
_08075492:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _080754A6
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _080754A6
	adds r0, r1, #0
	bl sub_0805E7BC
	str r6, [r4, #0x2c]
_080754A6:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
_080754B4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080754B8
sub_080754B8: @ 0x080754B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, _080754D4 @ =gUnk_03003F80
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080754D8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
	b _0807557E
	.align 2, 0
_080754D4: .4byte gUnk_03003F80
_080754D8:
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _08075576
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080754F2
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
_080754F2:
	ldr r0, _0807552C @ =gLinkEntity
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075538
	bl sub_0807B014
	adds r5, r0, #0
	cmp r5, #0
	beq _08075538
	movs r0, #8
	movs r1, #0xf
	movs r2, #2
	bl sub_0805EB00
	cmp r0, #0
	bne _08075538
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08077C3C
	cmp r5, #0xf
	bne _08075530
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #5
	b _08075536
	.align 2, 0
_0807552C: .4byte gLinkEntity
_08075530:
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #8
_08075536:
	strb r0, [r1]
_08075538:
	ldrb r1, [r4, #0xe]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807557E
	ldr r1, _08075568 @ =gUnk_03003F80
	ldr r0, [r1, #0x30]
	ands r0, r2
	cmp r0, #0
	bne _0807555C
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807556C
_0807555C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807557E
	.align 2, 0
_08075568: .4byte gUnk_03003F80
_0807556C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075580
	b _0807557E
_08075576:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807557E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08075580
sub_08075580: @ 0x08075580
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _080755E6
	ldr r2, _080755C8 @ =gUnk_03003F80
	ldrb r3, [r2, #2]
	cmp r3, #0
	bne _080755E6
	movs r1, #8
	asrs r1, r5
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r0, #1
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	adds r0, #0x40
	movs r1, #0xd
	strb r1, [r0]
	strb r3, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #4]
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080755CC
	movs r0, #0x28
	b _080755CE
	.align 2, 0
_080755C8: .4byte gUnk_03003F80
_080755CC:
	movs r0, #0x50
_080755CE:
	strb r0, [r4, #7]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x43
	movs r1, #0
	movs r2, #0
	bl CreateObject
	b _080755EE
_080755E6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
_080755EE:
	pop {r4, r5, pc}

	thumb_func_start sub_080755F0
sub_080755F0: @ 0x080755F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08075642
	adds r0, r4, #0
	bl sub_08077EC8
	cmp r0, #0
	bne _0807564A
	ldr r2, _08075634 @ =gUnk_03003F80
	ldrb r3, [r2, #0x1b]
	ldrb r0, [r2, #4]
	orrs r0, r3
	cmp r0, #0
	beq _08075638
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807564A
	movs r0, #3
	strb r0, [r4, #4]
	ldrb r0, [r4, #9]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #0x1b]
	b _0807564A
	.align 2, 0
_08075634: .4byte gUnk_03003F80
_08075638:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
	b _0807564A
_08075642:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
_0807564A:
	pop {r4, r5, pc}

	thumb_func_start sub_0807564C
sub_0807564C: @ 0x0807564C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075668 @ =gUnk_03003F80
	ldrb r1, [r5, #0x1b]
	ldrb r0, [r5, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0807566C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _08075692
	.align 2, 0
_08075668: .4byte gUnk_03003F80
_0807566C:
	adds r0, r4, #0
	bl sub_08077EC8
	cmp r0, #0
	bne _08075692
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _0807568A
	ldrb r1, [r5, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075692
_0807568A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
_08075692:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08075694
sub_08075694: @ 0x08075694
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #1
	strb r3, [r4, #7]
	ldr r2, _080756C4 @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080756D0
	ldr r0, _080756C8 @ =0xF7FFFFFF
	ands r1, r0
	ldr r0, _080756CC @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r2, #0x30]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	b _080756E0
	.align 2, 0
_080756C4: .4byte gUnk_03003F80
_080756C8: .4byte 0xF7FFFFFF
_080756CC: .4byte 0xFFFBFFFF
_080756D0:
	adds r0, r2, #0
	adds r0, #0xab
	strb r3, [r0]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_080756E0:
	ldr r2, _08075730 @ =gUnk_03003F80
	movs r0, #8
	asrs r0, r5
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #4
	strb r0, [r4, #4]
	movs r0, #6
	strb r0, [r4, #0xf]
	ldr r0, _08075734 @ =gLinkEntity
	adds r0, #0x40
	movs r1, #0x1e
	strb r1, [r0]
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	orrs r0, r1
	movs r1, #0xdf
	ands r0, r1
	strb r0, [r2, #0x1b]
	adds r3, r2, #0
	adds r3, #0xa0
	ldrb r0, [r3]
	cmp r0, #4
	bne _08075726
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08075726
	movs r0, #1
	strb r0, [r3]
	bl sub_0807A108
_08075726:
	movs r0, #0x76
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_08075730: .4byte gUnk_03003F80
_08075734: .4byte gLinkEntity

	thumb_func_start sub_08075738
sub_08075738: @ 0x08075738
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075750 @ =gUnk_03003F80
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08075754
	adds r0, r4, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_08075750: .4byte gUnk_03003F80
_08075754:
	adds r0, r4, #0
	bl sub_08077E24
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _08075768
	movs r0, #2
	strb r0, [r4, #7]
_08075768:
	ldrb r2, [r5, #0x1b]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080757D4
	ldrb r1, [r5, #0xd]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08075780
	strb r1, [r4, #0xb]
_08075780:
	ldr r1, _080757D0 @ =gLinkEntity
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	movs r2, #0xa
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080757AA
	movs r2, #0xf
_080757AA:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bls _080757C6
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	ands r0, r1
	cmp r0, #0
	bne _0807588C
_080757C6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_080757D0: .4byte gLinkEntity
_080757D4:
	ldr r7, _08075890 @ =gLinkEntity
	adds r0, r7, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08075816
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08077C3C
	adds r2, r0, #0
	cmp r2, #0
	beq _08075816
	ldrb r0, [r7, #0x14]
	movs r1, #6
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x14]
_08075816:
	ldr r5, _08075890 @ =gLinkEntity
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldr r2, _08075894 @ =gUnk_03003F80
	ldrb r3, [r2, #0x1b]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0807587A
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807587A
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r1, r2, #0
	adds r1, #0xab
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_0807587A:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807588C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075890: .4byte gLinkEntity
_08075894: .4byte gUnk_03003F80

	thumb_func_start sub_08075898
sub_08075898: @ 0x08075898
	push {lr}
	adds r2, r0, #0
	ldr r0, _080758AC @ =gUnk_03003F80
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _080758AA
	adds r0, r2, #0
	bl sub_080759B8
_080758AA:
	pop {pc}
	.align 2, 0
_080758AC: .4byte gUnk_03003F80

	thumb_func_start sub_080758B0
sub_080758B0: @ 0x080758B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080758C4 @ =gUnk_03003F80
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080758C8
	adds r0, r4, #0
	bl sub_080759B8
	b _080758F8
	.align 2, 0
_080758C4: .4byte gUnk_03003F80
_080758C8:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080758F8
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r1, [r5, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080758EA
	movs r0, #3
	b _080758EC
_080758EA:
	movs r0, #5
_080758EC:
	strb r0, [r4, #4]
	ldr r2, _080758FC @ =gUnk_03003F80
	ldrb r1, [r2, #0x1b]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2, #0x1b]
_080758F8:
	pop {r4, r5, pc}
	.align 2, 0
_080758FC: .4byte gUnk_03003F80

	thumb_func_start sub_08075900
sub_08075900: @ 0x08075900
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075920 @ =gUnk_03003F80
	ldrb r0, [r5, #0x12]
	cmp r0, #0x11
	bne _08075928
	ldr r0, [r5, #0x30]
	ldr r1, _08075924 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _080759B2
	.align 2, 0
_08075920: .4byte gUnk_03003F80
_08075924: .4byte 0xFFFBFFFF
_08075928:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r5, #0x1b]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08075948
	movs r0, #0xa0
	strb r0, [r5, #0x1b]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807564C
	b _080759B2
_08075948:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08075998
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075962
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_08075962:
	ldr r4, _08075990 @ =gLinkEntity
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	bl sub_08079E08
	ldr r0, _08075994 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080759B2
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFX
	b _080759B2
	.align 2, 0
_08075990: .4byte gLinkEntity
_08075994: .4byte gUnk_030010A0
_08075998:
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080759B2
	ldr r0, [r5, #0x30]
	ldr r1, _080759B4 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_080759B2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080759B4: .4byte 0xFFFBFFFF

	thumb_func_start sub_080759B8
sub_080759B8: @ 0x080759B8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _080759E8 @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080759D0
	ldr r0, _080759EC @ =gLinkEntity
	adds r0, #0x40
	strb r1, [r0]
_080759D0:
	ldr r0, [r2, #0x30]
	ldr r1, _080759F0 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0
	strb r0, [r2, #0x1b]
	str r0, [r2, #0x2c]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08077E78
	pop {r4, pc}
	.align 2, 0
_080759E8: .4byte gUnk_03003F80
_080759EC: .4byte gLinkEntity
_080759F0: .4byte 0xF7FFFFFF

	thumb_func_start sub_080759F4
sub_080759F4: @ 0x080759F4
	push {lr}
	ldr r3, _08075A08 @ =gUnk_0811BD68
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075A08: .4byte gUnk_0811BD68

	thumb_func_start sub_08075A0C
sub_08075A0C: @ 0x08075A0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #1]
	bl sub_0805436C
	adds r6, r0, #0
	ldr r1, _08075A64 @ =gUnk_03003F80
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08075A3E
	ldrb r0, [r1, #0xc]
	cmp r0, #0x18
	beq _08075A3E
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08075A3E
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _08075A3E
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075A6C
_08075A3E:
	movs r0, #0xf
	adds r1, r6, #0
	bl sub_08054414
	ldr r0, _08075A64 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	ldr r2, _08075A68 @ =0xFF7FFFFF
	ands r1, r2
	str r1, [r0, #0x30]
	movs r0, #0xf
	adds r1, r6, #0
	bl sub_08054414
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	b _08075AD0
	.align 2, 0
_08075A64: .4byte gUnk_03003F80
_08075A68: .4byte 0xFF7FFFFF
_08075A6C:
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	bl sub_08077BD4
	ldr r5, _08075AD4 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_0806F948
	movs r0, #0x10
	strb r0, [r4, #1]
	adds r1, r6, #0
	bl sub_08054414
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08075AD8 @ =gUnk_08126EEC
	adds r4, r0, r1
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	adds r2, r0, #0
	cmp r2, #0
	beq _08075AD0
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08075AD0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08075AD4: .4byte gLinkEntity
_08075AD8: .4byte gUnk_08126EEC

	thumb_func_start sub_08075ADC
sub_08075ADC: @ 0x08075ADC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075B44 @ =gUnk_03003F80
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _08075B08
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075B08
	ldr r0, [r2, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075B08
	bl sub_08079D48
	cmp r0, #0
	bne _08075B4C
_08075B08:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	ldr r3, _08075B44 @ =gUnk_03003F80
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r3, #0x30]
	movs r2, #8
	asrs r2, r5
	lsls r1, r2, #4
	orrs r1, r2
	ldrb r0, [r3, #4]
	bics r0, r1
	strb r0, [r3, #4]
	mvns r2, r2
	ldrb r1, [r3, #0xa]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r2, r0
	strb r2, [r3, #0xb]
	ldr r0, _08075B48 @ =0x0000013D
	bl sub_080A3268
	b _08075B52
	.align 2, 0
_08075B44: .4byte gUnk_03003F80
_08075B48: .4byte 0x0000013D
_08075B4C:
	adds r0, r4, #0
	bl sub_08077E24
_08075B52:
	pop {r4, r5, pc}

	thumb_func_start sub_08075B54
sub_08075B54: @ 0x08075B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r5, _08075BB0 @ =gUnk_03003F80
	ldr r0, [r5, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08075B70
	b _08075C80
_08075B70:
	ldrb r0, [r6, #1]
	bl sub_0805436C
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08077F10
	cmp r0, #0
	bne _08075B86
	cmp r4, #1
	bls _08075BB8
_08075B86:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08075BB8
	movs r0, #0xf
	adds r1, r4, #0
	bl sub_08054414
	ldr r0, [r5, #0x30]
	ldr r1, _08075BB4 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08077E78
	movs r0, #0x9f
	lsls r0, r0, #1
	bl sub_080A3268
	b _08075C80
	.align 2, 0
_08075BB0: .4byte gUnk_03003F80
_08075BB4: .4byte 0xFF7FFFFF
_08075BB8:
	ldr r0, _08075C88 @ =gUnk_03003F80
	mov r8, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #0x18
	beq _08075C80
	ldr r5, _08075C8C @ =gLinkEntity
	ldrb r0, [r5, #0x1e]
	cmp r0, #0x36
	bhi _08075C80
	ldrh r1, [r5, #0x12]
	cmp r1, #6
	bne _08075C80
	ldrb r0, [r5, #0x14]
	ands r1, r0
	ldr r0, _08075C90 @ =gUnk_08126EEC
	adds r7, r1, r0
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08075C80
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r0, r0, r1
	ldr r4, _08075C94 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	movs r2, #1
	ldrsb r2, [r7, r2]
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x40
	bl sub_080002F0
	cmp r0, #0
	beq _08075C80
	movs r0, #0xf
	strb r0, [r6, #0xf]
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x7a
	movs r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	adds r2, r0, #0
	cmp r2, #0
	beq _08075C60
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08075C60:
	ldr r1, _08075C98 @ =0x0000060C
	adds r0, r6, #0
	bl sub_08077DF4
	movs r1, #8
	mov r2, sb
	asrs r1, r2
	mov r0, r8
	ldrb r2, [r0, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	mov r2, r8
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_08075C80:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075C88: .4byte gUnk_03003F80
_08075C8C: .4byte gLinkEntity
_08075C90: .4byte gUnk_08126EEC
_08075C94: .4byte gUnk_03000BF0
_08075C98: .4byte 0x0000060C

	thumb_func_start sub_08075C9C
sub_08075C9C: @ 0x08075C9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08075CCA
	ldr r0, _08075CF8 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r2, #6
	ands r2, r1
	ldr r1, _08075CFC @ =gUnk_08126EEC
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_0807AB44
_08075CCA:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075D04
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	subs r0, #1
	strb r0, [r4, #4]
	ldr r2, _08075D00 @ =gUnk_03003F80
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	ands r1, r0
	strb r1, [r2, #0xb]
	b _08075D0E
	.align 2, 0
_08075CF8: .4byte gLinkEntity
_08075CFC: .4byte gUnk_08126EEC
_08075D00: .4byte gUnk_03003F80
_08075D04:
	ldr r1, _08075D10 @ =gLinkEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08075D0E:
	pop {r4, r5, pc}
	.align 2, 0
_08075D10: .4byte gLinkEntity

	thumb_func_start sub_08075D14
sub_08075D14: @ 0x08075D14
	push {lr}
	ldr r3, _08075D28 @ =gUnk_0811BD78
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075D28: .4byte gUnk_0811BD78

	thumb_func_start sub_08075D2C
sub_08075D2C: @ 0x08075D2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075D74 @ =gUnk_03003F80
	ldrb r1, [r5, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08075D7C
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl sub_08077C94
	cmp r0, #0
	bne _08075D7C
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075D78 @ =gLinkEntity
	bl sub_0806F948
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08077C0C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077D38
	ldrb r1, [r5, #4]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #4]
	b _08075D84
	.align 2, 0
_08075D74: .4byte gUnk_03003F80
_08075D78: .4byte gLinkEntity
_08075D7C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08075D84:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08075D88
sub_08075D88: @ 0x08075D88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075DBC @ =gUnk_03003F80
	ldrb r1, [r2, #4]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075DD0
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _08075DC0
	ldrb r1, [r2, #0xa]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08075DC0
	ldrb r1, [r4, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08075DC0
	bl sub_08078F60
	b _08075DD8
	.align 2, 0
_08075DBC: .4byte gUnk_03003F80
_08075DC0:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075DD8
_08075DD0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075DD8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08075DDC
sub_08075DDC: @ 0x08075DDC
	push {lr}
	ldr r3, _08075DF0 @ =gUnk_0811BD80
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075DF0: .4byte gUnk_0811BD80

	thumb_func_start sub_08075DF4
sub_08075DF4: @ 0x08075DF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08075E2C @ =gUnk_03003F80
	ldrb r1, [r6, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08075E34
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075E30 @ =gLinkEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	b _08075E3C
	.align 2, 0
_08075E2C: .4byte gUnk_03003F80
_08075E30: .4byte gLinkEntity
_08075E34:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075E3C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08075E40
sub_08075E40: @ 0x08075E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08075EA0 @ =gUnk_03003F80
	adds r1, r0, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08075EA8
	ldrb r1, [r6, #4]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	bne _08075EA8
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08075EB8
	movs r0, #2
	strb r0, [r4, #4]
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075EA4 @ =gUnk_02002A40
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075EB8
	strb r7, [r4, #0xf]
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r0, [r6, #0xa]
	bics r0, r1
	strb r0, [r6, #0xa]
	b _08075EB8
	.align 2, 0
_08075EA0: .4byte gUnk_03003F80
_08075EA4: .4byte gUnk_02002A40
_08075EA8:
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077E78
_08075EB8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08075EC0
sub_08075EC0: @ 0x08075EC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08075F04 @ =gUnk_02002A40
	adds r0, #0xad
	ldrb r5, [r0]
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08075F0C
	cmp r5, #0
	beq _08075F0C
	ldr r2, _08075F08 @ =gUnk_03003F80
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075EF0
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08075F32
_08075EF0:
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08075F32
	.align 2, 0
_08075F04: .4byte gUnk_02002A40
_08075F08: .4byte gUnk_03003F80
_08075F0C:
	ldr r2, _08075F34 @ =gUnk_03003F80
	movs r0, #8
	asrs r0, r6
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	movs r1, #0xf
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #9]
	orrs r1, r0
	strb r1, [r4, #9]
	movs r0, #3
	strb r0, [r4, #4]
_08075F32:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08075F34: .4byte gUnk_03003F80

	thumb_func_start sub_08075F38
sub_08075F38: @ 0x08075F38
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _08075F6C @ =gUnk_03003F80
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075F70
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075F70
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075F80
	movs r0, #4
	strb r0, [r4, #4]
	b _08075F80
	.align 2, 0
_08075F6C: .4byte gUnk_03003F80
_08075F70:
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08077E78
_08075F80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08075F84
sub_08075F84: @ 0x08075F84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075FB4 @ =gUnk_03003F80
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075FC8
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075FC8
	movs r0, #0x70
	bl GetInventoryValue
	cmp r0, #1
	bne _08075FB8
	adds r0, r4, #0
	movs r1, #5
	bl sub_08077E3C
	b _08075FBE
	.align 2, 0
_08075FB4: .4byte gUnk_03003F80
_08075FB8:
	adds r0, r4, #0
	bl sub_08077E24
_08075FBE:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075FD8
_08075FC8:
	ldr r0, _08075FDC @ =gUnk_03003F80
	adds r0, #0x21
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075FD8:
	pop {r4, r5, pc}
	.align 2, 0
_08075FDC: .4byte gUnk_03003F80

	thumb_func_start sub_08075FE0
sub_08075FE0: @ 0x08075FE0
	push {lr}
	ldr r3, _08075FF4 @ =gUnk_0811BD98
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075FF4: .4byte gUnk_0811BD98

	thumb_func_start sub_08075FF8
sub_08075FF8: @ 0x08075FF8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08076018 @ =gUnk_03003F80
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #4]
	orrs r0, r1
	cmp r0, #0
	bne _08076076
	movs r5, #0
	movs r0, #8
	movs r1, #2
	movs r2, #2
	bl sub_0805EB00
	b _08076026
	.align 2, 0
_08076018: .4byte gUnk_03003F80
_0807601C:
	adds r5, #1
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805EB64
_08076026:
	adds r4, r0, #0
	cmp r4, #0
	bne _0807601C
	ldrb r0, [r6, #1]
	movs r1, #1
	cmp r0, #7
	bne _08076036
	movs r1, #3
_08076036:
	cmp r1, r5
	bls _08076076
	adds r0, r6, #0
	movs r1, #2
	bl sub_08077C3C
	adds r4, r0, #0
	cmp r4, #0
	beq _08076076
	ldr r0, _08076080 @ =gLinkEntity
	ldrb r2, [r0, #0x14]
	movs r1, #6
	ands r1, r2
	ldr r2, _08076084 @ =gUnk_0811BDAC
	adds r1, r1, r2
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080542F4
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_080A3268
_08076076:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08077E78
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076080: .4byte gLinkEntity
_08076084: .4byte gUnk_0811BDAC

	thumb_func_start sub_08076088
sub_08076088: @ 0x08076088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	cmp r3, #0
	beq _080760AA
	ldrb r0, [r3, #0x16]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080760A4
	b _080761A0
_080760A4:
	movs r0, #2
	strb r0, [r3, #0xc]
	strb r1, [r3, #0xd]
_080760AA:
	str r3, [r4, #0x18]
	ldr r0, _080760C4 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080760CC
	ldr r1, _080760C8 @ =0x00000928
	adds r0, r4, #0
	bl sub_08077DF4
	b _080760D6
	.align 2, 0
_080760C4: .4byte gUnk_03003F80
_080760C8: .4byte 0x00000928
_080760CC:
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080760D6:
	ldr r3, _08076130 @ =gUnk_03003F80
	movs r0, #0
	mov r8, r0
	movs r7, #3
	strb r7, [r3, #5]
	adds r0, r3, #0
	adds r0, #0xa8
	movs r6, #4
	strb r6, [r0]
	movs r0, #2
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r2, _08076134 @ =gLinkEntity
	movs r1, #0x79
	adds r1, r1, r2
	mov ip, r1
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076138
	mov r1, r8
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	strb r6, [r3, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r2, [r3, #0xb]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xb]
	ldrb r0, [r3, #0xa]
	ands r1, r0
	strb r1, [r3, #0xa]
	strb r7, [r4, #4]
	mov r0, r8
	strb r0, [r4, #0xf]
	b _0807614A
	.align 2, 0
_08076130: .4byte gUnk_03003F80
_08076134: .4byte gLinkEntity
_08076138:
	movs r1, #8
	asrs r1, r5
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
_0807614A:
	adds r0, r4, #0
	movs r1, #0x13
	bl sub_08077C3C
	adds r3, r0, #0
	cmp r3, #0
	bne _08076162
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077F50
	b _080761A0
_08076162:
	ldr r1, _08076194 @ =gLinkEntity
	str r3, [r1, #0x74]
	movs r2, #0
	strb r2, [r1, #0xf]
	ldr r0, [r4, #0x18]
	str r0, [r3, #0x54]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x16]
	str r4, [r3, #0x50]
	str r3, [r4, #0x18]
	ldrb r0, [r4, #3]
	strb r0, [r3, #0xb]
	ldrb r0, [r4, #7]
	strb r0, [r3, #0xe]
	ldrb r0, [r4, #8]
	strb r0, [r3, #0xf]
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _08076198
	movs r0, #8
	strb r0, [r4, #7]
	b _0807619A
	.align 2, 0
_08076194: .4byte gLinkEntity
_08076198:
	strb r2, [r4, #7]
_0807619A:
	movs r0, #0x7f
	bl sub_080A3268
_080761A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080761A8
sub_080761A8: @ 0x080761A8
	push {lr}
	ldr r3, _080761BC @ =gUnk_0811BDB4
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_080761BC: .4byte gUnk_0811BDB4

	thumb_func_start sub_080761C0
sub_080761C0: @ 0x080761C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076220 @ =gUnk_03003F80
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080762B8
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080761DE
	ldr r0, [r5, #0x30]
	ldr r1, _08076224 @ =0x00001201
	ands r0, r1
	cmp r0, #0
	beq _080762B8
_080761DE:
	ldr r1, _08076228 @ =gLinkEntity
	ldrb r2, [r1, #0x14]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r5, #1]
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #8
	bgt _080762B8
	bl sub_080789A8
	adds r3, r0, #0
	cmp r3, #1
	beq _08076258
	cmp r3, #1
	blo _0807626E
	cmp r3, #2
	bne _080762C0
	ldr r0, _0807622C @ =gUnk_03003BE0
	ldr r2, [r0, #8]
	ldrb r1, [r2, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076230
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_08076088
	b _080762C0
	.align 2, 0
_08076220: .4byte gUnk_03003F80
_08076224: .4byte 0x00001201
_08076228: .4byte gLinkEntity
_0807622C: .4byte gUnk_03003BE0
_08076230:
	str r2, [r4, #0x18]
	strb r3, [r2, #0xc]
	movs r1, #5
	strb r1, [r2, #0xd]
	adds r0, r5, #0
	adds r0, #0xa8
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #2
	adds r3, r6, #0
	bl sub_080762C4
	ldr r0, _08076254 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	b _08076264
	.align 2, 0
_08076254: .4byte gUnk_0200AF00
_08076258:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080762C4
_08076264:
	movs r0, #0x81
	lsls r0, r0, #1
	bl sub_080A3268
	b _080762C0
_0807626E:
	movs r0, #5
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #7]
	movs r0, #6
	strb r0, [r4, #0xf]
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r6
	ldrb r2, [r5, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	orrs r1, r0
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x30]
	ands r0, r3
	cmp r0, #0
	bne _080762A2
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	b _080762AA
_080762A2:
	ldr r1, _080762B4 @ =0x00000948
	adds r0, r4, #0
	bl sub_08077DF4
_080762AA:
	movs r0, #0x88
	bl sub_080A3268
	b _080762C0
	.align 2, 0
_080762B4: .4byte 0x00000948
_080762B8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077F50
_080762C0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080762C4
sub_080762C4: @ 0x080762C4
	push {lr}
	str r1, [r0, #0x18]
	ldr r1, _080762D4 @ =gUnk_03003F80
	strb r2, [r1, #5]
	adds r1, r3, #0
	bl sub_08077D38
	pop {pc}
	.align 2, 0
_080762D4: .4byte gUnk_03003F80

	thumb_func_start sub_080762D8
sub_080762D8: @ 0x080762D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08076334 @ =gUnk_03003F80
	ldrb r0, [r4, #5]
	movs r1, #0xcf
	ands r1, r0
	strb r1, [r4, #5]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077F64
	cmp r0, #0
	bne _080762F6
	b _08076486
_080762F6:
	ldr r0, _08076338 @ =gLinkEntity
	adds r1, r0, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, #0
	cmp r1, #8
	bgt _0807636C
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807636C
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _08076340
	ldrh r1, [r2, #0xc]
	ldr r0, _0807633C @ =0x00000502
	cmp r1, r0
	bne _08076376
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076340
	movs r0, #6
	strb r0, [r2, #0xd]
	b _08076376
	.align 2, 0
_08076334: .4byte gUnk_03003F80
_08076338: .4byte gLinkEntity
_0807633C: .4byte 0x00000502
_08076340:
	ldr r2, _08076364 @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #5
	strb r0, [r1]
	ldr r0, _08076368 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _0807635A
	b _0807647E
_0807635A:
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _08076394
	b _08076380
	.align 2, 0
_08076364: .4byte gUnk_03003F80
_08076368: .4byte gUnk_0200AF00
_0807636C:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _08076376
	movs r0, #6
	strb r0, [r1, #0xd]
_08076376:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077F50
	b _08076486
_08076380:
	adds r0, r3, #0
	movs r1, #6
	adds r2, r5, #0
	bl sub_0800875A
	cmp r0, #0
	beq _08076394
	adds r0, r5, #0
	movs r1, #0
	b _080763EC
_08076394:
	ldr r1, _080763F4 @ =gUnk_0811BE38
	ldr r7, _080763F8 @ =gLinkEntity
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	lsls r3, r0, #1
	adds r1, r3, r1
	ldr r4, _080763FC @ =gUnk_03003F80
	adds r2, r4, #0
	adds r2, #0x90
	ldrh r0, [r1]
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08076400
	adds r0, r5, #0
	bl sub_08077E24
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x94
	lsls r1, r1, #4
	cmp r0, #0
	bne _080763C8
	movs r1, #0xd0
	lsls r1, r1, #2
_080763C8:
	ldrh r0, [r5, #0x10]
	cmp r1, r0
	beq _080763D4
	adds r0, r5, #0
	bl sub_08077DF4
_080763D4:
	ldrb r0, [r4, #5]
	movs r1, #0x10
	orrs r1, r0
	strb r1, [r4, #5]
	adds r2, r4, #0
	adds r2, #0xa8
	movs r0, #0x1a
	strb r0, [r2]
	cmp r1, #1
	beq _08076486
	ldr r1, [r5, #0x18]
	adds r0, r5, #0
_080763EC:
	adds r2, r6, #0
	bl sub_08076088
	b _08076486
	.align 2, 0
_080763F4: .4byte gUnk_0811BE38
_080763F8: .4byte gLinkEntity
_080763FC: .4byte gUnk_03003F80
_08076400:
	ldr r0, _08076418 @ =gUnk_0811BE40
	adds r0, r3, r0
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08076460
	ldrb r0, [r7, #0xf]
	cmp r0, #5
	bhi _0807641C
	adds r0, #1
	strb r0, [r7, #0xf]
	b _08076486
	.align 2, 0
_08076418: .4byte gUnk_0811BE40
_0807641C:
	ldrb r0, [r5, #0xa]
	adds r1, r4, #0
	adds r1, #0x35
	strb r0, [r1]
	ldrb r0, [r4, #6]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #6]
	ldrb r1, [r4, #5]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	ldr r1, _0807645C @ =0x0000093C
	cmp r0, #0
	bne _0807644C
	movs r1, #0xcf
	lsls r1, r1, #2
_0807644C:
	ldrh r0, [r5, #0x10]
	cmp r1, r0
	bne _08076476
	adds r0, r5, #0
	bl sub_08077E24
	b _08076486
	.align 2, 0
_0807645C: .4byte 0x0000093C
_08076460:
	strb r0, [r7, #0xf]
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08076472
	movs r1, #0xd0
	lsls r1, r1, #2
	b _08076476
_08076472:
	movs r1, #0x94
	lsls r1, r1, #4
_08076476:
	adds r0, r5, #0
	bl sub_08077DF4
	b _08076486
_0807647E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077F50
_08076486:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08076488
sub_08076488: @ 0x08076488
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #7]
	adds r6, r0, #0
	cmp r6, #0
	bne _08076504
	adds r0, r4, #0
	bl sub_08077F64
	cmp r0, #0
	beq _08076508
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _080764B8
	ldr r0, _080764F8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08076510
_080764B8:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076508
	ldr r2, _080764FC @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r2, _08076500 @ =gUnk_03003F80
	movs r0, #4
	strb r0, [r2, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r3, [r2, #0xb]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r0, [r2, #0xa]
	ands r1, r0
	strb r1, [r2, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	strb r6, [r4, #0xf]
	b _08076508
	.align 2, 0
_080764F8: .4byte gUnk_030010A0
_080764FC: .4byte gLinkEntity
_08076500: .4byte gUnk_03003F80
_08076504:
	subs r0, #1
	strb r0, [r4, #7]
_08076508:
	ldr r0, _08076514 @ =gUnk_03003F80
	adds r0, #0xa8
	movs r1, #4
	strb r1, [r0]
_08076510:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08076514: .4byte gUnk_03003F80

	thumb_func_start sub_08076518
sub_08076518: @ 0x08076518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	bl sub_08077F64
	cmp r0, #0
	beq _080765D4
	ldr r5, _0807655C @ =gUnk_03003F80
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #4
	strb r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080765D4
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	bne _080765D4
	ldr r6, _08076560 @ =gLinkEntity
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r7, [r0]
	cmp r7, #0
	beq _08076564
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077F50
	b _080765D4
	.align 2, 0
_0807655C: .4byte gUnk_03003F80
_08076560: .4byte gLinkEntity
_08076564:
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	ldr r0, _080765B0 @ =0x00008018
	ands r0, r1
	cmp r0, #0
	beq _080765D4
	adds r0, r6, #0
	bl sub_0806F948
	movs r0, #5
	strb r0, [r5, #5]
	ldr r1, [r4, #0x18]
	movs r0, #2
	strb r0, [r1, #0xd]
	ldr r2, [r4, #0x18]
	ldrb r1, [r6, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080765B4
	movs r1, #0x93
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08077DF4
	b _080765BE
	.align 2, 0
_080765B0: .4byte 0x00008018
_080765B4:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080765BE:
	ldr r2, _080765DC @ =gUnk_03003F80
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	orrs r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_080765D4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080765DC: .4byte gUnk_03003F80

	thumb_func_start sub_080765E0
sub_080765E0: @ 0x080765E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077F64
	cmp r0, #0
	beq _08076608
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076602
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077F50
	b _08076608
_08076602:
	adds r0, r4, #0
	bl sub_08077E24
_08076608:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807660C
sub_0807660C: @ 0x0807660C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077E24
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0807662C
	ldr r0, _0807663C @ =gUnk_03003F80
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807663A
_0807662C:
	ldr r1, _0807663C @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_0807663A:
	pop {r4, r5, pc}
	.align 2, 0
_0807663C: .4byte gUnk_03003F80

	thumb_func_start sub_08076640
sub_08076640: @ 0x08076640
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08076654
	adds r0, r3, #0
	bl sub_08076758
	b _08076754
_08076654:
	ldr r0, _080766BC @ =gUnk_03003F80
	ldr r1, [r0, #0x2c]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807674C
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080766C4
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	orrs r0, r1
	cmp r0, #0
	bne _0807674C
	ldrb r0, [r2, #0x12]
	cmp r0, #0x12
	beq _08076678
	cmp r0, #1
	bne _08076686
_08076678:
	ldr r0, _080766C0 @ =gLinkEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _08076686
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0807674C
_08076686:
	ldrb r1, [r2, #2]
	cmp r1, #0
	beq _08076694
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08076710
_08076694:
	ldr r5, _080766C0 @ =gLinkEntity
	ldr r0, [r5, #0x34]
	cmp r0, #0
	blt _0807674C
	movs r1, #0
	strb r1, [r2, #1]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	strb r1, [r2, #0xb]
	movs r0, #1
	strb r0, [r2, #2]
	movs r0, #0xff
	strb r0, [r2, #0xe]
	str r1, [r2, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	b _0807673C
	.align 2, 0
_080766BC: .4byte gUnk_03003F80
_080766C0: .4byte gLinkEntity
_080766C4:
	ldrb r0, [r2, #0x1b]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	ldrb r1, [r2, #4]
	orrs r0, r1
	ldrb r1, [r2, #5]
	orrs r0, r1
	ldrb r1, [r2, #0x1c]
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	bne _0807674C
	ldrb r1, [r2, #0x12]
	adds r0, r1, #0
	subs r0, #0x12
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080766F4
	cmp r1, #1
	bne _08076702
_080766F4:
	ldr r0, _0807671C @ =gLinkEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _08076702
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0807674C
_08076702:
	ldrb r1, [r2, #2]
	cmp r1, #0
	beq _08076720
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _08076720
_08076710:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08076758
	b _08076754
	.align 2, 0
_0807671C: .4byte gLinkEntity
_08076720:
	ldr r1, _08076748 @ =gLinkEntity
	ldr r0, [r1, #0x34]
	cmp r0, #0
	blt _0807674C
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #2]
	str r1, [r2, #0x2c]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
_0807673C:
	bl sub_08077F84
	movs r0, #0x78
	bl sub_080A3268
	b _08076754
	.align 2, 0
_08076748: .4byte gLinkEntity
_0807674C:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08077E78
_08076754:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08076758
sub_08076758: @ 0x08076758
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080767C0 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r5, #0xe]
	ldrb r2, [r5, #2]
	movs r0, #0x28
	ands r0, r2
	cmp r0, #0
	bne _080767F8
	cmp r2, #0
	beq _080767F8
	movs r0, #7
	ands r0, r2
	cmp r0, #3
	beq _080767F8
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _080767D8
	ldrb r0, [r4, #4]
	cmp r0, #1
	bhi _080767C8
	ldr r2, _080767C4 @ =gLinkEntity
	ldr r0, [r2, #0x20]
	cmp r0, #0
	bgt _080767FE
	ldrb r3, [r5, #2]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	bne _080767FE
	movs r0, #2
	strb r0, [r4, #4]
	adds r1, r2, #0
	adds r1, #0x7a
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r5, #2]
	movs r0, #0xa2
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0xb9
	lsls r0, r0, #1
	bl sub_080A3268
	b _080767FE
	.align 2, 0
_080767C0: .4byte gUnk_03003F80
_080767C4: .4byte gLinkEntity
_080767C8:
	ldr r1, _080767D4 @ =gLinkEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080767FE
	.align 2, 0
_080767D4: .4byte gLinkEntity
_080767D8:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bls _080767FE
	ldr r1, _080767F4 @ =gLinkEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5, #2]
	b _080767FE
	.align 2, 0
_080767F4: .4byte gLinkEntity
_080767F8:
	adds r0, r4, #0
	bl sub_08077E78
_080767FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08076800
sub_08076800: @ 0x08076800
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r4, _0807682C @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _08076834
	ldr r1, _08076830 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r1, #0x1e]
	strb r0, [r1, #0xe]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08077E78
	b _080768EC
	.align 2, 0
_0807682C: .4byte gLinkEntity
_08076830: .4byte gUnk_03003F80
_08076834:
	ldrb r0, [r6, #7]
	subs r0, #1
	strb r0, [r6, #7]
	movs r1, #7
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0807684A
	movs r0, #0x7d
	bl sub_080A3268
_0807684A:
	ldr r2, _08076880 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080768DA
	ldrb r1, [r6, #7]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080768DA
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	bne _08076884
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080768DA
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFX
	b _080768DA
	.align 2, 0
_08076880: .4byte gUnk_03003F80
_08076884:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFX
	adds r5, r0, #0
	cmp r5, #0
	beq _080768DA
	ldrh r0, [r5, #0x32]
	adds r0, #2
	strh r0, [r5, #0x32]
	ldrb r0, [r6, #4]
	cmp r0, #2
	beq _080768DA
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	bl sub_08000E50
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080768B8
	rsbs r4, r4, #0
_080768B8:
	ldrh r0, [r5, #0x32]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	bl sub_08000E50
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	bl sub_08000E50
	ands r0, r7
	cmp r0, #0
	beq _080768D4
	rsbs r4, r4, #0
_080768D4:
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
_080768DA:
	ldr r0, _080768F4 @ =gUnk_0811BDCC
	ldrb r1, [r6, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r6, #0
	mov r1, sb
	bl _call_via_r2
_080768EC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080768F4: .4byte gUnk_0811BDCC

	thumb_func_start sub_080768F8
sub_080768F8: @ 0x080768F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _08076934 @ =gUnk_03003F80
	ldrb r1, [r3, #0x1c]
	ldrb r0, [r3, #4]
	orrs r1, r0
	ldrb r0, [r3, #5]
	orrs r1, r0
	ldrb r0, [r3, #2]
	orrs r1, r0
	ldr r2, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	orrs r1, r0
	cmp r1, #0
	bne _08076954
	movs r0, #1
	strb r0, [r3, #0x1e]
	adds r0, r3, #0
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	bne _08076938
	movs r0, #0x10
	strb r0, [r4, #7]
	b _0807693C
	.align 2, 0
_08076934: .4byte gUnk_03003F80
_08076938:
	ldr r0, _08076950 @ =0x00000C14
	strh r0, [r3, #8]
_0807693C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08076964
	b _08076962
	.align 2, 0
_08076950: .4byte 0x00000C14
_08076954:
	movs r0, #0
	strb r0, [r3, #0x1e]
	strb r0, [r3, #0xe]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08076962:
	pop {r4, r5, pc}

	thumb_func_start sub_08076964
sub_08076964: @ 0x08076964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	bne _08076978
	b _08076A70
_08076978:
	ldr r0, _080769C4 @ =gLinkEntity
	ldr r7, [r0, #0x34]
	cmp r7, #0
	bne _08076A70
	ldr r5, _080769C8 @ =gUnk_03003F80
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08076A70
	adds r0, r4, #0
	bl sub_08077E24
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _080769A0
	adds r0, r4, #0
	bl sub_08077E24
_080769A0:
	ldrb r0, [r5, #0x1e]
	adds r0, #1
	strb r0, [r5, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08076A7E
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080769CC
	strb r7, [r5, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076A7E
	.align 2, 0
_080769C4: .4byte gLinkEntity
_080769C8: .4byte gUnk_03003F80
_080769CC:
	movs r0, #0x40
	strb r0, [r5, #0x1e]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	bl sub_0807A158
	cmp r0, #0
	beq _08076A46
	ldr r0, [r5, #0x30]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08076A46
	adds r0, r5, #0
	adds r0, #0xab
	movs r1, #3
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08077C3C
	adds r5, r0, #0
	cmp r5, #0
	beq _08076A70
	ldr r6, _08076A34 @ =gUnk_02002A40
	adds r4, r6, #0
	adds r4, #0xb4
	ldrb r0, [r4]
	bl sub_0805449C
	cmp r0, #0
	beq _08076A38
	ldrb r1, [r4]
	b _08076A3E
	.align 2, 0
_08076A34: .4byte gUnk_02002A40
_08076A38:
	adds r0, r6, #0
	adds r0, #0xb5
	ldrb r1, [r0]
_08076A3E:
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
	b _08076A7E
_08076A46:
	ldr r0, _08076A5C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r1, #0x84
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076A7E
	.align 2, 0
_08076A5C: .4byte gUnk_03003F80
_08076A60:
	ldr r1, _08076A6C @ =gUnk_03003F80
	movs r0, #0xc1
	lsls r0, r0, #4
	strh r0, [r1, #8]
	b _08076A7E
	.align 2, 0
_08076A6C: .4byte gUnk_03003F80
_08076A70:
	ldr r1, _08076A84 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076A7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076A84: .4byte gUnk_03003F80

	thumb_func_start sub_08076A88
sub_08076A88: @ 0x08076A88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076B64
	ldr r1, _08076AB4 @ =gUnk_03003F80
	ldrb r0, [r1, #0x1e]
	adds r3, r1, #0
	cmp r0, #0
	beq _08076B64
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076ABC
	ldr r1, _08076AB8 @ =gLinkEntity
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08076AC2
	.align 2, 0
_08076AB4: .4byte gUnk_03003F80
_08076AB8: .4byte gLinkEntity
_08076ABC:
	ldr r1, _08076B00 @ =gLinkEntity
	movs r0, #0xa0
	lsls r0, r0, #2
_08076AC2:
	strh r0, [r1, #0x24]
	adds r5, r1, #0
	ldr r1, _08076B04 @ =gUnk_0800275C
	ldrb r2, [r5, #0x14]
	movs r6, #0xe
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r5, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _08076B0E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08076B08
	movs r2, #0
	movs r0, #6
	strb r0, [r5, #0xc]
	strb r2, [r5, #0xd]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #0x38
	strb r2, [r0]
	movs r0, #0xff
	strb r0, [r3, #0xd]
	b _08076B72
	.align 2, 0
_08076B00: .4byte gLinkEntity
_08076B04: .4byte gUnk_0800275C
_08076B08:
	movs r0, #1
	strb r0, [r4, #8]
	b _08076B72
_08076B0E:
	ldr r1, _08076B60 @ =gUnk_0811BE38
	movs r0, #0xfe
	ands r0, r2
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x90
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _08076B64
	ldrb r0, [r4, #0xa]
	adds r1, r6, #0
	ands r1, r0
	lsls r0, r1, #2
	strb r0, [r4, #0xb]
	ldrb r2, [r3, #0xd]
	cmp r2, #0xff
	beq _08076B52
	cmp r2, r0
	beq _08076B52
	adds r0, r2, #0
	ldrb r1, [r4, #0xb]
	subs r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0xf
	bgt _08076B4A
	adds r0, r1, #2
	strb r0, [r4, #0xb]
_08076B4A:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	ands r0, r2
	strb r0, [r4, #0xb]
_08076B52:
	ldrb r0, [r4, #0xb]
	strb r0, [r3, #0xd]
	adds r0, r4, #0
	bl sub_08077E24
	b _08076B72
	.align 2, 0
_08076B60: .4byte gUnk_0811BE38
_08076B64:
	ldr r1, _08076B74 @ =gUnk_03003F80
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076B72:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076B74: .4byte gUnk_03003F80

	thumb_func_start sub_08076B78
sub_08076B78: @ 0x08076B78
	push {lr}
	ldr r3, _08076B94 @ =gUnk_0811BDD8
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	ldr r1, _08076B98 @ =gLinkEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {pc}
	.align 2, 0
_08076B94: .4byte gUnk_0811BDD8
_08076B98: .4byte gLinkEntity

	thumb_func_start sub_08076B9C
sub_08076B9C: @ 0x08076B9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _08076BB4 @ =gUnk_03003F80
	ldrb r0, [r3, #0xc]
	cmp r0, #0x18
	bne _08076BB8
	adds r0, r4, #0
	bl sub_08077E78
	b _08076C1C
	.align 2, 0
_08076BB4: .4byte gUnk_03003F80
_08076BB8:
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r1, _08076C20 @ =gLinkEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	ldrb r2, [r1, #0x18]
	subs r0, #0x45
	ands r0, r2
	strb r0, [r1, #0x18]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	adds r1, #0x7a
	movs r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08076C24 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	movs r1, #8
	asrs r1, r5
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
	bl sub_08078F60
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	ldr r0, _08076C28 @ =0x00000216
	bl sub_080A3268
	bl sub_0805E544
_08076C1C:
	pop {r4, r5, pc}
	.align 2, 0
_08076C20: .4byte gLinkEntity
_08076C24: .4byte gUnk_02034490
_08076C28: .4byte 0x00000216

	thumb_func_start sub_08076C2C
sub_08076C2C: @ 0x08076C2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_08077E24
	ldrb r1, [r5, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076C6E
	ldr r0, _08076C70 @ =gLinkEntity
	ldrb r2, [r0, #0x10]
	movs r4, #0
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	ldr r2, _08076C74 @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	ldr r3, _08076C78 @ =0xEFFFFFFF
	ands r1, r3
	str r1, [r2, #0x30]
	adds r2, #0x27
	strb r4, [r2]
	ldr r1, _08076C7C @ =gUnk_02034490
	strb r4, [r1]
	bl sub_0809D700
	bl sub_0805E564
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076C6E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08076C70: .4byte gLinkEntity
_08076C74: .4byte gUnk_03003F80
_08076C78: .4byte 0xEFFFFFFF
_08076C7C: .4byte gUnk_02034490

	thumb_func_start sub_08076C80
sub_08076C80: @ 0x08076C80
	push {lr}
	ldr r3, _08076C94 @ =gUnk_0811BDE0
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08076C94: .4byte gUnk_0811BDE0

	thumb_func_start sub_08076C98
sub_08076C98: @ 0x08076C98
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #9]
	movs r0, #0xf
	orrs r0, r2
	strb r0, [r4, #9]
	adds r0, r4, #0
	bl sub_08077D38
	ldr r0, _08076CB8 @ =gLinkEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	pop {r4, pc}
	.align 2, 0
_08076CB8: .4byte gLinkEntity

	thumb_func_start sub_08076CBC
sub_08076CBC: @ 0x08076CBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xe]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08076CD2
	adds r0, r4, #0
	bl sub_08077E78
	b _08076CE8
_08076CD2:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08076CE2
	adds r0, r4, #0
	movs r1, #0x12
	bl sub_08077C3C
_08076CE2:
	adds r0, r4, #0
	bl sub_08077E24
_08076CE8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08076CEC
sub_08076CEC: @ 0x08076CEC
	push {lr}
	ldr r3, _08076D00 @ =gUnk_0811BDE8
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08076D00: .4byte gUnk_0811BDE8

	thumb_func_start sub_08076D04
sub_08076D04: @ 0x08076D04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08076D2C @ =gUnk_03003F80
	movs r0, #0x81
	strb r0, [r1, #3]
	movs r0, #2
	strb r0, [r4, #9]
	ldr r0, _08076D30 @ =gLinkEntity
	bl sub_0806F948
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	bl sub_08077BB8
	pop {r4, r5, pc}
	.align 2, 0
_08076D2C: .4byte gUnk_03003F80
_08076D30: .4byte gLinkEntity

	thumb_func_start sub_08076D34
sub_08076D34: @ 0x08076D34
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08077EFC
	adds r1, r0, #0
	cmp r1, #0
	beq _08076D80
	ldr r5, _08076D78 @ =gUnk_03003F80
	ldrb r0, [r5, #3]
	movs r1, #1
	orrs r1, r0
	strb r1, [r5, #3]
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08076D8C
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	ldr r0, _08076D7C @ =0x0000015D
	bl sub_080A3268
	b _08076D8C
	.align 2, 0
_08076D78: .4byte gUnk_03003F80
_08076D7C: .4byte 0x0000015D
_08076D80:
	ldr r0, _08076D90 @ =gUnk_03003F80
	strb r1, [r0, #3]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076D8C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08076D90: .4byte gUnk_03003F80

	thumb_func_start sub_08076D94
sub_08076D94: @ 0x08076D94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	adds r1, r0, #0
	cmp r1, #0
	beq _08076DBC
	ldr r2, _08076DB8 @ =gUnk_03003F80
	ldrb r1, [r2, #3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #3]
	adds r0, r4, #0
	bl sub_08077E24
	b _08076DC8
	.align 2, 0
_08076DB8: .4byte gUnk_03003F80
_08076DBC:
	ldr r0, _08076DCC @ =gUnk_03003F80
	strb r1, [r0, #3]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08076DC8:
	pop {r4, r5, pc}
	.align 2, 0
_08076DCC: .4byte gUnk_03003F80

	thumb_func_start sub_08076DD0
sub_08076DD0: @ 0x08076DD0
	push {lr}
	ldr r2, _08076DEC @ =gUnk_03003F80
	adds r2, #0xa8
	movs r3, #3
	strb r3, [r2]
	ldr r3, _08076DF0 @ =gUnk_0811BDF4
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08076DEC: .4byte gUnk_03003F80
_08076DF0: .4byte gUnk_0811BDF4

	thumb_func_start sub_08076DF4
sub_08076DF4: @ 0x08076DF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _08076E48 @ =gLinkEntity
	mov r8, r0
	bl sub_0807A894
	cmp r0, #0x29
	beq _08076E50
	ldr r6, _08076E4C @ =gUnk_03003F80
	ldrb r0, [r6, #0x12]
	cmp r0, #0x12
	beq _08076E50
	cmp r0, #0x13
	beq _08076E50
	ldrb r5, [r6, #2]
	cmp r5, #0
	bne _08076E50
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077D38
	strb r5, [r4, #7]
	mov r1, r8
	ldrb r0, [r1, #0x14]
	strb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	adds r0, #1
	strb r0, [r4, #9]
	movs r0, #1
	strb r0, [r6, #0x1d]
	mov r1, r8
	str r5, [r1, #0x74]
	strb r0, [r6, #0x1c]
	adds r0, r4, #0
	bl sub_08077BB8
	b _08076E58
	.align 2, 0
_08076E48: .4byte gLinkEntity
_08076E4C: .4byte gUnk_03003F80
_08076E50:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076E58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08076E60
sub_08076E60: @ 0x08076E60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076EB4 @ =gUnk_03003F80
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076E7A
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076E7A:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076EC0
	movs r0, #2
	strb r0, [r4, #4]
	ldr r1, _08076EB8 @ =0x00000504
	adds r0, r4, #0
	bl sub_08077DF4
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08077CB8
	adds r1, r0, #0
	cmp r1, #0
	beq _08076EC6
	ldr r0, _08076EBC @ =gLinkEntity
	str r0, [r1, #0x50]
	b _08076EC6
	.align 2, 0
_08076EB4: .4byte gUnk_03003F80
_08076EB8: .4byte 0x00000504
_08076EBC: .4byte gLinkEntity
_08076EC0:
	adds r0, r4, #0
	bl sub_08077E24
_08076EC6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08076EC8
sub_08076EC8: @ 0x08076EC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076EE4 @ =gUnk_03003F80
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076EE8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076F60
	.align 2, 0
_08076EE4: .4byte gUnk_03003F80
_08076EE8:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076F50
	ldrb r0, [r4, #7]
	cmp r0, #0xef
	bls _08076EFC
	movs r0, #3
	b _08076F0E
_08076EFC:
	adds r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _08076F0C
	movs r0, #2
	b _08076F0E
_08076F0C:
	movs r0, #1
_08076F0E:
	strb r0, [r5, #0x1d]
	ldr r0, _08076F1C @ =gLinkEntity
	ldrb r0, [r0, #0xd]
	cmp r0, #0x1b
	bne _08076F24
	ldr r1, _08076F20 @ =0x00000524
	b _08076F36
	.align 2, 0
_08076F1C: .4byte gLinkEntity
_08076F20: .4byte 0x00000524
_08076F24:
	ldr r0, _08076F44 @ =gUnk_03003F80
	ldrb r1, [r0, #0xd]
	movs r0, #0x80
	ands r0, r1
	movs r1, #0xa3
	lsls r1, r1, #3
	cmp r0, #0
	beq _08076F36
	subs r1, #0x14
_08076F36:
	ldrh r0, [r4, #0x10]
	cmp r1, r0
	beq _08076F48
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076F60
	.align 2, 0
_08076F44: .4byte gUnk_03003F80
_08076F48:
	adds r0, r4, #0
	bl sub_08077E24
	b _08076F60
_08076F50:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #8
	asrs r0, r6
	ldrb r1, [r5, #0xa]
	orrs r0, r1
	strb r0, [r5, #0xa]
_08076F60:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08076F64
sub_08076F64: @ 0x08076F64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _08076F84 @ =gUnk_03003F80
	ldrb r0, [r1, #0x1c]
	movs r2, #0xf
	ands r2, r0
	adds r3, r1, #0
	cmp r2, #7
	bls _08076F7A
	b _080770EC
_08076F7A:
	lsls r0, r2, #2
	ldr r1, _08076F88 @ =_08076F8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08076F84: .4byte gUnk_03003F80
_08076F88: .4byte _08076F8C
_08076F8C: @ jump table
	.4byte _08077100 @ case 0
	.4byte _080770EC @ case 1
	.4byte _080770EC @ case 2
	.4byte _0807704C @ case 3
	.4byte _08077052 @ case 4
	.4byte _08076FAC @ case 5
	.4byte _080770B8 @ case 6
	.4byte _080770D0 @ case 7
_08076FAC:
	ldrb r1, [r4, #0xe]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807700E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08077004
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #7]
	movs r1, #1
	strb r1, [r3, #0x1d]
	ldr r5, _08076FFC @ =gLinkEntity
	str r0, [r5, #0x74]
	strb r1, [r3, #0x1c]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r3, #0xa]
	bics r0, r1
	strb r0, [r3, #0xa]
	movs r0, #2
	strb r0, [r4, #4]
	ldr r1, _08077000 @ =0x00000504
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08077CB8
	cmp r0, #0
	bne _08076FF6
	b _08077110
_08076FF6:
	str r5, [r0, #0x50]
	b _08077110
	.align 2, 0
_08076FFC: .4byte gLinkEntity
_08077000: .4byte 0x00000504
_08077004:
	movs r0, #6
	strb r0, [r3, #0x1c]
	movs r1, #0xa2
	lsls r1, r1, #3
	b _080770F2
_0807700E:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _0807701C
	movs r0, #1
	strb r0, [r4, #8]
_0807701C:
	adds r0, r4, #0
	bl sub_08077E24
	ldr r0, _08077044 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08077110
	ldr r0, _08077048 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	strh r5, [r0, #0x24]
	bl sub_08079E08
	b _08077110
	.align 2, 0
_08077044: .4byte gUnk_03003F80
_08077048: .4byte gLinkEntity
_0807704C:
	ldr r1, _080770B0 @ =gUnk_03003F80
	movs r0, #4
	strb r0, [r1, #0x1c]
_08077052:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08077060
	movs r0, #1
	strb r0, [r4, #8]
_08077060:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807708C
	ldr r1, _080770B0 @ =gUnk_03003F80
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, _080770B4 @ =gLinkEntity
	str r2, [r0, #0x70]
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	beq _0807708C
	movs r0, #0x11
	movs r1, #0
	movs r3, #0
	bl sub_08077CB8
_0807708C:
	ldr r0, _080770B0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08077110
	ldr r2, _080770B4 @ =gLinkEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0x80
	strh r0, [r2, #0x24]
	bl sub_08079E08
	b _08077110
	.align 2, 0
_080770B0: .4byte gUnk_03003F80
_080770B4: .4byte gLinkEntity
_080770B8:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077110
	ldr r3, _080770CC @ =gUnk_03003F80
	b _08077100
	.align 2, 0
_080770CC: .4byte gUnk_03003F80
_080770D0:
	ldr r1, _080770E4 @ =0x00000514
	adds r0, r4, #0
	bl sub_08077DF4
	ldr r1, _080770E8 @ =gUnk_03003F80
	movs r2, #0
	movs r0, #3
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1d]
	b _08077110
	.align 2, 0
_080770E4: .4byte 0x00000514
_080770E8: .4byte gUnk_03003F80
_080770EC:
	movs r0, #3
	strb r0, [r3, #0x1c]
	ldr r1, _080770FC @ =0x00000514
_080770F2:
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077110
	.align 2, 0
_080770FC: .4byte 0x00000514
_08077100:
	movs r1, #0
	strb r1, [r3, #0x1c]
	ldr r0, _08077114 @ =gLinkEntity
	str r1, [r0, #0x70]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08077110:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08077114: .4byte gLinkEntity

	thumb_func_start sub_08077118
sub_08077118: @ 0x08077118
	push {lr}
	ldr r3, _0807712C @ =gUnk_0811BE04
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0807712C: .4byte gUnk_0811BE04

	thumb_func_start sub_08077130
sub_08077130: @ 0x08077130
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0807718C @ =gUnk_03003F80
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080771B6
	adds r0, r4, #0
	bl sub_08077D38
	adds r0, r5, #0
	adds r0, #0x3d
	movs r6, #1
	strb r6, [r0]
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	bl sub_080774A0
	adds r5, r0, #0
	cmp r5, #0
	beq _080771A8
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080771C4
	ldr r1, _08077190 @ =0x0000050C
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #2
	strb r0, [r4, #4]
	cmp r5, #0x56
	bne _080771C4
	ldr r2, _08077194 @ =gLinkEntity
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08077198
	ldrh r0, [r2, #0x32]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strh r1, [r2, #0x32]
	b _080771C4
	.align 2, 0
_0807718C: .4byte gUnk_03003F80
_08077190: .4byte 0x0000050C
_08077194: .4byte gLinkEntity
_08077198:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
	b _080771C4
_080771A8:
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	strb r6, [r4, #4]
	b _080771C4
_080771B6:
	adds r0, r4, #0
	bl sub_08077E78
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
_080771C4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080771C8
sub_080771C8: @ 0x080771C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080771F4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	ldr r0, _080771F0 @ =gUnk_03003F80
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	b _080772A4
	.align 2, 0
_080771F0: .4byte gUnk_03003F80
_080771F4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807720E
	ldrb r0, [r4, #8]
	cmp r0, #0xff
	bne _0807720E
	ldr r0, _08077240 @ =gLinkEntity
	ldrb r2, [r4, #0xe]
	movs r1, #0x1e
	movs r3, #1
	bl sub_080A2988
_0807720E:
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080772A4
	ldr r5, _08077240 @ =gLinkEntity
	adds r0, r5, #0
	movs r1, #0xd
	adds r2, r4, #0
	bl sub_0800875A
	cmp r0, #0
	bne _08077248
	movs r1, #0xa4
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #3
	strb r0, [r4, #4]
	ldr r0, _08077244 @ =0x00000107
	bl sub_080A3268
	b _080772A4
	.align 2, 0
_08077240: .4byte gLinkEntity
_08077244: .4byte 0x00000107
_08077248:
	ldrb r0, [r4, #8]
	cmp r0, #0xff
	beq _0807728C
	ldrb r3, [r4, #3]
	adds r0, r5, #0
	movs r1, #0x1f
	movs r2, #0
	bl sub_080A2988
	adds r3, r0, #0
	cmp r3, #0
	beq _0807729C
	ldrb r0, [r4, #7]
	movs r2, #0
	strb r0, [r3, #0xe]
	ldrb r0, [r4, #8]
	strb r0, [r3, #0xf]
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x5a
	strb r2, [r0]
	ldr r1, _08077288 @ =gUnk_0811BE14
	ldrb r0, [r4, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x59
	strb r1, [r0]
	b _0807729C
	.align 2, 0
_08077288: .4byte gUnk_0811BE14
_0807728C:
	ldrb r0, [r4, #3]
	cmp r0, #0xf
	bne _0807729C
	ldrb r0, [r4, #7]
	cmp r0, #0x17
	bne _0807729C
	movs r0, #0
	strb r0, [r4, #8]
_0807729C:
	movs r0, #0x84
	lsls r0, r0, #1
	bl sub_080A3268
_080772A4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080772A8
sub_080772A8: @ 0x080772A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r1, [r4, #0xe]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080772C6
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _080772C6
	movs r0, #1
	strb r0, [r4, #7]
_080772C6:
	movs r0, #0x71
	bl GetInventoryValue
	cmp r0, #1
	bne _08077318
	ldrb r1, [r4, #0xe]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #3
	beq _08077300
	adds r0, r4, #0
	movs r1, #2
	bl sub_08077E3C
	ldr r3, _080772F8 @ =gLinkEntity
	ldr r2, _080772FC @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	b _0807732E
	.align 2, 0
_080772F8: .4byte gLinkEntity
_080772FC: .4byte gUnk_0811BE16
_08077300:
	adds r0, r4, #0
	bl sub_08077E24
	ldr r3, _08077310 @ =gLinkEntity
	ldr r2, _08077314 @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	b _08077326
	.align 2, 0
_08077310: .4byte gLinkEntity
_08077314: .4byte gUnk_0811BE16
_08077318:
	adds r0, r4, #0
	bl sub_08077E24
	ldr r3, _0807736C @ =gLinkEntity
	ldr r2, _08077370 @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	movs r0, #7
_08077326:
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_0807732E:
	strh r0, [r3, #0x24]
	ldr r5, _0807736C @ =gLinkEntity
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08077344
	bl sub_08079E08
_08077344:
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807738C
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08077374
	adds r0, r5, #0
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	bl sub_080774A0
	cmp r0, #0
	beq _08077374
	movs r0, #0
	strb r0, [r4, #7]
	b _0807743E
	.align 2, 0
_0807736C: .4byte gLinkEntity
_08077370: .4byte gUnk_0811BE16
_08077374:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	ldr r0, _08077388 @ =gUnk_03003F80
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	b _0807743E
	.align 2, 0
_08077388: .4byte gUnk_03003F80
_0807738C:
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0807743E
	adds r0, r5, #0
	adds r0, #0x59
	movs r6, #1
	strb r6, [r0]
	adds r0, r5, #0
	bl sub_0807B5B0
	cmp r0, #0
	beq _080773BC
	movs r0, #0x84
	lsls r0, r0, #1
	bl sub_080A3268
	ldrb r2, [r4, #0xe]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r3, #0
	bl sub_080A2988
	b _0807743E
_080773BC:
	ldr r1, _08077440 @ =0x0000051C
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r5, #0
	movs r1, #0x1d
	movs r2, #0
	bl CreateFX
	adds r3, r0, #0
	cmp r3, #0
	beq _080773F6
	ldrb r0, [r4, #0xa]
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080773F6:
	adds r0, r5, #0
	movs r1, #0x1d
	movs r2, #0
	bl CreateFX
	adds r3, r0, #0
	cmp r3, #0
	beq _08077432
	ldrb r0, [r4, #0xa]
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	movs r0, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	strb r6, [r3, #0xf]
_08077432:
	movs r0, #3
	strb r0, [r4, #4]
	strb r6, [r4, #5]
	ldr r0, _08077444 @ =0x00000119
	bl sub_080A3268
_0807743E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08077440: .4byte 0x0000051C
_08077444: .4byte 0x00000119

	thumb_func_start sub_08077448
sub_08077448: @ 0x08077448
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08077498 @ =gLinkEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08077474
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08077474
	bl sub_08079E08
_08077474:
	adds r0, r4, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077494
	ldr r0, _0807749C @ =gUnk_03003F80
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077494:
	pop {r4, r5, pc}
	.align 2, 0
_08077498: .4byte gLinkEntity
_0807749C: .4byte gUnk_03003F80

	thumb_func_start sub_080774A0
sub_080774A0: @ 0x080774A0
	push {r4, r5, r6, r7, lr}
	ldr r3, _080774FC @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r5, _08077500 @ =gUnk_0811BE1E
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r4, _08077504 @ =gUnk_03000BF0
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	asrs r6, r2, #4
	movs r2, #0x3f
	ands r6, r2
	movs r7, #0x32
	ldrsh r0, [r3, r7]
	adds r1, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r6, r0
	adds r4, r3, #0
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_080002E0
	cmp r0, #0x16
	bhi _080774F6
	cmp r0, #0xe
	bhi _08077508
_080774F6:
	movs r0, #0
	b _0807751A
	.align 2, 0
_080774FC: .4byte gLinkEntity
_08077500: .4byte gUnk_0811BE1E
_08077504: .4byte gUnk_03000BF0
_08077508:
	adds r0, r6, #0
	ldrb r1, [r4]
	bl sub_080002C8
	cmp r0, #0x56
	bne _08077518
	movs r0, #0x56
	b _0807751A
_08077518:
	movs r0, #1
_0807751A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807751C
sub_0807751C: @ 0x0807751C
	push {lr}
	ldr r3, _08077530 @ =gUnk_0811BE28
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08077530: .4byte gUnk_0811BE28

	thumb_func_start sub_08077534
sub_08077534: @ 0x08077534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077D38
	ldr r0, _08077570 @ =gLinkEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldrb r1, [r4, #1]
	ldr r0, _08077574 @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r0, [r0]
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _080775F8
	lsls r0, r0, #2
	ldr r1, _08077578 @ =_0807757C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077570: .4byte gLinkEntity
_08077574: .4byte gUnk_02002A40
_08077578: .4byte _0807757C
_0807757C: @ jump table
	.4byte _080775C4 @ case 0
	.4byte _080775D4 @ case 1
	.4byte _080775D4 @ case 2
	.4byte _080775D4 @ case 3
	.4byte _080775D4 @ case 4
	.4byte _080775D4 @ case 5
	.4byte _080775F8 @ case 6
	.4byte _080775F8 @ case 7
	.4byte _080775F8 @ case 8
	.4byte _080775D4 @ case 9
	.4byte _080775D4 @ case 10
	.4byte _080775D4 @ case 11
	.4byte _080775D4 @ case 12
	.4byte _080775D4 @ case 13
	.4byte _080775D4 @ case 14
	.4byte _080775F8 @ case 15
	.4byte _080775F8 @ case 16
	.4byte _080775F8 @ case 17
_080775C4:
	ldr r1, _080775D0 @ =0x00000614
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077610
	.align 2, 0
_080775D0: .4byte 0x00000614
_080775D4:
	movs r0, #3
	strb r0, [r4, #4]
	ldr r1, _080775F0 @ =gLinkEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	ldrb r2, [r1, #0x18]
	subs r0, #0x45
	ands r0, r2
	strb r0, [r1, #0x18]
	ldr r1, _080775F4 @ =0x000002DF
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077606
	.align 2, 0
_080775F0: .4byte gLinkEntity
_080775F4: .4byte 0x000002DF
_080775F8:
	movs r0, #3
	strb r0, [r4, #4]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
_08077606:
	ldr r2, _08077614 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_08077610:
	pop {r4, pc}
	.align 2, 0
_08077614: .4byte gLinkEntity

	thumb_func_start sub_08077618
sub_08077618: @ 0x08077618
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077638
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _0807763E
_08077638:
	adds r0, r4, #0
	bl sub_08077E24
_0807763E:
	pop {r4, pc}

	thumb_func_start sub_08077640
sub_08077640: @ 0x08077640
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077666
	ldr r2, _08077668 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077666:
	pop {r4, r5, pc}
	.align 2, 0
_08077668: .4byte gLinkEntity

	thumb_func_start sub_0807766C
sub_0807766C: @ 0x0807766C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077E24
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077692
	ldr r2, _08077694 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077692:
	pop {r4, r5, pc}
	.align 2, 0
_08077694: .4byte gLinkEntity

	thumb_func_start sub_08077698
sub_08077698: @ 0x08077698
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0807771C @ =gUnk_03003F80
	ldrb r1, [r2, #3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #3]
	ldrb r1, [r2, #4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #4]
	ldrb r0, [r2, #7]
	ldrb r3, [r2, #2]
	orrs r0, r3
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08077700
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08077700
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077700
	adds r0, r4, #0
	bl sub_08077758
	cmp r0, #0
	beq _08077700
	bl sub_080777A0
	cmp r0, #0
	bne _08077700
	ldr r4, _08077720 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #0
	bl sub_08077880
	adds r4, #0xb5
	ldrb r0, [r4]
	movs r1, #2
	movs r2, #0
	bl sub_08077880
	bl sub_080778CC
_08077700:
	movs r5, #0
	ldr r4, _08077724 @ =gUnk_03000B80
_08077704:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _08077712
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080752E8
_08077712:
	adds r4, #0x1c
	adds r5, #1
	cmp r5, #3
	bls _08077704
	pop {r4, r5, pc}
	.align 2, 0
_0807771C: .4byte gUnk_03003F80
_08077720: .4byte gUnk_02002A40
_08077724: .4byte gUnk_03000B80

	thumb_func_start sub_08077728
sub_08077728: @ 0x08077728
	push {lr}
	cmp r0, #0
	bne _08077744
	ldr r0, _08077740 @ =gUnk_02002A40
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #1
	bl sub_08077880
	b _08077752
	.align 2, 0
_08077740: .4byte gUnk_02002A40
_08077744:
	ldr r0, _08077754 @ =gUnk_02002A40
	adds r0, #0xb5
	ldrb r0, [r0]
	movs r1, #2
	movs r2, #1
	bl sub_08077880
_08077752:
	pop {pc}
	.align 2, 0
_08077754: .4byte gUnk_02002A40

	thumb_func_start sub_08077758
sub_08077758: @ 0x08077758
	push {lr}
	adds r3, r0, #0
	ldr r2, _08077794 @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807779C
	movs r0, #0xd5
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08077798
	ldrb r0, [r2, #0x1e]
	ldrb r1, [r2, #0x1a]
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _0807779C
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807779C
	movs r0, #1
	b _0807779E
	.align 2, 0
_08077794: .4byte gUnk_03003F80
_08077798:
	bl sub_0807A108
_0807779C:
	movs r0, #0
_0807779E:
	pop {pc}

	thumb_func_start sub_080777A0
sub_080777A0: @ 0x080777A0
	push {r4, lr}
	ldr r3, _080777D0 @ =gUnk_03003F80
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08077870
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080777D4
	adds r1, r3, #0
	adds r1, #0xa0
	movs r0, #1
	strb r0, [r1]
	bl sub_0807A108
_080777CC:
	movs r0, #1
	b _0807787C
	.align 2, 0
_080777D0: .4byte gUnk_03003F80
_080777D4:
	ldr r2, _080777F4 @ =gUnk_02033A90
	ldrb r0, [r2, #0x18]
	cmp r0, #2
	beq _080777FC
	cmp r0, #3
	beq _08077810
	ldr r0, _080777F8 @ =gUnk_0200AF00
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0807787A
	adds r2, r3, #0
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _0807787A
	b _08077838
	.align 2, 0
_080777F4: .4byte gUnk_02033A90
_080777F8: .4byte gUnk_0200AF00
_080777FC:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _080777CC
	ldr r1, _0807780C @ =gLinkEntity
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _080777CC
	.align 2, 0
_0807780C: .4byte gLinkEntity
_08077810:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _0807787A
	ands r1, r4
	cmp r1, #0
	beq _0807787A
	ldr r0, _08077834 @ =gLinkEntity
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xb4
	bl sub_0805E4E0
	b _080777CC
	.align 2, 0
_08077834: .4byte gLinkEntity
_08077838:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	beq _0807787A
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807787A
	ldr r0, [r2, #0x30]
	ldr r1, _0807786C @ =0x00040400
	ands r0, r1
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0807787A
	movs r0, #0x18
	strb r0, [r2, #0xc]
	b _0807787A
	.align 2, 0
_0807786C: .4byte 0x00040400
_08077870:
	ldr r0, [r3, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080777CC
_0807787A:
	movs r0, #0
_0807787C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08077880
sub_08077880: @ 0x08077880
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _080778C0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080778C4 @ =gUnk_0811BE48
	adds r5, r0, r1
	ldr r1, _080778C8 @ =gUnk_03004010
	ldrb r0, [r5]
	cmp r0, #0
	beq _080778A0
	adds r1, #2
_080778A0:
	ldrh r0, [r1]
	ands r0, r6
	cmp r0, #0
	bne _080778AC
	cmp r2, #0
	beq _080778C0
_080778AC:
	adds r0, r4, #0
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	beq _080778C0
	ldrb r0, [r5, #1]
	strb r0, [r1, #9]
	strb r4, [r1, #1]
	strb r6, [r1, #3]
_080778C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080778C4: .4byte gUnk_0811BE48
_080778C8: .4byte gUnk_03004010

	thumb_func_start sub_080778CC
sub_080778CC: @ 0x080778CC
	push {lr}
	ldr r2, _08077920 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08077924 @ =0x000400A0
	ands r0, r1
	cmp r0, #0
	bne _0807791C
	ldr r0, _08077928 @ =gLinkEntity
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	bne _080778FA
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _080778FA
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807791C
_080778FA:
	bl sub_080789A8
	cmp r0, #0
	bne _08077910
	ldr r0, _08077920 @ =gUnk_03003F80
	adds r0, #0x90
	ldrh r1, [r0]
	ldr r0, _0807792C @ =0x00000F03
	ands r0, r1
	cmp r0, #0
	bne _0807791C
_08077910:
	movs r0, #0x1b
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	bne _08077930
_0807791C:
	movs r0, #0
	b _08077940
	.align 2, 0
_08077920: .4byte gUnk_03003F80
_08077924: .4byte 0x000400A0
_08077928: .4byte gLinkEntity
_0807792C: .4byte 0x00000F03
_08077930:
	movs r0, #0x1b
	strb r0, [r1, #1]
	ldr r0, _08077944 @ =gUnk_0811BE48
	ldr r2, _08077948 @ =0x00000145
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #9]
	movs r0, #1
_08077940:
	pop {pc}
	.align 2, 0
_08077944: .4byte gUnk_0811BE48
_08077948: .4byte 0x00000145

	thumb_func_start sub_0807794C
sub_0807794C: @ 0x0807794C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080779B8 @ =gUnk_03003F80
	ldrb r1, [r0, #0xc]
	adds r3, r0, #0
	cmp r1, #0x18
	bne _0807795E
	cmp r2, #0x1b
	bne _080779B2
_0807795E:
	ldr r0, [r3, #0x30]
	movs r1, #0x88
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807796E
	cmp r2, #6
	bhi _080779B2
_0807796E:
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _0807797C
	ldr r0, _080779BC @ =gLinkEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _08077980
_0807797C:
	cmp r2, #6
	bhi _080779B2
_08077980:
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807799A
	ldr r0, _080779C0 @ =gUnk_0811BE48
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _080779B2
_0807799A:
	ldrb r0, [r3, #0x12]
	cmp r0, #0x11
	bne _080779C4
	adds r0, r3, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _080779C4
	adds r0, r2, #0
	subs r0, #0x14
	cmp r0, #1
	bls _080779C4
_080779B2:
	movs r0, #0
	b _080779DE
	.align 2, 0
_080779B8: .4byte gUnk_03003F80
_080779BC: .4byte gLinkEntity
_080779C0: .4byte gUnk_0811BE48
_080779C4:
	ldr r1, _080779E0 @ =gUnk_0811BE48
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r1, _080779E4 @ =gUnk_0811BFC8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
_080779DE:
	pop {pc}
	.align 2, 0
_080779E0: .4byte gUnk_0811BE48
_080779E4: .4byte gUnk_0811BFC8

	thumb_func_start sub_080779E8
sub_080779E8: @ 0x080779E8
	movs r0, #0
	bx lr

	thumb_func_start sub_080779EC
sub_080779EC: @ 0x080779EC
	push {lr}
	ldr r1, _08077A00 @ =gUnk_03000B80
	adds r0, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077A04
	adds r0, r1, #0
	adds r0, #0x1c
	b _08077A16
	.align 2, 0
_08077A00: .4byte gUnk_03000B80
_08077A04:
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _08077A12
	movs r0, #0
	b _08077A16
_08077A12:
	adds r0, r1, #0
	adds r0, #0x38
_08077A16:
	pop {pc}

	thumb_func_start sub_08077A18
sub_08077A18: @ 0x08077A18
	push {lr}
	adds r1, r0, #0
	ldr r0, _08077A3C @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077A44
	ldr r0, _08077A40 @ =gUnk_03000B80
	ldrb r2, [r0, #0x1d]
	cmp r1, r2
	beq _08077A44
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r1, r0
	beq _08077A44
	adds r0, r1, #0
	bl sub_080779EC
	b _08077A46
	.align 2, 0
_08077A3C: .4byte gUnk_03003F80
_08077A40: .4byte gUnk_03000B80
_08077A44:
	movs r0, #0
_08077A46:
	pop {pc}

	thumb_func_start sub_08077A48
sub_08077A48: @ 0x08077A48
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r6, _08077A88 @ =gUnk_03003F80
	ldrb r0, [r6, #5]
	cmp r0, #0
	bne _08077A94
	ldrb r1, [r6, #2]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08077A94
	ldr r0, _08077A8C @ =gUnk_0811BE48
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r5, _08077A90 @ =gUnk_03000B80
	ldrb r0, [r1, #1]
	ldrb r1, [r5, #9]
	cmp r0, r1
	blo _08077A94
	adds r0, r5, #0
	movs r1, #0
	bl sub_08077E78
	strb r4, [r6, #1]
	strb r4, [r6, #0x1c]
	strb r4, [r6, #0x1b]
	adds r0, r5, #0
	b _08077A96
	.align 2, 0
_08077A88: .4byte gUnk_03003F80
_08077A8C: .4byte gUnk_0811BE48
_08077A90: .4byte gUnk_03000B80
_08077A94:
	movs r0, #0
_08077A96:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08077A98
sub_08077A98: @ 0x08077A98
	push {lr}
	ldr r0, _08077AB8 @ =gUnk_02002A40
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	beq _08077AC4
	ldr r0, _08077ABC @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077AC4
	ldr r1, _08077AC0 @ =gUnk_03000B80
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _08077AC4
	adds r0, r1, #0
	b _08077AC6
	.align 2, 0
_08077AB8: .4byte gUnk_02002A40
_08077ABC: .4byte gUnk_03003F80
_08077AC0: .4byte gUnk_03000B80
_08077AC4:
	movs r0, #0
_08077AC6:
	pop {pc}

	thumb_func_start sub_08077AC8
sub_08077AC8: @ 0x08077AC8
	push {lr}
	movs r2, #0
	ldr r1, _08077AD8 @ =gUnk_03000B80
_08077ACE:
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08077ADC
	movs r0, #0
	b _08077AE6
	.align 2, 0
_08077AD8: .4byte gUnk_03000B80
_08077ADC:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _08077ACE
	ldr r0, _08077AE8 @ =gUnk_03000BD4
_08077AE6:
	pop {pc}
	.align 2, 0
_08077AE8: .4byte gUnk_03000BD4

	thumb_func_start sub_08077AEC
sub_08077AEC: @ 0x08077AEC
	push {lr}
	ldr r0, _08077B14 @ =gUnk_03000BD4
	movs r1, #3
	bl sub_08077E78
	ldr r2, _08077B18 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08077B1C @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x10
	bl sub_0805436C
	adds r1, r0, #0
	cmp r1, #2
	beq _08077B12
	movs r0, #0xf
	bl sub_08054414
_08077B12:
	pop {pc}
	.align 2, 0
_08077B14: .4byte gUnk_03000BD4
_08077B18: .4byte gUnk_03003F80
_08077B1C: .4byte 0xFF7FFFFF

	thumb_func_start sub_08077B20
sub_08077B20: @ 0x08077B20
	push {lr}
	bl sub_08077B2C
	bl sub_08077AEC
	pop {pc}

	thumb_func_start sub_08077B2C
sub_08077B2C: @ 0x08077B2C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08077B88 @ =gUnk_03000B80
_08077B32:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08077E78
	adds r5, #0x1c
	adds r4, #1
	cmp r4, #2
	bls _08077B32
	ldr r2, _08077B8C @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x3d
	movs r3, #0
	strb r3, [r0]
	strb r3, [r2, #0x1c]
	subs r0, #0x1c
	strb r3, [r0]
	strb r3, [r2, #1]
	strb r3, [r2, #0xe]
	strb r3, [r2, #0x1e]
	strb r3, [r2, #0x1b]
	strb r3, [r2, #3]
	strb r3, [r2, #5]
	ldr r0, [r2, #0x30]
	ldr r1, _08077B90 @ =0xF7FBFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08077B94 @ =gLinkEntity
	str r3, [r0, #0x70]
	ldrb r1, [r2, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08077B76
	strb r3, [r2, #2]
_08077B76:
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #4
	bgt _08077B86
	cmp r0, #2
	blt _08077B86
	strb r3, [r1]
_08077B86:
	pop {r4, r5, pc}
	.align 2, 0
_08077B88: .4byte gUnk_03000B80
_08077B8C: .4byte gUnk_03003F80
_08077B90: .4byte 0xF7FBFFFF
_08077B94: .4byte gLinkEntity

	thumb_func_start sub_08077B98
sub_08077B98: @ 0x08077B98
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _08077BB4 @ =gUnk_03003F80
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _08077BAA
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _08077BB2
_08077BAA:
	adds r0, r1, #0
	bl sub_08077C54
	str r0, [r4, #0x2c]
_08077BB2:
	pop {r4, pc}
	.align 2, 0
_08077BB4: .4byte gUnk_03003F80

	thumb_func_start sub_08077BB8
sub_08077BB8: @ 0x08077BB8
	push {lr}
	bl sub_08077C54
	adds r1, r0, #0
	cmp r1, #0
	beq _08077BC8
	movs r0, #0x20
	strb r0, [r1, #0x10]
_08077BC8:
	ldr r0, _08077BD0 @ =gUnk_03003F80
	str r1, [r0, #0x2c]
	pop {pc}
	.align 2, 0
_08077BD0: .4byte gUnk_03003F80

	thumb_func_start sub_08077BD4
sub_08077BD4: @ 0x08077BD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08077C04 @ =gUnk_0811BE48
	ldrb r1, [r4, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r1, [r0, #3]
	adds r0, r4, #0
	bl sub_08077C94
	cmp r0, #0
	bne _08077C08
	ldrb r1, [r4, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r1, [r0, #3]
	adds r0, r4, #0
	bl sub_08077C3C
	b _08077C0A
	.align 2, 0
_08077C04: .4byte gUnk_0811BE48
_08077C08:
	movs r0, #0
_08077C0A:
	pop {r4, r5, pc}

	thumb_func_start sub_08077C0C
sub_08077C0C: @ 0x08077C0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _08077C34 @ =gUnk_0811BE48
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0, #3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08077C94
	cmp r0, #0
	bne _08077C38
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08077C3C
	b _08077C3A
	.align 2, 0
_08077C34: .4byte gUnk_0811BE48
_08077C38:
	movs r0, #0
_08077C3A:
	pop {r4, r5, pc}

	thumb_func_start sub_08077C3C
sub_08077C3C: @ 0x08077C3C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldrb r3, [r4, #1]
	movs r1, #0
	movs r2, #0
	bl sub_08077CB8
	cmp r0, #0
	beq _08077C52
	str r4, [r0, #0x50]
_08077C52:
	pop {r4, pc}

	thumb_func_start sub_08077C54
sub_08077C54: @ 0x08077C54
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0805E744
	adds r4, r0, #0
	cmp r4, #0
	beq _08077C8C
	ldr r2, _08077C90 @ =gUnk_0811BE48
	ldrb r1, [r5, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	strb r0, [r4, #9]
	movs r0, #8
	strb r0, [r4, #8]
	movs r0, #0xa0
	strb r0, [r4, #0x10]
	str r5, [r4, #0x50]
	ldrb r1, [r5, #1]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805EA2C
_08077C8C:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_08077C90: .4byte gUnk_0811BE48

	thumb_func_start sub_08077C94
sub_08077C94: @ 0x08077C94
	push {lr}
	ldr r2, _08077CB4 @ =gUnk_0811BE48
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #3]
	movs r0, #8
	movs r2, #2
	bl sub_0805EB00
	cmp r0, #0
	bne _08077CB0
	movs r0, #0
_08077CB0:
	pop {pc}
	.align 2, 0
_08077CB4: .4byte gUnk_0811BE48

	thumb_func_start sub_08077CB8
sub_08077CB8: @ 0x08077CB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl GetEmptyEntity
	adds r4, r0, #0
	cmp r4, #0
	beq _08077CEE
	movs r0, #0x80
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	strb r6, [r4, #0xa]
	strb r7, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x68
	mov r1, r8
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805EA2C
_08077CEE:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08077CF8
sub_08077CF8: @ 0x08077CF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl sub_0805E744
	adds r4, r0, #0
	cmp r4, #0
	beq _08077D2E
	movs r0, #0x80
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	strb r6, [r4, #0xa]
	strb r7, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x68
	mov r1, r8
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805EA2C
_08077D2E:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08077D38
sub_08077D38: @ 0x08077D38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r3, _08077D94 @ =gUnk_03003F80
	movs r7, #8
	adds r1, r7, #0
	mov r0, r8
	asrs r1, r0
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
	ldr r0, _08077D98 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _08077D6A
	adds r0, #1
	strb r0, [r4, #4]
_08077D6A:
	ldrb r2, [r4, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08077D9C @ =gUnk_0811BE48
	adds r5, r0, r1
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08077DCC
	ldr r0, [r3, #0x30]
	ands r0, r7
	cmp r0, #0
	beq _08077DC4
	cmp r2, #0xd
	beq _08077DB2
	cmp r2, #0xd
	bgt _08077DA0
	cmp r2, #1
	beq _08077DAC
	b _08077DB4
	.align 2, 0
_08077D94: .4byte gUnk_03003F80
_08077D98: .4byte gLinkEntity
_08077D9C: .4byte gUnk_0811BE48
_08077DA0:
	cmp r2, #0x1b
	bne _08077DB4
	ldr r6, _08077DA8 @ =0x00000948
	b _08077DB4
	.align 2, 0
_08077DA8: .4byte 0x00000948
_08077DAC:
	movs r6, #0x81
	lsls r6, r6, #3
	b _08077DB4
_08077DB2:
	ldr r6, _08077DC0 @ =0x0000040C
_08077DB4:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077DF4
	b _08077DCC
	.align 2, 0
_08077DC0: .4byte 0x0000040C
_08077DC4:
	ldrh r1, [r5, #4]
	adds r0, r4, #0
	bl sub_08077DF4
_08077DCC:
	ldrb r0, [r5, #6]
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08077DE8
	ldr r2, _08077DF0 @ =gUnk_03003F80
	movs r0, #8
	mov r1, r8
	asrs r0, r1
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r2, #4]
	orrs r0, r1
	strb r0, [r2, #4]
_08077DE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08077DF0: .4byte gUnk_03003F80

	thumb_func_start sub_08077DF4
sub_08077DF4: @ 0x08077DF4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	strh r2, [r4, #0x10]
	movs r0, #0xff
	ands r0, r2
	cmp r0, #0xb8
	bls _08077E0A
	ldrb r0, [r4, #0xa]
	lsrs r0, r0, #1
	adds r2, r2, r0
_08077E0A:
	ldr r0, _08077E20 @ =gLinkEntity
	lsrs r1, r2, #8
	strh r1, [r0, #0x12]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08077E54
	pop {r4, pc}
	.align 2, 0
_08077E20: .4byte gLinkEntity

	thumb_func_start sub_08077E24
sub_08077E24: @ 0x08077E24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08077E38 @ =gLinkEntity
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08077E54
	pop {r4, pc}
	.align 2, 0
_08077E38: .4byte gLinkEntity

	thumb_func_start sub_08077E3C
sub_08077E3C: @ 0x08077E3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08077E50 @ =gLinkEntity
	bl sub_080042BA
	adds r0, r4, #0
	bl sub_08077E54
	pop {r4, pc}
	.align 2, 0
_08077E50: .4byte gLinkEntity

	thumb_func_start sub_08077E54
sub_08077E54: @ 0x08077E54
	ldr r2, _08077E74 @ =gLinkEntity
	adds r1, r2, #0
	adds r1, #0x58
	ldrb r1, [r1]
	strb r1, [r0, #0xc]
	ldrb r1, [r2, #0x1e]
	strb r1, [r0, #0x12]
	adds r1, r2, #0
	adds r1, #0x59
	ldrb r1, [r1]
	strb r1, [r0, #0xd]
	adds r1, r2, #0
	adds r1, #0x5a
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0
_08077E74: .4byte gLinkEntity

	thumb_func_start sub_08077E78
sub_08077E78: @ 0x08077E78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldr r4, _08077EC4 @ =gUnk_03003F80
	cmp r3, #0
	bne _08077E9A
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _08077E98
	ldrb r0, [r2, #0x11]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r2, #0x11]
_08077E98:
	str r3, [r4, #0x2c]
_08077E9A:
	movs r2, #8
	asrs r2, r3
	lsls r1, r2, #4
	orrs r1, r2
	ldrb r0, [r4, #4]
	bics r0, r1
	strb r0, [r4, #4]
	mvns r2, r2
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	ands r2, r0
	strb r2, [r4, #0xb]
	adds r0, r5, #0
	movs r1, #0x1c
	bl sub_0801D630
	pop {r4, r5, pc}
	.align 2, 0
_08077EC4: .4byte gUnk_03003F80

	thumb_func_start sub_08077EC8
sub_08077EC8: @ 0x08077EC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08077EDC @ =gUnk_03003F80
	ldrb r1, [r0, #0x1b]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08077EE0
	movs r0, #0
	b _08077EF8
	.align 2, 0
_08077EDC: .4byte gUnk_03003F80
_08077EE0:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x28
	strb r0, [r4, #7]
	movs r0, #7
	strb r0, [r4, #4]
	movs r0, #6
	strb r0, [r4, #0xf]
	movs r0, #1
_08077EF8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08077EFC
sub_08077EFC: @ 0x08077EFC
	push {lr}
	ldr r1, _08077F0C @ =gUnk_03003F80
	adds r1, #0x90
	ldrh r1, [r1]
	bl sub_08077F24
	pop {pc}
	.align 2, 0
_08077F0C: .4byte gUnk_03003F80

	thumb_func_start sub_08077F10
sub_08077F10: @ 0x08077F10
	push {lr}
	ldr r1, _08077F20 @ =gUnk_03003F80
	adds r1, #0x92
	ldrh r1, [r1]
	bl sub_08077F24
	pop {pc}
	.align 2, 0
_08077F20: .4byte gUnk_03003F80

	thumb_func_start sub_08077F24
sub_08077F24: @ 0x08077F24
	push {lr}
	ldr r2, _08077F34 @ =gStats
	ldrb r3, [r0, #1]
	ldrb r0, [r2, #0xc]
	cmp r0, r3
	bne _08077F38
	movs r2, #1
	b _08077F42
	.align 2, 0
_08077F34: .4byte gStats
_08077F38:
	ldrb r0, [r2, #0xd]
	movs r2, #0
	cmp r0, r3
	bne _08077F42
	movs r2, #2
_08077F42:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08077F4C
	movs r0, #1
_08077F4C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08077F50
sub_08077F50: @ 0x08077F50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08079184
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	pop {r4, r5, pc}

	thumb_func_start sub_08077F64
sub_08077F64: @ 0x08077F64
	push {lr}
	adds r2, r0, #0
	ldr r0, _08077F7C @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077F80
	adds r0, r2, #0
	bl sub_08077F50
	movs r0, #0
	b _08077F82
	.align 2, 0
_08077F7C: .4byte gUnk_03003F80
_08077F80:
	movs r0, #1
_08077F82:
	pop {pc}

	thumb_func_start sub_08077F84
sub_08077F84: @ 0x08077F84
	push {r4, lr}
	ldr r4, _08077FE0 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08077FDE
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r1, #0xc
	movs r2, #2
	bl sub_080002A4
	ldr r1, _08077FE4 @ =0xFFFFFCBD
	adds r0, r0, r1
	cmp r0, #3
	bhi _08077FDE
	adds r0, r4, #0
	bl sub_0807AA80
	ldr r2, _08077FE8 @ =gUnk_03003F80
	ldrb r1, [r2, #2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #2]
	movs r0, #0x44
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08077FDE
	ldr r0, [r4, #0x2c]
	str r0, [r1, #0x2c]
	ldrh r0, [r4, #0x32]
	subs r0, #0xc
	strh r0, [r1, #0x32]
	ldrh r0, [r4, #0x32]
	subs r0, #0xc
	strh r0, [r4, #0x32]
_08077FDE:
	pop {r4, pc}
	.align 2, 0
_08077FE0: .4byte gLinkEntity
_08077FE4: .4byte 0xFFFFFCBD
_08077FE8: .4byte gUnk_03003F80

	thumb_func_start sub_08077FEC
sub_08077FEC: @ 0x08077FEC
	push {lr}
	ldr r0, _08078000 @ =gUnk_03004020
	ldr r2, _08078004 @ =gUnk_0811BFE8
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08078000: .4byte gUnk_03004020
_08078004: .4byte gUnk_0811BFE8

	thumb_func_start sub_08078008
sub_08078008: @ 0x08078008
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08078060 @ =gUnk_02002A40
	adds r5, r6, #0
	adds r5, #0xb4
	ldrb r0, [r5]
	bl sub_0805449C
	cmp r0, #0
	bne _0807802C
	adds r5, r6, #0
	adds r5, #0xb5
	ldrb r0, [r5]
	bl sub_0805449C
	movs r2, #0
	cmp r0, #0
	beq _0807802E
_0807802C:
	ldrb r2, [r5]
_0807802E:
	subs r0, r2, #1
	cmp r0, #1
	bhi _08078036
	movs r2, #0
_08078036:
	cmp r2, #0
	beq _08078068
	ldr r0, _08078064 @ =gUnk_03003F80
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08078068
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _0807806C
	movs r0, #0xa
	strb r0, [r4, #1]
	movs r0, #3
	strb r0, [r4]
	strb r2, [r4, #2]
	b _0807806C
	.align 2, 0
_08078060: .4byte gUnk_02002A40
_08078064: .4byte gUnk_03003F80
_08078068:
	movs r0, #0
	strb r0, [r4, #1]
_0807806C:
	movs r0, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08078070
sub_08078070: @ 0x08078070
	push {lr}
	adds r2, r0, #0
	ldr r3, _08078098 @ =gUnk_03003F80
	ldrb r1, [r3, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080780D6
	adds r0, r3, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0807809C
	ldrh r0, [r2, #4]
	adds r0, #0xc
	b _080780A0
	.align 2, 0
_08078098: .4byte gUnk_03003F80
_0807809C:
	ldrh r0, [r2, #4]
	adds r0, #6
_080780A0:
	strh r0, [r2, #4]
	movs r0, #4
	ldrsh r1, [r2, r0]
	ldr r0, _080780BC @ =0x0000031F
	cmp r1, r0
	ble _080780C0
	adds r0, #1
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2]
	movs r0, #0xd8
	bl sub_080A3268
	b _080780DA
	.align 2, 0
_080780BC: .4byte 0x0000031F
_080780C0:
	movs r1, #4
	ldrsh r0, [r2, r1]
	movs r1, #0x14
	bl Mod
	cmp r0, #0
	bne _080780DA
	movs r0, #0xd7
	bl sub_080A3268
	b _080780DA
_080780D6:
	movs r0, #1
	strb r0, [r2]
_080780DA:
	movs r0, #1
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080780E0
sub_080780E0: @ 0x080780E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080780F4 @ =gUnk_03003F80
	ldrb r1, [r0, #0x1b]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080780F8
	movs r0, #5
	b _08078102
	.align 2, 0
_080780F4: .4byte gUnk_03003F80
_080780F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08078104
	movs r0, #1
_08078102:
	strb r0, [r2]
_08078104:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_08078108
sub_08078108: @ 0x08078108
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08078120
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1]
_08078120:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_08078124
sub_08078124: @ 0x08078124
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #0x10
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0807813C
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1]
_0807813C:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_08078140
sub_08078140: @ 0x08078140
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08078156
	movs r0, #0
	b _0807815C
_08078156:
	strb r2, [r1, #1]
	strb r2, [r1]
	movs r0, #1
_0807815C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08078160
sub_08078160: @ 0x08078160
	push {lr}
	ldr r1, _08078178 @ =gUnk_03003F80
	adds r1, #0xa8
	strb r0, [r1]
	ldr r2, _0807817C @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	bl sub_08078B48
	pop {pc}
	.align 2, 0
_08078178: .4byte gUnk_03003F80
_0807817C: .4byte gLinkEntity

	thumb_func_start sub_08078180
sub_08078180: @ 0x08078180
	push {r4, r5, r6, lr}
	ldr r0, _080781C8 @ =gUnk_0200AF00
	adds r1, r0, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08078192
	b _080782BC
_08078192:
	movs r4, #0
	ldr r5, _080781CC @ =gUnk_03003F80
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0807819E
	b _080782B6
_0807819E:
	ldr r0, [r5, #0x30]
	ldr r1, _080781D0 @ =0x00104D00
	ands r0, r1
	cmp r0, #0
	beq _080781AA
	b _080782B6
_080781AA:
	ldrb r0, [r5, #5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080781D4
	adds r1, r6, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	movs r4, #3
	cmp r0, #0
	bne _080781C4
	b _080782B6
_080781C4:
	adds r4, r0, #0
	b _080782B6
	.align 2, 0
_080781C8: .4byte gUnk_0200AF00
_080781CC: .4byte gUnk_03003F80
_080781D0: .4byte 0x00104D00
_080781D4:
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	bne _080781C4
	bl sub_080784E4
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08078278
	ldrb r0, [r1, #1]
	subs r0, #1
	cmp r0, #9
	bhi _080782B6
	lsls r0, r0, #2
	ldr r1, _08078204 @ =_08078208
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078204: .4byte _08078208
_08078208: @ jump table
	.4byte _08078230 @ case 0
	.4byte _080782B6 @ case 1
	.4byte _08078254 @ case 2
	.4byte _080782B6 @ case 3
	.4byte _08078254 @ case 4
	.4byte _08078254 @ case 5
	.4byte _08078230 @ case 6
	.4byte _0807823C @ case 7
	.4byte _08078260 @ case 8
	.4byte _0807826C @ case 9
_08078230:
	movs r4, #7
	ldr r6, _08078238 @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_08078238: .4byte gUnk_0200AF00
_0807823C:
	ldr r0, _0807824C @ =gUnk_02034350
	ldrb r0, [r0, #6]
	ldr r6, _08078250 @ =gUnk_0200AF00
	cmp r0, #0
	bne _080782B6
	movs r4, #9
	b _080782B6
	.align 2, 0
_0807824C: .4byte gUnk_02034350
_08078250: .4byte gUnk_0200AF00
_08078254:
	movs r4, #6
	ldr r6, _0807825C @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_0807825C: .4byte gUnk_0200AF00
_08078260:
	movs r4, #5
	ldr r6, _08078268 @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_08078268: .4byte gUnk_0200AF00
_0807826C:
	movs r4, #2
	ldr r6, _08078274 @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_08078274: .4byte gUnk_0200AF00
_08078278:
	bl sub_080789A8
	cmp r0, #0
	beq _080782A4
	adds r0, r5, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080782BC
	ldr r1, _080782A0 @ =gUnk_03003BE0
	ldrb r0, [r1, #1]
	movs r4, #9
	cmp r0, #2
	bne _080782B6
	ldr r0, [r1, #8]
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080782B6
	movs r4, #8
	b _080782B6
	.align 2, 0
_080782A0: .4byte gUnk_03003BE0
_080782A4:
	adds r0, r5, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080782B6
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _080782B6
	movs r4, #0xc
_080782B6:
	adds r0, r6, #0
	adds r0, #0x2c
	strb r4, [r0]
_080782BC:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080782C0
sub_080782C0: @ 0x080782C0
	push {r4, r5, r6, lr}
	ldr r1, _080782D8 @ =gUnk_03003F80
	adds r2, r1, #0
	adds r2, #0xa8
	ldrb r0, [r2]
	adds r4, r1, #0
	cmp r0, #0
	bne _080782DC
	adds r0, r4, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _080782DE
	.align 2, 0
_080782D8: .4byte gUnk_03003F80
_080782DC:
	ldrb r0, [r2]
_080782DE:
	subs r0, #2
	cmp r0, #0x14
	bhi _08078348
	lsls r0, r0, #2
	ldr r1, _080782F0 @ =_080782F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080782F0: .4byte _080782F4
_080782F4: @ jump table
	.4byte _080784AC @ case 0
	.4byte _080784AC @ case 1
	.4byte _08078348 @ case 2
	.4byte _08078348 @ case 3
	.4byte _08078348 @ case 4
	.4byte _08078348 @ case 5
	.4byte _08078348 @ case 6
	.4byte _08078348 @ case 7
	.4byte _08078348 @ case 8
	.4byte _08078348 @ case 9
	.4byte _080784AC @ case 10
	.4byte _08078348 @ case 11
	.4byte _08078348 @ case 12
	.4byte _08078348 @ case 13
	.4byte _08078348 @ case 14
	.4byte _08078348 @ case 15
	.4byte _080784AC @ case 16
	.4byte _08078348 @ case 17
	.4byte _08078348 @ case 18
	.4byte _080784AC @ case 19
	.4byte _080784AC @ case 20
_08078348:
	adds r0, r4, #0
	adds r0, #0x27
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r0]
	ldrb r0, [r2]
	orrs r0, r1
	cmp r0, #0
	beq _0807835C
	b _080784AC
_0807835C:
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _08078376
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0807836A
	b _080784AC
_0807836A:
	bl sub_08052B24
	cmp r0, #0
	beq _08078374
	b _080784C4
_08078374:
	b _080784AC
_08078376:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08078384
	b _080784AC
_08078384:
	bl sub_08052B24
	cmp r0, #0
	beq _0807838E
	b _080784C4
_0807838E:
	bl sub_080784E4
	ldr r6, [r0, #8]
	cmp r6, #0
	bne _0807839A
	b _080784AC
_0807839A:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _080783B6
	cmp r0, #4
	beq _080783A6
	b _080784AC
_080783A6:
	ldr r0, _08078400 @ =gLinkEntity
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x54]
	ldrh r1, [r0, #8]
	ldr r0, _08078404 @ =0x00000206
	cmp r1, r0
	beq _080783B6
	b _080784AC
_080783B6:
	ldr r2, _08078408 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0807842C
	ldr r5, _0807840C @ =gUnk_03003DF0
	ldr r0, [r5, #4]
	ldrb r0, [r0, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _0807842C
	movs r0, #0
	bl sub_0801E738
	ldr r0, _08078410 @ =gUnk_02002A40
	ldr r1, _08078414 @ =0x0000012B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08078418
	ldr r1, [r5, #4]
	ldrb r0, [r1, #3]
	strb r0, [r5, #2]
	ldr r0, [r1, #8]
	adds r0, #0x39
	movs r1, #2
	strb r1, [r0]
	movs r0, #7
	strb r0, [r4, #0xc]
	b _08078420
	.align 2, 0
_08078400: .4byte gLinkEntity
_08078404: .4byte 0x00000206
_08078408: .4byte gUnk_03003F80
_0807840C: .4byte gUnk_03003DF0
_08078410: .4byte gUnk_02002A40
_08078414: .4byte 0x0000012B
_08078418:
	ldr r0, _08078428 @ =0x00000B65
	movs r1, #0
	bl sub_08078AA8
_08078420:
	movs r0, #0x13
	bl sub_08078160
	b _080784C4
	.align 2, 0
_08078428: .4byte 0x00000B65
_0807842C:
	adds r0, r4, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	beq _080784AC
	ldr r0, _08078450 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #1]
	cmp r0, #0xa
	bhi _080784C4
	lsls r0, r0, #2
	ldr r1, _08078454 @ =_08078458
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078450: .4byte gUnk_03003DF0
_08078454: .4byte _08078458
_08078458: @ jump table
	.4byte _080784C4 @ case 0
	.4byte _08078484 @ case 1
	.4byte _080784C4 @ case 2
	.4byte _0807848E @ case 3
	.4byte _080784C4 @ case 4
	.4byte _0807848E @ case 5
	.4byte _08078484 @ case 6
	.4byte _0807848E @ case 7
	.4byte _080784A4 @ case 8
	.4byte _08078484 @ case 9
	.4byte _08078484 @ case 10
_08078484:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x13
	bl sub_08078160
_0807848E:
	adds r1, r6, #0
	adds r1, #0x39
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080784A0 @ =gUnk_03003DF0
	strb r2, [r0, #2]
	b _080784C4
	.align 2, 0
_080784A0: .4byte gUnk_03003DF0
_080784A4:
	ldr r2, _080784B0 @ =gUnk_02034350
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _080784B4
_080784AC:
	movs r0, #0
	b _080784C6
	.align 2, 0
_080784B0: .4byte gUnk_02034350
_080784B4:
	adds r1, r6, #0
	adds r1, #0x39
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	strb r0, [r2, #6]
	ldrb r0, [r6, #0xb]
	strb r0, [r2, #7]
_080784C4:
	movs r0, #1
_080784C6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080784C8
sub_080784C8: @ 0x080784C8
	push {r4, lr}
	ldr r4, _080784DC @ =gUnk_03003DF0
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_0801D630
	ldr r0, _080784E0 @ =gUnk_0811C000
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_080784DC: .4byte gUnk_03003DF0
_080784E0: .4byte gUnk_0811C000

	thumb_func_start sub_080784E4
sub_080784E4: @ 0x080784E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080784FC @ =gUnk_03003DF0
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08078500
	ldr r0, [r0, #4]
	b _0807876A
	.align 2, 0
_080784FC: .4byte gUnk_03003DF0
_08078500:
	ldr r2, _08078528 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x27
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r0, r1
	cmp r0, #0
	bne _08078598
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807852C
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _0807852E
	.align 2, 0
_08078528: .4byte gUnk_03003F80
_0807852C:
	ldrb r0, [r1]
_0807852E:
	subs r0, #2
	cmp r0, #0x14
	bhi _080785B0
	lsls r0, r0, #2
	ldr r1, _08078540 @ =_08078544
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078540: .4byte _08078544
_08078544: @ jump table
	.4byte _08078598 @ case 0
	.4byte _08078598 @ case 1
	.4byte _080785B0 @ case 2
	.4byte _080785B0 @ case 3
	.4byte _080785B0 @ case 4
	.4byte _080785B0 @ case 5
	.4byte _080785B0 @ case 6
	.4byte _080785B0 @ case 7
	.4byte _080785B0 @ case 8
	.4byte _080785B0 @ case 9
	.4byte _080785B0 @ case 10
	.4byte _080785B0 @ case 11
	.4byte _080785B0 @ case 12
	.4byte _080785B0 @ case 13
	.4byte _080785B0 @ case 14
	.4byte _080785B0 @ case 15
	.4byte _08078598 @ case 16
	.4byte _080785B0 @ case 17
	.4byte _080785B0 @ case 18
	.4byte _08078598 @ case 19
	.4byte _08078598 @ case 20
_08078598:
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #3]
	ldr r0, _080785AC @ =gUnk_0811C000
	str r0, [r1, #4]
	movs r1, #1
	mov r2, r8
	strb r1, [r2]
	b _0807876A
	.align 2, 0
_080785AC: .4byte gUnk_0811C000
_080785B0:
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080785F0
	bl sub_08052734
	cmp r0, #0
	beq _080785C4
	movs r0, #1
_080785C4:
	adds r7, r0, #0
	bl sub_08052764
	cmp r0, #0
	beq _080785D2
	movs r0, #2
	orrs r7, r0
_080785D2:
	ldr r3, _080785E4 @ =gLinkEntity
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r0, _080785E8 @ =gUnk_0811C00C
	adds r2, r1, r0
	ldr r5, _080785EC @ =gUnk_03003DF0
	mov r8, r5
	b _080785FE
	.align 2, 0
_080785E4: .4byte gLinkEntity
_080785E8: .4byte gUnk_0811C00C
_080785EC: .4byte gUnk_03003DF0
_080785F0:
	ldr r3, _08078624 @ =gLinkEntity
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r0, _08078628 @ =gUnk_0811C014
	adds r2, r1, r0
	movs r7, #0
_080785FE:
	mov ip, r3
	mov r0, ip
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sl, r1
	mov r5, ip
	movs r0, #0x32
	ldrsh r1, [r5, r0]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sb, r1
	movs r6, #0
	ldr r5, _0807862C @ =gUnk_03003DF8
	b _08078724
	.align 2, 0
_08078624: .4byte gLinkEntity
_08078628: .4byte gUnk_0811C014
_0807862C: .4byte gUnk_03003DF8
_08078630:
	ldrb r1, [r5]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0807864E
	mov r0, ip
	adds r0, #0x38
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08078714
_0807864E:
	ldrb r1, [r5, #2]
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	asrs r1, r0
	ands r1, r3
	cmp r1, #0
	bne _08078714
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	bhi _080786D4
	lsls r0, r0, #2
	ldr r1, _08078670 @ =_08078674
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078670: .4byte _08078674
_08078674: @ jump table
	.4byte _08078714 @ case 0
	.4byte _080786A0 @ case 1
	.4byte _080786C4 @ case 2
	.4byte _080786A0 @ case 3
	.4byte _080786A0 @ case 4
	.4byte _080786C8 @ case 5
	.4byte _080786CC @ case 6
	.4byte _080786B4 @ case 7
	.4byte _080786A0 @ case 8
	.4byte _080786A0 @ case 9
	.4byte _080786D4 @ case 10
_080786A0:
	ldr r0, _080786B0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08078714
	b _080786D4
	.align 2, 0
_080786B0: .4byte gUnk_03003F80
_080786B4:
	ldr r0, _080786C0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	b _080786D0
	.align 2, 0
_080786C0: .4byte gUnk_03003F80
_080786C4:
	ldrb r0, [r5, #3]
	b _080786D0
_080786C8:
	movs r0, #1
	b _080786CE
_080786CC:
	movs r0, #2
_080786CE:
	ands r0, r7
_080786D0:
	cmp r0, #0
	beq _08078714
_080786D4:
	ldr r0, [r5, #8]
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	movs r2, #0x32
	ldrsh r4, [r0, r2]
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _080786F4
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r3, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	adds r2, r1, #2
	b _080786F8
_080786F4:
	ldr r0, [r0, #0x48]
	adds r2, r0, #6
_080786F8:
	ldrb r1, [r2]
	mov r5, sl
	adds r0, r1, r5
	subs r0, r0, r3
	lsls r1, r1, #1
	cmp r0, r1
	bhs _08078714
	ldrb r1, [r2, #1]
	mov r2, sb
	adds r0, r1, r2
	subs r0, r0, r4
	lsls r1, r1, #1
	cmp r0, r1
	blo _0807873A
_08078714:
	adds r6, #1
	cmp r6, #0x1f
	bhi _08078758
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r3, _08078754 @ =gUnk_03003DF8
	adds r5, r0, r3
_08078724:
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _08078714
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0807873A
	b _08078630
_0807873A:
	cmp r6, #0x1f
	bhi _08078758
	mov r5, r8
	strb r6, [r5, #3]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	str r0, [r5, #4]
	b _08078762
	.align 2, 0
_08078754: .4byte gUnk_03003DF8
_08078758:
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #3]
	ldr r0, _08078774 @ =gUnk_0811C000
	str r0, [r1, #4]
_08078762:
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r2, #4]
_0807876A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08078774: .4byte gUnk_0811C000

	thumb_func_start sub_08078778
sub_08078778: @ 0x08078778
	push {lr}
	movs r1, #1
	movs r2, #0
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_08078784
sub_08078784: @ 0x08078784
	push {lr}
	adds r2, r1, #0
	movs r1, #1
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_08078790
sub_08078790: @ 0x08078790
	push {lr}
	adds r2, r1, #0
	movs r1, #2
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_0807879C
sub_0807879C: @ 0x0807879C
	push {lr}
	movs r1, #7
	movs r2, #0
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_080787A8
sub_080787A8: @ 0x080787A8
	push {lr}
	adds r2, r1, #0
	movs r1, #7
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_080787B4
sub_080787B4: @ 0x080787B4
	push {lr}
	movs r1, #9
	movs r2, #0
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_080787C0
sub_080787C0: @ 0x080787C0
	push {lr}
	movs r1, #0xa
	movs r2, #0
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_080787CC
sub_080787CC: @ 0x080787CC
	push {lr}
	movs r1, #5
	movs r2, #0
	bl sub_0807887C
	pop {pc}

	thumb_func_start sub_080787D8
sub_080787D8: @ 0x080787D8
	push {lr}
	movs r1, #8
	movs r2, #0
	bl sub_0807887C
	adds r2, r0, #0
	cmp r2, #0
	blt _080787F6
	ldr r0, _080787FC @ =gUnk_03003DF0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xbe
	strb r0, [r1, #0xa]
_080787F6:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_080787FC: .4byte gUnk_03003DF0

	thumb_func_start sub_08078800
sub_08078800: @ 0x08078800
	push {lr}
	movs r1, #6
	movs r2, #0
	bl sub_0807887C
	adds r2, r0, #0
	cmp r2, #0
	blt _0807881E
	ldr r0, _08078824 @ =gUnk_03003DF0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xbe
	strb r0, [r1, #0xa]
_0807881E:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_08078824: .4byte gUnk_03003DF0

	thumb_func_start sub_08078828
sub_08078828: @ 0x08078828
	push {lr}
	movs r1, #3
	movs r2, #0
	bl sub_0807887C
	adds r2, r0, #0
	cmp r2, #0
	blt _08078846
	ldr r0, _0807884C @ =gUnk_03003DF0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xbe
	strb r0, [r1, #0xa]
_08078846:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0807884C: .4byte gUnk_03003DF0

	thumb_func_start sub_08078850
sub_08078850: @ 0x08078850
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl sub_08078904
	adds r2, r0, #0
	cmp r2, #0
	blt _08078876
	ldr r0, _08078878 @ =gUnk_03003DF0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r2, r1, r0
	strb r4, [r2, #8]
	strb r5, [r2, #0xa]
	adds r0, #0xc
	adds r1, r1, r0
	str r6, [r1]
_08078876:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08078878: .4byte gUnk_03003DF0

	thumb_func_start sub_0807887C
sub_0807887C: @ 0x0807887C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08078904
	adds r4, r0, #0
	cmp r4, #0
	bge _080788A4
	movs r0, #0
	bl sub_08078904
	adds r4, r0, #0
	cmp r4, #0
	blt _080788BA
_080788A4:
	ldr r2, _080788DC @ =gUnk_03003DF0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	str r5, [r0]
	adds r1, r1, r2
	strb r7, [r1, #9]
	strb r6, [r1, #0xb]
_080788BA:
	cmp r6, #0
	beq _080788D6
	movs r0, #6
	movs r1, #9
	movs r2, #6
	bl sub_0805EB00
	cmp r0, #0
	bne _080788D6
	movs r0, #9
	movs r1, #0
	movs r2, #0
	bl CreateObject
_080788D6:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080788DC: .4byte gUnk_03003DF0

	thumb_func_start sub_080788E0
sub_080788E0: @ 0x080788E0
	push {lr}
	bl sub_08078904
	adds r1, r0, #0
	cmp r1, #0
	blt _080788FC
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08078900 @ =gUnk_03003DF8
	adds r0, r0, r1
	movs r1, #0xc
	bl sub_0801D630
_080788FC:
	pop {pc}
	.align 2, 0
_08078900: .4byte gUnk_03003DF8

	thumb_func_start sub_08078904
sub_08078904: @ 0x08078904
	push {lr}
	adds r3, r0, #0
	movs r1, #0
	ldr r0, _0807891C @ =gUnk_03003DF0
	adds r2, r0, #0
	adds r2, #0x10
_08078910:
	ldr r0, [r2]
	cmp r3, r0
	bne _08078920
	adds r0, r1, #0
	b _0807892C
	.align 2, 0
_0807891C: .4byte gUnk_03003DF0
_08078920:
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _08078910
	movs r0, #1
	rsbs r0, r0, #0
_0807892C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08078930
sub_08078930: @ 0x08078930
	push {lr}
	adds r3, r0, #0
	ldr r2, _08078950 @ =gUnk_03003BE0
	ldrb r0, [r2, #2]
	cmp r0, #0x1f
	bhi _0807894C
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
_0807894C:
	pop {pc}
	.align 2, 0
_08078950: .4byte gUnk_03003BE0

	thumb_func_start sub_08078954
sub_08078954: @ 0x08078954
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _08078970 @ =gUnk_03003BE0
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r4, r1
	bhs _080789A6
	ldr r0, [r2, #0xc]
	cmp r0, r5
	bne _08078974
	subs r0, r1, #1
	b _0807898C
	.align 2, 0
_08078970: .4byte gUnk_03003BE0
_08078974:
	adds r4, #1
	ldrb r3, [r2, #2]
	cmp r4, r3
	bhs _080789A6
	lsls r0, r4, #2
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _08078974
	subs r0, r3, #1
_0807898C:
	strb r0, [r2, #2]
	ldrb r0, [r2, #2]
	cmp r4, r0
	bhs _080789A6
	lsls r0, r4, #2
	adds r0, #0xc
	adds r1, r0, r2
_0807899A:
	ldr r0, [r1, #4]
	stm r1!, {r0}
	adds r4, #1
	ldrb r0, [r2, #2]
	cmp r4, r0
	blo _0807899A
_080789A6:
	pop {r4, r5, pc}

	thumb_func_start sub_080789A8
sub_080789A8: @ 0x080789A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080789BC @ =gUnk_03003BE0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080789C0
	ldrb r0, [r1, #1]
	b _08078A88
	.align 2, 0
_080789BC: .4byte gUnk_03003BE0
_080789C0:
	ldr r0, _08078A5C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08078A56
	ldr r0, _08078A60 @ =gLinkEntity
	bl sub_080002D0
	adds r4, r0, #0
	cmp r4, #0xf
	bls _080789E6
	ldr r0, _08078A64 @ =gUnk_080084BC
	adds r1, r4, #0
	subs r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	beq _08078A56
_080789E6:
	ldr r0, _08078A5C @ =gUnk_03003F80
	ldrb r0, [r0, #0x12]
	cmp r0, #0x12
	beq _08078A56
	ldr r3, _08078A68 @ =gUnk_03003BE0
	movs r0, #1
	strb r0, [r3]
	ldrb r4, [r3, #2]
	cmp r4, #0
	beq _08078A2E
	ldr r2, _08078A60 @ =gLinkEntity
	ldrb r1, [r2, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08078A6C @ =gUnk_0811BFE0
	adds r6, r0, r1
	adds r7, r2, #0
	adds r3, #8
	mov r8, r3
_08078A0C:
	lsls r0, r4, #2
	mov r1, r8
	adds r5, r0, r1
	ldr r1, [r5]
	cmp r1, #0
	beq _08078A26
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	adds r0, r7, #0
	bl sub_0807A180
	cmp r0, #0
	bne _08078A74
_08078A26:
	subs r4, #1
	ldr r7, _08078A60 @ =gLinkEntity
	cmp r4, #0
	bne _08078A0C
_08078A2E:
	ldr r0, _08078A60 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r2, #6
	ands r2, r1
	ldr r1, _08078A70 @ =gUnk_08007DF4
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_0800029C
	ldr r4, _08078A68 @ =gUnk_03003BE0
	strh r0, [r4, #4]
	movs r1, #6
	bl sub_0806FC24
	cmp r0, #0
	bne _08078A84
_08078A56:
	movs r0, #0
	b _08078A88
	.align 2, 0
_08078A5C: .4byte gUnk_03003F80
_08078A60: .4byte gLinkEntity
_08078A64: .4byte gUnk_080084BC
_08078A68: .4byte gUnk_03003BE0
_08078A6C: .4byte gUnk_0811BFE0
_08078A70: .4byte gUnk_08007DF4
_08078A74:
	mov r0, r8
	subs r0, #8
	ldr r1, [r5]
	str r1, [r0, #8]
	movs r1, #2
	strb r1, [r0, #1]
	movs r0, #2
	b _08078A88
_08078A84:
	movs r0, #1
	strb r0, [r4, #1]
_08078A88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08078A90
sub_08078A90: @ 0x08078A90
	push {lr}
	adds r1, r0, #0
	ldr r0, _08078AA4 @ =gUnk_03003F80
	adds r2, r0, #0
	adds r2, #0x8b
	ldrb r0, [r2]
	cmp r0, #3
	beq _08078AA2
	strb r1, [r2]
_08078AA2:
	pop {pc}
	.align 2, 0
_08078AA4: .4byte gUnk_03003F80

	thumb_func_start sub_08078AA8
sub_08078AA8: @ 0x08078AA8
	ldr r3, _08078AB8 @ =gUnk_03003F80
	movs r2, #0x16
	strb r2, [r3, #0xc]
	ldr r2, _08078ABC @ =gUnk_030010A0
	strh r0, [r2, #0x36]
	adds r2, #0x35
	strb r1, [r2]
	bx lr
	.align 2, 0
_08078AB8: .4byte gUnk_03003F80
_08078ABC: .4byte gUnk_030010A0

	thumb_func_start sub_08078AC0
sub_08078AC0: @ 0x08078AC0
	push {r4, lr}
	ldr r3, _08078AEC @ =gUnk_03003F80
	mov ip, r3
	movs r3, #0xf
	mov r4, ip
	strb r3, [r4, #0xc]
	mov r3, ip
	adds r3, #0x38
	strb r0, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r1, ip
	adds r1, #0x39
	strb r0, [r1]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	adds r1, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_08078AEC: .4byte gUnk_03003F80

	thumb_func_start sub_08078AF0
sub_08078AF0: @ 0x08078AF0
	push {r4, lr}
	ldr r3, _08078B40 @ =gUnk_03003F80
	mov ip, r3
	adds r3, #0x38
	movs r4, #0
	strb r1, [r3]
	mov r1, ip
	adds r1, #0x39
	strb r2, [r1]
	adds r1, #1
	strb r4, [r1]
	movs r1, #8
	mov r2, ip
	strb r1, [r2, #0xc]
	adds r2, #0xa8
	movs r1, #0x15
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x26
	strb r4, [r1]
	movs r1, #1
	mov r3, ip
	strb r1, [r3, #0x14]
	ldr r2, _08078B44 @ =gLinkEntity
	str r0, [r2, #0x54]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x11]
	bl sub_0807A108
	pop {r4, pc}
	.align 2, 0
_08078B40: .4byte gUnk_03003F80
_08078B44: .4byte gLinkEntity

	thumb_func_start sub_08078B48
sub_08078B48: @ 0x08078B48
	push {lr}
	ldr r1, _08078B80 @ =gUnk_03003F80
	ldrb r0, [r1, #7]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #7]
	ldrb r0, [r1, #0xb]
	orrs r0, r2
	strb r0, [r1, #0xb]
	ldrb r0, [r1, #0xa]
	orrs r2, r0
	strb r2, [r1, #0xa]
	adds r2, r1, #0
	adds r2, #0x27
	movs r0, #2
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #4
	adds r2, r1, #0
	cmp r0, #0x19
	bhi _08078BF8
	lsls r0, r0, #2
	ldr r1, _08078B84 @ =_08078B88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078B80: .4byte gUnk_03003F80
_08078B84: .4byte _08078B88
_08078B88: @ jump table
	.4byte _08078C04 @ case 0
	.4byte _08078C04 @ case 1
	.4byte _08078BF8 @ case 2
	.4byte _08078BF8 @ case 3
	.4byte _08078BF8 @ case 4
	.4byte _08078BF0 @ case 5
	.4byte _08078BF8 @ case 6
	.4byte _08078BF8 @ case 7
	.4byte _08078BF8 @ case 8
	.4byte _08078BF8 @ case 9
	.4byte _08078BF8 @ case 10
	.4byte _08078BF8 @ case 11
	.4byte _08078BF8 @ case 12
	.4byte _08078BF8 @ case 13
	.4byte _08078BF8 @ case 14
	.4byte _08078BF8 @ case 15
	.4byte _08078BF8 @ case 16
	.4byte _08078BF8 @ case 17
	.4byte _08078BF8 @ case 18
	.4byte _08078BF8 @ case 19
	.4byte _08078BF8 @ case 20
	.4byte _08078C04 @ case 21
	.4byte _08078C04 @ case 22
	.4byte _08078BF8 @ case 23
	.4byte _08078BF8 @ case 24
	.4byte _08078C04 @ case 25
_08078BF0:
	ldr r0, [r2, #0x30]
	ldr r1, _08078C18 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2, #0x30]
_08078BF8:
	ldr r0, _08078C1C @ =gUnk_02034350
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08078C04
	movs r0, #1
	strb r0, [r2, #0x1a]
_08078C04:
	ldr r0, _08078C20 @ =gLinkEntity
	adds r0, #0x3d
	movs r1, #0xfe
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x8a
	movs r0, #2
	strb r0, [r1]
	pop {pc}
	.align 2, 0
_08078C18: .4byte 0xFFFBFFFF
_08078C1C: .4byte gUnk_02034350
_08078C20: .4byte gLinkEntity

	thumb_func_start sub_08078C24
sub_08078C24: @ 0x08078C24
	push {lr}
	ldr r3, _08078CAC @ =gUnk_03003F80
	movs r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	movs r0, #0
	strh r2, [r3, #8]
	strb r0, [r3, #0xa]
	strb r0, [r3, #0xb]
	movs r1, #0x35
	adds r1, r1, r3
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x36
	strb r0, [r1]
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xe]
	strb r0, [r3, #0x11]
	strb r0, [r3, #0x12]
	strb r0, [r3, #0x13]
	strb r0, [r3, #0x14]
	strb r0, [r3, #0x1b]
	strb r0, [r3, #0x1e]
	strb r0, [r3, #0x1f]
	subs r1, #0x16
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	strh r2, [r3, #0x22]
	strh r2, [r3, #0x24]
	adds r1, #5
	strb r0, [r1]
	str r2, [r3, #0x2c]
	adds r1, #0x5a
	strh r2, [r1]
	mov r1, ip
	strb r0, [r1]
	str r2, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0x38
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #5
	strb r0, [r1]
	subs r1, #3
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, #4
	movs r2, #0x40
	bl _DmaFill32
	ldr r0, _08078CB0 @ =gUnk_03003DF0
	movs r1, #0xc4
	lsls r1, r1, #1
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_08078CAC: .4byte gUnk_03003F80
_08078CB0: .4byte gUnk_03003DF0

	thumb_func_start sub_08078CB4
sub_08078CB4: @ 0x08078CB4
	push {lr}
	ldr r0, _08078CCC @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08078CC8
	bl sub_08078D60
_08078CC8:
	pop {pc}
	.align 2, 0
_08078CCC: .4byte gUnk_03003F80

	thumb_func_start sub_08078CD0
sub_08078CD0: @ 0x08078CD0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldrb r1, [r5, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, _08078D28 @ =gUnk_0811C01C
	ldr r0, _08078D2C @ =gUnk_03003F80
	ldr r0, [r0, #0x2c]
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r3, _08078D30 @ =gUnk_0811C0B0
	ldrb r1, [r4, #0x1c]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, r0, r3
	lsls r2, r2, #1
	ldr r0, [r0]
	adds r2, r0, r2
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08078D34
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r5, #0x2e]
	subs r0, r0, r1
	b _08078D3C
	.align 2, 0
_08078D28: .4byte gUnk_0811C01C
_08078D2C: .4byte gUnk_03003F80
_08078D30: .4byte gUnk_0811C0B0
_08078D34:
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
_08078D3C:
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806FEBC
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08078D5E
	adds r0, r4, #0
	bl sub_0806FA24
_08078D5E:
	pop {r4, r5, pc}

	thumb_func_start sub_08078D60
sub_08078D60: @ 0x08078D60
	push {r4, r5, r6, lr}
	ldr r1, _08078DCC @ =gLinkEntity
	ldr r0, [r1, #0x74]
	ldr r4, [r0, #0x54]
	ldrb r0, [r4, #0xc]
	adds r6, r1, #0
	cmp r0, #2
	beq _08078D72
	b _08078E82
_08078D72:
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	ldrb r1, [r6, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	ldr r1, _08078DD0 @ =gUnk_0811C0E8
	ldrb r0, [r4, #0x16]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08078DD4
	adds r2, r1, r2
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r6, #0x2e]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	adds r1, r2, #0
	b _08078DE0
	.align 2, 0
_08078DCC: .4byte gLinkEntity
_08078DD0: .4byte gUnk_0811C0E8
_08078DD4:
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r6, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
_08078DE0:
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	adds r5, r6, #0
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	ldr r0, _08078E34 @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #4
	bne _08078E4C
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_0806F8DC
	ldrb r1, [r4, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _08078E82
	ldr r0, _08078E38 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08078E3C
	cmp r1, #3
	beq _08078E44
	b _08078E82
	.align 2, 0
_08078E34: .4byte gUnk_03003F80
_08078E38: .4byte gUnk_030010A0
_08078E3C:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	b _08078E82
_08078E44:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	b _08078E82
_08078E4C:
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	cmp r0, #0
	beq _08078E62
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	b _08078E6E
_08078E62:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
_08078E6E:
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08078E82:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08078E84
sub_08078E84: @ 0x08078E84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08078ED0 @ =gLinkEntity
	cmp r4, r0
	bne _08078EAC
	adds r0, r5, #0
	bl sub_08079BD8
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
_08078EAC:
	ldr r0, _08078ED4 @ =gUnk_080029B4
	ldrh r2, [r4, #0x12]
	lsls r2, r2, #4
	adds r0, #4
	adds r2, r2, r0
	ldrb r1, [r4, #0x1e]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _08078ED8
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806FEBC
	b _08078EE2
	.align 2, 0
_08078ED0: .4byte gLinkEntity
_08078ED4: .4byte gUnk_080029B4
_08078ED8:
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_0806FEBC
_08078EE2:
	pop {r4, r5, pc}

	thumb_func_start sub_08078EE4
sub_08078EE4: @ 0x08078EE4
	ldr r2, _08078EF4 @ =gLinkEntity
	ldr r1, _08078EF8 @ =gUnk_03003F80
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0x32]
	bx lr
	.align 2, 0
_08078EF4: .4byte gLinkEntity
_08078EF8: .4byte gUnk_03003F80

	thumb_func_start sub_08078EFC
sub_08078EFC: @ 0x08078EFC
	push {lr}
	ldr r3, _08078F18 @ =gUnk_03003F80
	ldrb r2, [r3, #0xc]
	cmp r2, #0
	beq _08078F20
	ldr r0, _08078F1C @ =gLinkEntity
	movs r1, #0
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r3, #0xc]
	bl sub_08070680
	movs r0, #1
	b _08078F22
	.align 2, 0
_08078F18: .4byte gUnk_03003F80
_08078F1C: .4byte gLinkEntity
_08078F20:
	movs r0, #0
_08078F22:
	pop {pc}

	thumb_func_start sub_08078F24
sub_08078F24: @ 0x08078F24
	push {r4, lr}
	ldr r4, _08078F38 @ =gUnk_03003F80
	ldrb r3, [r4, #0xd]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08078F3C
	bl sub_08078F60
	b _08078F5A
	.align 2, 0
_08078F38: .4byte gUnk_03003F80
_08078F3C:
	ldr r2, _08078F5C @ =gUnk_080C9160
	lsls r0, r3, #4
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r1, [r0]
	lsls r0, r3, #4
	adds r0, #0x80
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x8e
	strh r0, [r1]
_08078F5A:
	pop {r4, pc}
	.align 2, 0
_08078F5C: .4byte gUnk_080C9160

	thumb_func_start sub_08078F60
sub_08078F60: @ 0x08078F60
	ldr r0, _08078F70 @ =gUnk_03003F80
	adds r1, r0, #0
	adds r1, #0x8c
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x8e
	strh r2, [r0]
	bx lr
	.align 2, 0
_08078F70: .4byte gUnk_03003F80

	thumb_func_start sub_08078F74
sub_08078F74: @ 0x08078F74
	push {lr}
	adds r2, r0, #0
	ldr r0, _08078FA4 @ =gUnk_02033A90
	ldrb r0, [r0, #0x18]
	cmp r0, #3
	bne _08078FAC
	ldr r3, _08078FA8 @ =gUnk_03003F80
	adds r0, r3, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08078FAC
	movs r1, #0
	movs r0, #0x81
	strb r0, [r3, #2]
	movs r0, #0x15
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #1
	b _08078FAE
	.align 2, 0
_08078FA4: .4byte gUnk_02033A90
_08078FA8: .4byte gUnk_03003F80
_08078FAC:
	movs r0, #0
_08078FAE:
	pop {pc}

	thumb_func_start sub_08078FB0
sub_08078FB0: @ 0x08078FB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08078FE0 @ =gUnk_03003F80
	ldrb r1, [r5, #6]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08078FCA
	adds r1, r5, #0
	adds r1, #0x35
	movs r0, #0xff
	strb r0, [r1]
_08078FCA:
	adds r0, r4, #0
	bl sub_08079064
	ldr r1, [r5, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08078FE4
	movs r2, #0x58
	b _08078FFA
	.align 2, 0
_08078FE0: .4byte gUnk_03003F80
_08078FE4:
	ands r1, r6
	cmp r1, #0
	beq _08078FEE
	movs r2, #0x18
	b _08078FFA
_08078FEE:
	ldrh r0, [r5, #8]
	lsrs r0, r0, #8
	movs r2, #0xb8
	cmp r0, #7
	bne _08078FFA
	movs r2, #0x34
_08078FFA:
	ldr r0, _08079014 @ =gUnk_03003F80
	adds r3, r0, #0
	ldrb r1, [r0, #8]
	cmp r2, r1
	bls _08079040
	ldrb r0, [r4, #0x14]
	adds r2, r0, #0
	cmp r2, #4
	bls _08079018
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08079020
	.align 2, 0
_08079014: .4byte gUnk_03003F80
_08079018:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08079020:
	strb r0, [r4, #0x18]
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08079036
	ldrh r1, [r3, #8]
	ldrb r0, [r4, #0x14]
	adds r2, r1, r0
	b _08079042
_08079036:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x19
	ldrh r3, [r3, #8]
	adds r2, r0, r3
	b _08079042
_08079040:
	ldrh r2, [r0, #8]
_08079042:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	orrs r0, r1
	cmp r2, r0
	beq _08079062
	lsrs r0, r2, #8
	strh r0, [r4, #0x12]
	movs r0, #0xff
	ands r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080042AC
_08079062:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08079064
sub_08079064: @ 0x08079064
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0807909C @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	ldr r2, _080790A0 @ =0x00100080
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _080790DE
	movs r3, #0
	movs r2, #0
	ldr r1, _080790A4 @ =gUnk_03000B80
_0807907C:
	ldrb r0, [r1, #0xf]
	cmp r0, r3
	bls _08079086
	adds r3, r0, #0
	ldrh r4, [r1, #0x10]
_08079086:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _0807907C
	adds r2, r5, #0
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bhs _080790A8
	strh r4, [r2, #8]
	b _080790DE
	.align 2, 0
_0807909C: .4byte gUnk_03003F80
_080790A0: .4byte 0x00100080
_080790A4: .4byte gUnk_03000B80
_080790A8:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080790C0
	ldr r0, _080790BC @ =0x000002BE
	strh r0, [r2, #8]
	b _080790DE
	.align 2, 0
_080790BC: .4byte 0x000002BE
_080790C0:
	ldrh r1, [r5, #8]
	movs r0, #0xc1
	lsls r0, r0, #3
	cmp r1, r0
	beq _080790D8
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	beq _080790D8
	ldr r0, _080790E0 @ =0x00000404
	cmp r1, r0
	bne _080790DE
_080790D8:
	adds r0, r6, #0
	bl sub_080790E4
_080790DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080790E0: .4byte 0x00000404

	thumb_func_start sub_080790E4
sub_080790E4: @ 0x080790E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08079128 @ =gUnk_03003F80
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08079182
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _0807912C
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #5
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl sub_080A3268
	b _08079182
	.align 2, 0
_08079128: .4byte gUnk_03003F80
_0807912C:
	ldrb r1, [r5, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079182
	cmp r1, #0
	bne _08079150
	movs r0, #1
	bl sub_080793E4
	cmp r0, #0
	beq _0807914C
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _08079154
	adds r0, #1
_0807914C:
	strb r0, [r4, #0xf]
	b _08079182
_08079150:
	subs r0, r1, #1
	strb r0, [r5, #6]
_08079154:
	ldr r2, _08079174 @ =gUnk_03003F80
	ldrb r0, [r4, #0x14]
	adds r1, r2, #0
	adds r1, #0x35
	strb r0, [r1]
	adds r1, #0x73
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807917C
	ldr r0, _08079178 @ =0x0000093C
	b _08079180
	.align 2, 0
_08079174: .4byte gUnk_03003F80
_08079178: .4byte 0x0000093C
_0807917C:
	movs r0, #0xcf
	lsls r0, r0, #2
_08079180:
	strh r0, [r2, #8]
_08079182:
	pop {r4, r5, pc}

	thumb_func_start sub_08079184
sub_08079184: @ 0x08079184
	ldr r0, _08079194 @ =gUnk_03003F80
	movs r1, #0
	strb r1, [r0, #5]
	strb r1, [r0, #1]
	ldr r0, _08079198 @ =gLinkEntity
	str r1, [r0, #0x74]
	bx lr
	.align 2, 0
_08079194: .4byte gUnk_03003F80
_08079198: .4byte gLinkEntity

	thumb_func_start sub_0807919C
sub_0807919C: @ 0x0807919C
	push {lr}
	ldr r0, _080791B0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080791B4
	bl sub_080791BC
	b _080791B8
	.align 2, 0
_080791B0: .4byte gUnk_03003F80
_080791B4:
	bl sub_08079258
_080791B8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080791BC
sub_080791BC: @ 0x080791BC
	ldr r0, _080791CC @ =gLinkEntity
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xf]
	bx lr
	.align 2, 0
_080791CC: .4byte gLinkEntity

	thumb_func_start sub_080791D0
sub_080791D0: @ 0x080791D0
	push {lr}
	ldr r3, _0807920C @ =gUnk_03003F80
	ldr r0, [r3, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080791E8
	ldr r0, _08079210 @ =gLinkEntity
	ldrb r1, [r0, #0x18]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #0x18]
_080791E8:
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079214
	ldr r2, _08079210 @ =gLinkEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_0807921C
	b _08079218
	.align 2, 0
_0807920C: .4byte gUnk_03003F80
_08079210: .4byte gLinkEntity
_08079214:
	bl sub_08079258
_08079218:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807921C
sub_0807921C: @ 0x0807921C
	push {r4, lr}
	ldr r4, _0807924C @ =gLinkEntity
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r2, _08079250 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08079254 @ =0xFECBF6FA
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08079938
	bl sub_080791BC
	adds r0, r4, #0
	bl sub_0805E374
	pop {r4, pc}
	.align 2, 0
_0807924C: .4byte gLinkEntity
_08079250: .4byte gUnk_03003F80
_08079254: .4byte 0xFECBF6FA

	thumb_func_start sub_08079258
sub_08079258: @ 0x08079258
	push {r4, lr}
	ldr r4, _080792AC @ =gUnk_03003F80
	ldr r0, [r4, #0x30]
	movs r1, #0x40
	ands r0, r1
	ldr r3, _080792B0 @ =gLinkEntity
	cmp r0, #0
	bne _08079278
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
_08079278:
	movs r0, #9
	strb r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0xd]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r0, _080792B4 @ =0x00000C18
	strh r0, [r4, #8]
	ldr r0, [r4, #0x30]
	ldr r1, _080792B8 @ =0xFECFFEFA
	ands r0, r1
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	strb r2, [r4, #0xc]
	adds r0, r3, #0
	bl sub_0805E374
	pop {r4, pc}
	.align 2, 0
_080792AC: .4byte gUnk_03003F80
_080792B0: .4byte gLinkEntity
_080792B4: .4byte 0x00000C18
_080792B8: .4byte 0xFECFFEFA

	thumb_func_start sub_080792BC
sub_080792BC: @ 0x080792BC
	push {r4, lr}
	ldr r3, _080792D0 @ =gUnk_03003F80
	movs r4, #0x13
	strb r4, [r3, #0xc]
	adds r3, #0x38
	strb r2, [r3]
	ldr r2, _080792D4 @ =gLinkEntity
	strh r0, [r2, #0x24]
	strb r1, [r2, #0x15]
	pop {r4, pc}
	.align 2, 0
_080792D0: .4byte gUnk_03003F80
_080792D4: .4byte gLinkEntity

	thumb_func_start sub_080792D8
sub_080792D8: @ 0x080792D8
	push {r4, r5, r6, lr}
	ldr r5, _08079344 @ =gLinkEntity
	adds r3, r5, #0
	adds r3, #0x42
	ldrb r0, [r3]
	cmp r0, #0
	beq _080793E0
	ldrb r2, [r5, #0xc]
	cmp r2, #0xb
	beq _08079338
	ldr r0, _08079348 @ =gUnk_03003F80
	ldrb r1, [r0, #0x1e]
	adds r6, r0, #0
	cmp r1, #0
	bne _08079338
	ldrb r0, [r6, #5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08079338
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08079338
	ldrb r0, [r6, #0x12]
	cmp r0, #0xff
	beq _08079338
	ldrb r1, [r6, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079338
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	cmp r0, #0
	bgt _08079338
	cmp r2, #3
	beq _08079338
	ldr r1, [r6, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _0807934C
_08079338:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _080793E0
	.align 2, 0
_08079344: .4byte gLinkEntity
_08079348: .4byte gUnk_03003F80
_0807934C:
	cmp r2, #0x1d
	bne _0807935E
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0807935E
	strb r1, [r3]
	b _080793E0
_0807935E:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0
	ble _08079372
	subs r0, r3, #1
	b _08079374
_08079372:
	adds r0, r3, #1
_08079374:
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080793E0
	adds r4, r6, #0
	ldrb r0, [r4, #7]
	movs r1, #0xdf
	ands r1, r0
	strb r1, [r4, #7]
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080793CA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080793CA
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080793CA
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _080793CA
	bl sub_08077B2C
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080793C4
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r4, #8]
	b _080793CA
_080793C4:
	movs r0, #0x83
	lsls r0, r0, #3
	strh r0, [r6, #8]
_080793CA:
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r5, #0
	adds r4, #0x3e
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_080027EA
	ldrb r0, [r4]
	bl sub_0807A5B8
_080793E0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080793E4
sub_080793E4: @ 0x080793E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080793FC @ =gUnk_03003F80
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079408
	ldr r1, _08079400 @ =gUnk_0811C0F8
	ldr r0, _08079404 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	b _08079410
	.align 2, 0
_080793FC: .4byte gUnk_03003F80
_08079400: .4byte gUnk_0811C0F8
_08079404: .4byte gLinkEntity
_08079408:
	ldr r1, _08079448 @ =gUnk_0811C0F8
	ldr r0, _0807944C @ =gLinkEntity
	ldrb r0, [r0, #0x15]
	lsrs r0, r0, #2
_08079410:
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	bl sub_08079778
	cmp r0, #0
	beq _08079454
	ldr r0, _08079450 @ =gUnk_03003F80
	adds r0, #0x90
	ldrh r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _08079454
	cmp r5, #0
	beq _08079442
	bl sub_0807A500
	ldr r1, _0807944C @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	adds r2, r5, #0
	bl sub_080002F0
	cmp r0, #0
	beq _08079454
_08079442:
	movs r0, #1
	b _08079456
	.align 2, 0
_08079448: .4byte gUnk_0811C0F8
_0807944C: .4byte gLinkEntity
_08079450: .4byte gUnk_03003F80
_08079454:
	movs r0, #0
_08079456:
	pop {r4, r5, pc}

	thumb_func_start sub_08079458
sub_08079458: @ 0x08079458
	push {r4, r5, lr}
	ldr r4, _08079498 @ =gLinkEntity
	movs r1, #0
	movs r0, #0x19
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	bl sub_08078EE4
	ldr r2, _0807949C @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08079514
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _080794E4
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	b _08079514
	.align 2, 0
_08079498: .4byte gLinkEntity
_0807949C: .4byte gUnk_03003F80
_080794A0:
	ldr r2, _080794DC @ =gLinkEntity
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	adds r1, r2, #0
	adds r1, #0x38
	strb r0, [r1]
	ldr r3, _080794E0 @ =gUnk_03000BF0
	ldr r0, [r4]
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	adds r0, #8
	strh r0, [r2, #0x2e]
	ldr r0, [r4]
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	adds r0, #8
	strh r0, [r2, #0x32]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	b _08079514
	.align 2, 0
_080794DC: .4byte gLinkEntity
_080794E0: .4byte gUnk_03000BF0
_080794E4:
	movs r5, #0
	ldr r1, [r2, #0x40]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08079514
	adds r4, r2, #0
	adds r4, #0x40
_080794F4:
	ldr r1, [r4]
	ldrh r0, [r4]
	lsrs r1, r1, #0x1e
	bl sub_080002E0
	cmp r0, #0xf
	bne _080794A0
	adds r4, #4
	adds r5, #1
	cmp r5, #0xf
	bhi _08079514
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080794F4
_08079514:
	ldr r0, _0807951C @ =gLinkEntity
	bl sub_08016A04
	pop {r4, r5, pc}
	.align 2, 0
_0807951C: .4byte gLinkEntity

	thumb_func_start sub_08079520
sub_08079520: @ 0x08079520
	push {lr}
	adds r1, r0, #0
	ldr r0, _08079538 @ =gUnk_03003F80
	ldrb r0, [r0, #0xd]
	cmp r0, #0x7f
	ble _08079532
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #3
_08079532:
	strb r0, [r1, #0x15]
	pop {pc}
	.align 2, 0
_08079538: .4byte gUnk_03003F80

	thumb_func_start sub_0807953C
sub_0807953C: @ 0x0807953C
	ldr r1, _08079548 @ =0x00000F38
	ldr r0, _0807954C @ =gUnk_03003F80
	adds r0, #0x92
	ldrh r0, [r0]
	ands r0, r1
	bx lr
	.align 2, 0
_08079548: .4byte 0x00000F38
_0807954C: .4byte gUnk_03003F80

	thumb_func_start sub_08079550
sub_08079550: @ 0x08079550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080795A8 @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08079562
	b _080796FC
_08079562:
	ldr r2, _080795AC @ =gUnk_03003F80
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08079576
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080795B4
_08079576:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r1, _080795B0 @ =gLinkEntity
	mov r8, r1
	cmp r0, #0
	bne _080795A0
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080795A0
	mov r3, r8
	ldrb r1, [r3, #0x15]
	ldrb r2, [r2, #0xd]
	cmp r1, r2
	bne _080795A0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080795B4
_080795A0:
	movs r0, #0
	mov r5, r8
	strb r0, [r5, #0xf]
	b _080796FE
	.align 2, 0
_080795A8: .4byte gUnk_03004030
_080795AC: .4byte gUnk_03003F80
_080795B0: .4byte gLinkEntity
_080795B4:
	bl sub_08079778
	cmp r0, #0
	bne _080795BE
	b _080796FC
_080795BE:
	ldr r3, _08079610 @ =gLinkEntity
	ldrb r2, [r3, #0x14]
	movs r0, #6
	ands r0, r2
	ldr r1, _08079614 @ =gUnk_0811C100
	adds r1, r0, r1
	movs r0, #2
	ands r0, r2
	mov r8, r3
	cmp r0, #0
	beq _0807961C
	movs r6, #0x2e
	ldrsh r2, [r3, r6]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	ldr r4, _08079618 @ =gUnk_03000BF0
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	mov r0, r8
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldr r0, [r0, #0x48]
	ldrb r5, [r0, #3]
	adds r0, r1, r5
	ldrh r4, [r4, #8]
	subs r0, r0, r4
	asrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	orrs r7, r2
	subs r1, r1, r5
	subs r1, r1, r4
	asrs r1, r1, #4
	ands r1, r3
	lsls r4, r1, #6
	orrs r4, r2
	b _0807965E
	.align 2, 0
_08079610: .4byte gLinkEntity
_08079614: .4byte gUnk_0811C100
_08079618: .4byte gUnk_03000BF0
_0807961C:
	mov r6, r8
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r0, [r6, #0x48]
	ldrb r0, [r0, #4]
	mov ip, r0
	adds r0, r2, r0
	ldr r4, _080796EC @ =gUnk_03000BF0
	ldrh r3, [r4, #6]
	mov sb, r3
	subs r0, r0, r3
	asrs r7, r0, #4
	movs r3, #0x3f
	ands r7, r3
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r7, r0
	mov r6, ip
	subs r2, r2, r6
	mov r1, sb
	subs r2, r2, r1
	asrs r4, r2, #4
	ands r4, r3
	orrs r4, r0
_0807965E:
	adds r0, r7, #0
	mov r5, r8
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080002C8
	adds r3, r0, #0
	ldr r6, _080796F0 @ =gUnk_0811C1E8
	mov r1, r8
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r3, #0
	bl sub_08007DD6
	adds r3, r0, #0
	cmp r3, #0
	beq _080796FC
	adds r0, r4, #0
	ldrb r1, [r5]
	bl sub_080002C8
	adds r3, r0, #0
	mov r5, r8
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r3, #0
	bl sub_08007DD6
	adds r3, r0, #0
	cmp r3, #0
	beq _080796FC
	ldr r1, _080796F4 @ =gUnk_03003F80
	ldrb r2, [r1, #6]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #6]
	ldrb r0, [r1, #0x1e]
	adds r4, r1, #0
	cmp r0, #0
	bne _080796C8
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080796FC
_080796C8:
	ldr r0, _080796F8 @ =gLinkEntity
	subs r1, r3, #1
	movs r2, #0
	strb r1, [r0, #0x14]
	movs r1, #4
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x81
	strb r1, [r4, #2]
	bl sub_08070680
	movs r0, #1
	b _080796FE
	.align 2, 0
_080796EC: .4byte gUnk_03000BF0
_080796F0: .4byte gUnk_0811C1E8
_080796F4: .4byte gUnk_03003F80
_080796F8: .4byte gLinkEntity
_080796FC:
	movs r0, #0
_080796FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08079708
sub_08079708: @ 0x08079708
	push {r4, lr}
	ldr r4, _08079740 @ =gUnk_03003F80
	adds r2, r4, #0
	adds r2, #0xa8
	movs r3, #0
	movs r1, #0x12
	strb r1, [r2]
	subs r2, #0x6c
	movs r1, #0xff
	strb r1, [r2]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xa
	strb r1, [r0, #0xc]
	strb r3, [r0, #0xd]
	bl sub_080085B0
	ldr r0, [r4, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807973E
	bl sub_0805E544
_0807973E:
	pop {r4, pc}
	.align 2, 0
_08079740: .4byte gUnk_03003F80

	thumb_func_start sub_08079744
sub_08079744: @ 0x08079744
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2e]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #8
	beq _0807975E
	cmp r1, #8
	ble _0807975A
	subs r0, #1
	b _0807975C
_0807975A:
	adds r0, #1
_0807975C:
	strh r0, [r2, #0x2e]
_0807975E:
	ldrh r0, [r2, #0x32]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #8
	beq _08079774
	cmp r1, #8
	ble _08079770
	subs r0, #1
	b _08079772
_08079770:
	adds r0, #1
_08079772:
	strh r0, [r2, #0x32]
_08079774:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08079778
sub_08079778: @ 0x08079778
	push {lr}
	ldr r0, _08079790 @ =gUnk_03003F80
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807979C
	ldr r2, _08079794 @ =gUnk_0811C108
	ldr r1, _08079798 @ =gLinkEntity
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	b _080797A4
	.align 2, 0
_08079790: .4byte gUnk_03003F80
_08079794: .4byte gUnk_0811C108
_08079798: .4byte gLinkEntity
_0807979C:
	ldr r2, _080797BC @ =gUnk_0811C108
	ldr r1, _080797C0 @ =gLinkEntity
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #2
_080797A4:
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r3, #0
	ldrh r0, [r1, #0x2a]
	ands r0, r2
	cmp r2, r0
	bne _080797B6
	movs r3, #1
_080797B6:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_080797BC: .4byte gUnk_0811C108
_080797C0: .4byte gLinkEntity

	thumb_func_start sub_080797C4
sub_080797C4: @ 0x080797C4
	push {lr}
	ldr r1, _080797E4 @ =gUnk_0811C110
	ldr r2, _080797E8 @ =gLinkEntity
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0
	ldrh r0, [r2, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _080797E0
	movs r3, #1
_080797E0:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_080797E4: .4byte gUnk_0811C110
_080797E8: .4byte gLinkEntity

	thumb_func_start sub_080797EC
sub_080797EC: @ 0x080797EC
	push {r4, r5, lr}
	ldr r4, _08079804 @ =gUnk_03003F80
	ldr r1, [r4, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807985C
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0807980C
	ldr r5, _08079808 @ =0x00000934
	b _0807991E
	.align 2, 0
_08079804: .4byte gUnk_03003F80
_08079808: .4byte 0x00000934
_0807980C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079818
	movs r5, #0x82
	lsls r5, r5, #3
	b _0807991E
_08079818:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _080798A0
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	cmp r0, #0
	bne _0807991E
	movs r5, #0xb6
	lsls r5, r5, #1
	ldrb r1, [r4, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	bne _080798C2
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080798CE
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08079852
	movs r0, #1
	strb r0, [r1]
_08079852:
	ldr r5, _08079858 @ =0x00000404
	b _0807991E
	.align 2, 0
_08079858: .4byte 0x00000404
_0807985C:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0807992E
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0807986E
	movs r5, #0xd2
	lsls r5, r5, #2
	b _0807991E
_0807986E:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0807987A
	movs r5, #0xa6
	lsls r5, r5, #2
	b _0807991E
_0807987A:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0807988A
	movs r5, #0xe2
	lsls r5, r5, #3
	b _0807991E
_0807988A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079896
	movs r5, #0xb0
	lsls r5, r5, #1
	b _0807991E
_08079896:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080798A6
_080798A0:
	movs r5, #0xa1
	lsls r5, r5, #2
	b _0807991E
_080798A6:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	cmp r0, #0
	bne _0807991E
	movs r5, #0xb6
	lsls r5, r5, #1
	ldrb r1, [r4, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	beq _080798C8
_080798C2:
	movs r0, #0x6c
	strb r0, [r4]
	b _0807992E
_080798C8:
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _080798FC
_080798CE:
	movs r0, #0
	bl sub_080793E4
	cmp r0, #0
	beq _0807991E
	bl sub_0807A500
	ldr r1, _080798F8 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xff
	beq _0807991E
	ldrb r1, [r4, #0x1b]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4, #0x1b]
	movs r5, #0xb8
	lsls r5, r5, #1
	b _0807991E
	.align 2, 0
_080798F8: .4byte gLinkEntity
_080798FC:
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807990A
	movs r0, #1
	strb r0, [r1]
_0807990A:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	movs r5, #0x82
	lsls r5, r5, #1
	cmp r0, #0
	beq _0807991E
	movs r5, #0xc1
	lsls r5, r5, #3
_0807991E:
	ldr r0, _08079930 @ =gUnk_03003F80
	strh r5, [r0, #8]
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807992E
	ldr r0, _08079934 @ =gLinkEntity
	bl sub_080042B8
_0807992E:
	pop {r4, r5, pc}
	.align 2, 0
_08079930: .4byte gUnk_03003F80
_08079934: .4byte gLinkEntity

	thumb_func_start sub_08079938
sub_08079938: @ 0x08079938
	push {r4, lr}
	ldr r3, _08079954 @ =gUnk_03003F80
	ldr r2, [r3, #0x30]
	movs r0, #8
	ands r0, r2
	mov ip, r3
	cmp r0, #0
	beq _080799E4
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _0807995C
	ldr r4, _08079958 @ =0x0000092C
	b _08079AD8
	.align 2, 0
_08079954: .4byte gUnk_03003F80
_08079958: .4byte 0x0000092C
_0807995C:
	mov r0, ip
	adds r0, #0x3d
	mov r3, ip
	ldrb r1, [r3, #0x1c]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _0807996E
	b _08079B14
_0807996E:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r2
	cmp r0, #0
	bne _08079A1E
	mov r4, ip
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079988
	ldr r4, _08079984 @ =0x00000414
	b _08079AD8
	.align 2, 0
_08079984: .4byte 0x00000414
_08079988:
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079A5C
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079A6C
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	beq _080799AA
	b _08079B14
_080799AA:
	cmp r1, #0
	beq _080799B0
	b _08079AA4
_080799B0:
	mov r1, ip
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080799BA
	b _08079B14
_080799BA:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _080799D0
	ldr r0, _080799D8 @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #4
	bne _080799CC
	b _08079AD4
_080799CC:
	cmp r0, #5
	bne _080799DC
_080799D0:
	movs r4, #0x80
	lsls r4, r4, #3
	b _08079AD8
	.align 2, 0
_080799D8: .4byte gUnk_02033A90
_080799DC:
	ldr r4, _080799E0 @ =0x000002C2
	b _08079AD8
	.align 2, 0
_080799E0: .4byte 0x000002C2
_080799E4:
	mov r4, ip
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _080799F2
	movs r4, #0xd4
	lsls r4, r4, #2
	b _08079AD8
_080799F2:
	mov r0, ip
	adds r0, #0x3d
	mov r4, ip
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _08079A04
	b _08079B14
_08079A04:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08079A14
	movs r4, #0x8b
	lsls r4, r4, #4
	b _08079AD8
_08079A14:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08079A24
_08079A1E:
	movs r4, #0x81
	lsls r4, r4, #4
	b _08079AD8
_08079A24:
	mov r1, ip
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08079A32
	movs r4, #0xa6
	lsls r4, r4, #2
	b _08079AD8
_08079A32:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _08079A44
	ldr r4, _08079A40 @ =0x0000070C
	b _08079AD8
	.align 2, 0
_08079A40: .4byte 0x0000070C
_08079A44:
	mov r4, ip
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079A52
	movs r4, #0xb2
	lsls r4, r4, #1
	b _08079AD8
_08079A52:
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079A62
_08079A5C:
	movs r4, #0xa0
	lsls r4, r4, #2
	b _08079AD8
_08079A62:
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079A72
_08079A6C:
	movs r4, #0xa3
	lsls r4, r4, #2
	b _08079AD8
_08079A72:
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	bne _08079B14
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _08079AA0
	ldr r0, _08079A98 @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	ldr r4, _08079A9C @ =0x000002C2
	cmp r0, #4
	bne _08079AD8
	movs r4, #0xa6
	lsls r4, r4, #3
	b _08079AD8
	.align 2, 0
_08079A98: .4byte gUnk_02033A90
_08079A9C: .4byte 0x000002C2
_08079AA0:
	cmp r1, #0
	beq _08079AAA
_08079AA4:
	movs r4, #0xb4
	lsls r4, r4, #1
	b _08079AD8
_08079AAA:
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne _08079B14
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079AD4
	ldr r0, _08079ACC @ =gUnk_03000B80
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079B14
	ldr r4, _08079AD0 @ =0x00000604
	b _08079AD8
	.align 2, 0
_08079ACC: .4byte gUnk_03000B80
_08079AD0: .4byte 0x00000604
_08079AD4:
	movs r4, #0x80
	lsls r4, r4, #1
_08079AD8:
	mov r1, ip
	strh r4, [r1, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08079B10
	movs r3, #0
	movs r2, #0
	ldr r1, _08079B18 @ =gUnk_03000B80
_08079AE8:
	ldrb r0, [r1, #0xf]
	cmp r0, r3
	bls _08079AF0
	adds r3, r0, #0
_08079AF0:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _08079AE8
	mov r2, ip
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	blo _08079B14
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bne _08079B10
	ldr r0, _08079B1C @ =gLinkEntity
	bl sub_080042B8
_08079B10:
	ldr r0, _08079B20 @ =gUnk_03003F80
	strb r4, [r0]
_08079B14:
	pop {r4, pc}
	.align 2, 0
_08079B18: .4byte gUnk_03000B80
_08079B1C: .4byte gLinkEntity
_08079B20: .4byte gUnk_03003F80

	thumb_func_start sub_08079B24
sub_08079B24: @ 0x08079B24
	push {r4, r5, lr}
	ldr r2, _08079B60 @ =gLinkEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #0xa
	beq _08079BD4
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r3, [r0]
	cmp r3, #0
	bne _08079BD4
	ldr r4, _08079B64 @ =gUnk_03003F80
	ldr r1, [r4, #0x30]
	ldr r0, _08079B68 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #0x30]
	adds r0, r2, #0
	adds r0, #0x42
	strb r3, [r0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08079BD4
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079B6C
	bl sub_08079458
	b _08079BC0
	.align 2, 0
_08079B60: .4byte gLinkEntity
_08079B64: .4byte gUnk_03003F80
_08079B68: .4byte 0xFEFFFFFF
_08079B6C:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08079BC0
	movs r3, #0x80
	lsls r3, r3, #5
	ands r3, r1
	cmp r3, #0
	bne _08079BC0
	movs r5, #0x36
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08079BA6
	ldr r0, [r2, #0x20]
	cmp r0, #0
	ble _08079B8C
	str r3, [r2, #0x20]
_08079B8C:
	ldrb r1, [r4, #2]
	movs r3, #0x41
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08079BD4
	strb r3, [r4, #2]
	movs r0, #0xff
	strb r0, [r2, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0xd]
	b _08079BD4
_08079BA6:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08079BC0
	bl sub_08079D48
	cmp r0, #0
	bne _08079BC0
	ldrb r0, [r4, #0xa]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0xa]
	b _08079BD4
_08079BC0:
	ldr r2, _08079BD0 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	b _08079BD6
	.align 2, 0
_08079BD0: .4byte gLinkEntity
_08079BD4:
	movs r0, #1
_08079BD6:
	pop {r4, r5, pc}

	thumb_func_start sub_08079BD8
sub_08079BD8: @ 0x08079BD8
	push {r4, r5, lr}
	ldr r4, _08079C2C @ =gLinkEntity
	ldr r1, [r4, #0x2c]
	str r1, [r0, #0x2c]
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x30]
	ldr r1, [r4, #0x34]
	str r1, [r0, #0x34]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x38
	strb r2, [r1]
	ldrb r3, [r4, #0x19]
	lsrs r3, r3, #6
	lsls r3, r3, #6
	ldrb r5, [r0, #0x19]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r5
	orrs r1, r3
	strb r1, [r0, #0x19]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r0, #0x1b]
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x1b]
	adds r4, #0x29
	ldrb r2, [r4]
	lsls r2, r2, #0x1d
	adds r0, #0x29
	lsrs r2, r2, #0x1d
	ldrb r3, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08079C2C: .4byte gLinkEntity

	thumb_func_start sub_08079C30
sub_08079C30: @ 0x08079C30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08079C68 @ =gUnk_03003F80
	ldrb r1, [r0, #0x14]
	adds r7, r0, #0
	cmp r1, #0
	beq _08079C44
	b _08079D40
_08079C44:
	ldr r1, [r7, #0x30]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08079D40
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08079D36
	ldrb r0, [r7, #0x13]
	subs r0, #0xd
	cmp r0, #0x1d
	bhi _08079CE8
	lsls r0, r0, #2
	ldr r1, _08079C6C @ =_08079C70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08079C68: .4byte gUnk_03003F80
_08079C6C: .4byte _08079C70
_08079C70: @ jump table
	.4byte _08079D36 @ case 0
	.4byte _08079D36 @ case 1
	.4byte _08079D36 @ case 2
	.4byte _08079D36 @ case 3
	.4byte _08079CE8 @ case 4
	.4byte _08079CE8 @ case 5
	.4byte _08079CE8 @ case 6
	.4byte _08079D36 @ case 7
	.4byte _08079CE8 @ case 8
	.4byte _08079CE8 @ case 9
	.4byte _08079D36 @ case 10
	.4byte _08079CE8 @ case 11
	.4byte _08079CE8 @ case 12
	.4byte _08079CE8 @ case 13
	.4byte _08079CE8 @ case 14
	.4byte _08079CE8 @ case 15
	.4byte _08079CE8 @ case 16
	.4byte _08079CE8 @ case 17
	.4byte _08079CE8 @ case 18
	.4byte _08079CE8 @ case 19
	.4byte _08079CE8 @ case 20
	.4byte _08079CE8 @ case 21
	.4byte _08079CE8 @ case 22
	.4byte _08079CE8 @ case 23
	.4byte _08079CE8 @ case 24
	.4byte _08079CE8 @ case 25
	.4byte _08079CE8 @ case 26
	.4byte _08079CE8 @ case 27
	.4byte _08079CE8 @ case 28
	.4byte _08079D36 @ case 29
_08079CE8:
	mov r8, r7
	mov r0, r8
	ldrb r4, [r0, #0x12]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_080002B4
	ldr r5, _08079D3C @ =gUnk_08007CAC
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
	mov r0, r8
	ldrb r4, [r0, #0x12]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_080002B4
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
	ldrb r4, [r7, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r6, #0
	movs r2, #0
	bl sub_080002B4
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
_08079D36:
	movs r0, #1
	b _08079D42
	.align 2, 0
_08079D3C: .4byte gUnk_08007CAC
_08079D40:
	movs r0, #0
_08079D42:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08079D48
sub_08079D48: @ 0x08079D48
	push {r4, lr}
	ldr r4, _08079D78 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08079D72
	bl sub_08008B22
	cmp r0, #0
	bne _08079D80
	adds r0, r4, #0
	bl sub_080002B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08079D7C @ =gUnk_0811C268
	bl sub_08007DD6
	cmp r0, #0
	bne _08079D80
_08079D72:
	movs r0, #1
	b _08079D82
	.align 2, 0
_08079D78: .4byte gLinkEntity
_08079D7C: .4byte gUnk_0811C268
_08079D80:
	movs r0, #0
_08079D82:
	pop {r4, pc}

	thumb_func_start sub_08079D84
sub_08079D84: @ 0x08079D84
	push {lr}
	ldr r3, _08079DC0 @ =gLinkEntity
	ldrb r0, [r3, #0xc]
	cmp r0, #1
	beq _08079D92
	cmp r0, #0x18
	bne _08079DBE
_08079D92:
	ldr r2, _08079DC4 @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x9c
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r2, #0xc]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0x7c
	strb r0, [r1]
	bl sub_08077B20
	ldr r0, _08079DC8 @ =0x00000193
	bl sub_080A3268
_08079DBE:
	pop {pc}
	.align 2, 0
_08079DC0: .4byte gLinkEntity
_08079DC4: .4byte gUnk_03003F80
_08079DC8: .4byte 0x00000193

	thumb_func_start sub_08079DCC
sub_08079DCC: @ 0x08079DCC
	push {lr}
	ldr r0, _08079DFC @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08079DF8
	ldr r3, _08079E00 @ =gUnk_03003F80
	adds r1, r3, #0
	adds r1, #0x38
	movs r2, #0
	movs r0, #0xa0
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3a
	strb r2, [r0]
	movs r0, #0xe
	strb r0, [r3, #0xc]
	ldr r0, _08079E04 @ =0x00000193
	bl sub_080A3268
_08079DF8:
	pop {pc}
	.align 2, 0
_08079DFC: .4byte gLinkEntity
_08079E00: .4byte gUnk_03003F80
_08079E04: .4byte 0x00000193

	thumb_func_start sub_08079E08
sub_08079E08: @ 0x08079E08
	push {r4, lr}
	ldr r0, _08079E50 @ =gLinkEntity
	ldrh r2, [r0, #0x24]
	movs r3, #0x24
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	beq _08079E2E
	ldr r0, _08079E54 @ =gUnk_03003F80
	adds r0, #0x80
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _08079E2E
	movs r0, #0x20
	strh r0, [r4, #0x24]
_08079E2E:
	adds r2, r4, #0
	ldrb r1, [r2, #0x15]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08079E40
	ldrb r0, [r2, #0x15]
	bl sub_08079E90
_08079E40:
	adds r0, r4, #0
	bl sub_0800857C
	ldrb r0, [r4, #0x15]
	bl sub_0807A5B8
	pop {r4, pc}
	.align 2, 0
_08079E50: .4byte gLinkEntity
_08079E54: .4byte gUnk_03003F80

	thumb_func_start sub_08079E58
sub_08079E58: @ 0x08079E58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _08079E8C @ =gLinkEntity
	ldrb r1, [r5, #0x15]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08079E70
	adds r0, r4, #0
	bl sub_08079E90
_08079E70:
	adds r0, r5, #0
	bl sub_080085B0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	bl sub_080027EA
	adds r0, r4, #0
	bl sub_0807A5B8
	pop {r4, r5, r6, pc}
	.align 2, 0
_08079E8C: .4byte gLinkEntity

	thumb_func_start sub_08079E90
sub_08079E90: @ 0x08079E90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r1, _08079EBC @ =gLinkEntity
	ldrb r2, [r1, #0x15]
	movs r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _08079ECA
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08079EC0
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #2]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08079EC4
	.align 2, 0
_08079EBC: .4byte gLinkEntity
_08079EC0:
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #2]
_08079EC4:
	ldr r0, [r7, #0x48]
	ldrb r4, [r0, #3]
	b _08079EDE
_08079ECA:
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #4]
	cmp r2, #0
	beq _08079ED6
	ldrb r4, [r0, #5]
	b _08079EDE
_08079ED6:
	ldrb r0, [r0, #5]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08079EDE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_080002CC
	adds r1, r0, #0
	mov r0, sb
	bl sub_08079F48
	cmp r0, #0
	bne _08079F3C
	ldrb r1, [r7, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079F10
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08079F18
_08079F10:
	mov r1, r8
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08079F18:
	ldr r0, _08079F38 @ =gLinkEntity
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl sub_080002CC
	adds r1, r0, #0
	mov r0, sb
	bl sub_08079F48
	cmp r0, #0
	bne _08079F3C
	movs r0, #0
	b _08079F3E
	.align 2, 0
_08079F38: .4byte gLinkEntity
_08079F3C:
	movs r0, #1
_08079F3E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08079F48
sub_08079F48: @ 0x08079F48
	push {lr}
	ldr r3, _08079F60 @ =gUnk_0811C118
	lsrs r2, r0, #2
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, r1
	bne _08079F68
	ldr r0, _08079F64 @ =gLinkEntity
	ldrb r1, [r0, #0x15]
	adds r1, #4
	b _08079F7C
	.align 2, 0
_08079F60: .4byte gUnk_0811C118
_08079F64: .4byte gLinkEntity
_08079F68:
	adds r0, r2, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r1
	beq _08079F76
	movs r0, #0
	b _08079F84
_08079F76:
	ldr r0, _08079F88 @ =gLinkEntity
	ldrb r1, [r0, #0x15]
	subs r1, #4
_08079F7C:
	movs r2, #0x1f
	ands r1, r2
	strb r1, [r0, #0x15]
	movs r0, #1
_08079F84:
	pop {pc}
	.align 2, 0
_08079F88: .4byte gLinkEntity

	thumb_func_start sub_08079F8C
sub_08079F8C: @ 0x08079F8C
	push {lr}
	ldr r2, _08079FB4 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _08079FB8 @ =0x22189B75
	ands r0, r1
	cmp r0, #0
	bne _08079FB0
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079FB0
	ldr r0, _08079FBC @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08079FB0
	cmp r0, #0xb
	bne _08079FC0
_08079FB0:
	movs r0, #0
	b _08079FC2
	.align 2, 0
_08079FB4: .4byte gUnk_03003F80
_08079FB8: .4byte 0x22189B75
_08079FBC: .4byte gLinkEntity
_08079FC0:
	movs r0, #1
_08079FC2:
	pop {pc}

	thumb_func_start sub_08079FC4
sub_08079FC4: @ 0x08079FC4
	push {lr}
	adds r1, r0, #0
	ldr r0, _08079FD0 @ =gLinkEntity
	bl sub_08079FD4
	pop {pc}
	.align 2, 0
_08079FD0: .4byte gLinkEntity

	thumb_func_start sub_08079FD4
sub_08079FD4: @ 0x08079FD4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r3, _0807A008 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r3, [r3, #8]
	subs r0, r0, r3
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r2, r0
	lsls r2, r2, #1
	ldr r6, _0807A00C @ =gUnk_02027EB4
	cmp r1, #2
	bne _0807A004
	ldr r6, _0807A010 @ =gUnk_0200D654
_0807A004:
	movs r4, #0
	b _0807A028
	.align 2, 0
_0807A008: .4byte gUnk_03000BF0
_0807A00C: .4byte gUnk_02027EB4
_0807A010: .4byte gUnk_0200D654
_0807A014:
	cmp r1, #0x23
	beq _0807A028
	cmp r1, #0x27
	beq _0807A028
	ldr r0, _0807A04C @ =gUnk_080082DC
	subs r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807A046
_0807A028:
	adds r4, #1
	adds r0, r5, #0
	mov r1, sp
	bl sub_08004202
	adds r2, r0, #0
	lsrs r0, r2, #1
	adds r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0xe
	bls _0807A046
	cmp r1, #0xf
	bls _0807A028
	cmp r1, #0x1d
	bne _0807A014
_0807A046:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807A04C: .4byte gUnk_080082DC

	thumb_func_start sub_0807A050
sub_0807A050: @ 0x0807A050
	push {lr}
	ldr r3, _0807A088 @ =gUnk_03003F80
	ldrb r2, [r3, #0xf]
	cmp r2, #0
	beq _0807A06A
	ldr r0, _0807A08C @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0807A06A
	subs r0, r2, #1
	strb r0, [r3, #0xf]
_0807A06A:
	movs r0, #0
	bl sub_0807A094
	adds r1, r0, #0
	ldr r0, _0807A088 @ =gUnk_03003F80
	adds r0, #0x83
	ldrb r2, [r0]
	cmp r1, r2
	beq _0807A084
	strb r1, [r0]
	ldr r0, _0807A090 @ =gLinkEntity
	bl sub_0801D2B4
_0807A084:
	pop {pc}
	.align 2, 0
_0807A088: .4byte gUnk_03003F80
_0807A08C: .4byte gUnk_02000050
_0807A090: .4byte gLinkEntity

	thumb_func_start sub_0807A094
sub_0807A094: @ 0x0807A094
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r2, #0x16
	ldr r0, _0807A0AC @ =gUnk_03003F80
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _0807A0B0
	movs r2, #0x1b
	cmp r0, #0x78
	bls _0807A104
	movs r2, #0x1a
	b _0807A104
	.align 2, 0
_0807A0AC: .4byte gUnk_03003F80
_0807A0B0:
	ldr r0, _0807A0F0 @ =gUnk_02002A40
	adds r1, r0, #0
	adds r1, #0xb2
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	beq _0807A104
	movs r4, #1
	cmp r3, #0
	bne _0807A0D6
	adds r0, #0xc4
	ldrh r1, [r0]
	cmp r1, #0xb3
	bhi _0807A0D6
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807A0D6
	movs r4, #0
_0807A0D6:
	cmp r4, #0
	beq _0807A104
	adds r0, r5, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _0807A102
	cmp r0, #0x30
	bgt _0807A0F4
	cmp r0, #0x2f
	beq _0807A0FA
	b _0807A102
	.align 2, 0
_0807A0F0: .4byte gUnk_02002A40
_0807A0F4:
	cmp r0, #0x31
	beq _0807A0FE
	b _0807A102
_0807A0FA:
	movs r2, #0x18
	b _0807A104
_0807A0FE:
	movs r2, #0x17
	b _0807A104
_0807A102:
	movs r2, #0x19
_0807A104:
	adds r0, r2, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0807A108
sub_0807A108: @ 0x0807A108
	push {lr}
	ldr r1, _0807A148 @ =gUnk_03004040
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r2, _0807A14C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _0807A150 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _0807A154 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	bne _0807A130
	adds r0, r2, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #4
	beq _0807A144
_0807A130:
	adds r1, r2, #0
	adds r1, #0xa0
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807A144
	movs r0, #1
	strb r0, [r1]
_0807A144:
	pop {pc}
	.align 2, 0
_0807A148: .4byte gUnk_03004040
_0807A14C: .4byte gUnk_03003F80
_0807A150: .4byte 0xFFBFFFFF
_0807A154: .4byte gLinkEntity

	thumb_func_start sub_0807A158
sub_0807A158: @ 0x0807A158
	push {r4, lr}
	ldr r4, _0807A178 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_0805449C
	cmp r0, #0
	bne _0807A17C
	adds r0, r4, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	bl sub_0805449C
	b _0807A17E
	.align 2, 0
_0807A178: .4byte gUnk_02002A40
_0807A17C:
	movs r0, #1
_0807A17E:
	pop {r4, pc}

	thumb_func_start sub_0807A180
sub_0807A180: @ 0x0807A180
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x88
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r3, _0807A1B4 @ =0xFFFC0000
	mov r1, sp
	movs r2, #0
	bl PositionRelative
	mov r1, sp
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	mov r0, sp
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_08003FDE
	add sp, #0x88
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807A1B4: .4byte 0xFFFC0000

	thumb_func_start sub_0807A1B8
sub_0807A1B8: @ 0x0807A1B8
	push {r4, lr}
	ldr r4, _0807A1DC @ =gLinkEntity
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0807A1E8
	ldr r1, _0807A1E0 @ =gUnk_03003F80
	strb r0, [r1, #0x12]
	ldr r2, _0807A1E4 @ =gUnk_0811C120
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0807A1DC: .4byte gLinkEntity
_0807A1E0: .4byte gUnk_03003F80
_0807A1E4: .4byte gUnk_0811C120

	thumb_func_start sub_0807A1E8
sub_0807A1E8: @ 0x0807A1E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	adds r0, r0, r6
	ldr r2, _0807A288 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r1, r0, r1
	lsrs r4, r1, #4
	movs r3, #0x3f
	ands r4, r3
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	add r1, r8
	ldrh r2, [r2, #8]
	subs r2, r1, r2
	asrs r2, r2, #4
	ands r2, r3
	lsls r2, r2, #6
	orrs r4, r2
	ldr r2, _0807A28C @ =gLinkEntity
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_080002A4
	adds r2, r0, #0
	ldr r1, _0807A290 @ =gUnk_03003F80
	ldrh r0, [r1, #0x24]
	cmp r2, r0
	beq _0807A23A
	adds r3, r1, #0
	adds r3, #0x37
	movs r0, #0
	strb r0, [r3]
	ldrh r7, [r1, #0x24]
	cmp r2, r7
	bne _0807A242
_0807A23A:
	adds r3, r1, #0
	ldrh r0, [r3, #0x22]
	cmp r4, r0
	beq _0807A24E
_0807A242:
	ldr r0, _0807A290 @ =gUnk_03003F80
	movs r1, #0
	strh r4, [r0, #0x22]
	strh r2, [r0, #0x24]
	strb r1, [r0, #0x11]
	adds r3, r0, #0
_0807A24E:
	adds r2, r3, #0
	ldrb r1, [r2, #0x11]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0807A25C
	adds r0, r1, #1
	strb r0, [r2, #0x11]
_0807A25C:
	adds r2, #0x37
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0807A26A
	adds r0, r1, #1
	strb r0, [r2]
_0807A26A:
	ldrb r0, [r3, #0x12]
	strb r0, [r3, #0x13]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080002B4
	adds r2, r0, #0
	ldr r1, _0807A294 @ =gUnk_08007CAC
	bl sub_08007DD6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807A288: .4byte gUnk_03000BF0
_0807A28C: .4byte gLinkEntity
_0807A290: .4byte gUnk_03003F80
_0807A294: .4byte gUnk_08007CAC

	thumb_func_start sub_0807A298
sub_0807A298: @ 0x0807A298
	movs r1, #0
	strb r1, [r0, #0xb]
	ldrb r1, [r0, #0x18]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldr r2, _0807A2B4 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0807A2B4: .4byte gUnk_03003F80

	thumb_func_start sub_0807A2B8
sub_0807A2B8: @ 0x0807A2B8
	push {lr}
	bl sub_08008B22
	cmp r0, #0
	beq _0807A2C6
	movs r0, #1
	b _0807A2EC
_0807A2C6:
	ldr r0, _0807A2F0 @ =gUnk_03003F80
	ldrb r1, [r0, #2]
	movs r0, #0xc8
	ands r0, r1
	cmp r0, #0
	bne _0807A2EA
	ldr r1, _0807A2F4 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807A2EA
	adds r0, r1, #0
	movs r1, #0x44
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
_0807A2EA:
	movs r0, #0
_0807A2EC:
	pop {pc}
	.align 2, 0
_0807A2F0: .4byte gUnk_03003F80
_0807A2F4: .4byte gLinkEntity

	thumb_func_start sub_0807A2F8
sub_0807A2F8: @ 0x0807A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807A364 @ =gUnk_03000BF0
	mov r8, r0
	ldrb r0, [r0, #4]
	cmp r0, #8
	bne _0807A312
	b _0807A4F2
_0807A312:
	bl sub_08079778
	orrs r0, r4
	cmp r0, #0
	bne _0807A31E
	b _0807A4F2
_0807A31E:
	ldr r7, _0807A368 @ =gLinkEntity
	ldrb r1, [r7, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807A36C
	movs r1, #0x2e
	ldrsh r2, [r7, r1]
	mov r6, r8
	ldrh r0, [r6, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #5]
	adds r0, r1, r5
	ldrh r4, [r6, #8]
	subs r0, r0, r4
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r2
	lsls r7, r0, #1
	subs r1, r1, r5
	subs r1, r1, r4
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	lsls r6, r2, #1
	b _0807A3A2
	.align 2, 0
_0807A364: .4byte gUnk_03000BF0
_0807A368: .4byte gLinkEntity
_0807A36C:
	movs r1, #0x2e
	ldrsh r3, [r7, r1]
	ldr r0, [r7, #0x48]
	ldrb r6, [r0, #2]
	adds r1, r3, r6
	mov r2, r8
	ldrh r5, [r2, #6]
	subs r1, r1, r5
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	mov r7, r8
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	lsls r7, r1, #1
	subs r3, r3, r6
	subs r3, r3, r5
	asrs r3, r3, #4
	ands r3, r4
	orrs r3, r0
	lsls r6, r3, #1
_0807A3A2:
	movs r0, #0
	mov sb, r0
	ldr r1, _0807A3F4 @ =gLinkEntity
	mov sl, r1
_0807A3AA:
	movs r2, #0
	mov r8, r2
	mov r0, sl
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
	lsrs r4, r7, #1
	adds r0, r4, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0807A3FC
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sl
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r2, _0807A3F8 @ =gUnk_0811C1D8
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_08007DD6
	cmp r0, #0
	beq _0807A468
	b _0807A400
	.align 2, 0
_0807A3F4: .4byte gLinkEntity
_0807A3F8: .4byte gUnk_0811C1D8
_0807A3FC:
	movs r0, #1
	mov r8, r0
_0807A400:
	ldr r5, _0807A444 @ =gLinkEntity
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
	lsrs r4, r6, #1
	adds r0, r4, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0807A44C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r2, _0807A448 @ =gUnk_0811C1D8
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_08007DD6
	cmp r0, #0
	beq _0807A468
	b _0807A450
	.align 2, 0
_0807A444: .4byte gLinkEntity
_0807A448: .4byte gUnk_0811C1D8
_0807A44C:
	movs r0, #1
	add r8, r0
_0807A450:
	mov r1, r8
	cmp r1, #2
	bne _0807A45E
	mov r2, sb
	cmp r2, #0
	bne _0807A46E
	b _0807A4F2
_0807A45E:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #1
	bls _0807A3AA
_0807A468:
	mov r2, sb
	cmp r2, #0
	beq _0807A4F2
_0807A46E:
	bl sub_08052660
	cmp r0, #0
	beq _0807A4B0
	ldr r4, _0807A4AC @ =gLinkEntity
	adds r0, r4, #0
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
	lsrs r0, r7, #1
	movs r1, #2
	bl sub_080002E0
	cmp r0, #0
	bne _0807A4F2
	adds r0, r4, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
	lsrs r0, r6, #1
	movs r1, #2
_0807A4A0:
	bl sub_080002E0
	cmp r0, #0
	beq _0807A4EC
	b _0807A4F2
	.align 2, 0
_0807A4AC: .4byte gLinkEntity
_0807A4B0:
	mov r0, sb
	cmp r0, #2
	bne _0807A4C2
	ldr r0, _0807A4E8 @ =gLinkEntity
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
_0807A4C2:
	lsrs r0, r7, #1
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	bne _0807A4F2
	mov r1, sb
	cmp r1, #2
	bne _0807A4E0
	ldr r0, _0807A4E8 @ =gLinkEntity
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
_0807A4E0:
	lsrs r0, r6, #1
	movs r1, #1
	b _0807A4A0
	.align 2, 0
_0807A4E8: .4byte gLinkEntity
_0807A4EC:
	mov r0, sb
	adds r0, #1
	b _0807A4F4
_0807A4F2:
	movs r0, #0
_0807A4F4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807A500
sub_0807A500: @ 0x0807A500
	push {r4, r5, r6, lr}
	ldr r6, _0807A518 @ =gLinkEntity
	ldrb r0, [r6, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _0807A574
	cmp r0, #1
	bgt _0807A51C
	cmp r0, #0
	beq _0807A526
	b _0807A5B4
	.align 2, 0
_0807A518: .4byte gLinkEntity
_0807A51C:
	cmp r0, #2
	beq _0807A554
	cmp r0, #3
	beq _0807A580
	b _0807A5B4
_0807A526:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r5, _0807A550 @ =gUnk_03000BF0
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r4, #0x3f
	ands r0, r4
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r3, [r6, #0x48]
	ldrb r2, [r3, #5]
	subs r1, r1, r2
	movs r2, #1
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	b _0807A5AA
	.align 2, 0
_0807A550: .4byte gUnk_03000BF0
_0807A554:
	movs r5, #0x2e
	ldrsh r0, [r6, r5]
	ldr r4, _0807A570 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	ldr r2, [r6, #0x48]
	movs r5, #0x32
	ldrsh r1, [r6, r5]
	ldrb r5, [r2, #5]
	adds r1, r1, r5
	b _0807A59A
	.align 2, 0
_0807A570: .4byte gUnk_03000BF0
_0807A574:
	ldr r2, [r6, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldrb r5, [r2, #2]
	adds r0, r0, r5
	b _0807A58A
_0807A580:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x48]
	ldrb r1, [r2, #2]
	subs r0, r0, r1
_0807A58A:
	ldr r4, _0807A5B0 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r6, r5]
_0807A59A:
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
_0807A5AA:
	lsls r1, r1, #6
	orrs r0, r1
	b _0807A5B6
	.align 2, 0
_0807A5B0: .4byte gUnk_03000BF0
_0807A5B4:
	movs r0, #0
_0807A5B6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0807A5B8
sub_0807A5B8: @ 0x0807A5B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r2, _0807A5F8 @ =gUnk_03003F80
	ldrb r3, [r2, #2]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	beq _0807A5D2
	b _0807A736
_0807A5D2:
	ldr r1, [r2, #0x30]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807A5DE
	b _0807A736
_0807A5DE:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807A5EA
	b _0807A736
_0807A5EA:
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0807A600
	ldr r7, _0807A5FC @ =gUnk_0800833C
	b _0807A63A
	.align 2, 0
_0807A5F8: .4byte gUnk_03003F80
_0807A5FC: .4byte gUnk_0800833C
_0807A600:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _0807A60E
	cmp r3, #0
	beq _0807A618
_0807A60E:
	ldr r7, _0807A614 @ =gUnk_0800845C
	b _0807A63A
	.align 2, 0
_0807A614: .4byte gUnk_0800845C
_0807A618:
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _0807A624
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	beq _0807A62C
_0807A624:
	ldr r7, _0807A628 @ =gUnk_080084BC
	b _0807A63A
	.align 2, 0
_0807A628: .4byte gUnk_080084BC
_0807A62C:
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	ldr r7, _0807A740 @ =gUnk_080082DC
	cmp r0, #0
	beq _0807A63A
	ldr r7, _0807A744 @ =gUnk_0800851C
_0807A63A:
	mov r0, sb
	cmp r0, #0
	beq _0807A6B8
	cmp r0, #0x10
	beq _0807A6B8
	ldr r6, _0807A748 @ =gLinkEntity
	ldr r2, [r6, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldrb r3, [r2, #2]
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, _0807A74C @ =gUnk_03000BF0
	mov r8, r1
	ldrh r1, [r1, #6]
	subs r5, r0, r1
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #8]
	subs r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A688
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_0807A750
_0807A688:
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldr r2, [r6, #0x48]
	ldrb r0, [r2, #2]
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #6]
	subs r5, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A6B8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #3
	bl sub_0807A750
_0807A6B8:
	mov r3, sb
	cmp r3, #8
	beq _0807A736
	cmp r3, #0x18
	beq _0807A736
	ldr r6, _0807A748 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, [r6, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _0807A74C @ =gUnk_03000BF0
	mov r8, r3
	ldrh r0, [r3, #6]
	subs r5, r1, r0
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrb r3, [r2, #5]
	adds r0, r0, r3
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #8]
	subs r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A706
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #2
	bl sub_0807A750
_0807A706:
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	ldr r2, [r6, #0x48]
	ldrb r0, [r2, #5]
	subs r1, r1, r0
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	subs r4, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A736
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0807A750
_0807A736:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807A740: .4byte gUnk_080082DC
_0807A744: .4byte gUnk_0800851C
_0807A748: .4byte gLinkEntity
_0807A74C: .4byte gUnk_03000BF0

	thumb_func_start sub_0807A750
sub_0807A750: @ 0x0807A750
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0807A76C
	movs r4, #0xf
	ands r4, r6
	b _0807A770
_0807A76C:
	movs r4, #0xf
	ands r4, r7
_0807A770:
	cmp r4, #0
	bne _0807A776
	b _0807A88E
_0807A776:
	cmp r4, #0xf
	bne _0807A77C
	b _0807A88E
_0807A77C:
	lsrs r0, r7, #4
	movs r2, #0x3f
	ands r0, r2
	lsrs r1, r6, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807A7A8 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r1, r0, #0
	cmp r1, #0xf
	bls _0807A7AE
	cmp r1, #0xff
	beq _0807A7AC
	mov r2, r8
	adds r0, r1, r2
	subs r0, #0x10
	ldrb r1, [r0]
	b _0807A7AE
	.align 2, 0
_0807A7A8: .4byte gLinkEntity
_0807A7AC:
	movs r1, #0xf
_0807A7AE:
	ldr r0, _0807A7D8 @ =gUnk_0800823C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0807A824
	movs r0, #0xf
	ands r0, r7
	movs r2, #0x80
	lsls r2, r2, #8
	asrs r2, r0
	cmp r5, #0
	bne _0807A7F4
	ldr r3, _0807A7DC @ =gLinkEntity
	cmp r4, #0xe
	bgt _0807A7F0
	lsls r0, r4, #1
	adds r1, r0, r1
	b _0807A7E8
	.align 2, 0
_0807A7D8: .4byte gUnk_0800823C
_0807A7DC: .4byte gLinkEntity
_0807A7E0:
	adds r1, #2
	adds r4, #1
	cmp r4, #0xe
	bgt _0807A7F0
_0807A7E8:
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0807A7E0
_0807A7F0:
	subs r4, #1
	b _0807A816
_0807A7F4:
	ldr r3, _0807A800 @ =gLinkEntity
	cmp r4, #0
	ble _0807A814
	lsls r0, r4, #1
	adds r1, r0, r1
	b _0807A80C
	.align 2, 0
_0807A800: .4byte gLinkEntity
_0807A804:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	ble _0807A814
_0807A80C:
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0807A804
_0807A814:
	adds r4, #1
_0807A816:
	movs r0, #0xf
	ands r0, r6
	subs r0, r4, r0
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	b _0807A88E
_0807A824:
	movs r3, #0xf
	ands r6, r3
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r5, #1
	bne _0807A85C
	subs r0, r3, r4
	lsrs r2, r0
	ldr r3, _0807A858 @ =gLinkEntity
	cmp r4, #0
	ble _0807A854
	ands r5, r2
	cmp r5, #0
	beq _0807A854
	movs r1, #1
_0807A844:
	lsrs r2, r2, #1
	subs r4, #1
	cmp r4, #0
	ble _0807A854
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807A844
_0807A854:
	adds r4, #1
	b _0807A882
	.align 2, 0
_0807A858: .4byte gLinkEntity
_0807A85C:
	lsls r2, r4
	ldr r3, _0807A86C @ =gLinkEntity
	cmp r4, #0xe
	bgt _0807A880
	movs r1, #0x80
	lsls r1, r1, #8
	b _0807A878
	.align 2, 0
_0807A86C: .4byte gLinkEntity
_0807A870:
	lsls r2, r2, #1
	adds r4, #1
	cmp r4, #0xe
	bgt _0807A880
_0807A878:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807A870
_0807A880:
	subs r4, #1
_0807A882:
	movs r0, #0xf
	ands r0, r7
	subs r0, r4, r0
	ldrh r2, [r3, #0x2e]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
_0807A88E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807A894
sub_0807A894: @ 0x0807A894
	push {lr}
	ldrb r1, [r0, #0x15]
	cmp r1, #8
	beq _0807A8BA
	cmp r1, #8
	bgt _0807A8A6
	cmp r1, #0
	beq _0807A8B0
	b _0807A8C8
_0807A8A6:
	cmp r1, #0x10
	beq _0807A8B6
	cmp r1, #0x18
	beq _0807A8C0
	b _0807A8C8
_0807A8B0:
	movs r2, #8
	rsbs r2, r2, #0
	b _0807A8CA
_0807A8B6:
	movs r2, #5
	b _0807A8CA
_0807A8BA:
	movs r2, #0
	movs r1, #8
	b _0807A8CC
_0807A8C0:
	movs r2, #0
	movs r1, #8
	rsbs r1, r1, #0
	b _0807A8CC
_0807A8C8:
	movs r2, #0
_0807A8CA:
	movs r1, #0
_0807A8CC:
	bl sub_080002B4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_505
nullsub_505: @ 0x0807A8D4
	bx lr
	.align 2, 0

	thumb_func_start sub_0807A8D8
sub_0807A8D8: @ 0x0807A8D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _0807AA5C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807A8F0
	b _0807A9F6
_0807A8F0:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _0807AA60 @ =gUnk_03000BF0
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	adds r2, #1
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807AA64 @ =gLinkEntity
	adds r1, #0x38
	mov sb, r1
	ldrb r1, [r1]
	bl sub_080002EC
	adds r4, r0, #0
	movs r0, #0x20
	mov r8, r0
	ands r4, r0
	cmp r4, #0
	beq _0807A94E
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	adds r2, #1
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A94E:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	subs r1, #2
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r2, sb
	ldrb r1, [r2]
	bl sub_080002EC
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _0807A9A2
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	subs r0, #2
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A9A2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	adds r1, #2
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r2, sb
	ldrb r1, [r2]
	bl sub_080002EC
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _0807A9F6
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	adds r0, #2
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A9F6:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _0807AA60 @ =gUnk_03000BF0
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807AA64 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002EC
	adds r4, r0, #0
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0807AA4C
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807AA4C:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0807AA68
	adds r0, r5, #0
	bl sub_0807AABC
	b _0807AA76
	.align 2, 0
_0807AA5C: .4byte gUnk_03003F80
_0807AA60: .4byte gUnk_03000BF0
_0807AA64: .4byte gLinkEntity
_0807AA68:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0807AA76
	adds r0, r5, #0
	bl sub_0807AA80
_0807AA76:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807AA80
sub_0807AA80: @ 0x0807AA80
	push {lr}
	adds r3, r0, #0
	ldr r0, _0807AAB8 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807AAB6
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #2
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AAB6
	ldrb r2, [r3, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r0, [r3, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x19]
_0807AAB6:
	pop {pc}
	.align 2, 0
_0807AAB8: .4byte gUnk_03003F80

	thumb_func_start sub_0807AABC
sub_0807AABC: @ 0x0807AABC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0807AAF4 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807AAF2
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AAF2
	ldrb r2, [r3, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r0, [r3, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x19]
_0807AAF2:
	pop {pc}
	.align 2, 0
_0807AAF4: .4byte gUnk_03003F80

	thumb_func_start sub_0807AAF8
sub_0807AAF8: @ 0x0807AAF8
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AB3C
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	orrs r2, r0
	movs r3, #0
	ldr r0, _0807AB40 @ =gUnk_03003F80
	ldr r1, [r0, #0x40]
	adds r4, r0, #0
	cmp r1, r2
	beq _0807AB32
	adds r1, r4, #0
	adds r1, #0x40
_0807AB20:
	ldr r0, [r1]
	stm r1!, {r2}
	adds r2, r0, #0
	adds r3, #1
	cmp r3, #0xe
	bhi _0807AB32
	ldr r0, [r1]
	cmp r0, r2
	bne _0807AB20
_0807AB32:
	lsls r0, r3, #2
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r0, r1
	str r2, [r0]
_0807AB3C:
	pop {r4, pc}
	.align 2, 0
_0807AB40: .4byte gUnk_03003F80

	thumb_func_start sub_0807AB44
sub_0807AB44: @ 0x0807AB44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	ldr r2, _0807ABF0 @ =gUnk_03000BF0
	mov sb, r2
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	mov sl, r3
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r6, r5]
	add r1, r8
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	movs r1, #0xb
	bl sub_0806FC50
	adds r5, r0, #0
	cmp r5, #0
	beq _0807AC44
	ldrh r0, [r5, #6]
	cmp r0, #0x76
	bne _0807ABF4
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0807AC44
	lsls r2, r7, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_08004168
	ldrh r0, [r5, #6]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	mov r3, sb
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r5, sl
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r5, sb
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	b _0807AC44
	.align 2, 0
_0807ABF0: .4byte gUnk_03000BF0
_0807ABF4:
	movs r0, #0x2a
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0807AC44
	lsls r2, r7, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	str r5, [r4, #0x54]
	ldr r0, _0807AC50 @ =0x0000404F
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	mov r3, sb
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r5, sl
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r5, sb
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0807AC44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807AC50: .4byte 0x0000404F

	thumb_func_start sub_0807AC54
sub_0807AC54: @ 0x0807AC54
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807AC74 @ =gUnk_03003F80
	ldrb r1, [r0, #0x11]
	adds r3, r0, #0
	cmp r1, #0
	beq _0807ACC6
	ldrb r0, [r3, #0x12]
	cmp r0, #0x2a
	beq _0807ACA8
	cmp r0, #0x2a
	bgt _0807AC78
	cmp r0, #0x1e
	beq _0807AC82
	b _0807ACC6
	.align 2, 0
_0807AC74: .4byte gUnk_03003F80
_0807AC78:
	cmp r0, #0x2b
	beq _0807AC90
	cmp r0, #0x2c
	beq _0807ACB6
	b _0807ACC6
_0807AC82:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
_0807AC90:
	movs r0, #0
	movs r1, #0x1d
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	strh r0, [r2, #0x30]
	ldr r0, _0807ACA4 @ =0x000002CF
	strh r0, [r3, #8]
	movs r0, #1
	b _0807ACC8
	.align 2, 0
_0807ACA4: .4byte 0x000002CF
_0807ACA8:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
_0807ACB6:
	movs r0, #0
	movs r1, #0x1d
	strb r1, [r2, #0xc]
	movs r1, #1
	strb r1, [r2, #0xd]
	strh r0, [r2, #0x30]
	movs r0, #1
	b _0807ACC8
_0807ACC6:
	movs r0, #0
_0807ACC8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807ACCC
sub_0807ACCC: @ 0x0807ACCC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x72
	bl GetInventoryValue
	movs r1, #0xc0
	cmp r0, #1
	bne _0807ACF4
	adds r1, #0x40
_0807ACF4:
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0807AD18
	strh r1, [r4, #0x24]
	ldr r0, _0807AD14 @ =gUnk_03003F80
	ldrb r1, [r0, #0xd]
	strb r1, [r4, #0x15]
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0807ADB4
	b _0807AD1E
	.align 2, 0
_0807AD14: .4byte gUnk_03003F80
_0807AD18:
	ldrh r0, [r4, #0x24]
	subs r0, #4
	strh r0, [r4, #0x24]
_0807AD1E:
	ldr r2, _0807AD3C @ =gUnk_03003F80
	adds r1, r2, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807AD40
	adds r0, r4, #0
	bl sub_0807ADB8
	cmp r0, #0
	bne _0807AD74
	adds r0, r4, #0
	bl sub_0807AE20
	b _0807AD74
	.align 2, 0
_0807AD3C: .4byte gUnk_03003F80
_0807AD40:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807AD52
	adds r0, r4, #0
	bl sub_0807ADB8
	b _0807AD74
_0807AD52:
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807ADA0 @ =0x00000163
	bl sub_080A3268
_0807AD74:
	ldr r0, _0807ADA4 @ =gUnk_03003F80
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807ADA8
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	b _0807ADB2
	.align 2, 0
_0807ADA0: .4byte 0x00000163
_0807ADA4: .4byte gUnk_03003F80
_0807ADA8:
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_0807ADB2:
	strb r0, [r2]
_0807ADB4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807ADB8
sub_0807ADB8: @ 0x0807ADB8
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _0807ADF4 @ =gUnk_03003F80
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807AE1C
	movs r0, #0x26
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r1, #0x80
	eors r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0807ADF8
	adds r1, r3, #0
	adds r1, #0x89
	movs r0, #0x78
	strb r0, [r1]
	b _0807AE0E
	.align 2, 0
_0807ADF4: .4byte gUnk_03003F80
_0807ADF8:
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x89
	strb r4, [r0]
_0807AE0E:
	ldr r0, _0807AE18 @ =0x00000163
	bl sub_080A3268
	movs r0, #1
	b _0807AE1E
	.align 2, 0
_0807AE18: .4byte 0x00000163
_0807AE1C:
	movs r0, #0
_0807AE1E:
	pop {r4, pc}

	thumb_func_start sub_0807AE20
sub_0807AE20: @ 0x0807AE20
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0x17
	bne _0807AE32
	ldr r0, _0807AE58 @ =gUnk_03003F80
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0807AE74
_0807AE32:
	ldr r0, _0807AE5C @ =gUnk_03000BF0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807AE74
	ldr r0, _0807AE58 @ =gUnk_03003F80
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807AE74
	movs r0, #0x72
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AE60
	movs r0, #0xe0
	lsls r0, r0, #1
	b _0807AE64
	.align 2, 0
_0807AE58: .4byte gUnk_03003F80
_0807AE5C: .4byte gUnk_03000BF0
_0807AE60:
	movs r0, #0xc0
	lsls r0, r0, #1
_0807AE64:
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08079520
	movs r0, #0xb1
	lsls r0, r0, #1
	bl sub_080A3268
_0807AE74:
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _0807AEA8
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #5
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl sub_080A3268
_0807AEA8:
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807AECC
	ldr r0, _0807AEC8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807AEDE
	adds r0, r4, #0
	movs r1, #4
	bl sub_080A2A84
	b _0807AEDE
	.align 2, 0
_0807AEC8: .4byte gUnk_030010A0
_0807AECC:
	ldr r0, _0807AEE0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0807AEDE
	adds r0, r4, #0
	bl sub_080A2A64
_0807AEDE:
	pop {r4, pc}
	.align 2, 0
_0807AEE0: .4byte gUnk_030010A0

	thumb_func_start sub_0807AEE4
sub_0807AEE4: @ 0x0807AEE4
	push {r4, lr}
	ldr r0, _0807AFE4 @ =gUnk_03003F80
	adds r4, r0, #0
	adds r4, #0xac
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x48
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF02
	ldrh r0, [r4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4]
_0807AF02:
	movs r0, #0x49
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF14
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
_0807AF14:
	movs r0, #0x4a
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF26
	ldrh r0, [r4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4]
_0807AF26:
	movs r0, #0x4b
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF38
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
_0807AF38:
	movs r0, #0x4c
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF4A
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4]
_0807AF4A:
	movs r0, #0x4d
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF5C
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
_0807AF5C:
	movs r0, #0x4e
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF6E
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
_0807AF6E:
	movs r0, #0x4f
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF80
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
_0807AF80:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF96
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
_0807AF96:
	movs r0, #0x73
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AFAC
	ldrh r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
_0807AFAC:
	movs r0, #0x74
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AFC6
	ldr r0, _0807AFE4 @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
_0807AFC6:
	movs r0, #0x75
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AFE0
	ldr r0, _0807AFE4 @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
_0807AFE0:
	pop {r4, pc}
	.align 2, 0
_0807AFE4: .4byte gUnk_03003F80

	thumb_func_start sub_0807AFE8
sub_0807AFE8: @ 0x0807AFE8
	push {lr}
	bl sub_08077B20
	ldr r0, _0807B00C @ =gLinkEntity
	movs r1, #0x43
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0807B004
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
_0807B004:
	ldr r1, _0807B010 @ =gUnk_03003F80
	movs r0, #9
	strb r0, [r1, #0xc]
	pop {pc}
	.align 2, 0
_0807B00C: .4byte gLinkEntity
_0807B010: .4byte gUnk_03003F80

	thumb_func_start sub_0807B014
sub_0807B014: @ 0x0807B014
	push {lr}
	ldr r2, _0807B03C @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807B044
	ldr r0, _0807B040 @ =gUnk_02002A40
	adds r1, r0, #0
	adds r1, #0xaa
	adds r0, #0xab
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0807B044
	movs r0, #0xf
	b _0807B066
	.align 2, 0
_0807B03C: .4byte gUnk_03003F80
_0807B040: .4byte gUnk_02002A40
_0807B044:
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B064
	ldr r0, _0807B060 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0807B064
	movs r0, #0x16
	b _0807B066
	.align 2, 0
_0807B060: .4byte gUnk_02002A40
_0807B064:
	movs r0, #0
_0807B066:
	pop {pc}

	thumb_func_start sub_0807B068
sub_0807B068: @ 0x0807B068
	push {lr}
	ldr r2, _0807B090 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1e]
	ldrb r0, [r2, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0807B0C2
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	cmp r1, #0
	beq _0807B0A4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B098
	ldr r0, _0807B094 @ =0x00000C1C
	strh r0, [r2, #8]
	b _0807B0C2
	.align 2, 0
_0807B090: .4byte gUnk_03003F80
_0807B094: .4byte 0x00000C1C
_0807B098:
	ldr r0, _0807B0A0 @ =0x00000C0C
	strh r0, [r2, #8]
	b _0807B0C2
	.align 2, 0
_0807B0A0: .4byte 0x00000C0C
_0807B0A4:
	ldrb r1, [r2, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B0B8
	ldrh r0, [r2, #8]
	ldr r1, _0807B0B4 @ =0x00000C18
	b _0807B0BC
	.align 2, 0
_0807B0B4: .4byte 0x00000C18
_0807B0B8:
	ldrh r0, [r2, #8]
	ldr r1, _0807B0C4 @ =0x00000C04
_0807B0BC:
	cmp r0, r1
	beq _0807B0C2
	strh r1, [r2, #8]
_0807B0C2:
	pop {pc}
	.align 2, 0
_0807B0C4: .4byte 0x00000C04

	thumb_func_start sub_0807B0C8
sub_0807B0C8: @ 0x0807B0C8
	push {r4, lr}
	ldr r4, _0807B0F8 @ =gLinkEntity
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_0806FEBC
	pop {r4, pc}
	.align 2, 0
_0807B0F8: .4byte gLinkEntity

	thumb_func_start sub_0807B0FC
sub_0807B0FC: @ 0x0807B0FC
	push {lr}
	ldr r2, _0807B110 @ =gUnk_0811C27C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807B110: .4byte gUnk_0811C27C

	thumb_func_start sub_0807B114
sub_0807B114: @ 0x0807B114
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _0807B124 @ =gUnk_03003F80
	adds r1, #0x38
	ldrb r1, [r1]
	adds r0, #0x6c
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807B124: .4byte gUnk_03003F80

	thumb_func_start sub_0807B128
sub_0807B128: @ 0x0807B128
	push {lr}
	ldr r2, _0807B140 @ =gUnk_0811C284
	adds r1, r0, #0
	adds r1, #0x6c
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807B140: .4byte gUnk_0811C284

	thumb_func_start sub_0807B144
sub_0807B144: @ 0x0807B144
	push {lr}
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	strb r1, [r0, #0x15]
	movs r1, #0xa0
	strh r1, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #0x20]
	ldr r1, _0807B170 @ =gUnk_03003F80
	movs r0, #0x81
	strb r0, [r1, #2]
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_0807B170: .4byte gUnk_03003F80

	thumb_func_start nullsub_506
nullsub_506: @ 0x0807B174
	bx lr
	.align 2, 0

	thumb_func_start sub_0807B178
sub_0807B178: @ 0x0807B178
	push {lr}
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r2, #0
	movs r1, #0x10
	strb r1, [r0, #0x15]
	strh r2, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #0x20]
	ldr r1, _0807B1A4 @ =gUnk_03003F80
	movs r0, #0x81
	strb r0, [r1, #2]
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_0807B1A4: .4byte gUnk_03003F80

	thumb_func_start sub_0807B1A8
sub_0807B1A8: @ 0x0807B1A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807B1D4 @ =gUnk_0811C298
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0807B1D8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0807B1D0
	adds r0, r4, #0
	bl sub_080A2B80
_0807B1D0:
	pop {r4, pc}
	.align 2, 0
_0807B1D4: .4byte gUnk_0811C298
_0807B1D8: .4byte gUnk_030010A0

	thumb_func_start sub_0807B1DC
sub_0807B1DC: @ 0x0807B1DC
	adds r2, r0, #0
	adds r2, #0x6e
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_0807B1EC
sub_0807B1EC: @ 0x0807B1EC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B212
	adds r1, r2, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x20]
	ldr r1, _0807B214 @ =gUnk_03003F80
	ldr r0, _0807B218 @ =0x000002C2
	strh r0, [r1, #8]
_0807B212:
	pop {pc}
	.align 2, 0
_0807B214: .4byte gUnk_03003F80
_0807B218: .4byte 0x000002C2

	thumb_func_start sub_0807B21C
sub_0807B21C: @ 0x0807B21C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0807B236
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08003FC4
	b _0807B240
_0807B236:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08003FC4
_0807B240:
	ldr r1, [r4, #0x20]
	ldr r0, _0807B260 @ =0xFFFF8000
	cmp r1, r0
	bge _0807B25E
	movs r1, #0
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x68]
_0807B25E:
	pop {r4, pc}
	.align 2, 0
_0807B260: .4byte 0xFFFF8000

	thumb_func_start sub_0807B264
sub_0807B264: @ 0x0807B264
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	adds r0, #2
	strb r0, [r4, #0xf]
	ldr r1, _0807B2B4 @ =gUnk_080C9160
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #7
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B2B0
	movs r0, #0x50
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl sub_080A3268
_0807B2B0:
	pop {r4, pc}
	.align 2, 0
_0807B2B4: .4byte gUnk_080C9160

	thumb_func_start sub_0807B2B8
sub_0807B2B8: @ 0x0807B2B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807B2F0 @ =0xFFFFE000
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0807B2EC
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B2EC
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B2F4 @ =gUnk_0813AD88
	adds r0, r0, r1
	bl sub_08080840
_0807B2EC:
	pop {r4, pc}
	.align 2, 0
_0807B2F0: .4byte 0xFFFFE000
_0807B2F4: .4byte gUnk_0813AD88

	thumb_func_start sub_0807B2F8
sub_0807B2F8: @ 0x0807B2F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807B310
	adds r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0809D738
_0807B310:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807B314
sub_0807B314: @ 0x0807B314
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _0807B3A0 @ =0x000007FF
	cmp r5, r0
	bhi _0807B410
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801AF8C
	adds r0, r6, #0
	bl sub_0808094C
	adds r2, r0, #0
	lsls r1, r5, #1
	ldr r3, _0807B3A4 @ =0x00006004
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r0
	lsls r1, r4, #1
	adds r0, r2, #4
	adds r0, r0, r1
	mov r1, ip
	strh r1, [r0]
	ldr r0, _0807B3A8 @ =gUnk_080B3E80
	adds r0, r5, r0
	ldrb r3, [r0]
	ldr r1, _0807B3AC @ =0x00002004
	adds r0, r2, r1
	adds r0, r0, r4
	strb r3, [r0]
	ldr r7, _0807B3B0 @ =gUnk_03000BF0
	ldrb r1, [r7, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807B36C
	ldr r0, _0807B3B4 @ =gUnk_02025EB0
	ldr r1, _0807B3AC @ =0x00002004
	adds r0, r0, r1
	adds r0, r4, r0
	strb r3, [r0]
_0807B36C:
	ldr r3, _0807B3B8 @ =0x0000B004
	adds r1, r2, r3
	adds r1, r1, r4
	ldr r0, _0807B3BC @ =gUnk_080B37A0
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r7, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B430
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r6, #2
	beq _0807B3C4
	lsls r1, r1, #1
	ldr r0, _0807B3C0 @ =gUnk_02019EE0
	b _0807B3C8
	.align 2, 0
_0807B3A0: .4byte 0x000007FF
_0807B3A4: .4byte 0x00006004
_0807B3A8: .4byte gUnk_080B3E80
_0807B3AC: .4byte 0x00002004
_0807B3B0: .4byte gUnk_03000BF0
_0807B3B4: .4byte gUnk_02025EB0
_0807B3B8: .4byte 0x0000B004
_0807B3BC: .4byte gUnk_080B37A0
_0807B3C0: .4byte gUnk_02019EE0
_0807B3C4:
	lsls r1, r1, #1
	ldr r0, _0807B400 @ =gUnk_02002F00
_0807B3C8:
	adds r3, r1, r0
	mov r1, ip
	lsls r0, r1, #3
	ldr r1, _0807B404 @ =0x00007004
	adds r0, r0, r1
	adds r0, r2, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807B408 @ =gUnk_03000BF0
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807B430
	ldr r1, _0807B40C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	b _0807B430
	.align 2, 0
_0807B400: .4byte gUnk_02002F00
_0807B404: .4byte 0x00007004
_0807B408: .4byte gUnk_03000BF0
_0807B40C: .4byte gUnk_02000070
_0807B410:
	ldr r0, _0807B424 @ =0x00003FFF
	cmp r5, r0
	bls _0807B428
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800015E
	b _0807B430
	.align 2, 0
_0807B424: .4byte 0x00003FFF
_0807B428:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807BA8C
_0807B430:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807B434
sub_0807B434: @ 0x0807B434
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080002B0
	cmp r0, #0x37
	bhi _0807B44A
	cmp r0, #0x36
	blo _0807B44A
	movs r0, #0
	b _0807B462
_0807B44A:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	adds r1, r0, #0
	movs r0, #0xd
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0807B462:
	pop {r4, r5, pc}

	thumb_func_start sub_0807B464
sub_0807B464: @ 0x0807B464
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	movs r1, #0
	cmp r0, #0x56
	bne _0807B47A
	movs r1, #1
_0807B47A:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807B480
sub_0807B480: @ 0x0807B480
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r1, #2
	bl sub_0807B464
	cmp r0, #0
	beq _0807B558
	adds r0, r6, #0
	subs r0, #0x40
	movs r1, #2
	bl sub_0807B464
	adds r5, r0, #0
	adds r0, r6, #1
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r5, r0
	adds r4, r6, #0
	adds r4, #0x40
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r5, r0
	subs r0, r6, #1
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x41
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x3f
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_080002B0
	cmp r0, #0
	beq _0807B4FA
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r5, r0
_0807B4FA:
	ldr r0, _0807B514 @ =gUnk_0811C2CC
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r4, [r1]
	adds r0, r6, #0
	movs r1, #2
	bl sub_080002B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0807B518 @ =gUnk_0811C2EC
	movs r3, #0
	b _0807B51E
	.align 2, 0
_0807B514: .4byte gUnk_0811C2CC
_0807B518: .4byte gUnk_0811C2EC
_0807B51C:
	adds r2, #6
_0807B51E:
	ldrh r1, [r2]
	cmp r1, #0
	beq _0807B52A
	cmp r0, r1
	bne _0807B51C
	ldrh r3, [r2, #2]
_0807B52A:
	movs r0, #1
	lsls r0, r7
	bics r3, r0
	ldr r2, _0807B534 @ =gUnk_0811C2EC
	b _0807B53A
	.align 2, 0
_0807B534: .4byte gUnk_0811C2EC
_0807B538:
	adds r2, #6
_0807B53A:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0807B54E
	ldrh r0, [r2, #2]
	cmp r3, r0
	bne _0807B538
	ldrh r0, [r2, #4]
	cmp r5, r0
	bne _0807B538
	ldrh r4, [r2]
_0807B54E:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #2
	bl sub_0807B314
_0807B558:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807B55C
sub_0807B55C: @ 0x0807B55C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl sub_0807B464
	cmp r0, #0
	beq _0807B5AC
	adds r0, r5, #0
	subs r0, #0x40
	adds r1, r6, #0
	bl sub_0807B464
	adds r4, r0, #0
	adds r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r4, r0
	subs r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0807B314
_0807B5AC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807B5B0
sub_0807B5B0: @ 0x0807B5B0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r6, _0807B5F8 @ =gUnk_0811C456
	ldrb r1, [r3, #0x14]
	movs r2, #6
	ands r2, r1
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	ldr r5, _0807B5FC @ =gUnk_03000BF0
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r4, #0x3f
	ands r0, r4
	movs r7, #0x32
	ldrsh r1, [r3, r7]
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r6
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0807B600
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807B5F8: .4byte gUnk_0811C456
_0807B5FC: .4byte gUnk_03000BF0

	thumb_func_start sub_0807B600
sub_0807B600: @ 0x0807B600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	subs r6, #0x40
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_080002C8
	cmp r0, #0x56
	beq _0807B61A
	movs r0, #0
	b _0807B76E
_0807B61A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080002B0
	adds r1, r0, #0
	ldr r0, _0807B634 @ =0x0000026A
	cmp r1, r0
	bne _0807B638
	adds r0, r5, #0
	bl sub_0807B820
	b _0807B76C
	.align 2, 0
_0807B634: .4byte 0x0000026A
_0807B638:
	ldr r0, _0807B648 @ =0x00000267
	cmp r1, r0
	bne _0807B64C
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B820
	b _0807B76C
	.align 2, 0
_0807B648: .4byte 0x00000267
_0807B64C:
	ldr r0, _0807B65C @ =0x0000027A
	cmp r1, r0
	bne _0807B660
	adds r0, r5, #0
	bl sub_0807B8A8
	b _0807B76C
	.align 2, 0
_0807B65C: .4byte 0x0000027A
_0807B660:
	ldr r0, _0807B670 @ =0x00000277
	cmp r1, r0
	bne _0807B674
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B8A8
	b _0807B76C
	.align 2, 0
_0807B670: .4byte 0x00000277
_0807B674:
	ldr r0, _0807B684 @ =0x0000028A
	cmp r1, r0
	bne _0807B688
	adds r0, r5, #0
	bl sub_0807B930
	b _0807B76C
	.align 2, 0
_0807B684: .4byte 0x0000028A
_0807B688:
	ldr r0, _0807B698 @ =0x00000287
	cmp r1, r0
	bne _0807B69C
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B930
	b _0807B76C
	.align 2, 0
_0807B698: .4byte 0x00000287
_0807B69C:
	adds r0, r5, #0
	movs r1, #2
	bl sub_080002B0
	cmp r0, #0
	beq _0807B6EC
	ldr r0, _0807B6E8 @ =0x000002F2
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	adds r0, r6, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #3
	bne _0807B6CA
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r6, #0
	movs r2, #1
	bl sub_0807B314
_0807B6CA:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #1
	bl sub_080002E0
	cmp r0, #3
	bne _0807B6F8
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	b _0807B6F8
	.align 2, 0
_0807B6E8: .4byte 0x000002F2
_0807B6EC:
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
_0807B6F8:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0807B464
	cmp r0, #0
	beq _0807B748
	movs r0, #0
	adds r1, r6, #0
	movs r2, #2
	bl sub_0807B314
	adds r0, r6, #0
	movs r1, #1
	bl sub_080002B0
	ldr r1, _0807B770 @ =0x000002F2
	cmp r0, r1
	bne _0807B728
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r6, #0
	movs r2, #1
	bl sub_0807B314
_0807B728:
	adds r0, r5, #1
	ldr r4, _0807B774 @ =gUnk_0811C2AC
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
	subs r0, r5, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
_0807B748:
	adds r0, r6, #1
	movs r1, #3
	bl sub_0807B480
	subs r0, r6, #1
	movs r1, #1
	bl sub_0807B480
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_0807B480
	adds r0, r6, #0
	subs r0, #0x40
	movs r1, #2
	bl sub_0807B480
_0807B76C:
	movs r0, #1
_0807B76E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B770: .4byte 0x000002F2
_0807B774: .4byte gUnk_0811C2AC

	thumb_func_start sub_0807B778
sub_0807B778: @ 0x0807B778
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	cmp r0, #0xd
	bne _0807B7D0
	adds r0, r5, #0
	subs r0, #0x40
	adds r1, r6, #0
	bl sub_0807B434
	adds r4, r0, #0
	adds r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #1
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #2
	orrs r4, r0
	subs r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #3
	orrs r0, r4
	ldr r1, _0807B7D4 @ =gUnk_0811C466
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0807B314
_0807B7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B7D4: .4byte gUnk_0811C466

	thumb_func_start sub_0807B7D8
sub_0807B7D8: @ 0x0807B7D8
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r0, #0x35
	bne _0807B816
	movs r0, #0x35
	bl sub_08000152
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807B778
	adds r0, r4, #1
	adds r1, r5, #0
	bl sub_0807B778
	subs r0, r4, #1
	adds r1, r5, #0
	bl sub_0807B778
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r5, #0
	bl sub_0807B778
	adds r0, r4, #0
	subs r0, #0x40
	adds r1, r5, #0
	bl sub_0807B778
	b _0807B81E
_0807B816:
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0807B314
_0807B81E:
	pop {r4, r5, pc}

	thumb_func_start sub_0807B820
sub_0807B820: @ 0x0807B820
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r5, r4, #0
	subs r5, #0x41
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B890 @ =0x00000273
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B894 @ =0x0000026D
	adds r5, #1
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B898 @ =0x0000026E
	adds r5, #1
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B89C @ =0x00000275
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B8A0 @ =0x0000026F
	subs r1, r4, #1
	movs r2, #1
	bl sub_0807B314
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B8A4 @ =0x00000272
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	pop {r4, r5, pc}
	.align 2, 0
_0807B890: .4byte 0x00000273
_0807B894: .4byte 0x0000026D
_0807B898: .4byte 0x0000026E
_0807B89C: .4byte 0x00000275
_0807B8A0: .4byte 0x0000026F
_0807B8A4: .4byte 0x00000272

	thumb_func_start sub_0807B8A8
sub_0807B8A8: @ 0x0807B8A8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r5, r4, #0
	subs r5, #0x41
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B918 @ =0x00000283
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B91C @ =0x0000027D
	adds r5, #1
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B920 @ =0x0000027E
	adds r5, #1
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B924 @ =0x00000285
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B928 @ =0x0000027F
	subs r1, r4, #1
	movs r2, #1
	bl sub_0807B314
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B92C @ =0x00000282
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	pop {r4, r5, pc}
	.align 2, 0
_0807B918: .4byte 0x00000283
_0807B91C: .4byte 0x0000027D
_0807B920: .4byte 0x0000027E
_0807B924: .4byte 0x00000285
_0807B928: .4byte 0x0000027F
_0807B92C: .4byte 0x00000282

	thumb_func_start sub_0807B930
sub_0807B930: @ 0x0807B930
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, #0
	subs r5, #0x41
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B9A0 @ =0x00000293
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B9A4 @ =0x0000028D
	adds r5, #1
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B9A8 @ =0x0000028E
	adds r5, #1
	adds r1, r5, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B9AC @ =0x00000295
	adds r1, r5, #0
	movs r2, #2
	bl sub_0807B314
	ldr r0, _0807B9B0 @ =0x0000028F
	subs r1, r4, #1
	movs r2, #1
	bl sub_0807B314
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0807B9B4 @ =0x00000292
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	pop {r4, r5, pc}
	.align 2, 0
_0807B9A0: .4byte 0x00000293
_0807B9A4: .4byte 0x0000028D
_0807B9A8: .4byte 0x0000028E
_0807B9AC: .4byte 0x00000295
_0807B9B0: .4byte 0x0000028F
_0807B9B4: .4byte 0x00000292

	thumb_func_start sub_0807B9B8
sub_0807B9B8: @ 0x0807B9B8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801AF8C
	adds r0, r6, #0
	bl sub_0808094C
	adds r5, r0, #0
	lsls r1, r4, #1
	adds r0, r5, #4
	adds r0, r0, r1
	strh r7, [r0]
	lsls r1, r7, #1
	ldr r2, _0807BA24 @ =0x00005004
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _0807BA28 @ =0x00002004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BA2C @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0807BA30 @ =0x0000B004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BA34 @ =gUnk_080B37A0
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _0807BA38 @ =gUnk_03000BF0
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA78
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r6, #2
	beq _0807BA40
	lsls r1, r1, #1
	ldr r0, _0807BA3C @ =gUnk_02019EE0
	b _0807BA44
	.align 2, 0
_0807BA24: .4byte 0x00005004
_0807BA28: .4byte 0x00002004
_0807BA2C: .4byte gUnk_080B3E80
_0807BA30: .4byte 0x0000B004
_0807BA34: .4byte gUnk_080B37A0
_0807BA38: .4byte gUnk_03000BF0
_0807BA3C: .4byte gUnk_02019EE0
_0807BA40:
	lsls r1, r1, #1
	ldr r0, _0807BA7C @ =gUnk_02002F00
_0807BA44:
	adds r3, r1, r0
	lsls r0, r7, #3
	ldr r1, _0807BA80 @ =0x00007004
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807BA84 @ =gUnk_03000BF0
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807BA78
	ldr r1, _0807BA88 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807BA78:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BA7C: .4byte gUnk_02002F00
_0807BA80: .4byte 0x00007004
_0807BA84: .4byte gUnk_03000BF0
_0807BA88: .4byte gUnk_02000070

	thumb_func_start sub_0807BA8C
sub_0807BA8C: @ 0x0807BA8C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_0801AF8C
	adds r0, r7, #0
	bl sub_0808094C
	adds r5, r0, #0
	lsls r2, r4, #1
	adds r1, r5, #4
	adds r1, r1, r2
	ldr r3, _0807BAFC @ =0x00003004
	adds r0, r5, r3
	adds r0, r0, r2
	ldrh r6, [r0]
	strh r6, [r1]
	lsls r1, r6, #1
	ldr r2, _0807BB00 @ =0x00005004
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _0807BB04 @ =0x00002004
	adds r1, r5, r3
	adds r1, r1, r4
	ldr r0, _0807BB08 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0807BB0C @ =0x0000B004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BB10 @ =gUnk_080B37A0
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _0807BB14 @ =gUnk_03000BF0
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BB54
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r7, #2
	beq _0807BB1C
	lsls r1, r1, #1
	ldr r0, _0807BB18 @ =gUnk_02019EE0
	b _0807BB20
	.align 2, 0
_0807BAFC: .4byte 0x00003004
_0807BB00: .4byte 0x00005004
_0807BB04: .4byte 0x00002004
_0807BB08: .4byte gUnk_080B3E80
_0807BB0C: .4byte 0x0000B004
_0807BB10: .4byte gUnk_080B37A0
_0807BB14: .4byte gUnk_03000BF0
_0807BB18: .4byte gUnk_02019EE0
_0807BB1C:
	lsls r1, r1, #1
	ldr r0, _0807BB58 @ =gUnk_02002F00
_0807BB20:
	adds r3, r1, r0
	lsls r0, r6, #3
	ldr r1, _0807BB5C @ =0x00007004
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807BB60 @ =gUnk_03000BF0
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807BB54
	ldr r1, _0807BB64 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807BB54:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BB58: .4byte gUnk_02002F00
_0807BB5C: .4byte 0x00007004
_0807BB60: .4byte gUnk_03000BF0
_0807BB64: .4byte gUnk_02000070

	thumb_func_start sub_0807BB68
sub_0807BB68: @ 0x0807BB68
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0807BB96
	adds r7, r1, #0
_0807BB7E:
	ldrh r0, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, r6, r1
	adds r2, r5, #0
	bl sub_0807B314
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r7
	bne _0807BB7E
_0807BB96:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807BB98
sub_0807BB98: @ 0x0807BB98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sl, r1
	mov r8, r2
	mov sb, r3
	movs r0, #0
	cmp r0, sb
	bhs _0807BBD4
_0807BBB0:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x40
	adds r6, r0, #1
	cmp r4, r8
	bhs _0807BBCC
_0807BBBC:
	adds r1, r5, r4
	ldr r0, _0807BBE0 @ =0x00004072
	mov r2, sl
	bl sub_0800015E
	adds r4, #1
	cmp r4, r8
	blo _0807BBBC
_0807BBCC:
	adds r5, r7, #0
	adds r0, r6, #0
	cmp r0, sb
	blo _0807BBB0
_0807BBD4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BBE0: .4byte 0x00004072

	thumb_func_start sub_0807BBE4
sub_0807BBE4: @ 0x0807BBE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807BC28 @ =gUnk_0202AEB4
	mov sl, r0
	ldr r0, _0807BC2C @ =gUnk_02010654
	mov sb, r0
	ldr r5, _0807BC30 @ =0xFFFFB000
	add r5, sl
	ldr r4, _0807BC30 @ =0xFFFFB000
	add r4, sb
	ldr r2, _0807BC34 @ =0xFFFFD000
	add r2, sl
	ldr r1, _0807BC34 @ =0xFFFFD000
	add r1, sb
	movs r3, #0
	ldr r0, _0807BC38 @ =0x00003FFF
	mov r8, r0
	ldr r0, _0807BC3C @ =gUnk_080B3E80
	mov ip, r0
	ldr r7, _0807BC40 @ =gUnk_080B79A7
	ldr r6, _0807BC44 @ =0xFFFFC000
_0807BC14:
	ldrh r0, [r5]
	adds r5, #2
	cmp r0, r8
	bhi _0807BC48
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	add r0, ip
	b _0807BC4C
	.align 2, 0
_0807BC28: .4byte gUnk_0202AEB4
_0807BC2C: .4byte gUnk_02010654
_0807BC30: .4byte 0xFFFFB000
_0807BC34: .4byte 0xFFFFD000
_0807BC38: .4byte 0x00003FFF
_0807BC3C: .4byte gUnk_080B3E80
_0807BC40: .4byte gUnk_080B79A7
_0807BC44: .4byte 0xFFFFC000
_0807BC48:
	adds r0, r0, r6
	adds r0, r0, r7
_0807BC4C:
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	ldrh r0, [r4]
	adds r4, #2
	cmp r0, r8
	bhi _0807BC64
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	add r0, ip
	b _0807BC68
_0807BC64:
	adds r0, r0, r6
	adds r0, r0, r7
_0807BC68:
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r3, #1
	ldr r0, _0807BC80 @ =0x00000FFF
	cmp r3, r0
	bls _0807BC14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BC80: .4byte 0x00000FFF

	thumb_func_start sub_0807BC84
sub_0807BC84: @ 0x0807BC84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0807BD04 @ =gUnk_03000BF0
	ldrh r0, [r1, #0x1e]
	lsrs r2, r0, #4
	mov r8, r1
	cmp r2, #0x40
	bne _0807BC98
	movs r2, #0x3f
_0807BC98:
	ldr r1, _0807BD08 @ =gUnk_02027EB4
	adds r3, r2, r1
	adds r6, r1, #0
	adds r6, #0x3f
	ldr r0, _0807BD0C @ =gUnk_0200D654
	adds r2, r2, r0
	adds r5, r0, #0
	adds r5, #0x3f
	movs r4, #0
	adds r7, r1, #0
	mov ip, r0
	movs r0, #0xff
_0807BCB0:
	strb r0, [r3]
	strb r0, [r6]
	strb r0, [r2]
	strb r0, [r5]
	adds r3, #0x40
	adds r6, #0x40
	adds r2, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x3f
	bls _0807BCB0
	mov r0, r8
	ldrh r1, [r0, #0x20]
	ldr r0, _0807BD10 @ =0x0000FFF0
	ands r0, r1
	lsls r0, r0, #2
	adds r3, r0, r7
	movs r1, #0xfc
	lsls r1, r1, #4
	adds r6, r7, r1
	mov r1, ip
	adds r2, r0, r1
	movs r5, #0xfc
	lsls r5, r5, #4
	add r5, ip
	movs r4, #0
	movs r0, #0xff
_0807BCE6:
	strb r0, [r3]
	adds r3, #1
	strb r0, [r6]
	adds r6, #1
	strb r0, [r2]
	adds r2, #1
	strb r0, [r5]
	adds r5, #1
	adds r4, #1
	cmp r4, #0x3f
	bls _0807BCE6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BD04: .4byte gUnk_03000BF0
_0807BD08: .4byte gUnk_02027EB4
_0807BD0C: .4byte gUnk_0200D654
_0807BD10: .4byte 0x0000FFF0

	thumb_func_start sub_0807BD14
sub_0807BD14: @ 0x0807BD14
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	adds r2, r5, #0
	bl sub_0807BEEC
	adds r3, r0, #0
	cmp r3, #0xff
	beq _0807BDB4
	ldr r1, _0807BD68 @ =gUnk_03000BF0
	movs r2, #0
	movs r0, #2
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	movs r4, #1
	strh r4, [r1]
	strb r3, [r1, #5]
	strb r5, [r1, #0x10]
	bl sub_08052E8C
	adds r2, r0, #0
	ldr r1, _0807BD6C @ =gUnk_02033A90
	ldr r3, _0807BD70 @ =0x0000085C
	adds r0, r1, r3
	str r2, [r0]
	ldrb r0, [r1, #0xd]
	ands r4, r0
	cmp r4, #0
	beq _0807BD98
	cmp r5, #1
	beq _0807BD7E
	cmp r5, #1
	blo _0807BD74
	cmp r5, #2
	beq _0807BD86
	cmp r5, #3
	beq _0807BD90
	b _0807BD98
	.align 2, 0
_0807BD68: .4byte gUnk_03000BF0
_0807BD6C: .4byte gUnk_02033A90
_0807BD70: .4byte 0x0000085C
_0807BD74:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r2, #6]
	b _0807BD98
_0807BD7E:
	ldrh r0, [r2]
	ldrh r1, [r2, #4]
	adds r0, r0, r1
	b _0807BD96
_0807BD86:
	ldrh r0, [r2, #2]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r2, #6]
	b _0807BD98
_0807BD90:
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	subs r0, r0, r1
_0807BD96:
	strh r0, [r2, #4]
_0807BD98:
	ldr r2, _0807BDB0 @ =gLinkEntity
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #0x11]
	bl sub_0805E5A8
	movs r0, #1
	b _0807BDB6
	.align 2, 0
_0807BDB0: .4byte gLinkEntity
_0807BDB4:
	movs r0, #0
_0807BDB6:
	pop {r4, r5, pc}

	thumb_func_start sub_0807BDB8
sub_0807BDB8: @ 0x0807BDB8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0xff
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bls _0807BDC8
	b _0807BEE2
_0807BDC8:
	lsls r0, r1, #2
	ldr r1, _0807BDD4 @ =_0807BDD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807BDD4: .4byte _0807BDD8
_0807BDD8: @ jump table
	.4byte _0807BDF8 @ case 0
	.4byte _0807BE10 @ case 1
	.4byte _0807BE30 @ case 2
	.4byte _0807BE4C @ case 3
	.4byte _0807BE78 @ case 4
	.4byte _0807BE94 @ case 5
	.4byte _0807BEB4 @ case 6
	.4byte _0807BEC4 @ case 7
_0807BDF8:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldr r1, _0807BE0C @ =gUnk_03000BF0
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BEE2
	movs r5, #0
	b _0807BEE2
	.align 2, 0
_0807BE0C: .4byte gUnk_03000BF0
_0807BE10:
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	ldr r2, _0807BE2C @ =gUnk_03000BF0
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BE20
	movs r5, #0
_0807BE20:
	ldrh r0, [r2, #0x1e]
	subs r0, #0xa
	movs r4, #0x2e
	ldrsh r1, [r3, r4]
	ldrh r2, [r2, #6]
	b _0807BE6A
	.align 2, 0
_0807BE2C: .4byte gUnk_03000BF0
_0807BE30:
	ldr r1, _0807BE48 @ =gUnk_03000BF0
	ldrh r2, [r1, #0x1e]
	subs r2, #0xa
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	cmp r2, r0
	bhs _0807BEE2
	movs r5, #1
	b _0807BEE2
	.align 2, 0
_0807BE48: .4byte gUnk_03000BF0
_0807BE4C:
	ldr r4, _0807BE74 @ =gUnk_03000BF0
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	cmp r0, r1
	bhs _0807BE60
	movs r5, #2
_0807BE60:
	ldrh r0, [r4, #0x1e]
	subs r0, #0xa
	movs r2, #0x2e
	ldrsh r1, [r3, r2]
	ldrh r2, [r4, #6]
_0807BE6A:
	subs r1, r1, r2
	cmp r0, r1
	bhs _0807BEE2
	movs r5, #1
	b _0807BEE2
	.align 2, 0
_0807BE74: .4byte gUnk_03000BF0
_0807BE78:
	ldr r1, _0807BE90 @ =gUnk_03000BF0
	ldrh r2, [r1, #0x20]
	subs r2, #0xa
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r2, r0
	bhs _0807BEE2
	movs r5, #2
	b _0807BEE2
	.align 2, 0
_0807BE90: .4byte gUnk_03000BF0
_0807BE94:
	ldr r4, _0807BEB0 @ =gUnk_03000BF0
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	cmp r0, r1
	bhs _0807BEA8
	movs r5, #2
_0807BEA8:
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r4, #6]
	b _0807BEDA
	.align 2, 0
_0807BEB0: .4byte gUnk_03000BF0
_0807BEB4:
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	ldr r1, _0807BEC0 @ =gUnk_03000BF0
	ldrh r1, [r1, #6]
	b _0807BEDA
	.align 2, 0
_0807BEC0: .4byte gUnk_03000BF0
_0807BEC4:
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	ldr r2, _0807BEE8 @ =gUnk_03000BF0
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BED4
	movs r5, #0
_0807BED4:
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r2, #6]
_0807BEDA:
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BEE2
	movs r5, #3
_0807BEE2:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_0807BEE8: .4byte gUnk_03000BF0

	thumb_func_start sub_0807BEEC
sub_0807BEEC: @ 0x0807BEEC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0807BF04 @ =gUnk_02033A90
	ldrb r1, [r0, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807BF0C
	ldr r0, _0807BF08 @ =gUnk_03000BF0
	ldrb r0, [r0, #5]
	b _0807BF7C
	.align 2, 0
_0807BF04: .4byte gUnk_02033A90
_0807BF08: .4byte gUnk_03000BF0
_0807BF0C:
	cmp r2, #1
	beq _0807BF2C
	cmp r2, #1
	blo _0807BF1E
	cmp r2, #2
	beq _0807BF40
	cmp r2, #3
	beq _0807BF58
	b _0807BF7A
_0807BF1E:
	ldr r0, _0807BF28 @ =gUnk_03000BF0
	ldrh r0, [r0, #8]
	adds r7, r0, #0
	subs r7, #0x10
	b _0807BF60
	.align 2, 0
_0807BF28: .4byte gUnk_03000BF0
_0807BF2C:
	ldr r0, _0807BF3C @ =gUnk_03000BF0
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0x1e]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	b _0807BF60
	.align 2, 0
_0807BF3C: .4byte gUnk_03000BF0
_0807BF40:
	ldr r0, _0807BF50 @ =gUnk_03000BF0
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	adds r7, r1, #0
	adds r7, #0x10
	b _0807BF60
	.align 2, 0
_0807BF50: .4byte gUnk_03000BF0
_0807BF54:
	adds r0, r4, #0
	b _0807BF7C
_0807BF58:
	ldr r0, _0807BF80 @ =gUnk_03000BF0
	ldrh r0, [r0, #6]
	adds r6, r0, #0
	subs r6, #0x10
_0807BF60:
	ldr r5, _0807BF84 @ =gUnk_02033ACC
	movs r4, #0
_0807BF64:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0807BF88
	cmp r0, #0
	bne _0807BF54
	adds r4, #1
	adds r5, #0x20
	cmp r4, #0x3f
	bls _0807BF64
_0807BF7A:
	movs r0, #0xff
_0807BF7C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BF80: .4byte gUnk_03000BF0
_0807BF84: .4byte gUnk_02033ACC

	thumb_func_start sub_0807BF88
sub_0807BF88: @ 0x0807BF88
	push {r4, lr}
	adds r3, r2, #0
	ldrh r2, [r3, #4]
	subs r0, r0, r2
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	movs r2, #0
	ldrh r4, [r3]
	cmp r0, r4
	bhs _0807BFA4
	ldrh r3, [r3, #2]
	cmp r1, r3
	bhs _0807BFA4
	movs r2, #1
_0807BFA4:
	adds r0, r2, #0
	pop {r4, pc}

	thumb_func_start sub_0807BFA8
sub_0807BFA8: @ 0x0807BFA8
	ldr r2, _0807BFC4 @ =gUnk_03000BF0
	ldr r0, _0807BFC8 @ =gUnk_02033A90
	ldr r1, _0807BFCC @ =0x0000085C
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r2, #6]
	ldrh r0, [r1, #6]
	strh r0, [r2, #8]
	ldrh r0, [r1]
	strh r0, [r2, #0x1e]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0
_0807BFC4: .4byte gUnk_03000BF0
_0807BFC8: .4byte gUnk_02033A90
_0807BFCC: .4byte 0x0000085C

	thumb_func_start sub_0807BFD0
sub_0807BFD0: @ 0x0807BFD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0801B170
	bl sub_0807BFA8
	ldr r7, _0807C0B8 @ =0x0000FFFF
	ldr r6, _0807C0BC @ =gUnk_0202AEB4
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_0801D5EC
	movs r5, #0
	strh r5, [r6]
	ldr r4, _0807C0C0 @ =gUnk_02010654
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_0801D5EC
	strh r5, [r4]
	ldr r2, _0807C0C4 @ =gUnk_03000BF0
	ldr r0, _0807C0C8 @ =gUnk_02033A90
	ldr r1, _0807C0CC @ =0x0000085C
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r1, [r2, #0x34]
	ldr r0, [r0, #8]
	cmp r1, r0
	beq _0807C01C
	str r0, [r2, #0x34]
	bl sub_080197D4
_0807C01C:
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_080197D4
	ldr r1, _0807C0D0 @ =gUnk_020176A0
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _0807C0D4 @ =gUnk_0200B644
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0807C04E
	bl sub_0801B130
_0807C04E:
	adds r5, r6, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_0801D5EC
	movs r2, #0
	ldr r3, _0807C0D8 @ =0x000007FF
	adds r4, r7, #0
_0807C066:
	ldrh r0, [r5]
	cmp r0, r3
	bhi _0807C078
	lsls r0, r0, #1
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _0807C078
	strh r2, [r1]
_0807C078:
	adds r2, #1
	adds r5, #2
	cmp r2, r3
	ble _0807C066
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r5, _0807C0C0 @ =gUnk_02010654
	adds r6, r5, r2
	ldr r4, _0807C0B8 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801D5EC
	movs r2, #0
	ldr r3, _0807C0D8 @ =0x000007FF
_0807C096:
	ldrh r0, [r5]
	cmp r0, r3
	bhi _0807C0A8
	lsls r0, r0, #1
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _0807C0A8
	strh r2, [r1]
_0807C0A8:
	adds r2, #1
	adds r5, #2
	cmp r2, r3
	ble _0807C096
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C0B8: .4byte 0x0000FFFF
_0807C0BC: .4byte gUnk_0202AEB4
_0807C0C0: .4byte gUnk_02010654
_0807C0C4: .4byte gUnk_03000BF0
_0807C0C8: .4byte gUnk_02033A90
_0807C0CC: .4byte 0x0000085C
_0807C0D0: .4byte gUnk_020176A0
_0807C0D4: .4byte gUnk_0200B644
_0807C0D8: .4byte 0x000007FF

	thumb_func_start sub_0807C0DC
sub_0807C0DC: @ 0x0807C0DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_0807BFA8
	ldr r7, _0807C158 @ =gUnk_03000BF0
	ldrb r1, [r7, #0xf]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r7, #0xf]
	ldr r5, _0807C15C @ =gUnk_0200B654
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801D630
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0801D630
	ldr r0, _0807C160 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _0807C164 @ =gUnk_02002F00
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _0807C168 @ =gUnk_02033A90
	ldr r1, _0807C16C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_080197D4
	ldr r2, _0807C170 @ =gUnk_02025EB0
	ldrh r1, [r2, #4]
	ldr r0, _0807C174 @ =0x0000FFFF
	cmp r1, r0
	beq _0807C178
	adds r0, r2, #4
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	adds r0, r5, #0
	bl sub_0807C8B0
	movs r2, #0
	mov sb, r2
	b _0807C184
	.align 2, 0
_0807C158: .4byte gUnk_03000BF0
_0807C15C: .4byte gUnk_0200B654
_0807C160: .4byte gUnk_02019EE0
_0807C164: .4byte gUnk_02002F00
_0807C168: .4byte gUnk_02033A90
_0807C16C: .4byte 0x0000085C
_0807C170: .4byte gUnk_02025EB0
_0807C174: .4byte 0x0000FFFF
_0807C178:
	adds r0, r2, #4
	adds r1, r6, #0
	bl sub_0801D630
	movs r3, #1
	mov sb, r3
_0807C184:
	ldr r0, _0807C1B0 @ =gUnk_030010A0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807C1BC
	ldr r0, _0807C1B4 @ =gUnk_02025EB4
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	bl sub_0801D66C
	ldr r0, _0807C1B8 @ =gUnk_0200B654
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r1, r0, r3
	adds r2, r4, #0
	bl sub_0801D66C
	b _0807C26C
	.align 2, 0
_0807C1B0: .4byte gUnk_030010A0
_0807C1B4: .4byte gUnk_02025EB4
_0807C1B8: .4byte gUnk_0200B654
_0807C1BC:
	cmp r0, #2
	bne _0807C26C
	ldr r4, _0807C278 @ =gUnk_02025EB4
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r0, r0, r4
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0801D66C
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r6, r4, r1
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801D66C
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801D66C
	adds r6, r4, r5
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0801D66C
	movs r2, #0x80
	lsls r2, r2, #7
	adds r4, r4, r2
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801D66C
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801D66C
	ldr r4, _0807C27C @ =gUnk_0200B654
	movs r3, #0xb0
	lsls r3, r3, #8
	adds r3, r3, r4
	mov r8, r3
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0801D66C
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r6, r4, r0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801D66C
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801D66C
	adds r6, r4, r5
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0801D66C
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801D66C
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801D66C
_0807C26C:
	mov r2, sb
	cmp r2, #0
	bne _0807C280
	bl sub_0807BBE4
	b _0807C2A0
	.align 2, 0
_0807C278: .4byte gUnk_02025EB4
_0807C27C: .4byte gUnk_0200B654
_0807C280:
	ldr r0, _0807C2CC @ =gUnk_02027EB4
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C69C
	ldr r0, _0807C2D0 @ =gUnk_0200D654
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C69C
	bl sub_0807C460
_0807C2A0:
	bl sub_0807BC84
	ldr r4, _0807C2D4 @ =gUnk_02025EB0
	adds r0, r4, #0
	bl sub_08080B60
	ldr r5, _0807C2D8 @ =gUnk_0200B650
	adds r0, r5, #0
	bl sub_08080B60
	mov r3, sb
	cmp r3, #0
	bne _0807C2E4
	ldr r0, _0807C2DC @ =gUnk_02019EE0
	adds r1, r4, #0
	bl sub_0801AB08
	ldr r0, _0807C2E0 @ =gUnk_02002F00
	adds r1, r5, #0
	bl sub_0801AB08
	b _0807C326
	.align 2, 0
_0807C2CC: .4byte gUnk_02027EB4
_0807C2D0: .4byte gUnk_0200D654
_0807C2D4: .4byte gUnk_02025EB0
_0807C2D8: .4byte gUnk_0200B650
_0807C2DC: .4byte gUnk_02019EE0
_0807C2E0: .4byte gUnk_02002F00
_0807C2E4:
	ldr r4, _0807C34C @ =gUnk_02019EE0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0801D66C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801D630
	ldr r4, _0807C350 @ =gUnk_02002F00
	adds r5, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0801D66C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801D630
_0807C326:
	mov r1, sb
	cmp r1, #0
	bne _0807C332
	ldrb r0, [r7, #4]
	cmp r0, #0x71
	bne _0807C33A
_0807C332:
	ldrb r1, [r7, #0xf]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7, #0xf]
_0807C33A:
	ldrb r0, [r7, #4]
	subs r0, #0x20
	cmp r0, #0x18
	bhi _0807C400
	lsls r0, r0, #2
	ldr r1, _0807C354 @ =_0807C358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C34C: .4byte gUnk_02019EE0
_0807C350: .4byte gUnk_02002F00
_0807C354: .4byte _0807C358
_0807C358: @ jump table
	.4byte _0807C3BC @ case 0
	.4byte _0807C3E4 @ case 1
	.4byte _0807C3E4 @ case 2
	.4byte _0807C3E4 @ case 3
	.4byte _0807C3E4 @ case 4
	.4byte _0807C3E4 @ case 5
	.4byte _0807C400 @ case 6
	.4byte _0807C3E4 @ case 7
	.4byte _0807C3E4 @ case 8
	.4byte _0807C400 @ case 9
	.4byte _0807C400 @ case 10
	.4byte _0807C400 @ case 11
	.4byte _0807C400 @ case 12
	.4byte _0807C3BC @ case 13
	.4byte _0807C400 @ case 14
	.4byte _0807C400 @ case 15
	.4byte _0807C3E4 @ case 16
	.4byte _0807C400 @ case 17
	.4byte _0807C400 @ case 18
	.4byte _0807C400 @ case 19
	.4byte _0807C400 @ case 20
	.4byte _0807C400 @ case 21
	.4byte _0807C400 @ case 22
	.4byte _0807C400 @ case 23
	.4byte _0807C3E4 @ case 24
_0807C3BC:
	ldr r0, _0807C3D8 @ =gUnk_02025EB0
	ldr r2, [r0]
	cmp r2, #0
	beq _0807C3CC
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
_0807C3CC:
	ldr r2, _0807C3DC @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _0807C3E0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	b _0807C444
	.align 2, 0
_0807C3D8: .4byte gUnk_02025EB0
_0807C3DC: .4byte gUnk_03000F50
_0807C3E0: .4byte 0x0000FDFF
_0807C3E4:
	ldr r0, _0807C3F8 @ =gUnk_0200B650
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C3F2
	ldr r0, _0807C3FC @ =gUnk_080B77C0
	ldrh r0, [r0, #4]
	strh r0, [r1]
_0807C3F2:
	bl sub_0807C5B0
	b _0807C444
	.align 2, 0
_0807C3F8: .4byte gUnk_0200B650
_0807C3FC: .4byte gUnk_080B77C0
_0807C400:
	ldr r0, _0807C44C @ =gUnk_02025EB0
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C40E
	ldr r0, _0807C450 @ =gUnk_080B77C0
	ldrh r0, [r0]
	strh r0, [r1]
_0807C40E:
	ldr r0, _0807C454 @ =gUnk_0200B650
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C41C
	ldr r0, _0807C450 @ =gUnk_080B77C0
	ldrh r0, [r0, #2]
	strh r0, [r1]
_0807C41C:
	ldr r2, _0807C458 @ =gUnk_03000F50
	ldrh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	movs r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0807C45C @ =gUnk_02033A90
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0807C444
	movs r3, #0xa0
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
_0807C444:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C44C: .4byte gUnk_02025EB0
_0807C450: .4byte gUnk_080B77C0
_0807C454: .4byte gUnk_0200B650
_0807C458: .4byte gUnk_03000F50
_0807C45C: .4byte gUnk_02033A90

	thumb_func_start sub_0807C460
sub_0807C460: @ 0x0807C460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r7, _0807C4E8 @ =gUnk_02025EB4
	ldr r6, _0807C4EC @ =gUnk_0200B654
	ldr r0, _0807C4F0 @ =gUnk_03000BF0
	ldrh r1, [r0, #0x1e]
	lsrs r3, r1, #4
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r4, #0
	movs r1, #0
	cmp r1, r0
	bhs _0807C4DC
	movs r0, #0x40
	subs r0, r0, r3
	lsls r0, r0, #1
	mov sb, r0
_0807C48C:
	movs r5, #0
	adds r1, #1
	mov sl, r1
	cmp r5, r3
	bhs _0807C4CA
	ldr r0, _0807C4F4 @ =0x00003FFF
	mov r8, r0
_0807C49A:
	ldrh r0, [r7]
	cmp r0, r8
	bls _0807C4AC
	adds r1, r4, #0
	movs r2, #1
	str r3, [sp, #4]
	bl sub_0800015E
	ldr r3, [sp, #4]
_0807C4AC:
	ldrh r0, [r6]
	cmp r0, r8
	bls _0807C4BE
	adds r1, r4, #0
	movs r2, #2
	str r3, [sp, #4]
	bl sub_0800015E
	ldr r3, [sp, #4]
_0807C4BE:
	adds r7, #2
	adds r6, #2
	adds r4, #1
	adds r5, #1
	cmp r5, r3
	blo _0807C49A
_0807C4CA:
	add r7, sb
	add r6, sb
	adds r0, r4, #0
	adds r0, #0x40
	subs r4, r0, r3
	mov r1, sl
	ldr r0, [sp]
	cmp r1, r0
	blo _0807C48C
_0807C4DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C4E8: .4byte gUnk_02025EB4
_0807C4EC: .4byte gUnk_0200B654
_0807C4F0: .4byte gUnk_03000BF0
_0807C4F4: .4byte 0x00003FFF

	thumb_func_start sub_0807C4F8
sub_0807C4F8: @ 0x0807C4F8
	push {r4, r5, r6, lr}
	ldr r0, _0807C594 @ =gUnk_03000BF0
	ldrb r0, [r0, #4]
	cmp r0, #0x71
	beq _0807C592
	ldr r0, _0807C598 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _0807C59C @ =gUnk_02002F00
	adds r1, r4, #0
	bl sub_0801D630
	ldr r5, _0807C5A0 @ =gUnk_02022830
	ldr r0, _0807C5A4 @ =gUnk_02033A90
	ldr r1, _0807C5A8 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	subs r4, #0xc
_0807C524:
	adds r4, #0xc
	ldr r1, [r4, #4]
	ldr r0, _0807C598 @ =gUnk_02019EE0
	cmp r1, r0
	beq _0807C534
	ldr r0, _0807C59C @ =gUnk_02002F00
	cmp r1, r0
	bne _0807C54A
_0807C534:
	ldr r0, [r4]
	ldr r1, _0807C5AC @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080197D4
_0807C54A:
	ldr r0, [r4]
	cmp r0, #0
	blt _0807C524
	ldr r4, _0807C598 @ =gUnk_02019EE0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0801D66C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801D630
	ldr r4, _0807C59C @ =gUnk_02002F00
	adds r5, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0801D66C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801D630
_0807C592:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C594: .4byte gUnk_03000BF0
_0807C598: .4byte gUnk_02019EE0
_0807C59C: .4byte gUnk_02002F00
_0807C5A0: .4byte gUnk_02022830
_0807C5A4: .4byte gUnk_02033A90
_0807C5A8: .4byte 0x0000085C
_0807C5AC: .4byte 0x7FFFFFFF

	thumb_func_start sub_0807C5B0
sub_0807C5B0: @ 0x0807C5B0
	push {r4, r5, r6, lr}
	ldr r5, _0807C5E8 @ =gUnk_0200D654
	movs r4, #0x80
	lsls r4, r4, #5
	movs r3, #0
	ldr r6, _0807C5EC @ =gUnk_03000BF0
	ldr r2, _0807C5F0 @ =gUnk_02027EB4
_0807C5BE:
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807C5D4
	cmp r0, #0xf
	bhi _0807C5D2
	ldrb r1, [r2]
	cmp r1, #0xf
	bhi _0807C5D4
	orrs r0, r1
_0807C5D2:
	strb r0, [r2]
_0807C5D4:
	adds r2, #1
	adds r3, #1
	cmp r3, r4
	blo _0807C5BE
	ldrb r1, [r6, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6, #0xf]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C5E8: .4byte gUnk_0200D654
_0807C5EC: .4byte gUnk_03000BF0
_0807C5F0: .4byte gUnk_02027EB4

	thumb_func_start sub_0807C5F4
sub_0807C5F4: @ 0x0807C5F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	movs r0, #0x20
	ldr r6, _0807C698 @ =gUnk_03000BF0
_0807C5FE:
	movs r3, #0
	subs r4, r0, #1
_0807C602:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C602
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C5FE
	ldrh r0, [r6, #0x1e]
	cmp r0, #0xff
	bls _0807C63E
	adds r2, r5, #0
	adds r2, #0x40
	movs r0, #0x20
_0807C624:
	movs r3, #0
	subs r4, r0, #1
_0807C628:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C628
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C624
_0807C63E:
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bls _0807C666
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r0, #0x20
_0807C64C:
	movs r3, #0
	subs r4, r0, #1
_0807C650:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C650
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C64C
_0807C666:
	ldrh r0, [r6, #0x1e]
	cmp r0, #0xff
	bls _0807C694
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bls _0807C694
	movs r0, #0x81
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r0, #0x20
_0807C67A:
	movs r3, #0
	subs r4, r0, #1
_0807C67E:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C67E
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C67A
_0807C694:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C698: .4byte gUnk_03000BF0

	thumb_func_start sub_0807C69C
sub_0807C69C: @ 0x0807C69C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	mov r0, r8
	muls r0, r6, r0
	add r0, sb
	subs r2, r0, #1
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #6
	add r0, sb
	subs r1, r6, #1
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r8
	bhs _0807C6EA
_0807C6C4:
	movs r3, #0
	adds r7, r4, #0
	subs r7, #0x40
	subs r0, r2, r6
	mov ip, r0
	cmp r3, r6
	bhs _0807C6E0
_0807C6D2:
	subs r0, r4, r3
	subs r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, r6
	blo _0807C6D2
_0807C6E0:
	adds r4, r7, #0
	mov r2, ip
	adds r5, #1
	cmp r5, r8
	blo _0807C6C4
_0807C6EA:
	movs r0, #0x40
	subs r7, r0, r6
	movs r5, #0
	mov r1, r8
	lsls r2, r1, #6
	mov r0, sb
	adds r1, r0, r6
_0807C6F8:
	lsls r0, r5, #6
	adds r4, r1, r0
	movs r3, #0
	adds r6, r5, #1
	cmp r3, r7
	bhs _0807C710
	movs r5, #0
_0807C706:
	adds r0, r4, r3
	strb r5, [r0]
	adds r3, #1
	cmp r3, r7
	blo _0807C706
_0807C710:
	adds r5, r6, #0
	cmp r5, #0x3f
	bls _0807C6F8
	movs r0, #0x40
	mov r1, r8
	subs r7, r0, r1
	mov r0, sb
	adds r4, r0, r2
	movs r5, #0
	cmp r5, r7
	bhs _0807C736
_0807C726:
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_0801D630
	adds r4, #0x40
	adds r5, #1
	cmp r5, r7
	blo _0807C726
_0807C736:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807C740
sub_0807C740: @ 0x0807C740
	push {r4, r5, lr}
	bl sub_0807BFD0
	bl sub_0807C0DC
	ldr r4, _0807C780 @ =gUnk_03000BF0
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0807C788
	ldrh r1, [r2, #0x2e]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0807C764
	ldr r0, _0807C784 @ =0x00007FFF
	ands r0, r1
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r2, #0x2e]
_0807C764:
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldrh r1, [r2, #0x32]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0807C77A
	ldr r0, _0807C784 @ =0x00007FFF
	ands r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
_0807C77A:
	movs r0, #0x32
	ldrsh r5, [r2, r0]
	b _0807C78C
	.align 2, 0
_0807C780: .4byte gUnk_03000BF0
_0807C784: .4byte 0x00007FFF
_0807C788:
	movs r3, #0
	movs r5, #0
_0807C78C:
	cmp r3, #0x77
	bgt _0807C794
	movs r0, #0
	b _0807C7A2
_0807C794:
	ldrh r1, [r4, #0x1e]
	adds r0, r1, #0
	subs r0, #0x78
	cmp r0, r3
	blt _0807C7A0
	adds r0, r3, #0
_0807C7A0:
	subs r0, #0x78
_0807C7A2:
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #0xa]
	adds r0, r1, r2
	strh r0, [r4, #0xa]
	cmp r5, #0x4f
	bgt _0807C7B4
	movs r0, #0
	b _0807C7C2
_0807C7B4:
	ldrh r2, [r4, #0x20]
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, r5
	blt _0807C7C0
	adds r0, r5, #0
_0807C7C0:
	subs r0, #0x50
_0807C7C2:
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	ldrh r3, [r4, #0xc]
	adds r0, r0, r3
	strh r0, [r4, #0xc]
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0807C7FC
	ldrh r3, [r2, #0x2e]
	adds r0, r1, r3
	strh r0, [r2, #0x2e]
	ldr r1, [r4, #0x30]
	ldrh r0, [r4, #8]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, _0807C80C @ =gUnk_03000BF0
	ldrb r1, [r0, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807C7FC
	ldr r0, [r4, #0x30]
	adds r0, #0x38
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	bl sub_08016A04
_0807C7FC:
	ldrb r1, [r4, #0xf]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4, #0xf]
	bl sub_08080BC4
	pop {r4, r5, pc}
	.align 2, 0
_0807C80C: .4byte gUnk_03000BF0

	thumb_func_start sub_0807C810
sub_0807C810: @ 0x0807C810
	push {r4, r5, r6, lr}
	bl sub_0807BFD0
	ldr r2, _0807C850 @ =gUnk_03004030
	ldr r6, _0807C854 @ =gLinkEntity
	ldr r4, _0807C858 @ =gUnk_03000BF0
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	ldrh r1, [r2, #4]
	adds r1, r1, r0
	movs r5, #0
	strh r1, [r6, #0x2e]
	ldrh r1, [r3, #6]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r6, #0x32]
	bl sub_080809D4
	ldr r0, _0807C85C @ =gUnk_02000070
	strb r5, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C850: .4byte gUnk_03004030
_0807C854: .4byte gLinkEntity
_0807C858: .4byte gUnk_03000BF0
_0807C85C: .4byte gUnk_02000070

	thumb_func_start sub_0807C860
sub_0807C860: @ 0x0807C860
	push {r4, lr}
	ldr r0, _0807C88C @ =gUnk_030010A0
	adds r0, #0x2d
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0807C890 @ =gUnk_02025EB4
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	bl sub_0801D66C
	ldr r0, _0807C894 @ =gUnk_0200B654
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	adds r2, r4, #0
	bl sub_0801D66C
	pop {r4, pc}
	.align 2, 0
_0807C88C: .4byte gUnk_030010A0
_0807C890: .4byte gUnk_02025EB4
_0807C894: .4byte gUnk_0200B654

	thumb_func_start sub_0807C898
sub_0807C898: @ 0x0807C898
	push {r4, r5, lr}
	ldr r4, _0807C8AC @ =gUnk_030010A0
	adds r4, #0x2d
	movs r5, #0
	movs r0, #2
	strb r0, [r4]
	bl sub_0807C0DC
	strb r5, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0807C8AC: .4byte gUnk_030010A0

	thumb_func_start sub_0807C8B0
sub_0807C8B0: @ 0x0807C8B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r4, r1, #0
	mov ip, r2
	mov r0, ip
	muls r0, r4, r0
	lsls r0, r0, #1
	add r0, r8
	subs r7, r0, #2
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #7
	add r0, r8
	lsls r3, r4, #1
	subs r1, r3, #2
	adds r0, r0, r1
	movs r5, #0
	cmp r5, ip
	bhs _0807C906
	mov sb, r3
_0807C8DE:
	movs r2, #0
	adds r6, r0, #0
	subs r6, #0x80
	cmp r2, r4
	bhs _0807C8FA
	adds r1, r7, #0
	adds r3, r0, #0
_0807C8EC:
	ldrh r0, [r1]
	strh r0, [r3]
	subs r1, #2
	subs r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0807C8EC
_0807C8FA:
	adds r0, r6, #0
	mov r1, sb
	subs r7, r7, r1
	adds r5, #1
	cmp r5, ip
	blo _0807C8DE
_0807C906:
	movs r0, #0x40
	subs r6, r0, r4
	movs r5, #0
	lsls r0, r4, #1
	mov r2, ip
	lsls r7, r2, #7
	mov r2, r8
	adds r1, r2, r0
_0807C916:
	lsls r0, r5, #7
	adds r0, r1, r0
	movs r2, #0
	adds r3, r5, #1
	cmp r2, r6
	bhs _0807C92E
	movs r4, #0
_0807C924:
	strh r4, [r0]
	adds r0, #2
	adds r2, #1
	cmp r2, r6
	blo _0807C924
_0807C92E:
	adds r5, r3, #0
	cmp r5, #0x3f
	bls _0807C916
	movs r0, #0x40
	mov r1, ip
	subs r6, r0, r1
	mov r2, r8
	adds r0, r2, r7
	movs r5, #0
	cmp r5, r6
	bhs _0807C956
	adds r4, r0, #0
_0807C946:
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_0801D630
	adds r4, #0x80
	adds r5, #1
	cmp r5, r6
	blo _0807C946
_0807C956:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807C960
sub_0807C960: @ 0x0807C960
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807C994
	ldr r0, _0807C984 @ =0x7FFFFFFF
	ands r0, r1
	ldr r1, _0807C988 @ =gUnk_08324AE4
	adds r1, r0, r1
	lsrs r0, r2, #0x18
	cmp r0, #6
	bne _0807C98C
	adds r0, r1, #0
	adds r1, r2, #0
	bl LZ77UnCompVram
	b _0807C994
	.align 2, 0
_0807C984: .4byte 0x7FFFFFFF
_0807C988: .4byte gUnk_08324AE4
_0807C98C:
	adds r0, r1, #0
	adds r1, r2, #0
	bl LZ77UnCompWram
_0807C994:
	pop {pc}
	.align 2, 0