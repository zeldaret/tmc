	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Takkuri
Takkuri: @ 0x0803BB7C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803BB94 @ =gUnk_080CFF3C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803BB94: .4byte gUnk_080CFF3C

	thumb_func_start sub_0803BB98
sub_0803BB98: @ 0x0803BB98
	push {lr}
	ldr r2, _0803BBAC @ =gUnk_080CFF54
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803BBAC: .4byte gUnk_080CFF54

	thumb_func_start sub_0803BBB0
sub_0803BBB0: @ 0x0803BBB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803BC2C
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0803BC06
	adds r0, r4, #0
	bl sub_0803C0AC
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0803BBF6
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0803BBF2
	adds r0, r2, #2
	b _0803BBF4
_0803BBF2:
	subs r0, r2, #2
_0803BBF4:
	strb r0, [r4, #0x15]
_0803BBF6:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	subs r0, r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803BF2C
	b _0803BC1E
_0803BC06:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803BC1E
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_0803BC1E:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	cmp r0, #0x10
	bls _0803BC2C
	subs r0, #0xc
	strh r0, [r1]
_0803BC2C:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}

	thumb_func_start sub_0803BC34
sub_0803BC34: @ 0x0803BC34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803BC78 @ =gUnk_080CFF6C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0803BC74
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
	bl sub_0803BF2C
_0803BC74:
	pop {r4, pc}
	.align 2, 0
_0803BC78: .4byte gUnk_080CFF6C

	thumb_func_start sub_0803BC7C
sub_0803BC7C: @ 0x0803BC7C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803BC88
sub_0803BC88: @ 0x0803BC88
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0803BC90
sub_0803BC90: @ 0x0803BC90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0803BCA2
	adds r0, r4, #0
	bl sub_0804A7D4
_0803BCA2:
	pop {r4, pc}

	thumb_func_start sub_0803BCA4
sub_0803BCA4: @ 0x0803BCA4
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
	bl UpdateSpriteForCollisionLayer
	adds r0, r6, #0
	bl sub_0803BF2C
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803BD08
sub_0803BD08: @ 0x0803BD08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803BD2C
	adds r0, r4, #0
	bl CheckOnScreen
	cmp r0, #0
	bne _0803BD80
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_0803BD2C:
	adds r0, r4, #0
	bl sub_0803BEE8
	adds r0, r4, #0
	bl GetNextFrame
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803BD80
	ldr r5, _0803BD84 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x88
	movs r3, #0x50
	bl EntityInRectRadius
	cmp r0, #0
	beq _0803BD80
	ldr r0, [r5]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	adds r0, #8
	cmp r1, r0
	ble _0803BD80
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
	bl sub_0803BF2C
_0803BD80:
	pop {r4, r5, pc}
	.align 2, 0
_0803BD84: .4byte gUnk_020000B0

	thumb_func_start sub_0803BD88
sub_0803BD88: @ 0x0803BD88
	push {lr}
	bl sub_0803BF70
	pop {pc}

	thumb_func_start sub_0803BD90
