	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0804905C
sub_0804905C: @ 0x0804905C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0804907C
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
_0804907C:
	adds r1, r5, #0
	adds r1, #0x45
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _08049092
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r2, [r5, #0xd]
_08049092:
	ldr r1, _080490F8 @ =gUnk_080D2974
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r3, [r4]
	adds r0, r5, #0
	movs r1, #0xaa
	movs r2, #0xaa
	bl sub_0805EC9C
	ldrh r0, [r4]
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_080499F0
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r2, [r5, #0x18]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080490F4
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldr r1, _080490FC @ =gRoomControls
	movs r3, #0xc
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	adds r0, #0x30
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _080490F4
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #0x18]
_080490F4:
	pop {r4, r5, pc}
	.align 2, 0
_080490F8: .4byte gUnk_080D2974
_080490FC: .4byte gRoomControls

	thumb_func_start sub_08049100
sub_08049100: @ 0x08049100
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x7c
	bl CheckFlags
	cmp r0, #0
	beq _08049144
	ldr r4, _08049140 @ =0x00004081
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #2
	bl SetTile
	adds r0, r4, #0
	movs r1, #0x4a
	movs r2, #2
	bl SetTile
	adds r0, r4, #0
	movs r1, #0x8a
	movs r2, #2
	bl SetTile
	adds r0, r4, #0
	movs r1, #0xca
	movs r2, #2
	bl SetTile
	bl DeleteThisEntity
	b _0804916E
	.align 2, 0
_08049140: .4byte 0x00004081
_08049144:
	ldr r4, _080491E8 @ =0x00000323
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #1
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0x4a
	movs r2, #1
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0x8a
	movs r2, #1
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0xca
	movs r2, #1
	bl sub_0807B7D8
_0804916E:
	movs r0, #0x22
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _080491E4
	movs r1, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r2, #0xa]
	str r5, [r2, #0x50]
	str r2, [r5, #0x54]
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x14]
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
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
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	subs r0, #4
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_080491E4:
	pop {r4, r5, pc}
	.align 2, 0
_080491E8: .4byte 0x00000323

	thumb_func_start sub_080491EC
sub_080491EC: @ 0x080491EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08049208 @ =gUnk_080D2988
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08049208: .4byte gUnk_080D2988

	thumb_func_start sub_0804920C
sub_0804920C: @ 0x0804920C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0804921C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08049268
_0804921C:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldr r2, _0804926C @ =gRoomControls
	ldrh r0, [r2, #6]
	ldr r1, _08049270 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _08049268
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	ldrh r0, [r2, #6]
	adds r0, #0xa8
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #8]
	subs r0, #0x40
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x78
	movs r1, #0x80
	lsls r1, r1, #8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_08049268:
	pop {r4, pc}
	.align 2, 0
_0804926C: .4byte gRoomControls
_08049270: .4byte 0xFFFFFF00

	thumb_func_start sub_08049274
sub_08049274: @ 0x08049274
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldr r0, _080492A4 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0x40
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080492A2
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080492A2:
	pop {r4, pc}
	.align 2, 0
_080492A4: .4byte gRoomControls

	thumb_func_start sub_080492A8
sub_080492A8: @ 0x080492A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080492C4 @ =gUnk_080D2990
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_080492C4: .4byte gUnk_080D2990

	thumb_func_start sub_080492C8
sub_080492C8: @ 0x080492C8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	adds r0, r3, #0
	adds r0, #0x6e
	strb r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldr r2, _08049300 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r5, r2, #0
	cmp r1, #0xa7
	bgt _08049304
	adds r2, r3, #0
	adds r2, #0x80
	movs r0, #0xd8
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x74
	adds r0, #0x28
	b _08049314
	.align 2, 0
_08049300: .4byte gRoomControls
_08049304:
	adds r2, r3, #0
	adds r2, #0x80
	movs r0, #0x78
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x74
	movs r0, #0xff
	lsls r0, r0, #8
_08049314:
	strh r0, [r1]
	adds r4, r1, #0
	ldrh r0, [r5, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	cmp r0, #0x7f
	bgt _08049336
	adds r1, r3, #0
	adds r1, #0x82
	movs r0, #0xb0
	strh r0, [r1]
	b _08049346
_08049336:
	adds r1, r3, #0
	adds r1, #0x82
	movs r0, #0x50
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	strh r0, [r4]
_08049346:
	ldrh r0, [r5, #8]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_08049358
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08049358
sub_08049358: @ 0x08049358
	push {r4, r5, lr}
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
	bls _08049398
	subs r0, r3, r2
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08049394
	subs r0, r2, #1
	b _08049396
_08049394:
	adds r0, r2, #1
_08049396:
	strb r0, [r4, #0x15]
_08049398:
	ldrb r1, [r4, #0x15]
	movs r5, #0x80
	lsls r5, r5, #1
	subs r1, r5, r1
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
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
	beq _080493E0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r5, [r0]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_080493E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080493E4
sub_080493E4: @ 0x080493E4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0804943A
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldr r3, _08049458 @ =gRoomControls
	ldrh r2, [r3, #6]
	adds r2, #0xa8
	ldrh r3, [r3, #8]
	adds r3, #0x80
	bl sub_080045D4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	subs r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #8
	bne _0804943A
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #7
	strb r0, [r4, #0xf]
_0804943A:
	adds r0, r4, #0
	bl sub_08049944
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
_08049458: .4byte gRoomControls

	thumb_func_start sub_0804945C
sub_0804945C: @ 0x0804945C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	strb r1, [r4, #0x15]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0804948C
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080494B2
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	b _080494B2
_0804948C:
	adds r0, r4, #0
	bl sub_08049A8C
	cmp r0, #0
	beq _080494B2
	movs r0, #0x23
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _080494B2
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_080494B2:
	adds r0, r4, #0
	bl sub_08049944
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

	thumb_func_start sub_080494D0
sub_080494D0: @ 0x080494D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08049518
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _0804950E
	movs r0, #5
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x24]
	adds r0, #0x40
	strh r0, [r4, #0x24]
	b _08049534
_0804950E:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _08049534
_08049518:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bne _08049534
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _08049534
	str r4, [r0, #0x50]
_08049534:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08049538
sub_08049538: @ 0x08049538
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldr r0, _08049570 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0xa8
	ldrh r2, [r0, #8]
	adds r2, #0x80
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	adds r1, r0, #0
	cmp r1, #0
	bne _0804956E
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0804956E:
	pop {r4, pc}
	.align 2, 0
_08049570: .4byte gRoomControls

	thumb_func_start sub_08049574
sub_08049574: @ 0x08049574
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08049590 @ =gUnk_080D29A8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08049590: .4byte gUnk_080D29A8

	thumb_func_start sub_08049594
sub_08049594: @ 0x08049594
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080495C8 @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	subs r1, #0xa8
	subs r0, r0, r1
	ldrh r1, [r2, #8]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r2, #0x80
	subs r1, r1, r2
	bl sub_080045DA
	ldrb r2, [r4, #0x15]
	cmp r0, r2
	beq _080495D2
	subs r0, r0, r2
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080495CC
	subs r0, r2, #1
	strb r0, [r4, #0x15]
	b _080495DC
	.align 2, 0
_080495C8: .4byte gRoomControls
_080495CC:
	adds r0, r2, #1
	strb r0, [r4, #0x15]
	b _080495DC
_080495D2:
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_080495DC:
	adds r0, r4, #0
	bl sub_08049944
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

	thumb_func_start sub_080495F8
sub_080495F8: @ 0x080495F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08049654 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0xa8
	ldrh r2, [r0, #8]
	adds r2, #0x80
	adds r0, r4, #0
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804963C
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	bl Random
	ldr r2, _08049658 @ =gUnk_080D29B8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_0804963C:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	pop {r4, pc}
	.align 2, 0
_08049654: .4byte gRoomControls
_08049658: .4byte gUnk_080D29B8

	thumb_func_start sub_0804965C
sub_0804965C: @ 0x0804965C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804969A
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0804969A:
	pop {r4, pc}

	thumb_func_start sub_0804969C
sub_0804969C: @ 0x0804969C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080496C8
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080496C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080496CC
sub_080496CC: @ 0x080496CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080496E8 @ =gUnk_080D29C0
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_080496E8: .4byte gUnk_080D29C0

	thumb_func_start sub_080496EC
sub_080496EC: @ 0x080496EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	bl sub_08079F8C
	cmp r0, #0
	beq _08049720
	ldr r0, _0804971C @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08049720
	movs r0, #2
	bl sub_08078A90
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _08049724
	.align 2, 0
_0804971C: .4byte gLinkEntity
_08049720:
	movs r0, #1
	strb r0, [r4, #0xd]
_08049724:
	adds r0, r4, #0
	bl sub_08049944
	pop {r4, pc}

	thumb_func_start sub_0804972C
sub_0804972C: @ 0x0804972C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08079F8C
	cmp r0, #0
	beq _08049750
	ldr r0, _08049758 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08049750
	movs r0, #2
	bl sub_08078A90
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xe]
_08049750:
	adds r0, r4, #0
	bl sub_08049944
	pop {r4, pc}
	.align 2, 0
_08049758: .4byte gLinkEntity

	thumb_func_start sub_0804975C
sub_0804975C: @ 0x0804975C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804977E
	movs r0, #3
	strb r0, [r1, #0xd]
	movs r0, #0xb4
	strb r0, [r1, #0xe]
	adds r0, #0x4c
	strh r0, [r1, #0x24]
	ldrb r0, [r1, #0x15]
	subs r0, #0x40
	strb r0, [r1, #0x15]
_0804977E:
	adds r0, r1, #0
	bl sub_08049944
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049788
sub_08049788: @ 0x08049788
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049AB0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080497B8
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	b _080497C6
_080497B8:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08049B20
_080497C6:
	adds r0, r4, #0
	bl sub_08049944
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080497D0
sub_080497D0: @ 0x080497D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049AB0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049802
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r1, #0x10
	bl DoFade
_08049802:
	pop {r4, pc}

	thumb_func_start sub_08049804
sub_08049804: @ 0x08049804
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049944
	ldr r0, _0804987C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049878
	movs r0, #6
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r4, [r4, #0x54]
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x18]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r4, #0x18]
	ldr r4, [r4, #0x54]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x18]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r4, #0x18]
	ldr r4, [r4, #0x54]
	ldrb r0, [r4, #0x10]
	ands r1, r0
	strb r1, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	ands r3, r0
	strb r3, [r4, #0x18]
	ldr r4, _08049880 @ =gLinkEntity
	ldr r1, _08049884 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xa8
	movs r2, #0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x80
	strh r0, [r4, #0x32]
	strb r2, [r4, #0x14]
	bl sub_080809D4
	movs r0, #4
	movs r1, #4
	bl DoFade
_08049878:
	pop {r4, pc}
	.align 2, 0
_0804987C: .4byte gUnk_03000FD0
_08049880: .4byte gLinkEntity
_08049884: .4byte gRoomControls

	thumb_func_start sub_08049888
sub_08049888: @ 0x08049888
	push {lr}
	adds r1, r0, #0
	ldr r0, _080498B0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080498AE
	movs r0, #7
	strb r0, [r1, #0xd]
	movs r0, #0xa0
	strb r0, [r1, #0xe]
	movs r0, #0x72
	bl PlaySFX
	movs r0, #0x7c
	bl SetFlag
	movs r0, #1
	bl sub_08078A90
_080498AE:
	pop {pc}
	.align 2, 0
_080498B0: .4byte gUnk_03000FD0

	thumb_func_start sub_080498B4
sub_080498B4: @ 0x080498B4
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080498C8
	bl DeleteThisEntity
	b _0804993E
_080498C8:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _080498E4
	movs r0, #0x36
	movs r1, #0xca
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _080498E0 @ =0x00004081
	movs r1, #0xca
	b _0804990E
	.align 2, 0
_080498E0: .4byte 0x00004081
_080498E4:
	cmp r0, #0x18
	bne _080498FC
	movs r0, #0x36
	movs r1, #0x8a
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _080498F8 @ =0x00004081
	movs r1, #0x8a
	b _0804990E
	.align 2, 0
_080498F8: .4byte 0x00004081
_080498FC:
	cmp r0, #0x20
	bne _08049920
	movs r0, #0x36
	movs r1, #0x4a
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _0804991C @ =0x00004081
	movs r1, #0x4a
_0804990E:
	movs r2, #2
	bl SetTile
	movs r0, #0x71
	bl PlaySFX
	b _0804993E
	.align 2, 0
_0804991C: .4byte 0x00004081
_08049920:
	cmp r0, #0x28
	bne _0804993E
	movs r0, #0x36
	movs r1, #0xa
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _08049940 @ =0x00004081
	movs r1, #0xa
	movs r2, #2
	bl SetTile
	movs r0, #0x71
	bl PlaySFX
_0804993E:
	pop {pc}
	.align 2, 0
_08049940: .4byte 0x00004081

	thumb_func_start sub_08049944
sub_08049944: @ 0x08049944
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r3, [r4]
	lsls r2, r3, #1
	movs r1, #0x7f
	ands r2, r1
	movs r1, #0x80
	ands r1, r3
	orrs r2, r1
	strb r2, [r4]
	ldr r5, _08049990 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	movs r3, #0x20
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804998C
	ldr r2, _08049994 @ =gLinkState
	movs r0, #1
	strb r0, [r2, #0x14]
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804998C
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_0804998C:
	pop {r4, r5, pc}
	.align 2, 0
_08049990: .4byte gLinkEntity
_08049994: .4byte gLinkState

	thumb_func_start sub_08049998
sub_08049998: @ 0x08049998
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08049944
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
	beq _080499EA
	bl sub_08079F8C
	cmp r0, #0
	beq _080499EA
	ldr r0, _080499EC @ =gLinkEntity
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
_080499EA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080499EC: .4byte gLinkEntity

	thumb_func_start sub_080499F0
sub_080499F0: @ 0x080499F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08049A82
	ldr r5, _08049A84 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08049A82
	bl sub_08079F8C
	cmp r0, #0
	beq _08049A82
	adds r2, r4, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _08049A82
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	adds r0, r5, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _08049A7E
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08049A7E
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r3, _08049A88 @ =gUnk_080C9160
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #0xa
	ldr r1, [r4, #0x2c]
	adds r1, r1, r2
	str r1, [r5, #0x2c]
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
	str r0, [r5, #0x30]
_08049A7E:
	movs r0, #0
	strb r0, [r6]
_08049A82:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049A84: .4byte gLinkEntity
_08049A88: .4byte gUnk_080C9160

	thumb_func_start sub_08049A8C
sub_08049A8C: @ 0x08049A8C
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08049AAA
	bl Random
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08049AAA
	movs r0, #1
	b _08049AAC
_08049AAA:
	movs r0, #0
_08049AAC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049AB0
sub_08049AB0: @ 0x08049AB0
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08049B18
	adds r0, r2, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08049B18
	bl Random
	movs r3, #0x30
	adds r1, r0, #0
	ands r1, r3
	ldr r5, _08049B1C @ =0x0000FFE8
	adds r2, r5, #0
	adds r1, r2, r1
	ldrh r5, [r4, #0x2e]
	adds r1, r1, r5
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
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08049B18:
	pop {r4, r5, pc}
	.align 2, 0
_08049B1C: .4byte 0x0000FFE8

	thumb_func_start sub_08049B20
sub_08049B20: @ 0x08049B20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08049944
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
	beq _08049B68
	bl sub_08079F8C
	cmp r0, #0
	beq _08049B68
	ldr r0, _08049B6C @ =gLinkEntity
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
_08049B68:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049B6C: .4byte gLinkEntity
