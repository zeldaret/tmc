	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r0, _08080384 @ =gDiggingCaveEntranceTransition
	ldr r1, _08080388 @ =gRoomControls
	ldrb r0, [r0, #0xa]
	ldrb r1, [r1, #4]
	cmp r0, r1
	beq _08080390
	cmp r0, #0xff
	beq _08080390
	ldr r1, _0808038C @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	b _080803BE
	.align 2, 0
_08080384: .4byte gDiggingCaveEntranceTransition
_08080388: .4byte gRoomControls
_0808038C: .4byte gUnk_02034480
_08080390:
	ldr r5, _080803C0 @ =gUnk_020246B0
	ldr r0, _080803C4 @ =gUnk_02034480
	ldrh r0, [r0]
	lsls r6, r0, #1
	movs r4, #0
	cmp r4, r6
	bhs _080803B8
	ldr r0, _080803C8 @ =0x00000FFF
	adds r7, r0, #0
_080803A2:
	ldrh r0, [r5, #2]
	ldrh r2, [r5]
	adds r1, r7, #0
	ands r1, r2
	lsrs r2, r2, #0xe
	bl sub_0807B9B8
	adds r5, #4
	adds r4, #2
	cmp r4, r6
	blo _080803A2
_080803B8:
	ldr r1, _080803CC @ =gUpdateVisibleTiles
	movs r0, #0
	strb r0, [r1]
_080803BE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080803C0: .4byte gUnk_020246B0
_080803C4: .4byte gUnk_02034480
_080803C8: .4byte 0x00000FFF
_080803CC: .4byte gUpdateVisibleTiles
	.syntax divided
