	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start SpinyBeetle
SpinyBeetle: @ 0x0803379C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080337B8 @ =gUnk_080CEBEC
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_080337B8: .4byte gUnk_080CEBEC

	thumb_func_start sub_080337BC
sub_080337BC: @ 0x080337BC
	push {lr}
	ldr r2, _080337D0 @ =gUnk_080CEC04
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080337D0: .4byte gUnk_080CEC04

	thumb_func_start sub_080337D4
sub_080337D4: @ 0x080337D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080337E8
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080337E8:
	ldr r1, _08033868 @ =gUnk_080CEBEC
	adds r0, r4, #0
	bl sub_0804AA30
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08033864
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803381A
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803381A
	adds r0, r4, #0
	bl sub_08033E1C
_0803381A:
	ldrb r1, [r5]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	bne _08033864
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	beq _08033864
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x49
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08033D78
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
_08033864:
	pop {r4, r5, pc}
	.align 2, 0
_08033868: .4byte gUnk_080CEBEC

	thumb_func_start nullsub_159
nullsub_159: @ 0x0803386C
	bx lr
	.align 2, 0

	thumb_func_start sub_08033870
sub_08033870: @ 0x08033870
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	beq _0803388E
	adds r0, r4, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _0803388E
	adds r0, r4, #0
	bl sub_08033E1C
_0803388E:
	pop {r4, pc}

	thumb_func_start sub_08033890
