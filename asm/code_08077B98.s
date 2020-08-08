	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08077FEC
sub_08077FEC: @ 0x08077FEC
	push {lr}
	ldr r0, _08078000 @ =gUnk_03004020
	ldr r2, _08078004 @ =gUnk_0811BFE8
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08078000: .4byte gUnk_03004020
_08078004: .4byte gUnk_0811BFE8

	thumb_func_start sub_08078008
sub_08078008: @ 0x08078008
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08078060 @ =gUnk_02002A40
	adds r5, r6, #0
	adds r5, #0xb4
	ldrb r0, [r5]
	bl sub_0805449C
	cmp r0, #0
	bne _0807802C
	adds r5, r6, #0
	adds r5, #0xb5
	ldrb r0, [r5]
	bl sub_0805449C
	movs r2, #0
	cmp r0, #0
	beq _0807802E
_0807802C:
	ldrb r2, [r5]
_0807802E:
	subs r0, r2, #1
	cmp r0, #1
	bhi _08078036
	movs r2, #0
_08078036:
	cmp r2, #0
	beq _08078068
	ldr r0, _08078064 @ =gPlayerState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08078068
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _0807806C
	movs r0, #0xa
	strb r0, [r4, #1]
	movs r0, #3
	strb r0, [r4]
	strb r2, [r4, #2]
	b _0807806C
	.align 2, 0
_08078060: .4byte gUnk_02002A40
_08078064: .4byte gPlayerState
_08078068:
	movs r0, #0
	strb r0, [r4, #1]
_0807806C:
	movs r0, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08078070
sub_08078070: @ 0x08078070
	push {lr}
	adds r2, r0, #0
	ldr r3, _08078098 @ =gPlayerState
	ldrb r1, [r3, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080780D6
	adds r0, r3, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0807809C
	ldrh r0, [r2, #4]
	adds r0, #0xc
	b _080780A0
	.align 2, 0
_08078098: .4byte gPlayerState
_0807809C:
	ldrh r0, [r2, #4]
	adds r0, #6
_080780A0:
	strh r0, [r2, #4]
	movs r0, #4
	ldrsh r1, [r2, r0]
	ldr r0, _080780BC @ =0x0000031F
	cmp r1, r0
	ble _080780C0
	adds r0, #1
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2]
	movs r0, #0xd8
	bl PlaySFX
	b _080780DA
	.align 2, 0
_080780BC: .4byte 0x0000031F
_080780C0:
	movs r1, #4
	ldrsh r0, [r2, r1]
	movs r1, #0x14
	bl Mod
	cmp r0, #0
	bne _080780DA
	movs r0, #0xd7
	bl PlaySFX
	b _080780DA
_080780D6:
	movs r0, #1
	strb r0, [r2]
_080780DA:
	movs r0, #1
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080780E0
sub_080780E0: @ 0x080780E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080780F4 @ =gPlayerState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080780F8
	movs r0, #5
	b _08078102
	.align 2, 0
_080780F4: .4byte gPlayerState
_080780F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08078104
	movs r0, #1
_08078102:
	strb r0, [r2]
_08078104:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_08078108
sub_08078108: @ 0x08078108
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08078120
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1]
_08078120:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_08078124
sub_08078124: @ 0x08078124
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #0x10
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0807813C
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1]
_0807813C:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_08078140
sub_08078140: @ 0x08078140
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08078156
	movs r0, #0
	b _0807815C
_08078156:
	strb r2, [r1, #1]
	strb r2, [r1]
	movs r0, #1
_0807815C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08078160
sub_08078160: @ 0x08078160
	push {lr}
	ldr r1, _08078178 @ =gPlayerState
	adds r1, #0xa8
	strb r0, [r1]
	ldr r2, _0807817C @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	bl sub_08078B48
	pop {pc}
	.align 2, 0
_08078178: .4byte gPlayerState
_0807817C: .4byte gPlayerEntity

	thumb_func_start sub_08078180
sub_08078180: @ 0x08078180
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
	ldr r1, _080782A0 @ =gUnk_03003BE0
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
_080782A0: .4byte gUnk_03003BE0
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

	thumb_func_start sub_080782C0
sub_080782C0: @ 0x080782C0
	push {r4, r5, r6, lr}
	ldr r1, _080782D8 @ =gPlayerState
	adds r2, r1, #0
	adds r2, #0xa8
	ldrb r0, [r2]
	adds r4, r1, #0
	cmp r0, #0
	bne _080782DC
	adds r0, r4, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _080782DE
	.align 2, 0
_080782D8: .4byte gPlayerState
_080782DC:
	ldrb r0, [r2]
_080782DE:
	subs r0, #2
	cmp r0, #0x14
	bhi _08078348
	lsls r0, r0, #2
	ldr r1, _080782F0 @ =_080782F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080782F0: .4byte _080782F4
_080782F4: @ jump table
	.4byte _080784AC @ case 0
	.4byte _080784AC @ case 1
	.4byte _08078348 @ case 2
	.4byte _08078348 @ case 3
	.4byte _08078348 @ case 4
	.4byte _08078348 @ case 5
	.4byte _08078348 @ case 6
	.4byte _08078348 @ case 7
	.4byte _08078348 @ case 8
	.4byte _08078348 @ case 9
	.4byte _080784AC @ case 10
	.4byte _08078348 @ case 11
	.4byte _08078348 @ case 12
	.4byte _08078348 @ case 13
	.4byte _08078348 @ case 14
	.4byte _08078348 @ case 15
	.4byte _080784AC @ case 16
	.4byte _08078348 @ case 17
	.4byte _08078348 @ case 18
	.4byte _080784AC @ case 19
	.4byte _080784AC @ case 20
_08078348:
	adds r0, r4, #0
	adds r0, #0x27
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r0]
	ldrb r0, [r2]
	orrs r0, r1
	cmp r0, #0
	beq _0807835C
	b _080784AC
_0807835C:
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _08078376
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0807836A
	b _080784AC
_0807836A:
	bl sub_08052B24
	cmp r0, #0
	beq _08078374
	b _080784C4
_08078374:
	b _080784AC
_08078376:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08078384
	b _080784AC
_08078384:
	bl sub_08052B24
	cmp r0, #0
	beq _0807838E
	b _080784C4
_0807838E:
	bl sub_080784E4
	ldr r6, [r0, #8]
	cmp r6, #0
	bne _0807839A
	b _080784AC
_0807839A:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _080783B6
	cmp r0, #4
	beq _080783A6
	b _080784AC
_080783A6:
	ldr r0, _08078400 @ =gPlayerEntity
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x54]
	ldrh r1, [r0, #8]
	ldr r0, _08078404 @ =0x00000206
	cmp r1, r0
	beq _080783B6
	b _080784AC
_080783B6:
	ldr r2, _08078408 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0807842C
	ldr r5, _0807840C @ =gUnk_03003DF0
	ldr r0, [r5, #4]
	ldrb r0, [r0, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _0807842C
	movs r0, #0
	bl sub_0801E738
	ldr r0, _08078410 @ =gUnk_02002A40
	ldr r1, _08078414 @ =0x0000012B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08078418
	ldr r1, [r5, #4]
	ldrb r0, [r1, #3]
	strb r0, [r5, #2]
	ldr r0, [r1, #8]
	adds r0, #0x39
	movs r1, #2
	strb r1, [r0]
	movs r0, #7
	strb r0, [r4, #0xc]
	b _08078420
	.align 2, 0
_08078400: .4byte gPlayerEntity
_08078404: .4byte 0x00000206
_08078408: .4byte gPlayerState
_0807840C: .4byte gUnk_03003DF0
_08078410: .4byte gUnk_02002A40
_08078414: .4byte 0x0000012B
_08078418:
	ldr r0, _08078428 @ =0x00000B65
	movs r1, #0
	bl sub_08078AA8
_08078420:
	movs r0, #0x13
	bl sub_08078160
	b _080784C4
	.align 2, 0
_08078428: .4byte 0x00000B65
_0807842C:
	adds r0, r4, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	beq _080784AC
	ldr r0, _08078450 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #1]
	cmp r0, #0xa
	bhi _080784C4
	lsls r0, r0, #2
	ldr r1, _08078454 @ =_08078458
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078450: .4byte gUnk_03003DF0
_08078454: .4byte _08078458
_08078458: @ jump table
	.4byte _080784C4 @ case 0
	.4byte _08078484 @ case 1
	.4byte _080784C4 @ case 2
	.4byte _0807848E @ case 3
	.4byte _080784C4 @ case 4
	.4byte _0807848E @ case 5
	.4byte _08078484 @ case 6
	.4byte _0807848E @ case 7
	.4byte _080784A4 @ case 8
	.4byte _08078484 @ case 9
	.4byte _08078484 @ case 10
_08078484:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x13
	bl sub_08078160
_0807848E:
	adds r1, r6, #0
	adds r1, #0x39
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080784A0 @ =gUnk_03003DF0
	strb r2, [r0, #2]
	b _080784C4
	.align 2, 0
_080784A0: .4byte gUnk_03003DF0
_080784A4:
	ldr r2, _080784B0 @ =gRoomVars
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _080784B4
_080784AC:
	movs r0, #0
	b _080784C6
	.align 2, 0
_080784B0: .4byte gRoomVars
_080784B4:
	adds r1, r6, #0
	adds r1, #0x39
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	strb r0, [r2, #6]
	ldrb r0, [r6, #0xb]
	strb r0, [r2, #7]
_080784C4:
	movs r0, #1
_080784C6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080784C8
sub_080784C8: @ 0x080784C8
	push {r4, lr}
	ldr r4, _080784DC @ =gUnk_03003DF0
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r4, #0
	bl _DmaZero
	ldr r0, _080784E0 @ =gUnk_0811C000
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_080784DC: .4byte gUnk_03003DF0
_080784E0: .4byte gUnk_0811C000

	thumb_func_start sub_080784E4
sub_080784E4: @ 0x080784E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080784FC @ =gUnk_03003DF0
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08078500
	ldr r0, [r0, #4]
	b _0807876A
	.align 2, 0
_080784FC: .4byte gUnk_03003DF0
_08078500:
	ldr r2, _08078528 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x27
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r0, r1
	cmp r0, #0
	bne _08078598
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807852C
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _0807852E
	.align 2, 0
_08078528: .4byte gPlayerState
_0807852C:
	ldrb r0, [r1]
_0807852E:
	subs r0, #2
	cmp r0, #0x14
	bhi _080785B0
	lsls r0, r0, #2
	ldr r1, _08078540 @ =_08078544
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078540: .4byte _08078544
_08078544: @ jump table
	.4byte _08078598 @ case 0
	.4byte _08078598 @ case 1
	.4byte _080785B0 @ case 2
	.4byte _080785B0 @ case 3
	.4byte _080785B0 @ case 4
	.4byte _080785B0 @ case 5
	.4byte _080785B0 @ case 6
	.4byte _080785B0 @ case 7
	.4byte _080785B0 @ case 8
	.4byte _080785B0 @ case 9
	.4byte _080785B0 @ case 10
	.4byte _080785B0 @ case 11
	.4byte _080785B0 @ case 12
	.4byte _080785B0 @ case 13
	.4byte _080785B0 @ case 14
	.4byte _080785B0 @ case 15
	.4byte _08078598 @ case 16
	.4byte _080785B0 @ case 17
	.4byte _080785B0 @ case 18
	.4byte _08078598 @ case 19
	.4byte _08078598 @ case 20
_08078598:
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #3]
	ldr r0, _080785AC @ =gUnk_0811C000
	str r0, [r1, #4]
	movs r1, #1
	mov r2, r8
	strb r1, [r2]
	b _0807876A
	.align 2, 0
_080785AC: .4byte gUnk_0811C000
_080785B0:
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080785F0
	bl sub_08052734
	cmp r0, #0
	beq _080785C4
	movs r0, #1
_080785C4:
	adds r7, r0, #0
	bl sub_08052764
	cmp r0, #0
	beq _080785D2
	movs r0, #2
	orrs r7, r0
_080785D2:
	ldr r3, _080785E4 @ =gPlayerEntity
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r0, _080785E8 @ =gUnk_0811C00C
	adds r2, r1, r0
	ldr r5, _080785EC @ =gUnk_03003DF0
	mov r8, r5
	b _080785FE
	.align 2, 0
_080785E4: .4byte gPlayerEntity
_080785E8: .4byte gUnk_0811C00C
_080785EC: .4byte gUnk_03003DF0
_080785F0:
	ldr r3, _08078624 @ =gPlayerEntity
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	ldr r0, _08078628 @ =gUnk_0811C014
	adds r2, r1, r0
	movs r7, #0
_080785FE:
	mov ip, r3
	mov r0, ip
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sl, r1
	mov r5, ip
	movs r0, #0x32
	ldrsh r1, [r5, r0]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sb, r1
	movs r6, #0
	ldr r5, _0807862C @ =gUnk_03003DF8
	b _08078724
	.align 2, 0
_08078624: .4byte gPlayerEntity
_08078628: .4byte gUnk_0811C014
_0807862C: .4byte gUnk_03003DF8
_08078630:
	ldrb r1, [r5]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0807864E
	mov r0, ip
	adds r0, #0x38
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08078714
_0807864E:
	ldrb r1, [r5, #2]
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	asrs r1, r0
	ands r1, r3
	cmp r1, #0
	bne _08078714
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	bhi _080786D4
	lsls r0, r0, #2
	ldr r1, _08078670 @ =_08078674
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078670: .4byte _08078674
_08078674: @ jump table
	.4byte _08078714 @ case 0
	.4byte _080786A0 @ case 1
	.4byte _080786C4 @ case 2
	.4byte _080786A0 @ case 3
	.4byte _080786A0 @ case 4
	.4byte _080786C8 @ case 5
	.4byte _080786CC @ case 6
	.4byte _080786B4 @ case 7
	.4byte _080786A0 @ case 8
	.4byte _080786A0 @ case 9
	.4byte _080786D4 @ case 10
_080786A0:
	ldr r0, _080786B0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08078714
	b _080786D4
	.align 2, 0
_080786B0: .4byte gPlayerState
_080786B4:
	ldr r0, _080786C0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	b _080786D0
	.align 2, 0
_080786C0: .4byte gPlayerState
_080786C4:
	ldrb r0, [r5, #3]
	b _080786D0
_080786C8:
	movs r0, #1
	b _080786CE
_080786CC:
	movs r0, #2
_080786CE:
	ands r0, r7
_080786D0:
	cmp r0, #0
	beq _08078714
_080786D4:
	ldr r0, [r5, #8]
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	movs r2, #0x32
	ldrsh r4, [r0, r2]
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _080786F4
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r3, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	adds r2, r1, #2
	b _080786F8
_080786F4:
	ldr r0, [r0, #0x48]
	adds r2, r0, #6
_080786F8:
	ldrb r1, [r2]
	mov r5, sl
	adds r0, r1, r5
	subs r0, r0, r3
	lsls r1, r1, #1
	cmp r0, r1
	bhs _08078714
	ldrb r1, [r2, #1]
	mov r2, sb
	adds r0, r1, r2
	subs r0, r0, r4
	lsls r1, r1, #1
	cmp r0, r1
	blo _0807873A
_08078714:
	adds r6, #1
	cmp r6, #0x1f
	bhi _08078758
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r3, _08078754 @ =gUnk_03003DF8
	adds r5, r0, r3
_08078724:
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _08078714
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0807873A
	b _08078630
_0807873A:
	cmp r6, #0x1f
	bhi _08078758
	mov r5, r8
	strb r6, [r5, #3]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	str r0, [r5, #4]
	b _08078762
	.align 2, 0
_08078754: .4byte gUnk_03003DF8
_08078758:
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #3]
	ldr r0, _08078774 @ =gUnk_0811C000
	str r0, [r1, #4]
_08078762:
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r2, #4]
_0807876A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08078774: .4byte gUnk_0811C000
