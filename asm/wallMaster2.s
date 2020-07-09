	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WallMaster2
WallMaster2: @ 0x0802CC3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802CC64 @ =gUnk_080CD6FC
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_0802CC64: .4byte gUnk_080CD6FC

	thumb_func_start sub_0802CC68
sub_0802CC68: @ 0x0802CC68
	push {lr}
	ldr r2, _0802CC7C @ =gUnk_080CD714
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802CC7C: .4byte gUnk_080CD714

	thumb_func_start sub_0802CC80
sub_0802CC80: @ 0x0802CC80
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	blt _0802CCB8
	cmp r1, #1
	ble _0802CC9A
	cmp r1, #0x1e
	bne _0802CCB8
_0802CC9A:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	ldr r2, _0802CCD4 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
_0802CCB8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CCCA
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802CCCA:
	ldr r1, _0802CCD8 @ =gUnk_080CD6FC
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0802CCD4: .4byte gLinkEntity
_0802CCD8: .4byte gUnk_080CD6FC

	thumb_func_start nullsub_151
nullsub_151: @ 0x0802CCDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802CCE0
sub_0802CCE0: @ 0x0802CCE0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	bl Random
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	ldr r0, _0802CD50 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl Random
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
	lsrs r0, r0, #8
	movs r1, #0x60
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r5, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0802CF64
	adds r0, r4, #0
	bl sub_0802CFD8
	pop {r4, r5, pc}
	.align 2, 0
_0802CD50: .4byte 0x0000FFFE

	thumb_func_start sub_0802CD54
sub_0802CD54: @ 0x0802CD54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl GetNextFrame
	adds r0, r5, #0
	bl sub_0802CFD8
	adds r1, r5, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802CD76
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802CDC8
_0802CD76:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802CDC8
	adds r6, r5, #0
	adds r6, #0x7b
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802CDC4
	movs r0, #2
	strb r0, [r5, #0xc]
	bl Random
	adds r4, r0, #0
	lsrs r0, r4, #0x10
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	bl Random
	ldr r2, _0802CDC0 @ =gUnk_080CD728
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	lsrs r4, r4, #0x18
	movs r0, #0x60
	ands r4, r0
	strb r4, [r6]
	b _0802CDE4
	.align 2, 0
_0802CDC0: .4byte gUnk_080CD728
_0802CDC4:
	subs r0, #1
	strb r0, [r6]
_0802CDC8:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CDDE
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0802CF64
_0802CDDE:
	adds r0, r5, #0
	bl sub_0806F69C
_0802CDE4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802CDE8
sub_0802CDE8: @ 0x0802CDE8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802CE3C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802CE3C
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802CE2E
	ldr r0, _0802CE38 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0802CF8C
_0802CE2E:
	adds r0, r4, #0
	bl sub_0806F69C
	b _0802CE58
	.align 2, 0
_0802CE38: .4byte gUnk_020000B0
_0802CE3C:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x96
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
_0802CE58:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0802CFD8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CE68
sub_0802CE68: @ 0x0802CE68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0802CED4 @ =gLinkState
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #0x1a]
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r5, _0802CED8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	bne _0802CEAC
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFacingDirection
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_0802CEAC:
	adds r0, r4, #0
	bl sub_0802CFD8
	adds r0, r4, #0
	bl GetNextFrame
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802CEDC
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802CEF0
	.align 2, 0
_0802CED4: .4byte gLinkState
_0802CED8: .4byte gLinkEntity
_0802CEDC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802CEF0
	strb r2, [r3]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
_0802CEF0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802CEF4
sub_0802CEF4: @ 0x0802CEF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802CFD8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CF28
	bl sub_0805E5A8
	ldr r1, _0802CF20 @ =gUnk_0813AB1C
	ldr r0, _0802CF24 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl DoExitTransition
	b _0802CF5A
	.align 2, 0
_0802CF20: .4byte gUnk_0813AB1C
_0802CF24: .4byte gArea
_0802CF28:
	ldr r0, [r4, #0x34]
	ldr r1, _0802CF5C @ =0xFFFE0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802CF4A
	ldrb r0, [r4, #0x18]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r4, #0x18]
_0802CF4A:
	ldr r1, _0802CF60 @ =gLinkState
	ldrb r0, [r1, #0xa]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
_0802CF5A:
	pop {r4, pc}
	.align 2, 0
_0802CF5C: .4byte 0xFFFE0000
_0802CF60: .4byte gLinkState

	thumb_func_start sub_0802CF64
sub_0802CF64: @ 0x0802CF64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0802CF76
	bl Random
	b _0802CF7E
_0802CF76:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
_0802CF7E:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802CF8C
	pop {r4, pc}

	thumb_func_start sub_0802CF8C
sub_0802CF8C: @ 0x0802CF8C
	push {r4, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	adds r2, r1, #2
	movs r0, #0x1c
	ands r2, r0
	ldrb r4, [r3, #0x14]
	lsls r0, r4, #2
	subs r0, r2, r0
	adds r0, #6
	cmp r0, #0xc
	bls _0802CFA8
	lsrs r0, r2, #2
	b _0802CFB8
_0802CFA8:
	adds r0, r1, #1
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	ble _0802CFD0
	lsrs r0, r2, #2
	cmp r0, r4
	beq _0802CFD0
_0802CFB8:
	strb r0, [r3, #0x14]
	lsrs r0, r2, #3
	lsls r0, r0, #2
	ldr r1, _0802CFD4 @ =gUnk_080CD730
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r1, [r2, #2]
	adds r0, #2
	strh r1, [r0]
_0802CFD0:
	pop {r4, pc}
	.align 2, 0
_0802CFD4: .4byte gUnk_080CD730

	thumb_func_start sub_0802CFD8
sub_0802CFD8: @ 0x0802CFD8
	push {lr}
	mov ip, r0
	ldr r2, _0802D014 @ =gUnk_080CD740
	mov r3, ip
	adds r3, #0x7a
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r0, ip
	adds r0, #0x74
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r0, ip
	adds r0, #0x76
	ldrh r3, [r0]
	mov r0, ip
	bl sub_0805EC9C
	pop {pc}
	.align 2, 0
_0802D014: .4byte gUnk_080CD740
