    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08072D7A
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	subs r0, #1
	b _08072E80
_08072D7A:
	adds r0, r4, #0
	bl sub_0806F730
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	adds r2, r0, #0
	ldrb r5, [r4, #0xf]
	cmp r5, #1
	beq _08072DD0
	cmp r5, #1
	bgt _08072D9C
	cmp r5, #0
	beq _08072DA6
	b _08072E6C
_08072D9C:
	cmp r5, #2
	beq _08072DFA
	cmp r5, #3
	beq _08072E30
	b _08072E6C
_08072DA6:
	ldr r1, _08072DC8 @ =sTileTable
	ldr r0, _08072DCC @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E6C
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	b _08072E6C
	.align 2, 0
_08072DC8: .4byte sTileTable
_08072DCC: .4byte gPlayerEntity
_08072DD0:
	ldr r1, _08072DEC @ =sTileTable
	ldr r0, _08072DF0 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072DF4
	strb r5, [r4, #0xe]
	b _08072E6C
	.align 2, 0
_08072DEC: .4byte sTileTable
_08072DF0: .4byte gPlayerEntity
_08072DF4:
	movs r0, #2
	strb r0, [r4, #0xf]
	b _08072E6C
_08072DFA:
	ldrb r0, [r4, #0x14]
	movs r5, #4
	eors r0, r5
	strb r0, [r4, #0x14]
	ldr r1, _08072E28 @ =sTileTable
	ldr r0, _08072E2C @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E22
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xf]
_08072E22:
	ldrb r0, [r4, #0x14]
	eors r0, r5
	b _08072E6A
	.align 2, 0
_08072E28: .4byte sTileTable
_08072E2C: .4byte gPlayerEntity
_08072E30:
	ldrb r0, [r4, #0x14]
	movs r1, #4
	eors r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _08072E58 @ =sTileTable
	ldr r0, _08072E5C @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E60
	movs r0, #1
	strb r0, [r4, #0xe]
	b _08072E64
	.align 2, 0
_08072E58: .4byte sTileTable
_08072E5C: .4byte gPlayerEntity
_08072E60:
	movs r0, #4
	strb r0, [r4, #0xf]
_08072E64:
	ldrb r0, [r4, #0x14]
	movs r1, #4
	eors r0, r1
_08072E6A:
	strb r0, [r4, #0x14]
_08072E6C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08072E7A
	adds r0, r4, #0
	bl LinearMoveUpdate
	b _08072E7E
_08072E7A:
	bl UpdatePlayerMovement
_08072E7E:
	movs r0, #0
_08072E80:
	strb r0, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl GravityUpdate
	cmp r0, #0
	bne _08072F10
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08072EAA
	adds r0, r4, #0
	bl ResetCollisionLayer
	b _08072EB0
_08072EAA:
	adds r0, r4, #0
	bl sub_08004542
_08072EB0:
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	ldr r5, _08072EDC @ =gPlayerState
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _08072EE0
	bl sub_08008B22
	cmp r0, #0
	beq _08072F10
	movs r0, #7
	strb r0, [r5, #0x11]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072F10
	bl SetPlayerActionNormal
	b _08072F10
	.align 2, 0
_08072EDC: .4byte gPlayerState
_08072EE0:
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072EF4
	ldr r0, _08072EF0 @ =0x00000424
	b _08072EF8
	.align 2, 0
_08072EF0: .4byte 0x00000424
_08072EF4:
	movs r0, #0x82
	lsls r0, r0, #4
_08072EF8:
	strh r0, [r5, #8]
	movs r1, #0
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	movs r0, #0x7d
	bl SoundReq
_08072F10:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
