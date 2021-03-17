	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	ldr r0, _0806FBD0 @ =gScreenTransition
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0806FBC8
	ldr r0, _0806FBD4 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0806FBCC
_0806FBC8:
	movs r0, #6
	strb r0, [r1, #0xd]
_0806FBCC:
	pop {pc}
	.align 2, 0
_0806FBD0: .4byte gScreenTransition
_0806FBD4: .4byte gPlayerState

	thumb_func_start AllocMutableHitbox
AllocMutableHitbox: @ 0x0806FBD8
	push {r4, lr}
	adds r4, r0, #0
	bl UnloadHitbox
	movs r0, #0xc
	bl zMalloc
	str r0, [r4, #0x48]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start UnloadHitbox
UnloadHitbox: @ 0x0806FBEC
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
	ldr r4, _0806FC20 @ =gPlayerEntity
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
_0806FC20: .4byte gPlayerEntity

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
	bl GetFacingDirection
	bl sub_0806F5A4
	pop {pc}

	thumb_func_start sub_0806FCAC
sub_0806FCAC: @ 0x0806FCAC
	push {lr}
	bl GetFacingDirection
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
	ldr r0, _0806FD6C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0806FD70
	movs r0, #0
	b _0806FD84
	.align 2, 0
_0806FD6C: .4byte gPlayerState
_0806FD70:
	ldr r0, _0806FD88 @ =gPlayerEntity
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
_0806FD88: .4byte gPlayerEntity

	thumb_func_start sub_0806FD8C
sub_0806FD8C: @ 0x0806FD8C
	push {lr}
	ldr r0, _0806FD9C @ =gUnk_020000C0
	movs r1, #0xc0
	lsls r1, r1, #4
	bl MemClear
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

	thumb_func_start LoadExtraSpriteData
LoadExtraSpriteData: @ 0x0806FDEC
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
	bl UnloadOBJPalette
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
	bl MemClear
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

	thumb_func_start SetExtraSpriteFrame
SetExtraSpriteFrame: @ 0x0806FF60
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

	thumb_func_start SetSpriteSubEntryOffsetData1
SetSpriteSubEntryOffsetData1: @ 0x0806FF88
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
	bl GetSpriteSubEntryOffsetDataPointer
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

	thumb_func_start SetSpriteSubEntryOffsetData2
SetSpriteSubEntryOffsetData2: @ 0x0806FFD8
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
	bl GetSpriteSubEntryOffsetDataPointer
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
	ldr r1, _080700C0 @ =gSpritePtrs
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
_080700C0: .4byte gSpritePtrs
_080700C4:
	movs r0, #0
_080700C6:
	pop {pc}

	thumb_func_start GetSpriteSubEntryOffsetDataPointer
GetSpriteSubEntryOffsetDataPointer: @ 0x080700C8
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
	ldr r2, _0807017C @ =gPlayerEntity
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
_0807017C: .4byte gPlayerEntity
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
	bl InitializeAnimation
	ldr r0, _080701F4 @ =0x000001DD
	bl SoundReq
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
	bl GetNextFrame
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
	ldr r1, _08070358 @ =gPlayerEntity
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
	bl InitializeAnimation
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
	bl SetTile
	b _0807037A
	.align 2, 0
_08070354: .4byte gRoomControls
_08070358: .4byte gPlayerEntity
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
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08070394
	bl DeleteThisEntity
_08070394:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08070398
sub_08070398: @ 0x08070398
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080703B8
	bl DeleteThisEntity
_080703B8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080703BC
sub_080703BC: @ 0x080703BC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
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
	bl SetTile
_0807049E:
	adds r0, r4, #0
	movs r1, #0x13
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08017744
	ldr r0, _080704B8 @ =0x00000199
	bl SoundReq
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
	bl SoundReq
	adds r0, r4, #0
	bl sub_080704FC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080704FC
sub_080704FC: @ 0x080704FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0807052C @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x80
	ands r0, r2
	ldr r1, _08070530 @ =gPlayerState
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
	bl DeleteEntity
	b _08070566
	.align 2, 0
_0807052C: .4byte gPlayerEntity
_08070530: .4byte gPlayerState
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
	ldr r2, _08070580 @ =gPlayerEntity
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
_08070580: .4byte gPlayerEntity
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
	bl MemClear
	pop {pc}
	.align 2, 0
_080705A8: .4byte gUnk_02034490

	thumb_func_start sub_080705AC
sub_080705AC: @ 0x080705AC
	push {lr}
	ldr r0, _08070614 @ =gInput
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08070674
	ldr r0, _08070618 @ =gFadeControl
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
	ldr r1, _08070624 @ =gSave
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
	ldr r1, _08070628 @ =gPlayerState
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
_08070614: .4byte gInput
_08070618: .4byte gFadeControl
_0807061C: .4byte gUnk_02034490
_08070620: .4byte gTextBox
_08070624: .4byte gSave
_08070628: .4byte gPlayerState
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
