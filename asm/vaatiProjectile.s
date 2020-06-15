	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start VaatiProjectile
VaatiProjectile: @ 0x0803E08C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0803E4A0
	cmp r0, #0
	beq _0803E0AA
	ldrb r0, [r5, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x45
	strb r0, [r1]
	str r0, [r5, #0x50]
_0803E0AA:
	ldr r4, _0803E0C0 @ =gUnk_080D0648
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803E0C0: .4byte gUnk_080D0648

	thumb_func_start sub_0803E0C4
sub_0803E0C4: @ 0x0803E0C4
	push {lr}
	ldr r2, _0803E0D8 @ =gUnk_080D0660
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803E0D8: .4byte gUnk_080D0660

	thumb_func_start sub_0803E0DC
sub_0803E0DC: @ 0x0803E0DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0803E16C
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E158
	movs r0, #5
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r6, #0x7f
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r3, _0803E154 @ =gLinkEntity
	ldrb r1, [r3, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #0x10]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r3, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r3, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x19]
	adds r0, r5, #0
	bl sub_0803E444
	movs r0, #2
	bl sub_08078A90
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _0803E16C
	ldrb r1, [r2, #0x10]
	adds r0, r6, #0
	ands r0, r1
	b _0803E16A
	.align 2, 0
_0803E154: .4byte gLinkEntity
_0803E158:
	ldr r2, _0803E178 @ =gLinkState
	ldr r0, [r2, #0x30]
	ldr r1, _0803E17C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r2, _0803E180 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0803E16A:
	strb r0, [r2, #0x10]
_0803E16C:
	ldr r1, _0803E184 @ =gUnk_080D0648
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803E178: .4byte gLinkState
_0803E17C: .4byte 0xFFFFFEFF
_0803E180: .4byte gLinkEntity
_0803E184: .4byte gUnk_080D0648

	thumb_func_start sub_0803E188
sub_0803E188: @ 0x0803E188
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x50]
	cmp r2, #0
	beq _0803E19C
	ldrb r0, [r2, #0xf]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xf]
	str r1, [r3, #0x50]
_0803E19C:
	adds r0, r3, #0
	bl sub_0804A7D4
	pop {pc}

	thumb_func_start nullsub_19
nullsub_19: @ 0x0803E1A4
	bx lr
	.align 2, 0

	thumb_func_start sub_0803E1A8
sub_0803E1A8: @ 0x0803E1A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0803E1F8
	movs r0, #0x4b
	movs r1, #1
	bl CreateEnemy
	cmp r0, #0
	beq _0803E250
	str r5, [r0, #0x50]
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0803E1D8
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0803E1D4 @ =0x0000FFE8
	strh r0, [r5, #0x36]
	b _0803E1E8
	.align 2, 0
_0803E1D4: .4byte 0x0000FFE8
_0803E1D8:
	movs r0, #9
	strb r0, [r5, #0xc]
	ldr r0, _0803E1F4 @ =0x0000FF80
	strh r0, [r5, #0x36]
	adds r1, r5, #0
	adds r1, #0x3b
	movs r0, #1
	strb r0, [r1]
_0803E1E8:
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	b _0803E250
	.align 2, 0
_0803E1F4: .4byte 0x0000FF80
_0803E1F8:
	movs r0, #8
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x50]
	ldr r3, _0803E254 @ =0xFFFF0000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r5, #0
	movs r1, #1
	bl InitializeAnimation
_0803E250:
	pop {r4, r5, pc}
	.align 2, 0
_0803E254: .4byte 0xFFFF0000

	thumb_func_start sub_0803E258
sub_0803E258: @ 0x0803E258
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803E480
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08049F64
	cmp r0, #0
	beq _0803E280
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl InitializeAnimation
	b _0803E29C
_0803E280:
	ldr r0, _0803E2A4 @ =gUnk_020000B0
	ldr r1, [r0]
	cmp r1, #0
	beq _0803E29C
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0806F69C
_0803E29C:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0803E2A4: .4byte gUnk_020000B0

	thumb_func_start sub_0803E2A8
sub_0803E2A8: @ 0x0803E2A8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0803E2B8
	subs r0, #1
	strb r0, [r1, #0xe]
	b _0803E2C8
_0803E2B8:
	ldrh r0, [r1, #0x36]
	adds r0, #1
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E2C8
	movs r0, #3
	strb r0, [r1, #0xc]
_0803E2C8:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0803E2D0
sub_0803E2D0: @ 0x0803E2D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E312
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x18
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0803E30C
	movs r0, #4
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0xf
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl InitializeAnimation
_0803E30C:
	adds r0, r4, #0
	bl sub_08004274
_0803E312:
	pop {r4, pc}

	thumb_func_start sub_0803E314
sub_0803E314: @ 0x0803E314
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E332
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _0803E33C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0803E332:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0803E33C: .4byte gLinkEntity

	thumb_func_start sub_0803E340
sub_0803E340: @ 0x0803E340
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803E444
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803E352
	subs r0, #1
	b _0803E36A
_0803E352:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x18
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0803E36C
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x14
_0803E36A:
	strb r0, [r4, #0xe]
_0803E36C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E370
sub_0803E370: @ 0x0803E370
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E38E
	movs r0, #7
	strb r0, [r1, #0xc]
	movs r0, #0x10
	strb r0, [r1, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x24]
_0803E38E:
	adds r0, r1, #0
	bl sub_0803E444
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E398
sub_0803E398: @ 0x0803E398
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803E444
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803E4D8
	ldr r1, _0803E3CC @ =gRoomControls
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0x20]
	adds r0, r0, r1
	subs r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _0803E3C8
	bl sub_0805E5A8
	ldr r0, _0803E3D0 @ =gUnk_0813AB94
	bl sub_08080840
_0803E3C8:
	pop {r4, pc}
	.align 2, 0
_0803E3CC: .4byte gRoomControls
_0803E3D0: .4byte gUnk_0813AB94

	thumb_func_start sub_0803E3D4
sub_0803E3D4: @ 0x0803E3D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0803E3E4
	bl DeleteThisEntity
_0803E3E4:
	ldr r0, [r4, #0x50]
	ldr r3, _0803E3F8 @ =0xFFFF0000
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0803E3F8: .4byte 0xFFFF0000

	thumb_func_start sub_0803E3FC
sub_0803E3FC: @ 0x0803E3FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803E438 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0803E43C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803E42E
	movs r0, #0
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl InitializeAnimation
_0803E42E:
	adds r0, r4, #0
	bl sub_0803E2A8
	b _0803E442
	.align 2, 0
_0803E438: .4byte gLinkEntity
_0803E43C:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x36]
_0803E442:
	pop {r4, pc}

	thumb_func_start sub_0803E444
sub_0803E444: @ 0x0803E444
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077B2C
	ldr r2, _0803E478 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r1, [r4, #0x4c]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806FA90
	ldr r1, _0803E47C @ =gLinkEntity
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #0xe
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0803E478: .4byte gLinkState
_0803E47C: .4byte gLinkEntity

	thumb_func_start sub_0803E480
sub_0803E480: @ 0x0803E480
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #0x96
	lsls r0, r0, #3
	cmp r1, r0
	bls _0803E49A
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	b _0803E49E
_0803E49A:
	adds r0, r1, #1
	strh r0, [r2]
_0803E49E:
	pop {pc}

	thumb_func_start sub_0803E4A0
sub_0803E4A0: @ 0x0803E4A0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803E4B8 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E4C6
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _0803E4BC
	movs r0, #0
	b _0803E4D6
	.align 2, 0
_0803E4B8: .4byte gUnk_030010A0
_0803E4BC:
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E4CA
_0803E4C6:
	movs r0, #1
	b _0803E4D6
_0803E4CA:
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0803E4D4
	movs r2, #1
_0803E4D4:
	adds r0, r2, #0
_0803E4D6:
	pop {pc}

	thumb_func_start sub_0803E4D8
sub_0803E4D8: @ 0x0803E4D8
	push {r4, r5, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0803E51C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #8]
	subs r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r0, _0803E520 @ =gLinkEntity
	adds r5, r0, #0
	adds r5, #0x38
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080002E0
	cmp r0, #0xff
	beq _0803E518
	ldr r0, _0803E524 @ =0x00004074
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
_0803E518:
	pop {r4, r5, pc}
	.align 2, 0
_0803E51C: .4byte gRoomControls
_0803E520: .4byte gLinkEntity
_0803E524: .4byte 0x00004074
