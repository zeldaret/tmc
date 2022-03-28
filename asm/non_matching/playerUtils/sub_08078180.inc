	.syntax unified
	push {r4, r5, r6, lr}
	ldr r0, _080781C8 @ =gUnk_0200AF00
	adds r1, r0, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08078192
	b _080782BC
_08078192:
	movs r4, #0
	ldr r5, _080781CC @ =gPlayerState
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0807819E
	b _080782B6
_0807819E:
	ldr r0, [r5, #0x30]
	ldr r1, _080781D0 @ =0x00104D00
	ands r0, r1
	cmp r0, #0
	beq _080781AA
	b _080782B6
_080781AA:
	ldrb r0, [r5, #5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080781D4
	adds r1, r6, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	movs r4, #3
	cmp r0, #0
	bne _080781C4
	b _080782B6
_080781C4:
	adds r4, r0, #0
	b _080782B6
	.align 2, 0
_080781C8: .4byte gUnk_0200AF00
_080781CC: .4byte gPlayerState
_080781D0: .4byte 0x00104D00
_080781D4:
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	bne _080781C4
	bl sub_080784E4
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08078278
	ldrb r0, [r1, #1]
	subs r0, #1
	cmp r0, #9
	bhi _080782B6
	lsls r0, r0, #2
	ldr r1, _08078204 @ =_08078208
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078204: .4byte _08078208
_08078208: @ jump table
	.4byte _08078230 @ case 0
	.4byte _080782B6 @ case 1
	.4byte _08078254 @ case 2
	.4byte _080782B6 @ case 3
	.4byte _08078254 @ case 4
	.4byte _08078254 @ case 5
	.4byte _08078230 @ case 6
	.4byte _0807823C @ case 7
	.4byte _08078260 @ case 8
	.4byte _0807826C @ case 9
_08078230:
	movs r4, #7
	ldr r6, _08078238 @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_08078238: .4byte gUnk_0200AF00
_0807823C:
	ldr r0, _0807824C @ =gRoomVars
	ldrb r0, [r0, #6]
	ldr r6, _08078250 @ =gUnk_0200AF00
	cmp r0, #0
	bne _080782B6
	movs r4, #9
	b _080782B6
	.align 2, 0
_0807824C: .4byte gRoomVars
_08078250: .4byte gUnk_0200AF00
_08078254:
	movs r4, #6
	ldr r6, _0807825C @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_0807825C: .4byte gUnk_0200AF00
_08078260:
	movs r4, #5
	ldr r6, _08078268 @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_08078268: .4byte gUnk_0200AF00
_0807826C:
	movs r4, #2
	ldr r6, _08078274 @ =gUnk_0200AF00
	b _080782B6
	.align 2, 0
_08078274: .4byte gUnk_0200AF00
_08078278:
	bl sub_080789A8
	cmp r0, #0
	beq _080782A4
	adds r0, r5, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080782BC
	ldr r1, _080782A0 @ =gCarriedEntity
	ldrb r0, [r1, #1]
	movs r4, #9
	cmp r0, #2
	bne _080782B6
	ldr r0, [r1, #8]
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080782B6
	movs r4, #8
	b _080782B6
	.align 2, 0
_080782A0: .4byte gCarriedEntity
_080782A4:
	adds r0, r5, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080782B6
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _080782B6
	movs r4, #0xc
_080782B6:
	adds r0, r6, #0
	adds r0, #0x2c
	strb r4, [r0]
_080782BC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
