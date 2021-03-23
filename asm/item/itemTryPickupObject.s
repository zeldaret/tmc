	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemTryPickupObject
ItemTryPickupObject: @ 0x080761A8
	push {lr}
	ldr r3, _080761BC @ =gUnk_0811BDB4
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_080761BC: .4byte gUnk_0811BDB4

	thumb_func_start sub_080761C0
sub_080761C0: @ 0x080761C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076220 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080762B8
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080761DE
	ldr r0, [r5, #0x30]
	ldr r1, _08076224 @ =0x00001201
	ands r0, r1
	cmp r0, #0
	beq _080762B8
_080761DE:
	ldr r1, _08076228 @ =gPlayerEntity
	ldrb r2, [r1, #0x14]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r5, #1]
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #8
	bgt _080762B8
	bl sub_080789A8
	adds r3, r0, #0
	cmp r3, #1
	beq _08076258
	cmp r3, #1
	blo _0807626E
	cmp r3, #2
	bne _080762C0
	ldr r0, _0807622C @ =gUnk_03003BE0
	ldr r2, [r0, #8]
	ldrb r1, [r2, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076230
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_08076088
	b _080762C0
	.align 2, 0
_08076220: .4byte gPlayerState
_08076224: .4byte 0x00001201
_08076228: .4byte gPlayerEntity
_0807622C: .4byte gUnk_03003BE0
_08076230:
	str r2, [r4, #0x18]
	strb r3, [r2, #0xc]
	movs r1, #5
	strb r1, [r2, #0xd]
	adds r0, r5, #0
	adds r0, #0xa8
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #2
	adds r3, r6, #0
	bl sub_080762C4
	ldr r0, _08076254 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	b _08076264
	.align 2, 0
_08076254: .4byte gUnk_0200AF00
_08076258:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080762C4
_08076264:
	movs r0, #0x81
	lsls r0, r0, #1
	bl SoundReq
	b _080762C0
_0807626E:
	movs r0, #5
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #7]
	movs r0, #6
	strb r0, [r4, #0xf]
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r6
	ldrb r2, [r5, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	orrs r1, r0
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x30]
	ands r0, r3
	cmp r0, #0
	bne _080762A2
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	b _080762AA
_080762A2:
	ldr r1, _080762B4 @ =0x00000948
	adds r0, r4, #0
	bl sub_08077DF4
_080762AA:
	movs r0, #0x88
	bl SoundReq
	b _080762C0
	.align 2, 0
_080762B4: .4byte 0x00000948
_080762B8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077F50
_080762C0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080762C4
sub_080762C4: @ 0x080762C4
	push {lr}
	str r1, [r0, #0x18]
	ldr r1, _080762D4 @ =gPlayerState
	strb r2, [r1, #5]
	adds r1, r3, #0
	bl sub_08077D38
	pop {pc}
	.align 2, 0
_080762D4: .4byte gPlayerState

	thumb_func_start sub_080762D8
sub_080762D8: @ 0x080762D8
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
	bl sub_08077F64
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
	bl sub_08077F50
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
	bl sub_08077F50
_08076486:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08076488
sub_08076488: @ 0x08076488
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #7]
	adds r6, r0, #0
	cmp r6, #0
	bne _08076504
	adds r0, r4, #0
	bl sub_08077F64
	cmp r0, #0
	beq _08076508
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _080764B8
	ldr r0, _080764F8 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08076510
_080764B8:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076508
	ldr r2, _080764FC @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r2, _08076500 @ =gPlayerState
	movs r0, #4
	strb r0, [r2, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r3, [r2, #0xb]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r0, [r2, #0xa]
	ands r1, r0
	strb r1, [r2, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	strb r6, [r4, #0xf]
	b _08076508
	.align 2, 0
_080764F8: .4byte gScreenTransition
_080764FC: .4byte gPlayerEntity
_08076500: .4byte gPlayerState
_08076504:
	subs r0, #1
	strb r0, [r4, #7]
_08076508:
	ldr r0, _08076514 @ =gPlayerState
	adds r0, #0xa8
	movs r1, #4
	strb r1, [r0]
_08076510:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08076514: .4byte gPlayerState

	thumb_func_start sub_08076518
sub_08076518: @ 0x08076518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	bl sub_08077F64
	cmp r0, #0
	beq _080765D4
	ldr r5, _0807655C @ =gPlayerState
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #4
	strb r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080765D4
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	bne _080765D4
	ldr r6, _08076560 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r7, [r0]
	cmp r7, #0
	beq _08076564
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077F50
	b _080765D4
	.align 2, 0
_0807655C: .4byte gPlayerState
_08076560: .4byte gPlayerEntity
_08076564:
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	ldr r0, _080765B0 @ =0x00008018
	ands r0, r1
	cmp r0, #0
	beq _080765D4
	adds r0, r6, #0
	bl sub_0806F948
	movs r0, #5
	strb r0, [r5, #5]
	ldr r1, [r4, #0x18]
	movs r0, #2
	strb r0, [r1, #0xd]
	ldr r2, [r4, #0x18]
	ldrb r1, [r6, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080765B4
	movs r1, #0x93
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08077DF4
	b _080765BE
	.align 2, 0
_080765B0: .4byte 0x00008018
_080765B4:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080765BE:
	ldr r2, _080765DC @ =gPlayerState
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	orrs r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_080765D4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080765DC: .4byte gPlayerState

	thumb_func_start sub_080765E0
sub_080765E0: @ 0x080765E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077F64
	cmp r0, #0
	beq _08076608
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076602
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077F50
	b _08076608
_08076602:
	adds r0, r4, #0
	bl UpdateItemAnim
_08076608:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807660C
sub_0807660C: @ 0x0807660C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0807662C
	ldr r0, _0807663C @ =gPlayerState
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807663A
_0807662C:
	ldr r1, _0807663C @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_0807663A:
	pop {r4, r5, pc}
	.align 2, 0
_0807663C: .4byte gPlayerState
