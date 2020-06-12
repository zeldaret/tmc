	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08039BA0
sub_08039BA0: @ 0x08039BA0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08039BC4
	ldr r0, _08039BC0 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08039BD8
	.align 2, 0
_08039BC0: .4byte gUnk_080012C8
_08039BC4:
	ldr r4, _08039BDC @ =gUnk_080CFB84
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08039BD8:
	pop {r4, r5, pc}
	.align 2, 0
_08039BDC: .4byte gUnk_080CFB84

	thumb_func_start sub_08039BE0
sub_08039BE0: @ 0x08039BE0
	push {lr}
	ldr r2, _08039BF4 @ =gUnk_080CFB9C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08039BF4: .4byte gUnk_080CFB9C

	thumb_func_start sub_08039BF8
sub_08039BF8: @ 0x08039BF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0803A100
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08039C64
	movs r0, #7
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039C60 @ =gRoomControls
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
	bl SetTile
	b _08039C72
	.align 2, 0
_08039C60: .4byte gRoomControls
_08039C64:
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08039C72
	adds r0, r5, #0
	bl sub_0803A0E0
_08039C72:
	ldr r1, _08039C7C @ =gUnk_080CFB84
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039C7C: .4byte gUnk_080CFB84

	thumb_func_start sub_08039C80
sub_08039C80: @ 0x08039C80
	push {lr}
	ldr r2, _08039C94 @ =gUnk_080CFBBC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08039C94: .4byte gUnk_080CFBBC

	thumb_func_start sub_08039C98
sub_08039C98: @ 0x08039C98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803A100
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	movs r0, #0x30
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08039CB0
sub_08039CB0: @ 0x08039CB0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803A100
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08039CCA
	adds r0, r4, #0
	bl sub_0806F4E8
	b _08039CDE
_08039CCA:
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08039CDE
	adds r0, r4, #0
	bl sub_0803A0E0
_08039CDE:
	pop {r4, pc}

	thumb_func_start sub_08039CE0
