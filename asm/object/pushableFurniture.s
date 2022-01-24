	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start PushableFurniture
PushableFurniture: @ 0x0808F968
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0808F98C @ =gUnk_08121ED8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0808F988
	adds r0, r4, #0
	bl sub_08090514
_0808F988:
	pop {r4, pc}
	.align 2, 0
_0808F98C: .4byte gUnk_08121ED8

	thumb_func_start sub_0808F990
sub_0808F990: @ 0x0808F990
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	strb r3, [r4, #0xe]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	adds r0, #0x81
	strb r3, [r0]
	adds r0, #2
	strb r3, [r0]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0808F9E8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x80
	strb r3, [r0]
	b _0808FA1C
_0808F9E8:
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808FA0A
	cmp r0, #4
	bne _0808FA1C
_0808FA0A:
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
	strb r3, [r4, #0xd]
	strb r3, [r4, #0x1e]
_0808FA1C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0808FAC4
	movs r6, #0
	cmp r0, #0x80
	beq _0808FA84
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FA38 @ =0x00000101
	cmp r1, r0
	bne _0808FA3C
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	ldrh r1, [r4, #0x32]
	b _0808FA42
	.align 2, 0
_0808FA38: .4byte 0x00000101
_0808FA3C:
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	ldrh r1, [r4, #0x2e]
_0808FA42:
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	adds r5, r1, #0
	ldr r3, [r4, #0x50]
	cmp r3, #0
	bne _0808FA5E
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	b _0808FA7C
_0808FA5E:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808FA76
	ldrb r0, [r3, #0xc]
	cmp r0, #2
	bne _0808FAA2
	adds r6, #1
	b _0808FAA2
_0808FA76:
	ldrb r0, [r2]
	bl CheckLocalFlag
_0808FA7C:
	cmp r0, #0
	beq _0808FAA2
	adds r6, #1
	b _0808FAA2
_0808FA84:
	movs r6, #1
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FA94 @ =0x00000101
	cmp r1, r0
	bne _0808FA98
	ldrh r1, [r4, #0x32]
	b _0808FA9A
	.align 2, 0
_0808FA94: .4byte 0x00000101
_0808FA98:
	ldrh r1, [r4, #0x2e]
_0808FA9A:
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r5, r0, #0
_0808FAA2:
	cmp r6, #0
	beq _0808FAC4
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FABC @ =0x00000101
	cmp r1, r0
	bne _0808FAC0
	ldrh r0, [r5]
	strh r0, [r4, #0x32]
	b _0808FAC4
	.align 2, 0
_0808FABC: .4byte 0x00000101
_0808FAC0:
	ldrh r0, [r5]
	strh r0, [r4, #0x2e]
_0808FAC4:
	adds r0, r4, #0
	bl sub_0808FF50
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808FACC
sub_0808FACC: @ 0x0808FACC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808FAF2
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808FAEA
	adds r0, r4, #0
	bl sub_0808FBFC
	b _0808FB0A
_0808FAEA:
	adds r0, r4, #0
	bl sub_0808FB68
	b _0808FB0A
_0808FAF2:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808FB0A
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808FB0A
	movs r0, #0x86
	lsls r0, r0, #1
	bl EnqueueSFX
_0808FB0A:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808FB14
	cmp r0, #4
	bne _0808FB64
_0808FB14:
	ldrb r1, [r4, #0xd]
	cmp r1, #1
	beq _0808FB3E
	cmp r1, #1
	bgt _0808FB24
	cmp r1, #0
	beq _0808FB2A
	b _0808FB64
_0808FB24:
	cmp r1, #2
	beq _0808FB5E
	b _0808FB64
_0808FB2A:
	adds r0, r4, #0
	bl sub_0808FECC
	cmp r0, #0
	beq _0808FB64
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	b _0808FB64
_0808FB3E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808FB64
	strb r1, [r4, #0x1e]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x80
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_0808FF20
	b _0808FB64
_0808FB5E:
	adds r0, r4, #0
	bl nullsub_1
_0808FB64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808FB68
sub_0808FB68: @ 0x0808FB68
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileIndex
	adds r1, r0, #0
	ldr r0, _0808FBAC @ =0x00004031
	cmp r1, r0
	bhi _0808FBB0
	subs r0, #1
	cmp r1, r0
	blo _0808FBB0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r1, #0
	subs r0, #0x30
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	bl SetPlayerControl
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808FD44
	b _0808FBF6
	.align 2, 0
_0808FBAC: .4byte 0x00004031
_0808FBB0:
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileIndex
	adds r1, r0, #0
	ldr r0, _0808FBF8 @ =0x00004031
	cmp r1, r0
	bhi _0808FBF0
	subs r0, #1
	cmp r1, r0
	blo _0808FBF0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r1, #0
	subs r0, #0x30
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	bl SetPlayerControl
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808FD44
_0808FBF0:
	adds r0, r4, #0
	bl sub_0808FDE8
_0808FBF6:
	pop {r4, pc}
	.align 2, 0
_0808FBF8: .4byte 0x00004031

	thumb_func_start sub_0808FBFC
sub_0808FBFC: @ 0x0808FBFC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileIndex
	adds r1, r0, #0
	ldr r0, _0808FC38 @ =0x0000404A
	cmp r1, r0
	beq _0808FC34
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r1, #0
	subs r0, #0x4b
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #1
	bl SetPlayerControl
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808FD44
_0808FC34:
	pop {r4, pc}
	.align 2, 0
_0808FC38: .4byte 0x0000404A

	thumb_func_start sub_0808FC3C
sub_0808FC3C: @ 0x0808FC3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_0808FC5C
	cmp r0, #0
	beq _0808FC58
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0
	bl SetPlayerControl
_0808FC58:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808FC5C
sub_0808FC5C: @ 0x0808FC5C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808FD40
	ldrb r1, [r4, #0xa]
	cmp r1, #2
	beq _0808FC7C
	cmp r1, #4
	bne _0808FC84
_0808FC7C:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfe
	b _0808FC88
_0808FC84:
	adds r1, r4, #0
	adds r1, #0x63
_0808FC88:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0
	bne _0808FD40
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0808FD30
	movs r2, #0
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FCB4 @ =0x00000101
	cmp r1, r0
	bne _0808FCB8
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808FCC8
	b _0808FCCC
	.align 2, 0
_0808FCB4: .4byte 0x00000101
_0808FCB8:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808FCC8
	movs r2, #1
_0808FCC8:
	cmp r2, #0
	beq _0808FD30
_0808FCCC:
	adds r0, r4, #0
	adds r0, #0x81
	movs r5, #1
	strb r5, [r0]
	ldr r3, [r4, #0x50]
	cmp r3, #0
	bne _0808FCE4
	adds r0, #5
	ldrh r0, [r0]
	bl SetFlag
	b _0808FD0C
_0808FCE4:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808FD06
	adds r0, r3, #0
	adds r0, #0x28
	subs r2, #8
	adds r1, r5, #0
	ldrh r2, [r2]
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	b _0808FD0C
_0808FD06:
	ldrb r0, [r2]
	bl SetLocalFlag
_0808FD0C:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808FD1A
	movs r0, #4
	b _0808FD1C
_0808FD1A:
	movs r0, #0x18
_0808FD1C:
	strb r0, [r4, #0xe]
	ldr r0, _0808FD3C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808FD30
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
_0808FD30:
	adds r0, r4, #0
	bl sub_0808FF50
	movs r0, #1
	b _0808FD42
	.align 2, 0
_0808FD3C: .4byte gPlayerState
_0808FD40:
	movs r0, #0
_0808FD42:
	pop {r4, r5, pc}

	thumb_func_start sub_0808FD44
sub_0808FD44: @ 0x0808FD44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #1
	bne _0808FD8E
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808FD62
	adds r0, r4, #0
	bl sub_08090498
_0808FD62:
	cmp r5, #0
	beq _0808FD6C
	adds r0, r4, #0
	adds r0, #0x72
	b _0808FD70
_0808FD6C:
	adds r0, r4, #0
	adds r0, #0x70
_0808FD70:
	ldrh r5, [r0]
	ldr r0, _0808FD84 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808FD88
	movs r0, #0x40
	strh r0, [r4, #0x24]
	b _0808FDB2
	.align 2, 0
_0808FD84: .4byte gPlayerState
_0808FD88:
	strh r1, [r4, #0x24]
	movs r0, #0x10
	b _0808FDB4
_0808FD8E:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r5, [r0]
	ldr r0, _0808FDAC @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808FDB0
	movs r1, #0x40
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xe]
	b _0808FDB6
	.align 2, 0
_0808FDAC: .4byte gPlayerState
_0808FDB0:
	strh r1, [r4, #0x24]
_0808FDB2:
	movs r0, #0x20
_0808FDB4:
	strb r0, [r4, #0xe]
_0808FDB6:
	ldr r0, _0808FDE0 @ =0x0000010F
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_08090254
	ldr r1, _0808FDE4 @ =gUnk_080B4488
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileIndex
	pop {r4, r5, pc}
	.align 2, 0
_0808FDE0: .4byte 0x0000010F
_0808FDE4: .4byte gUnk_080B4488

	thumb_func_start sub_0808FDE8
sub_0808FDE8: @ 0x0808FDE8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x70
	ldrh r5, [r0]
	subs r0, r5, #1
	movs r1, #1
	bl sub_080002E0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl GetTileIndex
	ldr r6, _0808FE28 @ =0x0000402E
	cmp r0, r6
	bne _0808FE30
	movs r0, #0xf0
	ands r0, r4
	cmp r0, #0
	beq _0808FE14
	cmp r0, #0x50
	bne _0808FE1C
_0808FE14:
	movs r0, #5
	ands r0, r4
	cmp r0, #0
	bne _0808FE58
_0808FE1C:
	ldr r0, _0808FE2C @ =0x0000402C
	adds r1, r5, #0
	movs r2, #1
	bl SetTile
	b _0808FE58
	.align 2, 0
_0808FE28: .4byte 0x0000402E
_0808FE2C: .4byte 0x0000402C
_0808FE30:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #5
	bne _0808FE58
	movs r1, #0xf0
	ands r1, r4
	cmp r1, #0
	beq _0808FE48
	cmp r1, #0x50
	bne _0808FE58
_0808FE48:
	ands r4, r0
	cmp r4, #0
	beq _0808FE58
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl SetTile
_0808FE58:
	adds r0, r7, #0
	adds r0, #0x72
	ldrh r5, [r0]
	adds r0, r5, #1
	movs r1, #1
	bl sub_080002E0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl GetTileIndex
	ldr r6, _0808FE98 @ =0x0000402F
	cmp r0, r6
	bne _0808FEA0
	movs r0, #0xf0
	ands r0, r4
	cmp r0, #0
	beq _0808FE82
	cmp r0, #0x50
	bne _0808FE8A
_0808FE82:
	movs r0, #0xa
	ands r0, r4
	cmp r0, #0
	bne _0808FEC8
_0808FE8A:
	ldr r0, _0808FE9C @ =0x0000402D
	adds r1, r5, #0
	movs r2, #1
	bl SetTile
	b _0808FEC8
	.align 2, 0
_0808FE98: .4byte 0x0000402F
_0808FE9C: .4byte 0x0000402D
_0808FEA0:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0xa
	bne _0808FEC8
	movs r1, #0xf0
	ands r1, r4
	cmp r1, #0
	beq _0808FEB8
	cmp r1, #0x50
	bne _0808FEC8
_0808FEB8:
	ands r4, r0
	cmp r4, #0
	beq _0808FEC8
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl SetTile
_0808FEC8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0808FECC
sub_0808FECC: @ 0x0808FECC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #1
	ldr r0, _0808FF18 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808FF10
	ldr r3, _0808FF1C @ =gPlayerEntity
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _0808FF10
	ldrb r0, [r3, #0x14]
	cmp r0, #0
	bne _0808FF10
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	movs r5, #0x32
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	cmp r0, #0x13
	bgt _0808FF10
	movs r0, #0x2e
	ldrsh r2, [r2, r0]
	adds r0, r2, #0
	adds r0, #0xc
	movs r5, #0x2e
	ldrsh r1, [r3, r5]
	cmp r0, r1
	ble _0808FF10
	subs r0, #0x18
	cmp r0, r1
	blt _0808FF12
_0808FF10:
	movs r4, #0
_0808FF12:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_0808FF18: .4byte gPlayerState
_0808FF1C: .4byte gPlayerEntity

	thumb_func_start sub_0808FF20
sub_0808FF20: @ 0x0808FF20
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _0808FF4A
	cmp r1, #0
	blt _0808FF4A
	cmp r1, #2
	bgt _0808FF4A
	subs r1, #1
	movs r0, #0x63
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0808FF4A
	str r4, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
_0808FF4A:
	pop {r4, pc}

	thumb_func_start nullsub_1
nullsub_1: @ 0x0808FF4C
	bx lr
	.align 2, 0

	thumb_func_start sub_0808FF50
sub_0808FF50: @ 0x0808FF50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _0808FF98 @ =gRoomControls
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
	adds r2, r6, #0
	adds r2, #0x7c
	strh r1, [r2]
	ldrh r0, [r6, #0x2e]
	movs r1, #0xf
	ands r1, r0
	ldrh r7, [r2]
	adds r0, r6, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808FF9C
	cmp r0, #1
	beq _0808FFC0
	b _0809008A
	.align 2, 0
_0808FF98: .4byte gRoomControls
_0808FF9C:
	adds r0, r6, #0
	adds r0, #0x70
	strh r7, [r0]
	ldrh r0, [r0]
	movs r1, #1
	bl GetTileIndex
	adds r1, r6, #0
	adds r1, #0x74
	strh r0, [r1]
	ldr r0, _0808FFBC @ =0x0000404A
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
	b _0809008A
	.align 2, 0
_0808FFBC: .4byte 0x0000404A
_0808FFC0:
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0809002C
	adds r0, r6, #0
	adds r0, #0x70
	strh r7, [r0]
	ldrh r0, [r0]
	movs r1, #1
	bl GetTileIndex
	adds r1, r6, #0
	adds r1, #0x74
	strh r0, [r1]
	ldr r4, _08090028 @ =gUnk_08121EE4
	movs r0, #0x81
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
	adds r0, r7, #1
	adds r5, r6, #0
	adds r5, #0x72
	strh r0, [r5]
	ldrh r0, [r5]
	movs r1, #1
	bl GetTileIndex
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #4
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldrh r2, [r5]
	adds r0, r6, #0
	bl sub_08090094
	adds r0, r6, #0
	movs r1, #1
	bl sub_0809028C
	b _0809008A
	.align 2, 0
_08090028: .4byte gUnk_08121EE4
_0809002C:
	adds r0, r6, #0
	adds r0, #0x72
	strh r7, [r0]
	ldrh r0, [r0]
	movs r1, #1
	bl GetTileIndex
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r5, _08090090 @ =gUnk_08121EE4
	movs r4, #0x81
	adds r4, r4, r6
	mov r8, r4
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
	subs r0, r7, #1
	adds r4, r6, #0
	adds r4, #0x70
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, #1
	bl GetTileIndex
	adds r1, r6, #0
	adds r1, #0x74
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	ldrh r2, [r4]
	adds r0, r6, #0
	bl sub_08090094
	adds r0, r6, #0
	movs r1, #0
	bl sub_0809028C
_0809008A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08090090: .4byte gUnk_08121EE4

	thumb_func_start sub_08090094
sub_08090094: @ 0x08090094
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r0, r7, #0
	movs r1, #1
	bl sub_080002E0
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #1
	bl GetTileIndex
	adds r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	bne _0809012C
	adds r3, r5, #0
	ldr r1, _080900D0 @ =0xFFFFBFDC
	adds r0, r3, r1
	cmp r0, #0xb
	bhi _0809011A
	lsls r0, r0, #2
	ldr r1, _080900D4 @ =_080900D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080900D0: .4byte 0xFFFFBFDC
_080900D4: .4byte _080900D8
_080900D8: @ jump table
	.4byte _08090114 @ case 0
	.4byte _08090108 @ case 1
	.4byte _0809011A @ case 2
	.4byte _0809011A @ case 3
	.4byte _0809011A @ case 4
	.4byte _0809011A @ case 5
	.4byte _0809011A @ case 6
	.4byte _0809011A @ case 7
	.4byte _08090114 @ case 8
	.4byte _0809010E @ case 9
	.4byte _08090114 @ case 10
	.4byte _0809010E @ case 11
_08090108:
	cmp r4, #5
	bne _0809011A
	b _08090118
_0809010E:
	cmp r4, #5
	bne _0809011A
	b _08090118
_08090114:
	cmp r4, #0xa
	bne _0809011A
_08090118:
	ldr r3, _08090128 @ =0x00004022
_0809011A:
	adds r0, r3, #0
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
	b _08090242
	.align 2, 0
_08090128: .4byte 0x00004022
_0809012C:
	ldr r1, _08090140 @ =0xFFFFBFDE
	adds r0, r3, r1
	cmp r0, #0xd
	bls _08090136
	b _08090242
_08090136:
	lsls r0, r0, #2
	ldr r1, _08090144 @ =_08090148
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090140: .4byte 0xFFFFBFDE
_08090144: .4byte _08090148
_08090148: @ jump table
	.4byte _08090242 @ case 0
	.4byte _08090242 @ case 1
	.4byte _080901EC @ case 2
	.4byte _08090180 @ case 3
	.4byte _08090242 @ case 4
	.4byte _08090242 @ case 5
	.4byte _08090242 @ case 6
	.4byte _08090242 @ case 7
	.4byte _08090242 @ case 8
	.4byte _08090242 @ case 9
	.4byte _08090210 @ case 10
	.4byte _080901B4 @ case 11
	.4byte _08090210 @ case 12
	.4byte _080901B4 @ case 13
_08090180:
	ldr r0, _080901A8 @ =0x00004024
	cmp r5, r0
	bne _08090194
	ldr r3, _080901AC @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_08090194:
	ldr r0, _080901B0 @ =0x0000402C
	cmp r5, r0
	bne _08090238
	ldr r3, _080901AC @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	b _08090234
	.align 2, 0
_080901A8: .4byte 0x00004024
_080901AC: .4byte 0x00004022
_080901B0: .4byte 0x0000402C
_080901B4:
	ldr r0, _080901DC @ =0x0000402C
	cmp r5, r0
	bne _080901C8
	ldr r3, _080901E0 @ =0x0000402B
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_080901C8:
	ldr r0, _080901E4 @ =0x00004024
	cmp r5, r0
	bne _08090238
	ldr r3, _080901E8 @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	b _08090234
	.align 2, 0
_080901DC: .4byte 0x0000402C
_080901E0: .4byte 0x0000402B
_080901E4: .4byte 0x00004024
_080901E8: .4byte 0x00004022
_080901EC:
	ldr r0, _08090204 @ =0x00004025
	cmp r5, r0
	bne _08090200
	ldr r3, _08090208 @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08090200:
	ldr r0, _0809020C @ =0x0000402D
	b _08090226
	.align 2, 0
_08090204: .4byte 0x00004025
_08090208: .4byte 0x00004022
_0809020C: .4byte 0x0000402D
_08090210:
	ldr r0, _08090244 @ =0x0000402D
	cmp r5, r0
	bne _08090224
	ldr r3, _08090248 @ =0x0000402B
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08090224:
	ldr r0, _0809024C @ =0x00004025
_08090226:
	cmp r5, r0
	bne _08090238
	ldr r3, _08090250 @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x20
_08090234:
	orrs r0, r1
	strb r0, [r2]
_08090238:
	adds r0, r3, #0
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
_08090242:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08090244: .4byte 0x0000402D
_08090248: .4byte 0x0000402B
_0809024C: .4byte 0x00004025
_08090250: .4byte 0x00004022

	thumb_func_start sub_08090254
sub_08090254: @ 0x08090254
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r2, [r5]
	bl sub_0807B9B8
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #1
	bne _08090288
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r1, [r1]
	ldrb r2, [r5]
	bl sub_0807B9B8
_08090288:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809028C
sub_0809028C: @ 0x0809028C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x83
	ldrb r0, [r4]
	movs r2, #0x30
	ands r2, r0
	movs r0, #0
	mov sb, r0
	strb r2, [r4]
	adds r0, r6, #0
	adds r0, #0x70
	ldrh r5, [r0]
	adds r7, r5, #0
	subs r7, #0x80
	adds r0, #2
	ldrh r3, [r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	adds r0, r0, r3
	mov r8, r0
	cmp r1, #1
	bne _0809039A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080902D4
	adds r1, r3, #0
	subs r1, #0x7f
	movs r0, #0
	bl sub_08090480
	b _080902FE
_080902D4:
	mov r0, r8
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _080902EC @ =0x00000301
	cmp r1, r0
	beq _080902F0
	adds r0, #7
	cmp r1, r0
	beq _080902F6
	b _080902FE
	.align 2, 0
_080902EC: .4byte 0x00000301
_080902F0:
	ldrb r0, [r4]
	movs r1, #8
	b _080902FA
_080902F6:
	ldrb r0, [r4]
	movs r1, #2
_080902FA:
	orrs r0, r1
	strb r0, [r4]
_080902FE:
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x2a
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0809031E
	movs r0, #0
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #0
	mov r1, r8
	bl sub_08090480
_0809031E:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809034E
	subs r4, r7, #1
	adds r0, r4, #0
	movs r1, #1
	bl GetTileType
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0809033C
	b _08090478
_0809033C:
	movs r0, #0
	adds r1, r4, #0
	bl sub_08090480
	subs r1, r7, #2
	movs r0, #2
	bl sub_08090480
	b _08090478
_0809034E:
	subs r0, r7, #1
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _08090368
	adds r0, #8
	cmp r1, r0
	beq _0809036E
	b _08090376
_08090368:
	ldrb r1, [r4]
	movs r0, #4
	b _08090372
_0809036E:
	ldrb r1, [r4]
	movs r0, #1
_08090372:
	orrs r0, r1
	strb r0, [r4]
_08090376:
	ldrb r1, [r4]
	movs r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08090478
	movs r0, #0x2a
	ands r0, r1
	cmp r0, #0
	bne _08090478
	movs r0, #0
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #1
	mov r1, r8
	bl sub_08090480
	b _08090478
_0809039A:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080903AE
	adds r1, r5, #0
	subs r1, #0x81
	movs r0, #0
	bl sub_08090480
	b _080903DA
_080903AE:
	adds r0, r7, #0
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _080903C8 @ =0x00000302
	cmp r1, r0
	beq _080903CC
	adds r0, #4
	cmp r1, r0
	beq _080903D2
	b _080903DA
	.align 2, 0
_080903C8: .4byte 0x00000302
_080903CC:
	ldrb r0, [r4]
	movs r1, #4
	b _080903D6
_080903D2:
	ldrb r0, [r4]
	movs r1, #1
_080903D6:
	orrs r0, r1
	strb r0, [r4]
_080903DA:
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x15
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080903FA
	movs r0, #0
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #0
	mov r1, r8
	bl sub_08090480
_080903FA:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809042C
	mov r4, r8
	adds r4, #1
	adds r0, r4, #0
	movs r1, #1
	bl GetTileType
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	beq _08090478
	movs r0, #0
	adds r1, r4, #0
	bl sub_08090480
	mov r1, r8
	adds r1, #2
	movs r0, #1
	bl sub_08090480
	b _08090478
_0809042C:
	mov r0, r8
	adds r0, #1
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _08090448
	adds r0, #6
	cmp r1, r0
	beq _0809044E
	b _08090456
_08090448:
	ldrb r1, [r4]
	movs r0, #8
	b _08090452
_0809044E:
	ldrb r1, [r4]
	movs r0, #2
_08090452:
	orrs r0, r1
	strb r0, [r4]
_08090456:
	ldrb r1, [r4]
	movs r0, #0x2a
	ands r0, r1
	cmp r0, #0
	beq _08090478
	movs r0, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08090478
	movs r0, #2
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #0
	mov r1, r8
	bl sub_08090480
_08090478:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08090480
sub_08090480: @ 0x08090480
	push {lr}
	ldr r2, _08090494 @ =gUnk_08121EF0
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #1
	bl SetTile
	pop {pc}
	.align 2, 0
_08090494: .4byte gUnk_08121EF0

	thumb_func_start sub_08090498
sub_08090498: @ 0x08090498
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r4, #0x80
	adds r0, r4, #0
	movs r1, #1
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080904D2
	adds r0, r4, #0
	movs r1, #2
	bl GetTileType
	ldr r1, _08090510 @ =0x00000306
	cmp r0, r1
	bne _080904D2
	movs r0, #0x62
	adds r1, r4, #0
	movs r2, #1
	bl sub_08000148
_080904D2:
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r4, #0x80
	adds r0, r4, #0
	movs r1, #1
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809050C
	adds r0, r4, #0
	movs r1, #2
	bl GetTileType
	movs r1, #0xc2
	lsls r1, r1, #2
	cmp r0, r1
	bne _0809050C
	movs r0, #0x63
	adds r1, r4, #0
	movs r2, #1
	bl sub_08000148
_0809050C:
	pop {r4, r5, pc}
	.align 2, 0
_08090510: .4byte 0x00000306

	thumb_func_start sub_08090514
sub_08090514: @ 0x08090514
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	cmp r0, #0
	beq _0809059E
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _08090552
	cmp r0, #1
	bgt _0809052E
	cmp r0, #0
	beq _08090538
	b _0809059E
_0809052E:
	cmp r0, #2
	beq _08090568
	cmp r0, #3
	beq _08090582
	b _0809059E
_08090538:
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x19]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	b _0809059A
_08090552:
	ldrb r0, [r2, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2, #0x19]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	b _0809059A
_08090568:
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x19]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	b _0809059A
_08090582:
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x19]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
_0809059A:
	orrs r0, r1
	strb r0, [r2]
_0809059E:
	pop {pc}
