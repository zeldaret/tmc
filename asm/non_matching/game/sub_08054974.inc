	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080549B0 @ =gUnk_080FE320
	adds r6, r1, r0
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl SetCurrentRoomPropertyList
	ldr r4, _080549B4 @ =gRoomControls
	ldrb r0, [r6, #2]
	strb r0, [r4, #4]
	ldrb r0, [r6, #3]
	strb r0, [r4, #5]
	bl LoadGfxGroups
	ldrb r0, [r4, #4]
	bl GetFlagBankOffset
	ldr r1, _080549B8 @ =gArea
	strh r0, [r1, #4]
	cmp r5, #0
	beq _080549BC
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl LoadAuxiliaryRoom
	b _080549CE
	.align 2, 0
_080549B0: .4byte gUnk_080FE320
_080549B4: .4byte gRoomControls
_080549B8: .4byte gArea
_080549BC:
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08054A00 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_080549CE:
	ldr r2, _08054A04 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08054A08 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08054A0C @ =gRoomControls
	ldrh r0, [r6, #4]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r6, #6]
	ldrh r2, [r1, #8]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldrb r0, [r6, #2]
	cmp r0, #2
	bne _080549F4
	bl TryLoadPrologueHyruleTown
_080549F4:
	ldr r0, _08054A10 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	bl sub_08018710
	pop {r4, r5, r6, pc}
	.align 2, 0
_08054A00: .4byte gUpdateVisibleTiles
_08054A04: .4byte gScreen
_08054A08: .4byte 0x00001FFF
_08054A0C: .4byte gRoomControls
_08054A10: .4byte gUnk_02032EC0
	.syntax divided
