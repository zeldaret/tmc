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
	ldr r0, _0806FBD4 @ =gLinkState
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
_0806FBD4: .4byte gLinkState

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
	ldr r0, _0806FD6C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0806FD70
	movs r0, #0
	b _0806FD84
	.align 2, 0
_0806FD6C: .4byte gLinkState
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
	bl UpdateSprite
	ldr r0, _080701F4 @ =0x000001DD
	bl PlaySFX
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
	ldr r7, _08070354 @ =gRoomControls
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
	bl UpdateSprite
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
	bl UpdateCollisionLayer
	b _0807037A
	.align 2, 0
_08070354: .4byte gRoomControls
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
	ldr r2, _08070404 @ =gRoomControls
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
_08070404: .4byte gRoomControls
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
	ldr r2, _080704B4 @ =gRoomControls
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
	bl UpdateCollisionLayer
_0807049E:
	adds r0, r4, #0
	movs r1, #0x13
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08017744
	ldr r0, _080704B8 @ =0x00000199
	bl PlaySFX
	pop {r4, r5, r6, pc}
	.align 2, 0
_080704B4: .4byte gRoomControls
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
	bl PlaySFX
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
	ldr r1, _08070530 @ =gLinkState
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
_08070530: .4byte gLinkState
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
	ldr r0, _08070620 @ =gTextBox
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
	ldr r1, _08070628 @ =gLinkState
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
_08070620: .4byte gTextBox
_08070624: .4byte gUnk_02002A40
_08070628: .4byte gLinkState
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
	ldr r6, _08070788 @ =gLinkState
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
	bl LoadAnimation
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
_08070788: .4byte gLinkState
_0807078C: .4byte gLinkEntity
_08070790: .4byte gUnk_08114F88

	thumb_func_start sub_08070794
sub_08070794: @ 0x08070794
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _080707F0 @ =gLinkState
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
_080707F0: .4byte gLinkState
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
	ldr r4, _08070918 @ =gLinkState
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
_08070918: .4byte gLinkState
_0807091C: .4byte 0x10000002
_08070920: .4byte gUnk_02034350
_08070924:
	ldr r0, _0807094C @ =gLinkState
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
_0807094C: .4byte gLinkState
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
	ldr r0, _080709A4 @ =gLinkState
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	b _080709D8
	.align 2, 0