sub_0803BD90: @ 0x0803BD90
	push {r4, lr}
	adds r4, r0, #0
	bl CheckOnScreen
	cmp r0, #0
	bne _0803BDC8
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
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #8
	strb r0, [r4, #0xe]
	b _0803BDD4
_0803BDC8:
	adds r0, r4, #0
	bl sub_0803BF48
	adds r0, r4, #0
	bl GetNextFrame
_0803BDD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803BDD8
sub_0803BDD8: @ 0x0803BDD8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BE76
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803BDFE
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803BE06
_0803BDFE:
	adds r0, r4, #0
	bl sub_0803C120
	b _0803BE70
_0803BE06:
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803BE20
	movs r0, #8
	strb r0, [r4, #0x15]
	ldr r1, _0803BE1C @ =gRoomControls
	ldrh r0, [r1, #0xa]
	subs r0, #0x20
	b _0803BE30
	.align 2, 0
_0803BE1C: .4byte gRoomControls
_0803BE20:
	movs r0, #0x18
	strb r0, [r4, #0x15]
	ldr r1, _0803BE78 @ =gRoomControls
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
_0803BE30:
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0xc]
	adds r0, #8
	strh r0, [r4, #0x32]
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
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	subs r1, #2
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, #0x94
	strh r0, [r4, #0x24]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
_0803BE70:
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BE76:
	pop {r4, pc}
	.align 2, 0
_0803BE78: .4byte gRoomControls

	thumb_func_start sub_0803BE7C
sub_0803BE7C: @ 0x0803BE7C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl CheckOnScreen
	adds r5, r0, #0
	cmp r5, #0
	bne _0803BEE6
	movs r2, #1
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
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
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BEE6:
	pop {r4, r5, pc}

	thumb_func_start sub_0803BEE8
sub_0803BEE8: @ 0x0803BEE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BF28
	ldrb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _0803BF0E
	strb r0, [r4, #0x15]
_0803BF0E:
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r2, [r5]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #0x15]
	ands r0, r2
	cmp r1, r0
	beq _0803BF28
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BF28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803BF2C
sub_0803BF2C: @ 0x0803BF2C
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
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803BF48
sub_0803BF48: @ 0x0803BF48
	push {r4, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
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

	thumb_func_start sub_0803BF70
sub_0803BF70: @ 0x0803BF70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x84
	ldrb r0, [r2]
	cmp r0, #1
	beq _0803BFC0
	cmp r0, #1
	bgt _0803BF88
	cmp r0, #0
	beq _0803BF8E
	b _0803C0A2
_0803BF88:
	cmp r0, #2
	beq _0803BFEA
	b _0803C0A2
_0803BF8E:
	ldrb r1, [r5, #0xe]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0803BFA0
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r5, #0x36]
_0803BFA0:
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C0A2
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
	b _0803BFE0
_0803BFC0:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C0A2
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
_0803BFE0:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803BF2C
	b _0803C0A2
_0803BFEA:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #0
	bne _0803C02C
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
	beq _0803C024
	movs r0, #0x10
	subs r0, r0, r2
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_0803C024:
	adds r0, r5, #0
	bl sub_0803BF2C
	b _0803C09C
_0803C02C:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C09C
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
	beq _0803C07E
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _0803C076
	ands r3, r0
	cmp r3, #0
	beq _0803C072
	movs r0, #0x12
	b _0803C074
_0803C072:
	movs r0, #0xe
_0803C074:
	strb r0, [r4]
_0803C076:
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	movs r0, #1
	strh r0, [r6]
_0803C07E:
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
	beq _0803C09C
	adds r1, r2, #4
	adds r0, r5, #0
	bl InitializeAnimation
_0803C09C:
	adds r0, r5, #0
	bl sub_0803BF48
_0803C0A2:
	adds r0, r5, #0
	bl GetNextFrame
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803C0AC
sub_0803C0AC: @ 0x0803C0AC
	push {r4, r5, r6, lr}
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	beq _0803C11C
	ldr r0, _0803C0D4 @ =gSave
	adds r0, #0xc0
	ldrh r1, [r0]
	ldr r0, _0803C0D8 @ =0x000001F3
	cmp r1, r0
	bls _0803C0DC
	movs r6, #0x56
	movs r4, #5
	movs r0, #0x64
	rsbs r0, r0, #0
	bl ModRupees
	b _0803C118
	.align 2, 0
_0803C0D4: .4byte gSave
_0803C0D8: .4byte 0x000001F3
_0803C0DC:
	cmp r1, #0x63
	bls _0803C0EE
	movs r6, #0x55
	movs r4, #5
	movs r0, #0x19
	rsbs r0, r0, #0
	bl ModRupees
	b _0803C118
_0803C0EE:
	movs r6, #0x54
	adds r4, r1, #0
	cmp r4, #4
	bls _0803C0F8
	movs r4, #5
_0803C0F8:
	rsbs r0, r4, #0
	bl ModRupees
	b _0803C118
_0803C100:
	movs r0, #0x1a
	adds r1, r6, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0803C116
	adds r0, r5, #0
	bl CopyPosition
_0803C116:
	subs r4, #1
_0803C118:
	cmp r4, #0
	bne _0803C100
_0803C11C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803C120
sub_0803C120: @ 0x0803C120
	adds r2, r0, #0
	movs r0, #5
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #9
	ands r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	ldrh r0, [r2, #0x36]
	adds r0, #8
	strh r0, [r2, #0x36]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
