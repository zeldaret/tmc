	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804A720
sub_0804A720: @ 0x0804A720
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804A7D0
	ldrb r0, [r2, #9]
	lsls r0, r0, #1
	ldr r1, _0804A76C @ =gUnk_080D3D94
	adds r3, r0, r1
	adds r4, r2, #0
	adds r4, #0x68
	ldrb r1, [r4, #0x16]
	cmp r1, #0
	bne _0804A744
	ldrb r1, [r3]
_0804A744:
	adds r0, r2, #0
	adds r0, #0x6e
	strb r1, [r0]
	adds r5, r0, #0
	ldrb r1, [r4, #0x17]
	cmp r1, #0
	bne _0804A754
	ldrb r1, [r3, #1]
_0804A754:
	adds r0, r2, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r6, r0, #0
	ldrh r1, [r4, #0x1c]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A774
	ldr r0, _0804A770 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r0, r1, r0
	b _0804A784
	.align 2, 0
_0804A76C: .4byte gUnk_080D3D94
_0804A770: .4byte gRoomControls
_0804A774:
	ldrb r0, [r5]
	lsls r1, r0, #2
	movs r5, #0x2e
	ldrsh r0, [r2, r5]
	cmp r0, r1
	blt _0804A78C
	ldrh r0, [r2, #0x2e]
	subs r0, r0, r1
_0804A784:
	adds r1, r2, #0
	adds r1, #0x70
	strh r0, [r1]
	b _0804A792
_0804A78C:
	adds r0, r2, #0
	adds r0, #0x70
	strh r3, [r0]
_0804A792:
	ldrh r1, [r4, #0x1e]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A7A8
	ldr r0, _0804A7A4 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, r1, r0
	b _0804A7B8
	.align 2, 0
_0804A7A4: .4byte gRoomControls
_0804A7A8:
	ldrb r0, [r6]
	lsls r1, r0, #2
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r0, r1
	blt _0804A7C0
	ldrh r0, [r2, #0x32]
	subs r0, r0, r1
_0804A7B8:
	adds r1, r2, #0
	adds r1, #0x72
	strh r0, [r1]
	b _0804A7C6
_0804A7C0:
	adds r0, r2, #0
	adds r0, #0x72
	strh r3, [r0]
_0804A7C6:
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_0804A7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0804A7D4
sub_0804A7D4: @ 0x0804A7D4
	push {lr}
	ldrb r1, [r0, #9]
	movs r2, #0
	bl CreateDeathFx
	pop {pc}

	thumb_func_start CreateDeathFx
CreateDeathFx: @ 0x0804A7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r1
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x6d
	ldrb r1, [r6]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804A864
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A80A
	b _0804A982
_0804A80A:
	ldrb r1, [r5, #9]
	movs r0, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _0804A81C
	b _0804A982
_0804A81C:
	adds r0, #0x6c
	strb r7, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl PositionRelative
	str r5, [r4, #0x50]
	ldrb r1, [r6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #9]
	cmp r0, #0x37
	bne _0804A84A
	ldr r0, _0804A85C @ =gRoomTransition
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A84A
	bl DeleteThisEntity
_0804A84A:
	bl sub_0807CD9C
	ldr r0, _0804A860 @ =0x80100000
	bl SoundReq
	bl DeleteThisEntity
	b _0804A982
	.align 2, 0
_0804A85C: .4byte gRoomTransition
_0804A860: .4byte 0x80100000
_0804A864:
	adds r4, r5, #0
	adds r4, #0x3a
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0
	bne _0804A934
	adds r0, r5, #0
	bl sub_08049CF4
	ldr r1, _0804A8E8 @ =gSave
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	ldrb r0, [r4]
	movs r7, #0
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0xff
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #3
	bl SetDefaultPriority
	ldrb r1, [r5, #9]
	movs r0, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A8CA
	adds r0, #0x6c
	mov r2, r8
	strb r2, [r0]
	adds r0, #1
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	mov r2, sl
	strb r2, [r0]
	str r5, [r4, #0x50]
	str r5, [r4, #0x54]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_0804A8CA:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804A8EC
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl DeleteEntity
	b _0804A982
	.align 2, 0
_0804A8E8: .4byte gSave
_0804A8EC:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	bne _0804A934
	ldrb r0, [r5, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _0804A91A
	cmp r1, #2
	bne _0804A92A
	cmp r4, #0
	beq _0804A92A
	adds r1, r4, #0
	adds r1, #0x6c
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	b _0804A92A
_0804A91A:
	cmp r4, #0
	beq _0804A92A
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0804A92A:
	movs r0, #0
	str r0, [r4, #0x50]
	bl DeleteThisEntity
	b _0804A982
_0804A934:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0804A940
	bl DeleteThisEntity
	b _0804A982
_0804A940:
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0804A95E
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #0
	bl SetDefaultPriority
	b _0804A982
_0804A95E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _0804A982
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _0804A976
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	b _0804A980
_0804A976:
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
_0804A980:
	strb r0, [r5, #0x18]
_0804A982:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start CreateProjectileWithParent
CreateProjectileWithParent: @ 0x0804A98C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl CreateProjectile
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A9A8
	strb r5, [r4, #0xa]
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
_0804A9A8:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}

	thumb_func_start SetChildOffset
SetChildOffset: @ 0x0804A9AC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov ip, r3
	ldr r4, [r5, #0x68]
	cmp r4, #0
	beq _0804A9FA
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
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	adds r0, r0, r7
	strh r0, [r4, #0x32]
	ldrh r0, [r5, #0x36]
	add r0, ip
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0804A9FA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A9FC
sub_0804A9FC: @ 0x0804A9FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _0804AA16
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _0804AA16
	str r0, [r4, #0x68]
	b _0804AA18
_0804AA16:
	movs r0, #0
_0804AA18:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804AA1C
sub_0804AA1C: @ 0x0804AA1C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	cmp r1, #0
	beq _0804AA2C
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x68]
_0804AA2C:
	pop {pc}
	.align 2, 0