_080709A4: .4byte gLinkState
_080709A8:
	ldr r1, _080709B0 @ =gLinkState
	movs r0, #0x80
	strb r0, [r1, #6]
	b _080709D8
	.align 2, 0
_080709B0: .4byte gLinkState
_080709B4:
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	bl sub_080797EC
	b _08070BE4
_080709C2:
	ldr r0, _080709D4 @ =gLinkState
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	bl sub_080797EC
	b _08070BE4
	.align 2, 0
_080709D4: .4byte gLinkState
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
	ldr r4, _08070A78 @ =gLinkState
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
_08070A78: .4byte gLinkState
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
	ldr r0, _08070AA8 @ =gLinkState
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08070A9E
	b _08070BE4
_08070A9E:
	adds r0, r5, #0
	bl sub_080042B8
	b _08070BE4
	.align 2, 0
_08070AA8: .4byte gLinkState
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
	ldr r2, _08070BB8 @ =gLinkState
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
	ldr r3, _08070BB8 @ =gLinkState
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
	ldr r1, _08070BB8 @ =gLinkState
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
_08070BB8: .4byte gLinkState
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
	ldr r2, _08070C34 @ =gLinkState
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
_08070C34: .4byte gLinkState
_08070C38: .4byte gUnk_0811BA60

	thumb_func_start sub_08070C3C
sub_08070C3C: @ 0x08070C3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004168
	ldr r2, _08070C64 @ =gLinkState
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
_08070C64: .4byte gLinkState
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
	bl PlaySFX
	movs r0, #0x85
	bl PlaySFX
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
	ldr r4, _08070CF8 @ =gLinkState
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
_08070CF8: .4byte gLinkState
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
	ldr r3, _08070D94 @ =gLinkState
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
_08070D94: .4byte gLinkState
_08070D98:
	ldr r0, _08070DBC @ =0x00000C18
	strh r0, [r3, #8]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_08070DA2:
	ldr r0, _08070DC0 @ =gLinkState
	movs r1, #0x80
	strb r1, [r0, #2]
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	bl sub_08077B2C
	bl sub_08078F60
	pop {r4, pc}
	.align 2, 0
_08070DBC: .4byte 0x00000C18
_08070DC0: .4byte gLinkState

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
	ldr r6, _08070E18 @ =gLinkState
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
_08070E18: .4byte gLinkState
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
	ldr r2, _08070E78 @ =gLinkState
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
_08070E78: .4byte gLinkState

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
	ldr r0, _08070E98 @ =gLinkState
	strb r1, [r0, #2]
	bl sub_080791D0
_08070E94:
	pop {pc}
	.align 2, 0
_08070E98: .4byte gLinkState

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
	ldr r1, _08070ED4 @ =gLinkState
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
_08070ED4: .4byte gLinkState
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
	ldr r0, _08070F10 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08070EFE
	movs r0, #1
	strb r0, [r2, #0xd]
_08070EFE:
	ldr r2, _08070F14 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08070F18
	bl sub_08079938
	b _08070F1C
	.align 2, 0
_08070F10: .4byte gTextBox
_08070F14: .4byte gLinkState
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
	ldr r0, _08070F4C @ =gTextBox
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
_08070F4C: .4byte gTextBox

	thumb_func_start sub_08070F50
sub_08070F50: @ 0x08070F50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08070F9C @ =gLinkState
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
_08070F9C: .4byte gLinkState
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
	ldr r3, _08070FE8 @ =gLinkState
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
_08070FE8: .4byte gLinkState
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
	ldr r0, _0807101C @ =gLinkState
	strh r1, [r0, #8]
_08071008:
	movs r0, #1
	strb r0, [r4, #0xd]
	bl sub_08077B2C
	bl sub_08078F60
	pop {r4, pc}
	.align 2, 0
_08071018: .4byte 0x000001B9
_0807101C: .4byte gLinkState

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
	ldr r0, _0807107C @ =gTextBox
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
	ldr r0, _08071080 @ =gLinkState
	strb r2, [r0, #2]
	bl sub_080791D0
_08071078:
	pop {r4, pc}
	.align 2, 0
_0807107C: .4byte gTextBox
_08071080: .4byte gLinkState

	thumb_func_start sub_08071084
sub_08071084: @ 0x08071084
	push {lr}
	ldr r1, _080710A0 @ =gLinkState
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
_080710A0: .4byte gLinkState
_080710A4: .4byte gUnk_0811BA88

	thumb_func_start sub_080710A8
sub_080710A8: @ 0x080710A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldr r1, _080710EC @ =gLinkState
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
_080710EC: .4byte gLinkState
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
	bl PlaySFX
	movs r0, #0x78
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08071130
sub_08071130: @ 0x08071130
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _08071206
	ldr r6, _080711B4 @ =gLinkState
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
_080711B4: .4byte gLinkState
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
	bl PlaySFX
_08071206:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08071208
sub_08071208: @ 0x08071208
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08071244 @ =gLinkState
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
	ldr r1, _08071244 @ =gLinkState
	movs r0, #0
	strb r0, [r1, #2]
	bl sub_080791D0
_08071240:
	pop {r4, pc}
	.align 2, 0
_08071244: .4byte gLinkState

	thumb_func_start sub_08071248
sub_08071248: @ 0x08071248
	push {lr}
	ldr r3, _08071274 @ =gLinkState
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
_08071274: .4byte gLinkState
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
	ldr r5, _080712AC @ =gLinkState
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
	bl PlaySFX
	b _080712E4
	.align 2, 0
_080712AC: .4byte gLinkState
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
	bl CreateFx
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
	ldr r3, _08071314 @ =gLinkState
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
_08071314: .4byte gLinkState
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
	ldr r2, _0807137C @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08079458
_0807137A:
	pop {r4, r5, pc}
	.align 2, 0
_0807137C: .4byte gLinkState

	thumb_func_start sub_08071380
sub_08071380: @ 0x08071380
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080713E8 @ =gLinkState
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
	bl DoFade
	movs r0, #0xf8
	bl PlaySFX
	b _080713FC
	.align 2, 0
_080713E8: .4byte gLinkState
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
	ldr r2, _080714A0 @ =gLinkState
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
_080714A0: .4byte gLinkState
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
	ldr r3, _0807152C @ =gLinkState
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
_0807152C: .4byte gLinkState
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
	ldr r2, _080715A0 @ =gRoomControls
	movs r1, #0
	str r1, [r2, #0x30]
	ldr r2, _080715A4 @ =gUnk_02034490
	movs r1, #1
	strb r1, [r2]
	movs r1, #3
	strb r1, [r0, #0xd]
	movs r1, #0x1e
	strb r1, [r0, #0xf]
	ldr r2, _080715A8 @ =gLinkState
	movs r1, #0xe7
	lsls r1, r1, #3
	strh r1, [r2, #8]
	movs r1, #6
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	bl sub_08077B20
	bl sub_0805E544
	pop {pc}
	.align 2, 0
_080715A0: .4byte gRoomControls
_080715A4: .4byte gUnk_02034490
_080715A8: .4byte gLinkState

	thumb_func_start sub_080715AC
sub_080715AC: @ 0x080715AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080715CC
	adds r0, r4, #0
	bl sub_080042B8
	ldr r0, _080715D0 @ =gLinkState
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
_080715D0: .4byte gLinkState

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
	ldr r2, _08071628 @ =gLinkState
	ldr r0, _0807162C @ =0x000002C3
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08071630 @ =0x0000016F
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08071628: .4byte gLinkState
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
	ldr r3, _0807185C @ =gLinkState
	ldr r1, [r3, #0x30]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	str r1, [r3, #0x30]
	bl sub_0805EC60
	bl UnfreezeTime
	pop {r4, pc}
	.align 2, 0
_08071850: .4byte gUnk_02033A90
_08071854: .4byte gUnk_0811BAC4
_08071858: .4byte gUnk_02034490
_0807185C: .4byte gLinkState

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
	ldr r0, _08071898 @ =gLinkState
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
_08071898: .4byte gLinkState
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
	ldr r5, _080718F4 @ =gLinkState
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
_080718F4: .4byte gLinkState
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
	bl CreateObjectWithParent
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _08071986
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _0807197C
	ldr r1, _08071978 @ =gLinkState
	movs r0, #0xf3
	lsls r0, r0, #2
	b _08071980
	.align 2, 0
_08071978: .4byte gLinkState
_0807197C:
	ldr r1, _08071988 @ =gLinkState
	ldr r0, _0807198C @ =0x000003C7
_08071980:
	strh r0, [r1, #8]
	bl sub_08052BB8
_08071986:
	pop {r4, pc}
	.align 2, 0
_08071988: .4byte gLinkState
_0807198C: .4byte 0x000003C7

	thumb_func_start sub_08071990
sub_08071990: @ 0x08071990
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080719C0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080719E2
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	ldr r3, _080719C4 @ =gLinkState
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
_080719C0: .4byte gTextBox
_080719C4: .4byte gLinkState
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
	ldr r4, _08071A20 @ =gLinkState
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
_08071A20: .4byte gLinkState
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
	ldr r1, _08071AA8 @ =gLinkState
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
_08071AA8: .4byte gLinkState
_08071AAC: .4byte gUnk_0811BAE4

	thumb_func_start sub_08071AB0
sub_08071AB0: @ 0x08071AB0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	ldr r1, _08071AD8 @ =gLinkState
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
_08071AD8: .4byte gLinkState
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
	ldr r5, _08071B34 @ =gLinkState
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
_08071B34: .4byte gLinkState
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
	ldr r5, _08071BAC @ =gLinkState
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
	bl LoadAnimation
_08071BA8:
	pop {r4, r5, pc}
	.align 2, 0
_08071BAC: .4byte gLinkState

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
	ldr r0, _08071BD8 @ =gLinkState
	adds r0, #0xa8
	movs r1, #0x12
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_08071BD4: .4byte gUnk_0811BB2C
_08071BD8: .4byte gLinkState

	thumb_func_start sub_08071BDC
sub_08071BDC: @ 0x08071BDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08071C10 @ =gLinkState
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
_08071C10: .4byte gLinkState
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
	ldr r2, _08071CA4 @ =gLinkState
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
	bl PlaySFX
_08071C9C:
	pop {r4, r5, pc}
	.align 2, 0
_08071CA0: .4byte 0x00000459
_08071CA4: .4byte gLinkState
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
	ldr r1, _08071CE0 @ =gLinkState
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
_08071CE0: .4byte gLinkState
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
	bl PlaySFX
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
	ldr r1, _08071D70 @ =gLinkState
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
_08071D70: .4byte gLinkState
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
	ldr r5, _08071DB4 @ =gLinkState
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
	bl UnfreezeTime
	bl sub_080791D0
_08071DB2:
	pop {r4, r5, pc}
	.align 2, 0
_08071DB4: .4byte gLinkState

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
	ldr r1, _08071DF4 @ =gLinkState
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
_08071DF4: .4byte gLinkState
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
	ldr r5, _08071E34 @ =gLinkState
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
_08071E34: .4byte gLinkState
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
	ldr r3, _08071EE4 @ =gLinkState
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
_08071EE4: .4byte gLinkState
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
	ldr r1, _08071F34 @ =gLinkState
	movs r0, #0
	str r0, [r1, #0x2c]
	bl sub_0807921C
_08071F32:
	pop {r4, pc}
	.align 2, 0
_08071F34: .4byte gLinkState

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
	ldr r1, _08071F78 @ =gLinkState
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1, #8]
	bl sub_08077B20
	ldr r0, _08071F7C @ =0x00000195
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08071F78: .4byte gLinkState
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
	bl UpdateSpriteOrderAndFlip
	ldr r0, _08071FB4 @ =gLinkState
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
_08071FB4: .4byte gLinkState
_08071FB8:
	bl sub_08079B24
	cmp r0, #0
	bne _08071FC8
	adds r0, r4, #0
	bl sub_08079708
	b _08071FFE
_08071FC8:
	ldr r0, _08071FEC @ =gLinkState
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
_08071FEC: .4byte gLinkState
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
	ldr r2, _08072044 @ =gLinkState
	ldr r0, [r2, #0x30]
	ldr r1, _08072048 @ =0xFFFFF7FE
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	movs r1, #0xd
	movs r2, #0
	bl CreateFx
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_08072044: .4byte gLinkState
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
	ldr r2, _08072094 @ =gLinkState
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
_08072094: .4byte gLinkState

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
	ldr r2, _0807214C @ =gLinkState
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
_0807214C: .4byte gLinkState
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
	ldr r0, _080721A4 @ =gLinkState
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080721A8
	adds r0, r4, #0
	bl sub_0806F69C
	b _080721AC
	.align 2, 0
_080721A4: .4byte gLinkState
_080721A8:
	bl sub_08079E08
_080721AC:
	ldr r1, _080721E0 @ =gLinkState
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
	bl UpdateSpriteOrderAndFlip
	bl sub_080791BC
_080721DE:
	pop {r4, pc}
	.align 2, 0
_080721E0: .4byte gLinkState

	thumb_func_start sub_080721E4
sub_080721E4: @ 0x080721E4
	push {lr}
	ldr r1, _08072208 @ =gLinkState
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
_08072208: .4byte gLinkState
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
	ldr r2, _08072244 @ =gLinkState
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
_08072244: .4byte gLinkState
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
	ldr r5, _0807229C @ =gLinkState
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
_0807229C: .4byte gLinkState
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
	ldr r1, _080722D4 @ =gLinkState
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
_080722D4: .4byte gLinkState
_080722D8: .4byte gUnk_0811BB70

	thumb_func_start sub_080722DC
sub_080722DC: @ 0x080722DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r2, _08072318 @ =gLinkState
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
_08072318: .4byte gLinkState
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
	bl PlaySFX
	movs r0, #0x7a
	bl PlaySFX
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
	ldr r2, _080723C4 @ =gLinkState
	ldr r0, _080723C8 @ =0x000002C1
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	ldr r1, _080723CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
	movs r0, #0xd3
	lsls r0, r0, #1
	bl PlaySFX
_080723C0:
	pop {r4, pc}
	.align 2, 0
_080723C4: .4byte gLinkState
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
	ldr r2, _0807244C @ =gLinkState
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
_0807244C: .4byte gLinkState
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
	ldr r2, _0807248C @ =gLinkState
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #8]
	movs r0, #0x7b
	bl PlaySFX
	pop {pc}
	.align 2, 0
_0807248C: .4byte gLinkState

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
	ldr r1, _08072530 @ =gLinkState
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
	ldr r0, _08072534 @ =gRoomControls
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
_08072530: .4byte gLinkState
_08072534: .4byte gRoomControls
_08072538:
	ldr r0, _08072548 @ =gLinkState
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _08072588
	adds r0, r4, #0
	bl sub_080042B8
	b _08072588
	.align 2, 0
_08072548: .4byte gLinkState
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
	ldr r2, _08072574 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807257C
	ldr r0, _08072578 @ =0x00000C18
	b _08072580
	.align 2, 0
_08072570: .4byte gUnk_02034350
_08072574: .4byte gLinkState
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
	ldr r0, _080725D0 @ =gRoomControls
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
	ldr r2, _080725D4 @ =gLinkState
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
_080725D0: .4byte gRoomControls
_080725D4: .4byte gLinkState
_080725D8: .4byte gLinkEntity
_080725DC:
	adds r0, r4, #0
	bl sub_080042B8
	b _08072604
_080725E4:
	ldr r2, _08072624 @ =gLinkState
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
	ldr r1, _08072624 @ =gLinkState
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
_08072624: .4byte gLinkState
_08072628: .4byte gLinkEntity

	thumb_func_start sub_0807262C
sub_0807262C: @ 0x0807262C
	push {lr}
	ldr r1, _08072648 @ =gLinkState
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
_08072648: .4byte gLinkState
_0807264C: .4byte gUnk_0811BB90

	thumb_func_start sub_08072650
sub_08072650: @ 0x08072650
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08072698 @ =gLinkState
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
_08072698: .4byte gLinkState
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
	ldr r2, _080726E0 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2, #0x30]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080726E4
	movs r0, #0x79
	bl PlaySFX
	b _080726EA
	.align 2, 0
_080726E0: .4byte gLinkState
_080726E4:
	movs r0, #0x78
	bl PlaySFX
_080726EA:
	movs r0, #0x7e
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080726F4
sub_080726F4: @ 0x080726F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _08072744 @ =gLinkState
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
_08072744: .4byte gLinkState
_08072748: .4byte 0xFFFBFFFF
_0807274C:
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r0, _080727A0 @ =gLinkState
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
	bl CreateFx
	movs r0, #4
	strb r0, [r4, #0xe]
_0807277E:
	ldr r5, _080727A0 @ =gLinkState
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
_080727A0: .4byte gLinkState
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
	ldr r0, _080728A4 @ =gLinkState
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
	ldr r0, _080728A4 @ =gLinkState
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
	ldr r0, _080728A4 @ =gLinkState
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
_080728A4: .4byte gLinkState
_080728A8: .4byte 0xFFDBFFFF

	thumb_func_start sub_080728AC
sub_080728AC: @ 0x080728AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08079938
	ldr r0, _080728C8 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080728CC
	adds r0, r4, #0
	bl sub_0807B068
	b _080728D0
	.align 2, 0
_080728C8: .4byte gLinkState
_080728CC:
	bl sub_08078F60
_080728D0:
	ldr r1, _08072940 @ =gLinkState
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
	ldr r0, _08072948 @ =gRoomControls
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
	ldr r0, _08072940 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807293C
	bl sub_0807A1B8
_0807293C:
	pop {r4, r5, pc}
	.align 2, 0
_08072940: .4byte gLinkState
_08072944: .4byte gLinkEntity
_08072948: .4byte gRoomControls

	thumb_func_start sub_0807294C
sub_0807294C: @ 0x0807294C
	push {lr}
	ldr r1, _08072968 @ =gLinkState
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
_08072968: .4byte gLinkState
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
	ldr r2, _080729D8 @ =gLinkState
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
_080729D8: .4byte gLinkState
_080729DC:
	ldr r0, _08072A50 @ =0x0000061C
	strh r0, [r2, #8]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08072A54 @ =gRoomControls
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
	ldr r3, _08072A54 @ =gRoomControls
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
	bl UpdateCollisionLayer
	bl sub_08077B2C
	adds r0, r5, #0
	bl sub_08072A60
	movs r0, #0x81
	bl PlaySFX
_08072A4C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08072A50: .4byte 0x0000061C
_08072A54: .4byte gRoomControls
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
	ldr r1, _08072A94 @ =gLinkState
	ldr r0, _08072A98 @ =0x00000624
	strh r0, [r1, #8]
	b _08072ACA
	.align 2, 0
_08072A94: .4byte gLinkState
_08072A98: .4byte 0x00000624
_08072A9C:
	movs r0, #2
	strb r0, [r2, #0xd]
	ldr r2, _08072AB4 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072ABC
	ldr r0, _08072AB8 @ =0x00000954
	strh r0, [r2, #8]
	b _08072ACA
	.align 2, 0
_08072AB4: .4byte gLinkState
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
	ldr r5, _08072AE0 @ =gLinkState
	ldrb r3, [r5, #0xd]
	lsls r2, r3, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	bne _08072AE4
	movs r0, #0
	b _08072B56
	.align 2, 0
_08072AE0: .4byte gLinkState
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
	ldr r2, _08072B4C @ =gRoomControls
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
_08072B4C: .4byte gRoomControls
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
	ldr r3, _08072C08 @ =gRoomControls
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
	bl UpdateCollisionLayer
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
	ldr r1, _08072C0C @ =gLinkState
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
_08072C08: .4byte gRoomControls
_08072C0C: .4byte gLinkState
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
	ldr r1, _08072C44 @ =gLinkState
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r1, #8]
	movs r0, #0x7c
	bl PlaySFX
_08072C40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08072C44: .4byte gLinkState

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
	ldr r4, _08072C90 @ =gLinkState
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
_08072C90: .4byte gLinkState
_08072C94:
	bl sub_0807921C
_08072C98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08072C9C
sub_08072C9C: @ 0x08072C9C
	push {lr}
	ldr r1, _08072CB8 @ =gLinkState
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
_08072CB8: .4byte gLinkState
_08072CBC: .4byte gUnk_0811BBAC

	thumb_func_start sub_08072CC0
sub_08072CC0: @ 0x08072CC0
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r3, _08072CF4 @ =gLinkState
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
_08072CF4: .4byte gLinkState
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
	ldr r2, _08072D50 @ =gLinkState
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
_08072D50: .4byte gLinkState

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
	ldr r5, _08072EDC @ =gLinkState
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
_08072EDC: .4byte gLinkState
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
	bl PlaySFX
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
	ldr r6, _08072F88 @ =gLinkState
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
_08072F88: .4byte gLinkState
_08072F8C: .4byte gUnk_0811BBE4
_08072F90: .4byte 0x000002CF

	thumb_func_start sub_08072F94
sub_08072F94: @ 0x08072F94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08072FB4 @ =gLinkState
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
_08072FB4: .4byte gLinkState
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
	ldr r0, _08073100 @ =gLinkState
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
	ldr r1, _08073100 @ =gLinkState
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
_08073100: .4byte gLinkState
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
	ldr r0, _080731D0 @ =gLinkState
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
_080731D0: .4byte gLinkState
_080731D4: .4byte gUnk_0811BBF8
