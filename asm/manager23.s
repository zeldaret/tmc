	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805BC74
sub_0805BC74: @ 0x0805BC74
	push {lr}
	ldr r2, _0805BC88 @ =gUnk_08108CCC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805BC88: .4byte gUnk_08108CCC

	thumb_func_start sub_0805BC8C
sub_0805BC8C: @ 0x0805BC8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805BCAE
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BCAE
	adds r0, r4, #0
	bl sub_0805BE94
_0805BCAE:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BCD0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BCD0
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r0, r4, #0
	bl sub_0805BE94
_0805BCD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BCD4
sub_0805BCD4: @ 0x0805BCD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805BD0E
	cmp r0, #1
	bgt _0805BCE8
	cmp r0, #0
	beq _0805BCEE
	b _0805BD5A
_0805BCE8:
	cmp r0, #2
	beq _0805BD38
	b _0805BD5A
_0805BCEE:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD5A
	adds r0, r4, #0
	movs r1, #0x75
	bl sub_0805BE70
	movs r0, #2
	strb r0, [r4, #0xc]
	b _0805BD5A
_0805BD0E:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD5A
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BD5A
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r0, r4, #0
	movs r1, #0x76
	bl sub_0805BE70
	b _0805BD5A
_0805BD38:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805BD5A
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BD5A
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x75
	bl sub_0805BE70
_0805BD5A:
	pop {r4, pc}

	thumb_func_start sub_0805BD5C
sub_0805BD5C: @ 0x0805BD5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805BD94
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD76
	adds r0, r4, #0
	bl sub_0805BE94
_0805BD76:
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x20]
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805BDB0
_0805BD94:
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl GetTileType
	cmp r0, #0x76
	bne _0805BDB0
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	bl DeleteThisEntity
_0805BDB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BDB4
sub_0805BDB4: @ 0x0805BDB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805BDF4
	cmp r0, #1
	beq _0805BE2C
	ldrh r0, [r4, #0x22]
	subs r0, #1
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805BE58
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0xb]
	bl sub_080A29C8
	ldrh r0, [r4, #0x3e]
	bl ClearFlag
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl sub_0807BA8C
	ldrb r0, [r4, #0xe]
	rsbs r0, r0, #0
	bl sub_0805308C
	b _0805BE26
_0805BDF4:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805BE08
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805BE0E
_0805BE08:
	adds r0, r4, #0
	bl sub_0805BE94
_0805BE0E:
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x20]
_0805BE26:
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805BE6C
_0805BE2C:
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl GetTileType
	cmp r0, #0x76
	bne _0805BE6C
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r4, #0x22]
	b _0805BE6C
_0805BE58:
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805BE6C
	adds r0, r4, #0
	bl sub_0805BEC4
	bl DeleteThisEntity
_0805BE6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BE70
sub_0805BE70: @ 0x0805BE70
	push {r4, lr}
	adds r4, r1, #0
	ldrh r1, [r0, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r0, #0x3a]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r0, #0xb]
	adds r0, r4, #0
	bl SetTileType
	pop {r4, pc}

	thumb_func_start sub_0805BE94
sub_0805BE94: @ 0x0805BE94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	ldrb r2, [r4, #0xb]
	movs r0, #0x76
	bl SetTileType
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	bl DeleteThisEntity
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BEC4
sub_0805BEC4: @ 0x0805BEC4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805BF10
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r1, _0805BF14 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrb r1, [r4, #0xb]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0805BF10:
	pop {r4, pc}
	.align 2, 0
_0805BF14: .4byte gRoomControls
