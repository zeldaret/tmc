	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x54]
	cmp r0, #0
	bne _08039B84
	ldrb r2, [r6, #0x14]
	lsls r2, r2, #1
	ldr r0, _08039B88 @ =gUnk_080CF930
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r4, _08039B8C @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r3, #0x3f
	ands r5, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	bl GetTileType
	adds r2, r0, #0
	ldr r1, _08039B90 @ =gUnk_080CF938
_08039B76:
	ldrh r0, [r1]
	cmp r0, r2
	beq _08039B98
	adds r1, #4
	ldrh r0, [r1]
	cmp r0, #0
	bne _08039B76
_08039B84:
	ldr r0, _08039B94 @ =0x0000FFFF
	b _08039B9E
	.align 2, 0
_08039B88: .4byte gUnk_080CF930
_08039B8C: .4byte gRoomControls
_08039B90: .4byte gUnk_080CF938
_08039B94: .4byte 0x0000FFFF
_08039B98:
	ldrh r0, [r1, #2]
	strb r0, [r6, #0xb]
	adds r0, r5, #0
_08039B9E:
	pop {r4, r5, r6, pc}
	.syntax divided
