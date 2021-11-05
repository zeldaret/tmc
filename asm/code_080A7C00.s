	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start CreateItemEntity
CreateItemEntity: @ 0x080A7C00
	push {r4, lr}
	bl GiveItemWithCutscene
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7C16
	ldrb r1, [r4, #0xa]
	movs r2, #0
	bl sub_080A276C
	str r0, [r4, #0x50]
_080A7C16:
	pop {r4, pc}

	thumb_func_start sub_080A7C18
sub_080A7C18: @ 0x080A7C18
	push {lr}
	bl GiveItemWithCutscene
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7C32
	ldr r0, _080A7C34 @ =gPlayerEntity
	str r0, [r2, #0x50]
	ldrb r1, [r2, #0xa]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08078AF0
_080A7C32:
	pop {pc}
	.align 2, 0
_080A7C34: .4byte gPlayerEntity

	thumb_func_start GiveItemWithCutscene
GiveItemWithCutscene: @ 0x080A7C38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, #0x3f
	bne _080A7C52
	ldr r0, _080A7C78 @ =gSave
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A7C52
	movs r5, #0x57
	movs r6, #0
_080A7C52:
	bl sub_0805E744
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7C72
	strb r5, [r4, #0xa]
	strb r6, [r4, #0xb]
	strb r7, [r4, #0xe]
	movs r0, #0xb
	strb r0, [r4, #9]
	movs r0, #6
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #6
	bl AppendEntityToList
_080A7C72:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7C78: .4byte gSave

	thumb_func_start sub_080A7C7C
sub_080A7C7C: @ 0x080A7C7C
	push {lr}
	ldr r0, _080A7C88 @ =gUnk_02017660
	movs r1, #0x40
	bl MemClear
	pop {pc}
	.align 2, 0
_080A7C88: .4byte gUnk_02017660

	thumb_func_start sub_080A7C8C
sub_080A7C8C: @ 0x080A7C8C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080A7C9C @ =gUnk_02017660
	movs r2, #0
	movs r1, #0
	b _080A7CA8
	.align 2, 0
_080A7C9C: .4byte gUnk_02017660
_080A7CA0:
	adds r1, #1
	adds r4, #8
	cmp r1, #7
	bhi _080A7CB0
_080A7CA8:
	ldrh r0, [r4, #4]
	cmp r0, r5
	bne _080A7CA0
	movs r2, #1
_080A7CB0:
	lsrs r1, r6, #1
	ldrb r0, [r4, #6]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _080A7CF4
	cmp r2, #0
	beq _080A7CD2
	ldrb r0, [r4, #1]
	bl SetLocalFlag
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	movs r2, #0
	bl CreateItemEntity
	b _080A7CDC
_080A7CD2:
	movs r0, #0x60
	movs r1, #0
	movs r2, #0
	bl CreateItemEntity
_080A7CDC:
	movs r0, #0x74
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0807B7D8
	movs r0, #0
	movs r1, #0x78
	bl sub_0805E4E0
	ldr r0, _080A7CF8 @ =0x0000011B
	bl SoundReq
_080A7CF4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A7CF8: .4byte 0x0000011B

	thumb_func_start sub_080A7CFC
sub_080A7CFC: @ 0x080A7CFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #3
	movs r6, #0
	movs r0, #3
	bl GetCurrentRoomProperty
	adds r1, r0, #0
	cmp r1, #0
	beq _080A7D38
_080A7D12:
	ldrh r0, [r1, #4]
	cmp r0, r5
	bne _080A7D30
	ldrb r0, [r1]
	cmp r0, #5
	beq _080A7D24
	cmp r0, #6
	beq _080A7D2A
	b _080A7D38
_080A7D24:
	movs r6, #0
	ldrh r4, [r1, #6]
	b _080A7D38
_080A7D2A:
	movs r6, #1
	ldrh r4, [r1, #6]
	b _080A7D38
_080A7D30:
	adds r1, #8
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080A7D12
_080A7D38:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080A7D44
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A7D44
sub_080A7D44: @ 0x080A7D44
	push {lr}
	cmp r1, #0
	beq _080A7D52
	movs r1, #0
	bl sub_08078AA8
	b _080A7D56
_080A7D52:
	bl MessageFromTarget
_080A7D56:
	pop {pc}

	thumb_func_start sub_080A7D58
sub_080A7D58: @ 0x080A7D58
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #4
	ldr r1, _080A7D78 @ =gUnk_0813210C
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _080A7D7C @ =0x0000FFFF
	cmp r1, r0
	bne _080A7D74
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #4
	ldr r1, [r2, #4]
	adds r2, r1, r0
_080A7D74:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_080A7D78: .4byte gUnk_0813210C
_080A7D7C: .4byte 0x0000FFFF

	thumb_func_start sub_080A7D80
sub_080A7D80: @ 0x080A7D80
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A7E4A
	adds r0, r4, #0
	bl sub_080A7D58
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080A7E50
	cmp r0, #0
	bne _080A7DA6
	movs r0, #0
	b _080A7E4C
_080A7DA6:
	ldrb r1, [r4, #0x10]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r4, #0x10]
	ldrb r1, [r5, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A7DC0
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #0x10]
_080A7DC0:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x12]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bne _080A7DE0
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A7DE0:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1a
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #0xa]
	lsrs r1, r1, #6
	lsls r1, r1, #4
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080A7E14
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
_080A7E14:
	ldrb r0, [r5, #9]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	movs r1, #7
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldrb r0, [r5, #0xf]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xe]
	adds r1, #4
	strb r0, [r1]
	ldrb r1, [r5, #0xb]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_080A7E4A:
	movs r0, #1
_080A7E4C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7E50
sub_080A7E50: @ 0x080A7E50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	cmp r1, #0
	beq _080A7EA2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080A7E78
	ldr r0, _080A7E74 @ =0x000003FF
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	b _080A7EA2
	.align 2, 0
_080A7E74: .4byte 0x000003FF
_080A7E78:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080A7E92
	lsrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _080A7E9A
_080A7E92:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl LoadFixedGFX
_080A7E9A:
	cmp r0, #0
	bne _080A7EA2
	movs r0, #0
	b _080A7EAC
_080A7EA2:
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl sub_0801D040
	movs r0, #1
_080A7EAC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7EB0
sub_080A7EB0: @ 0x080A7EB0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _080A7ED8 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	ldrh r1, [r2, #0x1e]
	cmp r0, r1
	bhi _080A7ED2
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	ldrh r2, [r2, #0x20]
	cmp r0, r2
	bls _080A7EDC
_080A7ED2:
	movs r0, #1
	b _080A7EDE
	.align 2, 0
_080A7ED8: .4byte gRoomControls
_080A7EDC:
	movs r0, #0
_080A7EDE:
	pop {pc}

	thumb_func_start CreateProjectile
CreateProjectile: @ 0x080A7EE0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetEmptyEntity
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7EFC
	movs r0, #4
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	adds r0, r4, #0
	movs r1, #5
	bl AppendEntityToList
_080A7EFC:
	adds r0, r4, #0
	pop {r4, r5, pc}