sub_08033890: @ 0x08033890
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	strb r1, [r6, #0xe]
	strb r1, [r6, #0xf]
	ldr r0, [r6, #0x2c]
	ldr r3, _0803394C @ =0xFFF00000
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r0, r2
	str r0, [r6, #0x7c]
	adds r4, r6, #0
	adds r4, #0x80
	ldr r0, [r6, #0x30]
	ands r0, r3
	orrs r0, r2
	str r0, [r4]
	ldr r0, [r6, #0x7c]
	str r0, [r6, #0x2c]
	ldr r0, [r4]
	str r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x79
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08033950 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _08033954 @ =0x00004022
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
	ldrb r1, [r6, #0xa]
	movs r0, #0x7d
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _08033928
	bl DeleteThisEntity
_08033928:
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	str r4, [r6, #0x54]
	str r6, [r4, #0x50]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08033940
	adds r0, r6, #0
	bl sub_08033EA8
_08033940:
	adds r0, r6, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803394C: .4byte 0xFFF00000
_08033950: .4byte gRoomControls
_08033954: .4byte 0x00004022

	thumb_func_start sub_08033958
sub_08033958: @ 0x08033958
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033982
	adds r0, r4, #0
	bl sub_08033E1C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
	b _08033A72
_08033982:
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08033992
	subs r0, #1
	strb r0, [r1]
	b _08033A72
_08033992:
	ldr r0, [r4, #0x7c]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r5, r0, #0
	cmp r5, #0x10
	beq _080339E0
	cmp r5, #0x10
	bhi _080339BC
	cmp r5, #0
	beq _080339C6
	cmp r5, #8
	beq _080339F0
	b _08033A10
_080339BC:
	cmp r5, #0x18
	beq _08033A00
	cmp r5, #0xff
	bne _08033A10
	b _08033A72
_080339C6:
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033A72
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _080339DC @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	b _08033A0A
	.align 2, 0
_080339DC: .4byte gLinkEntity
_080339E0:
	ldr r0, _080339EC @ =gLinkEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	b _08033A0A
	.align 2, 0
_080339EC: .4byte gLinkEntity
_080339F0:
	ldr r0, _080339FC @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	b _08033A0A
	.align 2, 0
_080339FC: .4byte gLinkEntity
_08033A00:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r1, _08033A74 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r1, r2]
_08033A0A:
	subs r0, r0, r1
	cmp r0, #0x30
	bgt _08033A72
_08033A10:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08033A1E
	bl sub_0806F520
	cmp r0, #0
	bne _08033A72
_08033A1E:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033A2C
	movs r0, #1
	strb r0, [r1]
_08033A2C:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	ldr r1, _08033A78 @ =0xFFF00000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_08033A72:
	pop {r4, r5, pc}
	.align 2, 0
_08033A74: .4byte gLinkEntity
_08033A78: .4byte 0xFFF00000

	thumb_func_start sub_08033A7C
sub_08033A7C: @ 0x08033A7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033A90
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033AC8
_08033A90:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033AC8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x59
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
_08033AC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08033ACC
sub_08033ACC: @ 0x08033ACC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033AE0
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033B42
_08033AE0:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08033AF8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08033B42
_08033AF8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033B3C
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldr r2, [r4, #0x2c]
	ldr r1, _08033B38 @ =0xFFF00000
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	str r2, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _08033B42
	.align 2, 0
_08033B38: .4byte 0xFFF00000
_08033B3C:
	adds r0, r4, #0
	bl sub_08033D78
_08033B42:
	pop {r4, pc}

	thumb_func_start sub_08033B44
sub_08033B44: @ 0x08033B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033B62
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033C82
_08033B62:
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08033B76
	b _08033C82
_08033B76:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0
	mov r8, r0
	adds r1, r4, #0
	adds r1, #0x80
	str r1, [sp, #4]
	adds r6, r4, #0
	adds r6, #0x29
	adds r2, r4, #0
	adds r2, #0x7b
	str r2, [sp]
	adds r5, r4, #0
	adds r5, #0x74
	adds r3, r4, #0
	adds r3, #0x38
	str r3, [sp, #8]
	movs r7, #0x76
	adds r7, r7, r4
	mov sl, r7
	ldr r0, _08033C20 @ =gRoomControls
	mov sb, r0
_08033BB2:
	ldr r1, [r4, #0x2c]
	ldr r3, _08033C24 @ =0xFFF00000
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x30]
	str r1, [r4, #0x7c]
	ldr r1, [sp, #4]
	str r0, [r1]
	ldrb r0, [r6]
	movs r2, #0x39
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6]
	movs r0, #0x78
	ldr r3, [sp]
	strb r0, [r3]
	movs r7, #0x2e
	ldrsh r2, [r4, r7]
	mov r1, sb
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r7, #0x32
	ldrsh r0, [r4, r7]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	strh r2, [r5]
	ldrh r0, [r5]
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	bl sub_080001DA
	mov r3, sl
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _08033C28 @ =0x00004022
	cmp r0, r7
	beq _08033C2C
	movs r0, #1
	add r8, r0
	b _08033C68
	.align 2, 0
_08033C20: .4byte gRoomControls
_08033C24: .4byte 0xFFF00000
_08033C28: .4byte 0x00004022
_08033C2C:
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	cmp r0, #2
	beq _08033C54
	cmp r0, #2
	bgt _08033C42
	cmp r0, #0
	beq _08033C4C
	b _08033C68
_08033C42:
	cmp r0, #4
	beq _08033C5A
	cmp r0, #6
	beq _08033C62
	b _08033C68
_08033C4C:
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	b _08033C68
_08033C54:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	b _08033C66
_08033C5A:
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	b _08033C68
_08033C62:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x10
_08033C66:
	strh r0, [r4, #0x2e]
_08033C68:
	mov r1, r8
	cmp r1, #0
	beq _08033BB2
	ldr r0, _08033C90 @ =0x00004022
	ldrh r1, [r5]
	ldr r3, [sp, #8]
	ldrb r2, [r3]
	bl SetTile
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08033C82:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08033C90: .4byte 0x00004022

	thumb_func_start sub_08033C94
sub_08033C94: @ 0x08033C94
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl UpdateAnimationVariableFrames
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #1
	beq _08033CD2
	cmp r0, #1
	bgt _08033CB2
	cmp r0, #0
	beq _08033CB8
	b _08033D76
_08033CB2:
	cmp r0, #2
	beq _08033D18
	b _08033D76
_08033CB8:
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08033CD2
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08033CD2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08033D76
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x63
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #0x14
	strb r0, [r4, #0x15]
	bl Random
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08033D12
	cmp r1, #2
	beq _08033D68
	b _08033D6E
_08033D12:
	ldrb r0, [r4, #0x15]
	adds r0, #8
	b _08033D6C
_08033D18:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08033D24
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08033D2A
_08033D24:
	adds r0, r4, #0
	bl sub_08033D78
_08033D2A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033D76
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #0x14
	strb r0, [r4, #0x15]
	bl Random
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08033D62
	cmp r1, #3
	beq _08033D68
	b _08033D6E
_08033D62:
	ldrb r0, [r4, #0x15]
	adds r0, #8
	b _08033D6C
_08033D68:
	ldrb r0, [r4, #0x15]
	adds r0, #0x18
_08033D6C:
	strb r0, [r4, #0x15]
_08033D6E:
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_08033D76:
	pop {r4, pc}

	thumb_func_start sub_08033D78
sub_08033D78: @ 0x08033D78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x15]
	movs r2, #0x18
	ands r2, r0
	lsrs r2, r2, #2
	ldr r0, _08033DE4 @ =gUnk_080CEC1C
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r4, _08033DE8 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r3, #0x3f
	ands r5, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r5, r0
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r5, #0
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _08033DEC @ =0x000001C5
	cmp r1, r0
	bhi _08033DCE
	subs r0, #1
	cmp r1, r0
	bhs _08033DE2
_08033DCE:
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080002E0
	subs r0, #1
	cmp r0, #0x3e
	bls _08033DE2
	adds r0, r6, #0
	bl sub_080AEF88
_08033DE2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08033DE4: .4byte gUnk_080CEC1C
_08033DE8: .4byte gRoomControls
_08033DEC: .4byte 0x000001C5

	thumb_func_start sub_08033DF0
sub_08033DF0: @ 0x08033DF0
	push {lr}
	movs r2, #0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08033E16
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	beq _08033E10
	cmp r0, #3
	bgt _08033E0A
	cmp r0, #2
	beq _08033E16
	b _08033E18
_08033E0A:
	cmp r0, #4
	bne _08033E18
	b _08033E16
_08033E10:
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bls _08033E18
_08033E16:
	movs r2, #1
_08033E18:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_08033E1C
sub_08033E1C: @ 0x08033E1C
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r3, #5
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	ldr r1, _08033EA4 @ =0xFFF00000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x19
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	adds r0, #0xd0
	strh r0, [r4, #0x24]
	str r2, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_080A2CFC
	pop {r4, pc}
	.align 2, 0
_08033EA4: .4byte 0xFFF00000

	thumb_func_start sub_08033EA8
sub_08033EA8: @ 0x08033EA8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08033EC4 @ =gLinkState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08033EC8
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x95
	b _08033ECE
	.align 2, 0
_08033EC4: .4byte gLinkState
_08033EC8:
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x63
_08033ECE:
	strb r0, [r1]
	pop {pc}
	.align 2, 0

