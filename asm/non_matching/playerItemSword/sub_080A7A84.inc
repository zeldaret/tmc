	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _080A7AE0 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080A7B8C
	ldr r2, _080A7AE4 @ =gUnk_08129072
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r2, _080A7AE8 @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0xc0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080A7AC4
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7AC4
	rsbs r3, r3, #0
_080A7AC4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A7AEC
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r2, r2, r3
	movs r1, #0x32
	ldrsh r3, [r4, r1]
	adds r3, r3, r5
	adds r0, r4, #0
	movs r1, #0
	bl sub_08008796
	b _080A7B8C
	.align 2, 0
_080A7AE0: .4byte gPlayerEntity
_080A7AE4: .4byte gUnk_08129072
_080A7AE8: .4byte gPlayerState
_080A7AEC:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _080A7B8C
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r6, r3, #0
	adds r2, r2, r6
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r3, r3, r5
	adds r0, r4, #0
	bl sub_08008796
	cmp r0, #0
	bne _080A7B8C
	ldrb r2, [r7, #0x1b]
	cmp r2, #0
	beq _080A7B8C
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _080A7B8C
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl GetRelativeCollisionTile
	cmp r0, #0x2e
	bne _080A7B4C
	ldr r0, _080A7B44 @ =gPlayerEntity
	ldr r1, _080A7B48 @ =0x00000119
	bl SoundReqClipped
	b _080A7B54
	.align 2, 0
_080A7B44: .4byte gPlayerEntity
_080A7B48: .4byte 0x00000119
_080A7B4C:
	ldr r0, _080A7B90 @ =gPlayerEntity
	movs r1, #0x74
	bl SoundReqClipped
_080A7B54:
	movs r0, #0xf
	movs r1, #0x1a
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7B8C
	ldr r1, _080A7B94 @ =gUnk_0812908E
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x34]
	str r0, [r2, #0x34]
_080A7B8C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7B90: .4byte gPlayerEntity
_080A7B94: .4byte gUnk_0812908E
	.syntax divided