sub_08039CE0: @ 0x08039CE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xe]
	cmp r4, #0
	bne _08039D2A
	bl sub_0803A100
	movs r0, #1
	strb r0, [r5, #0xe]
	ldr r0, _08039D3C @ =0x0000FFFF
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x62
	strb r4, [r0]
	adds r0, #0x12
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039D40 @ =gRoomControls
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
	bl SetTile
_08039D2A:
	adds r0, r5, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08039D44
	adds r0, r5, #0
	bl sub_0806F3E4
	b _08039D4A
	.align 2, 0
_08039D3C: .4byte 0x0000FFFF
_08039D40: .4byte gRoomControls
_08039D44:
	adds r0, r5, #0
	bl sub_0803A0E0
_08039D4A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08039D4C
sub_08039D4C: @ 0x08039D4C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08039D64 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08039D62
	adds r0, r2, #0
	bl sub_0803A0E0
_08039D62:
	pop {pc}
	.align 2, 0
_08039D64: .4byte gLinkState

	thumb_func_start nullsub_166
nullsub_166: @ 0x08039D68
	bx lr
	.align 2, 0

	thumb_func_start sub_08039D6C
sub_08039D6C: @ 0x08039D6C
	push {lr}
	bl sub_0803A0E0
	pop {pc}

	thumb_func_start sub_08039D74
sub_08039D74: @ 0x08039D74
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1c]
	strb r1, [r5, #0x16]
	ldrh r0, [r5, #0x32]
	adds r0, #3
	strh r0, [r5, #0x32]
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _08039DD0 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x74
	strh r0, [r1]
	ldr r0, _08039DD4 @ =0x00004060
	ldrb r2, [r6]
	adds r1, r4, #0
	bl SetTile
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039DD0: .4byte gRoomControls
_08039DD4: .4byte 0x00004060

	thumb_func_start sub_08039DD8
sub_08039DD8: @ 0x08039DD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0803A100
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08039E38
	adds r0, r5, #0
	bl GetTileTypeByEntity
	ldr r1, _08039E30 @ =0x00004073
	cmp r0, r1
	bne _08039E28
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039E34 @ =gRoomControls
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
	bl SetTile
	adds r0, r5, #0
	bl sub_0803A0E0
_08039E28:
	adds r0, r5, #0
	bl sub_08078930
	b _08039EC6
	.align 2, 0
_08039E30: .4byte 0x00004073
_08039E34: .4byte gRoomControls
_08039E38:
	ldr r0, _08039E6C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08039EC6
	ldr r2, _08039E70 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r6, #0x32
	ldrsh r2, [r2, r6]
	adds r0, r5, #0
	movs r3, #0x30
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039EC6
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08039E74
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	b _08039EC6
	.align 2, 0
_08039E6C: .4byte gLinkState
_08039E70: .4byte gLinkEntity
_08039E74:
	ldrb r1, [r5, #0xa]
	subs r1, #2
	movs r0, #0x42
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _08039EC6
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r0, r5, #0
	adds r1, r2, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039EC8 @ =gRoomControls
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
	bl SetTile
	adds r0, r5, #0
	bl DeleteEntity
_08039EC6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039EC8: .4byte gRoomControls

	thumb_func_start sub_08039ECC
sub_08039ECC: @ 0x08039ECC
	push {lr}
	ldr r2, _08039EE0 @ =gUnk_080CFBD4
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08039EE0: .4byte gUnk_080CFBD4

	thumb_func_start sub_08039EE4
sub_08039EE4: @ 0x08039EE4
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r2, #0
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xd]
	ldrb r1, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r1
	mov r3, ip
	strb r0, [r3, #0x10]
	strh r2, [r3, #0x2a]
	ldr r0, _08039F40 @ =gUnk_080FD340
	str r0, [r3, #0x48]
	ldr r0, _08039F44 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	mov r1, ip
	adds r1, #0x76
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x74
	ldrh r0, [r0]
	movs r5, #0x2e
	ldrsh r1, [r3, r5]
	ldr r3, _08039F48 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	mov r6, ip
	movs r5, #0x32
	ldrsh r2, [r6, r5]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r2, ip
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039F40: .4byte gUnk_080FD340
_08039F44: .4byte gLinkEntity
_08039F48: .4byte gRoomControls

	thumb_func_start sub_08039F4C
sub_08039F4C: @ 0x08039F4C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08039F74 @ =gLinkEntity
	movs r1, #0x76
	adds r1, r1, r3
	mov ip, r1
	ldrb r2, [r0, #0x14]
	ldrb r0, [r1]
	cmp r2, r0
	beq _08039F70
	subs r0, r2, r0
	ldrb r1, [r3, #0x1e]
	adds r0, r0, r1
	movs r1, #6
	ands r0, r1
	strb r0, [r3, #0x1e]
	mov r0, ip
	strb r2, [r0]
_08039F70:
	pop {pc}
	.align 2, 0
_08039F74: .4byte gLinkEntity

	thumb_func_start sub_08039F78
sub_08039F78: @ 0x08039F78
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x36
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08039F9C
	ldrh r0, [r2, #0x2a]
	cmp r0, #0
	beq _08039FA2
_08039F9C:
	adds r0, r2, #0
	bl sub_0803A0E0
_08039FA2:
	pop {pc}

	thumb_func_start sub_08039FA4
sub_08039FA4: @ 0x08039FA4
	push {lr}
	bl sub_0803A0E0
	pop {pc}

	thumb_func_start sub_08039FAC
sub_08039FAC: @ 0x08039FAC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0803A100
	adds r3, r5, #0
	adds r3, #0x62
	ldr r2, _0803A03C @ =gUnk_080CFBE4
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0803A03A
	movs r0, #4
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r3]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xa0
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0803A040 @ =gUnk_080FD34C
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0803A044 @ =gRoomControls
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
	bl SetTile
_0803A03A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803A03C: .4byte gUnk_080CFBE4
_0803A040: .4byte gUnk_080FD34C
_0803A044: .4byte gRoomControls

	thumb_func_start sub_0803A048
sub_0803A048: @ 0x0803A048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x34]
	ldr r1, _0803A078 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0803A076
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r1, _0803A07C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0803A076:
	pop {r4, pc}
	.align 2, 0
_0803A078: .4byte 0xFFFF0000
_0803A07C: .4byte gLinkEntity

	thumb_func_start sub_0803A080
sub_0803A080: @ 0x0803A080
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A098
	movs r0, #6
	strb r0, [r4, #0xc]
_0803A098:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803A09C
sub_0803A09C: @ 0x0803A09C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEFE0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803A0B6
	adds r0, r4, #0
	bl sub_0803A0E0
_0803A0B6:
	pop {r4, pc}

	thumb_func_start sub_0803A0B8
sub_0803A0B8: @ 0x0803A0B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0803A0CA
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_0803A0CA:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0803A0DE
	adds r0, r4, #0
	bl sub_0803A0E0
_0803A0DE:
	pop {r4, pc}

	thumb_func_start sub_0803A0E0
sub_0803A0E0: @ 0x0803A0E0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	movs r2, #0
	movs r3, #0
	bl sub_0808288C
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x3c
	bl CreateFx
	bl DeleteThisEntity
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803A100
sub_0803A100: @ 0x0803A100
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _0803A14C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _0803A150 @ =0x00004067
	cmp r0, r1
	bne _0803A148
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrb r2, [r6]
	adds r1, r4, #0
	bl SetTile
	bl DeleteThisEntity
_0803A148:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803A14C: .4byte gRoomControls
_0803A150: .4byte 0x00004067
