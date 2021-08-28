	.syntax unified
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
	bl CreateDustAt
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
	.syntax divided
