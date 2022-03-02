	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _0807B3A0 @ =0x000007FF
	cmp r5, r0
	bhi _0807B410
	adds r0, r4, #0
	adds r1, r6, #0
	bl DeleteLoadedTileEntity
	adds r0, r6, #0
	bl GetLayerByIndex
	adds r2, r0, #0
	lsls r1, r5, #1
	ldr r3, _0807B3A4 @ =0x00006004
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r0
	lsls r1, r4, #1
	adds r0, r2, #4
	adds r0, r0, r1
	mov r1, ip
	strh r1, [r0]
	ldr r0, _0807B3A8 @ =gUnk_080B3E80
	adds r0, r5, r0
	ldrb r3, [r0]
	ldr r1, _0807B3AC @ =0x00002004
	adds r0, r2, r1
	adds r0, r0, r4
	strb r3, [r0]
	ldr r7, _0807B3B0 @ =gRoomControls
	ldrb r1, [r7, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807B36C
	ldr r0, _0807B3B4 @ =gMapBottom
	ldr r1, _0807B3AC @ =0x00002004
	adds r0, r0, r1
	adds r0, r4, r0
	strb r3, [r0]
_0807B36C:
	ldr r3, _0807B3B8 @ =0x0000B004
	adds r1, r2, r3
	adds r1, r1, r4
	ldr r0, _0807B3BC @ =gUnk_080B37A0
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r7, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B430
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r6, #2
	beq _0807B3C4
	lsls r1, r1, #1
	ldr r0, _0807B3C0 @ =gUnk_02019EE0
	b _0807B3C8
	.align 2, 0
_0807B3A0: .4byte 0x000007FF
_0807B3A4: .4byte 0x00006004
_0807B3A8: .4byte gUnk_080B3E80
_0807B3AC: .4byte 0x00002004
_0807B3B0: .4byte gRoomControls
_0807B3B4: .4byte gMapBottom
_0807B3B8: .4byte 0x0000B004
_0807B3BC: .4byte gUnk_080B37A0
_0807B3C0: .4byte gUnk_02019EE0
_0807B3C4:
	lsls r1, r1, #1
	ldr r0, _0807B400 @ =gMapDataTopSpecial
_0807B3C8:
	adds r3, r1, r0
	mov r1, ip
	lsls r0, r1, #3
	ldr r1, _0807B404 @ =0x00007004
	adds r0, r0, r1
	adds r0, r2, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807B408 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807B430
	ldr r1, _0807B40C @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	b _0807B430
	.align 2, 0
_0807B400: .4byte gMapDataTopSpecial
_0807B404: .4byte 0x00007004
_0807B408: .4byte gRoomControls
_0807B40C: .4byte gUpdateVisibleTiles
_0807B410:
	ldr r0, _0807B424 @ =0x00003FFF
	cmp r5, r0
	bls _0807B428
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl SetTile
	b _0807B430
	.align 2, 0
_0807B424: .4byte 0x00003FFF
_0807B428:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807BA8C
_0807B430:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
