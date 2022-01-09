	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _08076F84 @ =gPlayerState
	ldrb r0, [r1, #0x1c]
	movs r2, #0xf
	ands r2, r0
	adds r3, r1, #0
	cmp r2, #7
	bls _08076F7A
	b _080770EC
_08076F7A:
	lsls r0, r2, #2
	ldr r1, _08076F88 @ =_08076F8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08076F84: .4byte gPlayerState
_08076F88: .4byte _08076F8C
_08076F8C: @ jump table
	.4byte _08077100 @ case 0
	.4byte _080770EC @ case 1
	.4byte _080770EC @ case 2
	.4byte _0807704C @ case 3
	.4byte _08077052 @ case 4
	.4byte _08076FAC @ case 5
	.4byte _080770B8 @ case 6
	.4byte _080770D0 @ case 7
_08076FAC:
	ldrb r1, [r4, #0xe]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807700E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08077004
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #7]
	movs r1, #1
	strb r1, [r3, #0x1d]
	ldr r5, _08076FFC @ =gPlayerEntity
	str r0, [r5, #0x74]
	strb r1, [r3, #0x1c]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r3, #0xa]
	bics r0, r1
	strb r0, [r3, #0xa]
	movs r0, #2
	strb r0, [r4, #4]
	ldr r1, _08077000 @ =0x00000504
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl CreatePlayerItem
	cmp r0, #0
	bne _08076FF6
	b _08077110
_08076FF6:
	str r5, [r0, #0x50]
	b _08077110
	.align 2, 0
_08076FFC: .4byte gPlayerEntity
_08077000: .4byte 0x00000504
_08077004:
	movs r0, #6
	strb r0, [r3, #0x1c]
	movs r1, #0xa2
	lsls r1, r1, #3
	b _080770F2
_0807700E:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _0807701C
	movs r0, #1
	strb r0, [r4, #8]
_0807701C:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r0, _08077044 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08077110
	ldr r0, _08077048 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	strh r5, [r0, #0x24]
	bl UpdatePlayerMovement
	b _08077110
	.align 2, 0
_08077044: .4byte gPlayerState
_08077048: .4byte gPlayerEntity
_0807704C:
	ldr r1, _080770B0 @ =gPlayerState
	movs r0, #4
	strb r0, [r1, #0x1c]
_08077052:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08077060
	movs r0, #1
	strb r0, [r4, #8]
_08077060:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807708C
	ldr r1, _080770B0 @ =gPlayerState
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, _080770B4 @ =gPlayerEntity
	str r2, [r0, #0x70]
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	beq _0807708C
	movs r0, #0x11
	movs r1, #0
	movs r3, #0
	bl CreatePlayerItem
_0807708C:
	ldr r0, _080770B0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08077110
	ldr r2, _080770B4 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0x80
	strh r0, [r2, #0x24]
	bl UpdatePlayerMovement
	b _08077110
	.align 2, 0
_080770B0: .4byte gPlayerState
_080770B4: .4byte gPlayerEntity
_080770B8:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077110
	ldr r3, _080770CC @ =gPlayerState
	b _08077100
	.align 2, 0
_080770CC: .4byte gPlayerState
_080770D0:
	ldr r1, _080770E4 @ =0x00000514
	adds r0, r4, #0
	bl sub_08077DF4
	ldr r1, _080770E8 @ =gPlayerState
	movs r2, #0
	movs r0, #3
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1d]
	b _08077110
	.align 2, 0
_080770E4: .4byte 0x00000514
_080770E8: .4byte gPlayerState
_080770EC:
	movs r0, #3
	strb r0, [r3, #0x1c]
	ldr r1, _080770FC @ =0x00000514
_080770F2:
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077110
	.align 2, 0
_080770FC: .4byte 0x00000514
_08077100:
	movs r1, #0
	strb r1, [r3, #0x1c]
	ldr r0, _08077114 @ =gPlayerEntity
	str r1, [r0, #0x70]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08077110:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08077114: .4byte gPlayerEntity
	.syntax divided
