	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08059174
	cmp r0, #1
	beq _080591AC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080591C8
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0xb]
	bl CreateDustAt
	ldrh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r4, #0x3a]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r4, #0xb]
	bl sub_0807BA8C
	movs r0, #0xcd
	bl SoundReq
	bl DeleteThisEntity
	b _080591C8
_08059174:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059182
	bl DeleteThisEntity
_08059182:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080591A8 @ =0x00000365
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r4, #0x3a]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r4, #0xb]
	bl SetTileType
	b _080591C8
	.align 2, 0
_080591A8: .4byte 0x00000365
_080591AC:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080591C8
	adds r0, r4, #0
	movs r1, #0x4b
	bl sub_0805E4E0
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080591C8:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
