	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GyorgMale
GyorgMale: @ 0x080467F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08046810
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08046810:
	ldr r1, _0804688C @ =gUnk_080D1AFC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #7
	beq _08046836
	ldrh r3, [r5]
	adds r0, r4, #0
	movs r1, #0xaa
	movs r2, #0xaa
	bl sub_0805EC9C
_08046836:
	ldrh r0, [r5]
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08048004
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08046878
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _08046890 @ =gRoomControls
	movs r3, #0xc
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	adds r0, #0x30
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08046878
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r4, #0x18]
_08046878:
	ldr r2, _08046894 @ =gLinkEntity
	ldrh r1, [r2, #0x2e]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	ldrh r1, [r2, #0x32]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0804688C: .4byte gUnk_080D1AFC
_08046890: .4byte gRoomControls
_08046894: .4byte gLinkEntity

	thumb_func_start sub_08046898
sub_08046898: @ 0x08046898
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x22
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _0804690C
	movs r4, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r1, #0xa]
	str r5, [r1, #0x50]
	str r1, [r5, #0x54]
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldrb r1, [r5, #0x19]
	movs r0, #3
	orrs r1, r0
	ldrb r2, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r5, #0x18]
	ldrb r2, [r5, #0x1b]
	movs r3, #0x3f
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ands r1, r3
	orrs r1, r2
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	subs r0, #4
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	subs r0, #8
	strh r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0804690C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08046910
sub_08046910: @ 0x08046910
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804692C @ =gUnk_080D1B1C
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_0804692C: .4byte gUnk_080D1B1C

	thumb_func_start sub_08046930
sub_08046930: @ 0x08046930
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08046948
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_08046948:
	adds r0, r4, #0
	bl sub_08047D88
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804696A
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_0804696A:
	pop {r4, pc}

	thumb_func_start sub_0804696C
sub_0804696C: @ 0x0804696C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r5, _080469C8 @ =gRoomControls
	ldrh r0, [r5, #8]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080469A6
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x80
	strb r0, [r4, #0x15]
	adds r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r0, #0x2e
	bl PlaySFX
_080469A6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080469C6
	ldrh r0, [r5, #8]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080469C6
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #0xf7
	bl PlaySFX
_080469C6:
	pop {r4, r5, pc}
	.align 2, 0
_080469C8: .4byte gRoomControls

	thumb_func_start sub_080469CC
sub_080469CC: @ 0x080469CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r0, _080469F0 @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080469EE
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x90
	strb r0, [r4, #0x15]
_080469EE:
	pop {r4, pc}
	.align 2, 0
_080469F0: .4byte gRoomControls

	thumb_func_start sub_080469F4
sub_080469F4: @ 0x080469F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r0, _08046A2C @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08046A28
	movs r0, #4
	strb r0, [r4, #0xd]
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
_08046A28:
	pop {r4, pc}
	.align 2, 0
_08046A2C: .4byte gRoomControls

	thumb_func_start sub_08046A30
sub_08046A30: @ 0x08046A30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08046A50
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046A50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08046A54
sub_08046A54: @ 0x08046A54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r0, _08046A74 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08046A72
	movs r0, #6
	strb r0, [r4, #0xd]
_08046A72:
	pop {r4, pc}
	.align 2, 0
_08046A74: .4byte gRoomControls

	thumb_func_start sub_08046A78
sub_08046A78: @ 0x08046A78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08046A98
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046A98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08046A9C
sub_08046A9C: @ 0x08046A9C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046ABA
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046ABA
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_08046ABA:
	ldr r1, _08046AE4 @ =gUnk_080D1B38
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046AE2
	movs r1, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046AE2:
	pop {r4, pc}
	.align 2, 0
_08046AE4: .4byte gUnk_080D1B38

	thumb_func_start sub_08046AE8
sub_08046AE8: @ 0x08046AE8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #5
	adds r0, r4, #0
	bl sub_08048178
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08047D88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08046B18
sub_08046B18: @ 0x08046B18
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08046B6C
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046B54
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _08046B50 @ =0xFFFFFF00
	b _08046B5C
	.align 2, 0
_08046B50: .4byte 0xFFFFFF00
_08046B54:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046B5C:
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	b _08046B70
_08046B6C:
	movs r0, #2
	strb r0, [r4, #0xd]
_08046B70:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_08046B8C
sub_08046B8C: @ 0x08046B8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08046BD8
	movs r0, #3
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r1, _08046BD4 @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r5]
	adds r2, #0x10
	adds r0, r2, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r6]
	adds r0, r4, #0
	bl sub_08047D88
	b _08046C02
	.align 2, 0
_08046BD4: .4byte gRoomControls
_08046BD8:
	ldrh r0, [r5]
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
_08046C02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08046C04
sub_08046C04: @ 0x08046C04
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08046C58
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046C40
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _08046C3C @ =0xFFFFFF00
	b _08046C48
	.align 2, 0
_08046C3C: .4byte 0xFFFFFF00
_08046C40:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046C48:
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	b _08046C6C
_08046C58:
	movs r0, #4
	strb r0, [r4, #0xd]
	adds r0, r1, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	lsrs r0, r0, #6
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
_08046C6C:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_08046C88
sub_08046C88: @ 0x08046C88
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08046CC0
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	bl sub_08048158
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08048178
	adds r0, r4, #0
	bl sub_08047D88
	b _08046CEA
_08046CC0:
	ldrh r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
_08046CEA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08046CEC
sub_08046CEC: @ 0x08046CEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046D0A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046D0A
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
_08046D0A:
	ldr r1, _08046D40 @ =gUnk_080D1B4C
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08046D3C
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x24]
	strb r0, [r4, #0x14]
_08046D3C:
	pop {r4, pc}
	.align 2, 0
_08046D40: .4byte gUnk_080D1B4C

	thumb_func_start sub_08046D44
sub_08046D44: @ 0x08046D44
	push {lr}
	mov ip, r0
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x24]
	ldr r0, [r1, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #5
	lsls r1, r1, #1
	ldr r0, _08046D90 @ =gUnk_080D1B60
	adds r1, r1, r0
	ldr r3, _08046D94 @ =gRoomControls
	ldrh r0, [r3, #6]
	ldrh r2, [r1]
	adds r0, r0, r2
	mov r2, ip
	adds r2, #0x80
	strh r0, [r2]
	ldrh r0, [r3, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x82
	strh r0, [r1]
	mov r1, ip
	ldrb r0, [r1, #0x15]
	lsls r0, r0, #8
	adds r1, #0x76
	strh r0, [r1]
	mov r0, ip
	bl sub_08047D88
	pop {pc}
	.align 2, 0
_08046D90: .4byte gUnk_080D1B60
_08046D94: .4byte gRoomControls

	thumb_func_start sub_08046D98
sub_08046D98: @ 0x08046D98
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08046DEC
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046DD4
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _08046DD0 @ =0xFFFFFF00
	b _08046DDC
	.align 2, 0
_08046DD0: .4byte 0xFFFFFF00
_08046DD4:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046DDC:
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	b _08046DF0
_08046DEC:
	movs r0, #2
	strb r0, [r4, #0xd]
_08046DF0:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_08046E0C
sub_08046E0C: @ 0x08046E0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08046E3C
	movs r0, #3
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08047D88
	b _08046E66
_08046E3C:
	ldrh r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
_08046E66:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08046E68
sub_08046E68: @ 0x08046E68
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	movs r0, #0x80
	adds r6, r0, #0
	eors r6, r1
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	beq _08046EC6
	subs r0, r6, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046E94
	adds r1, r5, #0
	adds r1, #0x76
	ldr r2, _08046E90 @ =0xFFFFFF00
	b _08046E9C
	.align 2, 0
_08046E90: .4byte 0xFFFFFF00
_08046E94:
	adds r1, r5, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046E9C:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08047D88
	ldrb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r5, #0
	bl sub_08047EA4
	b _08046EEE
_08046EC6:
	movs r0, #4
	strb r0, [r5, #0xd]
	movs r0, #0x3f
	strb r0, [r5, #0xe]
	movs r4, #1
	strb r4, [r5, #0xf]
	bl Random
	ldr r1, _08046EF0 @ =gUnk_080D1B70
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r6
	movs r1, #0xc0
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08047D88
_08046EEE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046EF0: .4byte gUnk_080D1B70

	thumb_func_start sub_08046EF4
sub_08046EF4: @ 0x08046EF4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046F12
	movs r0, #0x7f
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r4, #0x15]
_08046F12:
	ldr r2, _08046F60 @ =gUnk_080D1B74
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #3
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r3
	cmp r0, #0
	bne _08046F58
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #0xf]
	movs r0, #0x23
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _08046F58
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_08046F58:
	adds r0, r4, #0
	bl sub_08047E48
	pop {r4, pc}
	.align 2, 0
_08046F60: .4byte gUnk_080D1B74

	thumb_func_start sub_08046F64
sub_08046F64: @ 0x08046F64
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046F82
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046F82
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
_08046F82:
	ldr r1, _08046FE4 @ =gUnk_080D1B94
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08046FC8
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x23
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _08046FC8
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_08046FC8:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08046FE0
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046FE0:
	pop {r4, pc}
	.align 2, 0
_08046FE4: .4byte gUnk_080D1B94

	thumb_func_start sub_08046FE8
sub_08046FE8: @ 0x08046FE8
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #0x1e
	strh r0, [r1]
	ldr r2, _08047028 @ =gRoomControls
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x80
	strh r0, [r1]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_08047D88
	pop {pc}
	.align 2, 0
_08047028: .4byte gRoomControls

	thumb_func_start sub_0804702C
sub_0804702C: @ 0x0804702C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	ldrb r2, [r4, #0x15]
	subs r0, r2, r3
	adds r0, #2
	movs r1, #0xff
	ands r0, r1
	cmp r0, #4
	bls _0804706C
	subs r0, r3, r2
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08047068
	subs r0, r2, #1
	b _0804706A
_08047068:
	adds r0, r2, #1
_0804706A:
	strb r0, [r4, #0x15]
_0804706C:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	movs r0, #0x24
	ldrsh r3, [r4, r0]
	asrs r3, r3, #0x10
	adds r3, #0x10
	adds r0, r4, #0
	bl sub_0806FCB8
	cmp r0, #0
	beq _080470B0
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_080470B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080470B4
sub_080470B4: @ 0x080470B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x40
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0804710A
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _080470D8
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _080470D4 @ =0xFFFFFF00
	b _080470E0
	.align 2, 0
_080470D4: .4byte 0xFFFFFF00
_080470D8:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_080470E0:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	b _0804713A
_0804710A:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl Random
	ldr r2, _0804713C @ =gUnk_080D1BBC
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08047D88
_0804713A:
	pop {r4, pc}
	.align 2, 0
_0804713C: .4byte gUnk_080D1BBC

	thumb_func_start sub_08047140
sub_08047140: @ 0x08047140
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0xbf
	bls _08047164
	movs r0, #0xc0
	strb r0, [r2, #0x15]
	movs r0, #4
	strb r0, [r2, #0xd]
_08047164:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804717C
sub_0804717C: @ 0x0804717C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _080471C0 @ =0x0000027F
	cmp r1, r0
	bgt _08047192
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x24]
_08047192:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	ldr r0, _080471C4 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080471BC
	movs r0, #5
	strb r0, [r4, #0xd]
_080471BC:
	pop {r4, pc}
	.align 2, 0
_080471C0: .4byte 0x0000027F
_080471C4: .4byte gRoomControls

	thumb_func_start sub_080471C8
sub_080471C8: @ 0x080471C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080471E0
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r4, #0x24]
_080471E0:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xdf
	bhi _080471EA
	adds r0, #1
	strb r0, [r4, #0x15]
_080471EA:
	ldrb r1, [r4, #0x15]
	movs r5, #0x80
	lsls r5, r5, #1
	subs r1, r5, r1
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	ldr r0, _0804722C @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08047238
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	cmp r0, r5
	bls _08047234
	bl Random
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08047230
	movs r0, #6
	b _08047236
	.align 2, 0
_0804722C: .4byte gRoomControls
_08047230:
	strb r1, [r4, #0xd]
	b _08047238
_08047234:
	movs r0, #0
_08047236:
	strb r0, [r4, #0xd]
_08047238:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804723C
sub_0804723C: @ 0x0804723C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	subs r0, #2
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bhi _08047266
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0xc0
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r1]
_08047266:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08047284
sub_08047284: @ 0x08047284
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #0xe0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0x3f
	bhi _080472A4
	movs r0, #0x40
	strb r0, [r2, #0x15]
	movs r0, #8
	strb r0, [r2, #0xd]
_080472A4:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080472BC
sub_080472BC: @ 0x080472BC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _08047308 @ =0x000002FF
	cmp r1, r0
	bgt _080472D2
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x24]
_080472D2:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	ldr r0, _0804730C @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08047306
	movs r0, #9
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_08047306:
	pop {r4, pc}
	.align 2, 0
_08047308: .4byte 0x000002FF
_0804730C: .4byte gRoomControls

	thumb_func_start sub_08047310
sub_08047310: @ 0x08047310
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x24]
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	ldr r0, _08047364 @ =0x0000017F
	cmp r1, r0
	bgt _08047326
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r2, #0x24]
_08047326:
	adds r1, r2, #0
	adds r1, #0x76
	ldr r3, _08047368 @ =0xFFFFFE30
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	adds r0, #0x7f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0804734C
	movs r0, #0xc0
	strb r0, [r2, #0x15]
	movs r0, #4
	strb r0, [r2, #0xd]
_0804734C:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0
_08047364: .4byte 0x0000017F
_08047368: .4byte 0xFFFFFE30

	thumb_func_start sub_0804736C
sub_0804736C: @ 0x0804736C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804738A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804738A
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0804738A:
	ldr r0, _080473B4 @ =gUnk_080D1BC0
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _080473B0
	movs r0, #7
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080473B0:
	pop {r4, pc}
	.align 2, 0
_080473B4: .4byte gUnk_080D1BC0

	thumb_func_start sub_080473B8
sub_080473B8: @ 0x080473B8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0, #0x24]
	ldr r3, _080473EC @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r3, #6]
	adds r1, r1, r2
	adds r2, r0, #0
	adds r2, #0x80
	strh r1, [r2]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r3, [r3, #8]
	adds r1, r1, r3
	adds r2, r0, #0
	adds r2, #0x82
	strh r1, [r2]
	bl sub_08047D88
	pop {pc}
	.align 2, 0
_080473EC: .4byte gRoomControls

	thumb_func_start sub_080473F0
sub_080473F0: @ 0x080473F0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	ldrb r2, [r4, #0x15]
	subs r0, r2, r3
	adds r0, #2
	movs r1, #0xff
	ands r0, r1
	cmp r0, #4
	bls _08047444
	subs r1, r3, r2
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08047438
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08047434
	subs r0, r2, #2
	b _08047442
_08047434:
	subs r0, r2, #1
	b _08047442
_08047438:
	cmp r1, #1
	ble _08047440
	adds r0, r2, #2
	b _08047442
_08047440:
	adds r0, r2, #1
_08047442:
	strb r0, [r4, #0x15]
_08047444:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	beq _08047482
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_08047482:
	pop {r4, pc}

	thumb_func_start sub_08047484
sub_08047484: @ 0x08047484
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x40
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _080474DA
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _080474A8
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _080474A4 @ =0xFFFFFF00
	b _080474B0
	.align 2, 0
_080474A4: .4byte 0xFFFFFF00
_080474A8:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_080474B0:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	b _08047504
_080474DA:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0xa
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08047D88
_08047504:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08047508
sub_08047508: @ 0x08047508
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0804754C @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _0804759A
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _08047550
	ldrh r0, [r2, #8]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0804759A
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsrs r0, r0, #8
	b _08047598
	.align 2, 0
_0804754C: .4byte gRoomControls
_08047550:
	adds r0, r4, #0
	adds r0, #0x74
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	bge _0804757E
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r0, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804759A
	movs r0, #0
	strb r0, [r4, #0x15]
	movs r0, #0
	strh r0, [r3]
	b _0804759A
_0804757E:
	cmp r1, #0x3f
	bhi _0804759A
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	cmp r0, #0x3f
	bls _0804759A
	movs r0, #0x40
_08047598:
	strb r0, [r4, #0x15]
_0804759A:
	adds r0, r4, #0
	bl sub_08047E48
	ldr r0, _080475F0 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080475CA
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_080475CA:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080475EE
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _080475EE
	str r4, [r0, #0x50]
_080475EE:
	pop {r4, pc}
	.align 2, 0
_080475F0: .4byte gRoomControls

	thumb_func_start sub_080475F4
sub_080475F4: @ 0x080475F4
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0xbf
	bls _08047626
	movs r0, #0xc0
	strb r0, [r2, #0x15]
	movs r0, #5
	strb r0, [r2, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	adds r1, #8
	movs r0, #0x3c
	strh r0, [r1]
_08047626:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}

	thumb_func_start sub_0804763C
sub_0804763C: @ 0x0804763C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08047680 @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080476D0
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _08047684
	ldrh r0, [r2, #8]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _080476D0
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsrs r0, r0, #8
	b _080476CE
	.align 2, 0
_08047680: .4byte gRoomControls
_08047684:
	adds r0, r4, #0
	adds r0, #0x74
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble _080476B4
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r0, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080476D0
	movs r0, #0
	strb r0, [r4, #0x15]
	strh r1, [r3]
	b _080476D0
_080476B4:
	cmp r1, #0xc0
	bls _080476D0
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	cmp r0, #0xc0
	bhi _080476D0
	movs r0, #0xc0
_080476CE:
	strb r0, [r4, #0x15]
_080476D0:
	adds r0, r4, #0
	bl sub_08047E48
	ldr r0, _08047728 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08047700
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_08047700:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08047724
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _08047724
	str r4, [r0, #0x50]
_08047724:
	pop {r4, pc}
	.align 2, 0
_08047728: .4byte gRoomControls

	thumb_func_start sub_0804772C
sub_0804772C: @ 0x0804772C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	ldr r3, _08047774 @ =0xFFFFFE80
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0x40
	bhi _0804775C
	movs r0, #0x40
	strb r0, [r2, #0x15]
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	adds r1, #8
	movs r0, #0x1e
	strh r0, [r1]
_0804775C:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0
_08047774: .4byte 0xFFFFFE80

	thumb_func_start sub_08047778
sub_08047778: @ 0x08047778
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08047794 @ =gUnk_080D1BDC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_08047794: .4byte gUnk_080D1BDC

	thumb_func_start sub_08047798
sub_08047798: @ 0x08047798
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r0, #0x80
	strh r0, [r3, #0x24]
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldr r2, _080477BC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	ldr r0, _080477C0 @ =0x000001F7
	cmp r1, r0
	bgt _080477C4
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0xa8
	b _080477CC
	.align 2, 0
_080477BC: .4byte gRoomControls
_080477C0: .4byte 0x000001F7
_080477C4:
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0xd2
	lsls r0, r0, #2
_080477CC:
	strh r0, [r1]
	ldrh r0, [r2, #6]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_08047D88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080477F0
sub_080477F0: @ 0x080477F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _08047868 @ =0x000002FF
	cmp r1, r0
	bgt _0804780A
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x24]
_0804780A:
	adds r7, r4, #0
	adds r7, #0x80
	ldrh r0, [r7]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08047E48
	ldr r0, _0804786C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x80
	bl sub_0806FCB8
	adds r1, r0, #0
	cmp r1, #0
	bne _08047870
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
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
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
	b _0804790C
	.align 2, 0
_08047868: .4byte 0x000002FF
_0804786C: .4byte gLinkEntity
_08047870:
	ldr r5, _080478FC @ =gRoomControls
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	ldrh r2, [r5, #8]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, #0
	bl sub_0806FCB8
	cmp r0, #0
	bne _080478A0
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
_080478A0:
	ldrh r1, [r7]
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804790C
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl Random
	ldr r2, _08047900 @ =gUnk_080D1BF0
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	strh r2, [r0]
	ldr r2, [r4, #0x64]
	ldr r0, [r2]
	adds r0, #0x6c
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08047904
	ldr r3, [r2, #4]
	ldrh r0, [r5, #6]
	add r0, r8
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x83
	cmp r0, r1
	ble _080478F4
	movs r2, #0x81
_080478F4:
	adds r0, r3, #0
	adds r0, #0x79
	strb r2, [r0]
	b _0804790C
	.align 2, 0
_080478FC: .4byte gRoomControls
_08047900: .4byte gUnk_080D1BF0
_08047904:
	ldr r0, [r2, #4]
	adds r0, #0x79
	movs r1, #0x80
	strb r1, [r0]
_0804790C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08047914
sub_08047914: @ 0x08047914
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	ldrb r1, [r4, #0x14]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	beq _08047950
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	b _08047976
_08047950:
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #0x3c
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldrb r1, [r4, #0x14]
	bl sub_080A1D70
_08047976:
	pop {r4, pc}

	thumb_func_start sub_08047978
sub_08047978: @ 0x08047978
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	beq _080479C6
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r0, [r2]
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080479B6
	adds r1, r4, #0
	adds r1, #0x72
	movs r0, #1
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080479AE
	movs r0, #0xb4
	strh r0, [r2]
	b _080479CC
_080479AE:
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r2]
	b _080479CC
_080479B6:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bne _080479CC
	adds r0, r4, #0
	bl sub_0804813C
	b _080479CC
_080479C6:
	adds r0, r4, #0
	adds r0, #0x72
	strh r1, [r0]
_080479CC:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080479F4
	movs r0, #0xf0
	strh r0, [r1]
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _080479F4
	str r4, [r0, #0x50]
_080479F4:
	ldr r0, _08047A78 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x80
	bl sub_0806FCB8
	adds r1, r0, #0
	cmp r1, #0
	bne _08047A2C
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
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
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
_08047A2C:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047B06
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08047B06
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08047AA4
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _08047A80
	ldr r2, _08047A7C @ =gRoomControls
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0x82
	b _08047B04
	.align 2, 0
_08047A78: .4byte gLinkEntity
_08047A7C: .4byte gRoomControls
_08047A80:
	ldr r2, _08047AA0 @ =gRoomControls
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	adds r3, #0x10
	adds r0, r3, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, #2
	b _08047B04
	.align 2, 0
_08047AA0: .4byte gRoomControls
_08047AA4:
	ldr r0, _08047AC4 @ =gRoomControls
	ldrh r1, [r0, #6]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0x2e
	ldrsh r2, [r4, r3]
	adds r3, r0, #0
	cmp r1, r2
	bge _08047AC8
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0xc8
	lsls r0, r0, #1
	b _08047AD0
	.align 2, 0
_08047AC4: .4byte gRoomControls
_08047AC8:
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x9c
	lsls r0, r0, #2
_08047AD0:
	strh r0, [r1]
	ldrh r0, [r3, #6]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r3, #8]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08047AF4
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xd0
	lsls r0, r0, #1
	b _08047AFC
_08047AF4:
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xa0
	lsls r0, r0, #2
_08047AFC:
	strh r0, [r1]
	ldrh r0, [r3, #8]
	ldrh r3, [r1]
	adds r0, r0, r3
_08047B04:
	strh r0, [r1]
_08047B06:
	pop {r4, pc}

	thumb_func_start sub_08047B08
sub_08047B08: @ 0x08047B08
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08047D88
	adds r4, r5, #0
	adds r4, #0x80
	ldrh r0, [r4]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	adds r6, r5, #0
	adds r6, #0x82
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08047E58
	ldrh r1, [r4]
	ldrh r2, [r6]
	adds r0, r5, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08047B80
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08047B60
	movs r0, #7
	strb r0, [r5, #0xc]
	strb r7, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	movs r1, #0x80
	eors r0, r1
	b _08047B7E
_08047B60:
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r7, [r5, #0xd]
	ldrb r2, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x19]
	ldrb r0, [r5, #0x14]
_08047B7E:
	strb r0, [r5, #0x15]
_08047B80:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08047B84
sub_08047B84: @ 0x08047B84
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08047BA0 @ =gUnk_080D1BF4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_08047BA0: .4byte gUnk_080D1BF4

	thumb_func_start sub_08047BA4
sub_08047BA4: @ 0x08047BA4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0x78
	strb r2, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r0, _08047BD0 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _08047BD4
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _08047BDC
	.align 2, 0
_08047BD0: .4byte gRoomControls
_08047BD4:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x88
	strh r0, [r1]
_08047BDC:
	ldr r0, _08047BEC @ =0x000001B5
	bl PlaySFX
	adds r0, r4, #0
	bl sub_08047BF0
	pop {r4, pc}
	.align 2, 0
_08047BEC: .4byte 0x000001B5

	thumb_func_start sub_08047BF0
sub_08047BF0: @ 0x08047BF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _08047CB8 @ =gUnk_080D1C00
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08047E48
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08047CC4
	ldrb r1, [r5, #0xf]
	adds r0, r1, #1
	strb r0, [r5, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08047C74
	adds r0, r5, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08047C74
	bl Random
	movs r3, #0x1e
	adds r1, r0, #0
	ands r1, r3
	ldr r6, _08047CBC @ =0x0000FFF1
	adds r2, r6, #0
	adds r1, r2, r1
	ldrh r6, [r4, #0x2e]
	adds r1, r1, r6
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08047C74:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r5, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08047E48
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldr r0, _08047CC0 @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r6, #0x9c
	lsls r6, r6, #2
	adds r0, r0, r6
	cmp r1, r0
	ble _08047D10
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x7e
	movs r0, #0xaa
	strh r0, [r1]
	adds r0, #0x83
	bl PlaySFX
	adds r0, r5, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _08047D10
	.align 2, 0
_08047CB8: .4byte gUnk_080D1C00
_08047CBC: .4byte 0x0000FFF1
_08047CC0: .4byte gRoomControls
_08047CC4:
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5a
	bne _08047CD4
	ldr r4, [r5, #0x54]
	b _08047CDC
_08047CD4:
	cmp r0, #0x3c
	bne _08047CF2
	ldr r0, [r5, #0x54]
	ldr r4, [r0, #0x54]
_08047CDC:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	b _08047D10
_08047CF2:
	cmp r0, #0x1e
	bne _08047D10
	ldr r0, [r5, #0x54]
	ldr r0, [r0, #0x54]
	ldr r4, [r0, #0x54]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
_08047D10:
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r3, [r0]
	adds r0, r5, #0
	movs r1, #0xaa
	movs r2, #0xaa
	bl sub_0805EC9C
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08047D24
sub_08047D24: @ 0x08047D24
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	adds r0, #8
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bls _08047D5A
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08047D4C
	ldr r0, [r4, #0x64]
	str r2, [r0, #8]
	b _08047D50
_08047D4C:
	ldr r0, [r4, #0x64]
	str r2, [r0, #0xc]
_08047D50:
	movs r0, #0
	str r0, [r4, #0x64]
	bl DeleteThisEntity
	b _08047D84
_08047D5A:
	ldr r0, _08047D68 @ =0x000001FF
	cmp r1, r0
	bhi _08047D6C
	adds r0, r4, #0
	bl sub_08047E48
	b _08047D72
	.align 2, 0
_08047D68: .4byte 0x000001FF
_08047D6C:
	adds r0, r4, #0
	bl sub_08047E58
_08047D72:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r2, [r0]
	subs r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08047D84:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08047D88
sub_08047D88: @ 0x08047D88
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x7c
	ldrb r2, [r5]
	lsls r1, r2, #1
	movs r0, #0x7f
	ands r1, r0
	movs r0, #0x80
	ands r0, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r3, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08047DB0
	ldr r0, _08047DE8 @ =gLinkState
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _08047DE6
_08047DB0:
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _08047DE6
	ldr r4, _08047DEC @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0806FCB8
	cmp r0, #0
	beq _08047DE6
	ldr r0, _08047DE8 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08047DE6
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_08047DE6:
	pop {r4, r5, pc}
	.align 2, 0
_08047DE8: .4byte gLinkState
_08047DEC: .4byte gLinkEntity

	thumb_func_start sub_08047DF0
sub_08047DF0: @ 0x08047DF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08047D88
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08047EA4
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	movs r2, #0x32
	ldrsh r6, [r5, r2]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F62C
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047E42
	bl sub_08079F8C
	cmp r0, #0
	beq _08047E42
	ldr r0, _08047E44 @ =gLinkEntity
	ldrh r1, [r5, #0x2e]
	subs r1, r1, r4
	ldrh r2, [r0, #0x2e]
	adds r1, r1, r2
	strh r1, [r0, #0x2e]
	ldrh r1, [r5, #0x32]
	subs r1, r1, r6
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
_08047E42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08047E44: .4byte gLinkEntity

	thumb_func_start sub_08047E48
sub_08047E48: @ 0x08047E48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	adds r0, r4, #0
	bl sub_08047E58
	pop {r4, pc}

	thumb_func_start sub_08047E58
sub_08047E58: @ 0x08047E58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r2, #0x32
	ldrsh r6, [r4, r2]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047E9C
	bl sub_08079F8C
	cmp r0, #0
	beq _08047E9C
	ldr r0, _08047EA0 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	ldrh r2, [r0, #0x2e]
	adds r1, r1, r2
	strh r1, [r0, #0x2e]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r6
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
_08047E9C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08047EA0: .4byte gLinkEntity

	thumb_func_start sub_08047EA4
sub_08047EA4: @ 0x08047EA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r1, [r0]
	adds r0, #2
	ldrh r0, [r0]
	subs r4, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, #0xff
	cmp r1, r0
	bls _08047F58
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047F4E
	adds r0, r5, #0
	bl sub_08047F68
	lsls r0, r0, #8
	mov r8, r0
	ldr r6, _08047F60 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	adds r0, r4, #0
	cmp r4, #0
	bge _08047F00
	adds r0, #0xff
_08047F00:
	asrs r0, r0, #8
	subs r4, r3, r0
	movs r0, #0xff
	ands r4, r0
	ldr r2, _08047F64 @ =gUnk_080C9160
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r0, [r6, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #0x2c]
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r0, [r6, #0x30]
	subs r0, r0, r1
	str r0, [r6, #0x30]
_08047F4E:
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_08047F58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08047F60: .4byte gLinkEntity
_08047F64: .4byte gUnk_080C9160

	thumb_func_start sub_08047F68
sub_08047F68: @ 0x08047F68
	push {r4, r5, lr}
	ldr r3, _08047F98 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r3, r1]
	movs r4, #0x2e
	ldrsh r1, [r0, r4]
	subs r2, r2, r1
	movs r4, #0x32
	ldrsh r1, [r3, r4]
	movs r3, #0x32
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r4, r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bne _08047F9C
	movs r0, #0x20
	b _08048002
	.align 2, 0
_08047F98: .4byte gLinkEntity
_08047F9C:
	ldr r0, _08047FB8 @ =gUnk_080D1C04
	movs r3, #0x18
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r4, r0
	bge _08047FAA
	movs r3, #8
_08047FAA:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r4, r0
	bge _08047FBC
	subs r3, #4
	b _08047FBE
	.align 2, 0
_08047FB8: .4byte gUnk_080D1C04
_08047FBC:
	adds r3, #4
_08047FBE:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r4, r0
	bge _08047FCC
	subs r3, #2
	b _08047FCE
_08047FCC:
	adds r3, #2
_08047FCE:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r4, r0
	bge _08047FDC
	subs r3, #1
	b _08047FDE
_08047FDC:
	adds r3, #1
_08047FDE:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	cmp r4, r1
	bge _08048000
	subs r5, r3, #1
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	subs r0, r1, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	cmp r4, r2
	bgt _08048000
	adds r3, r5, #0
_08048000:
	adds r0, r3, #0
_08048002:
	pop {r4, r5, pc}

	thumb_func_start sub_08048004
sub_08048004: @ 0x08048004
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08048010
	b _08048138
_08048010:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804801C
	b _08048130
_0804801C:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r6, _080480A4 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _08048030
	b _08048138
_08048030:
	bl sub_08079F8C
	cmp r0, #0
	bne _0804803A
	b _08048138
_0804803A:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r3, [r1]
	movs r0, #1
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	beq _080480BA
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _080480B0
	movs r7, #0x2e
	ldrsh r2, [r6, r7]
	ldr r1, _080480A8 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #3
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #3
	ldr r1, _080480AC @ =gUnk_02019EE0
	lsls r0, r0, #7
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080480B0
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08048086
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r5]
_08048086:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08048138
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	strh r0, [r6, #0x2e]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	b _08048138
	.align 2, 0
_080480A4: .4byte gLinkEntity
_080480A8: .4byte gRoomControls
_080480AC: .4byte gUnk_02019EE0
_080480B0:
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	b _08048138
_080480BA:
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	beq _08048124
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	adds r0, r6, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _08048124
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08048124
	movs r7, #0x2e
	ldrsh r0, [r6, r7]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r3, _0804812C @ =gUnk_080C9160
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #0xa
	ldr r1, [r4, #0x2c]
	adds r1, r1, r2
	str r1, [r6, #0x2c]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0xa
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r6, #0x30]
_08048124:
	movs r0, #0
	strb r0, [r5]
	b _08048138
	.align 2, 0
_0804812C: .4byte gUnk_080C9160
_08048130:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08048138:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804813C
sub_0804813C: @ 0x0804813C
	push {lr}
	bl Random
	adds r2, r0, #0
	movs r0, #7
	ands r0, r2
	lsrs r2, r2, #8
	movs r1, #3
	ands r2, r1
	movs r1, #1
	bl sub_080A1ED0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08048158
sub_08048158: @ 0x08048158
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08048174 @ =gUnk_080D1C44
	bl Random
	lsls r4, r5, #1
	adds r4, r4, r5
	movs r1, #3
	bl __modsi3
	adds r4, r4, r0
	adds r4, r4, r6
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048174: .4byte gUnk_080D1C44

	thumb_func_start sub_08048178
sub_08048178: @ 0x08048178
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08048198
	lsls r1, r2, #1
	ldr r0, _08048194 @ =gUnk_080D1C60
	b _0804819C
	.align 2, 0
_08048194: .4byte gUnk_080D1C60
_08048198:
	lsls r1, r2, #1
	ldr r0, _080481B8 @ =gUnk_080D1C50
_0804819C:
	adds r3, r1, r0
	ldr r2, _080481BC @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldrh r3, [r3, #2]
	adds r0, r0, r3
	adds r1, #2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_080481B8: .4byte gUnk_080D1C50
_080481BC: .4byte gRoomControls
