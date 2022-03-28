	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08076334 @ =gPlayerState
	ldrb r0, [r4, #5]
	movs r1, #0xcf
	ands r1, r0
	strb r1, [r4, #5]
	adds r0, r5, #0
	adds r1, r6, #0
	bl PlayerTryDropItem
	cmp r0, #0
	bne _080762F6
	b _08076486
_080762F6:
	ldr r0, _08076338 @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, #0
	cmp r1, #8
	bgt _0807636C
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807636C
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _08076340
	ldrh r1, [r2, #0xc]
	ldr r0, _0807633C @ =0x00000502
	cmp r1, r0
	bne _08076376
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076340
	movs r0, #6
	strb r0, [r2, #0xd]
	b _08076376
	.align 2, 0
_08076334: .4byte gPlayerState
_08076338: .4byte gPlayerEntity
_0807633C: .4byte 0x00000502
_08076340:
	ldr r2, _08076364 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #5
	strb r0, [r1]
	ldr r0, _08076368 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _0807635A
	b _0807647E
_0807635A:
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _08076394
	b _08076380
	.align 2, 0
_08076364: .4byte gPlayerState
_08076368: .4byte gUnk_0200AF00
_0807636C:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _08076376
	movs r0, #6
	strb r0, [r1, #0xd]
_08076376:
	adds r0, r5, #0
	adds r1, r6, #0
	bl PlayerCancelHoldItem
	b _08076486
_08076380:
	adds r0, r3, #0
	movs r1, #6
	adds r2, r5, #0
	bl sub_0800875A
	cmp r0, #0
	beq _08076394
	adds r0, r5, #0
	movs r1, #0
	b _080763EC
_08076394:
	ldr r1, _080763F4 @ =gUnk_0811BE38
	ldr r7, _080763F8 @ =gPlayerEntity
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	lsls r3, r0, #1
	adds r1, r3, r1
	ldr r4, _080763FC @ =gPlayerState
	adds r2, r4, #0
	adds r2, #0x90
	ldrh r0, [r1]
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08076400
	adds r0, r5, #0
	bl UpdateItemAnim
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x94
	lsls r1, r1, #4
	cmp r0, #0
	bne _080763C8
	movs r1, #0xd0
	lsls r1, r1, #2
_080763C8:
	ldrh r0, [r5, #0x10]
	cmp r1, r0
	beq _080763D4
	adds r0, r5, #0
	bl sub_08077DF4
_080763D4:
	ldrb r0, [r4, #5]
	movs r1, #0x10
	orrs r1, r0
	strb r1, [r4, #5]
	adds r2, r4, #0
	adds r2, #0xa8
	movs r0, #0x1a
	strb r0, [r2]
	cmp r1, #1
	beq _08076486
	ldr r1, [r5, #0x18]
	adds r0, r5, #0
_080763EC:
	adds r2, r6, #0
	bl sub_08076088
	b _08076486
	.align 2, 0
_080763F4: .4byte gUnk_0811BE38
_080763F8: .4byte gPlayerEntity
_080763FC: .4byte gPlayerState
_08076400:
	ldr r0, _08076418 @ =gUnk_0811BE40
	adds r0, r3, r0
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08076460
	ldrb r0, [r7, #0xf]
	cmp r0, #5
	bhi _0807641C
	adds r0, #1
	strb r0, [r7, #0xf]
	b _08076486
	.align 2, 0
_08076418: .4byte gUnk_0811BE40
_0807641C:
	ldrb r0, [r5, #0xa]
	adds r1, r4, #0
	adds r1, #0x35
	strb r0, [r1]
	ldrb r0, [r4, #6]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #6]
	ldrb r1, [r4, #5]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	ldr r1, _0807645C @ =0x0000093C
	cmp r0, #0
	bne _0807644C
	movs r1, #0xcf
	lsls r1, r1, #2
_0807644C:
	ldrh r0, [r5, #0x10]
	cmp r1, r0
	bne _08076476
	adds r0, r5, #0
	bl UpdateItemAnim
	b _08076486
	.align 2, 0
_0807645C: .4byte 0x0000093C
_08076460:
	strb r0, [r7, #0xf]
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08076472
	movs r1, #0xd0
	lsls r1, r1, #2
	b _08076476
_08076472:
	movs r1, #0x94
	lsls r1, r1, #4
_08076476:
	adds r0, r5, #0
	bl sub_08077DF4
	b _08076486
_0807647E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl PlayerCancelHoldItem
_08076486:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
