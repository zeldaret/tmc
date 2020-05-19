	.include "asm/macros.inc"
	.text
	.syntax unified

	thumb_func_start sub_0804B058
sub_0804B058: @ 0x0804B058
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0804B0AE
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0804B0AE
	movs r5, #0
_0804B068:
	cmp r5, #0x1f
	bhi _0804B09E
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _0804B09E
	adds r0, r5, #0
	bl sub_08049D1C
	cmp r0, #0
	beq _0804B0A4
	adds r0, r4, #0
	bl CreateEntity
	adds r2, r0, #0
	cmp r2, #0
	beq _0804B0A4
	ldrb r0, [r2, #8]
	cmp r0, #3
	bne _0804B0A4
	movs r0, #0x80
	adds r2, #0x6c
	adds r1, r5, #0
	orrs r1, r0
	strb r1, [r2]
	b _0804B0A4
_0804B09E:
	adds r0, r4, #0
	bl CreateEntity
_0804B0A4:
	adds r5, #1
	adds r4, #0x10
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0804B068
_0804B0AE:
	pop {r4, r5, pc}

	thumb_func_start sub_0804B0B0
sub_0804B0B0: @ 0x0804B0B0
	push {lr}
	movs r2, #1
	bl sub_0804B0FC
	bl LoadRoomEntityList
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B0C0
sub_0804B0C0: @ 0x0804B0C0
	push {lr}
	adds r2, r1, #0
	ldr r3, _0804B0E0 @ =gUnk_02017654
	movs r1, #0
	str r1, [r3]
	ldr r1, _0804B0E4 @ =gUnk_080D50FC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0804B0DE
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
_0804B0DE:
	pop {pc}
	.align 2, 0
_0804B0E0: .4byte gUnk_02017654
_0804B0E4: .4byte gUnk_080D50FC

	thumb_func_start sub_0804B0E8
sub_0804B0E8: @ 0x0804B0E8
	push {lr}
	movs r2, #4
	bl sub_0804B0FC
	cmp r0, #0
	beq _0804B0F8
	bl _call_via_r0
_0804B0F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B0FC
sub_0804B0FC: @ 0x0804B0FC
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	movs r2, #0
	ldr r1, _0804B124 @ =gUnk_080D50FC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0804B120
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0804B120
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
_0804B120:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0
_0804B124: .4byte gUnk_080D50FC

	thumb_func_start sub_0804B128
sub_0804B128: @ 0x0804B128
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804B138 @ =gUnk_02017654
	ldr r1, [r0]
	cmp r1, #0
	bne _0804B13C
	movs r0, #0
	b _0804B166
	.align 2, 0
_0804B138: .4byte gUnk_02017654
_0804B13C:
	cmp r2, #0x7f
	bls _0804B150
	ldr r0, _0804B14C @ =gUnk_02034350
	movs r1, #7
	ands r1, r2
	lsls r1, r1, #2
	adds r0, #0x8c
	b _0804B162
	.align 2, 0
_0804B14C: .4byte gUnk_02034350
_0804B150:
	cmp r2, #7
	bls _0804B15C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0804B166
_0804B15C:
	ldr r0, _0804B168 @ =gUnk_02034350
	lsls r1, r2, #2
	adds r0, #0x6c
_0804B162:
	adds r1, r1, r0
	ldr r0, [r1]
_0804B166:
	pop {pc}
	.align 2, 0
_0804B168: .4byte gUnk_02034350

	thumb_func_start sub_0804B16C
sub_0804B16C: @ 0x0804B16C
	push {r4, lr}
	ldr r4, _0804B1A4 @ =gUnk_02017660
_0804B170:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0804B198
	ldrb r0, [r4, #1]
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B198
	ldrh r3, [r4, #4]
	ldrb r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0804B190
	movs r2, #2
_0804B190:
	movs r0, #0x74
	adds r1, r3, #0
	bl sub_0807B314
_0804B198:
	adds r4, #8
	ldr r0, _0804B1A8 @ =gUnk_020176A0
	cmp r4, r0
	blo _0804B170
	pop {r4, pc}
	.align 2, 0
_0804B1A4: .4byte gUnk_02017660
_0804B1A8: .4byte gUnk_020176A0

	thumb_func_start sub_0804B1AC
sub_0804B1AC: @ 0x0804B1AC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0804B25A
	b _0804B254
_0804B1B6:
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #0xc
	bhi _0804B252
	lsls r0, r0, #2
	ldr r1, _0804B1C8 @ =_0804B1CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804B1C8: .4byte _0804B1CC
_0804B1CC: @ jump table
	.4byte _0804B200 @ case 0
	.4byte _0804B208 @ case 1
	.4byte _0804B252 @ case 2
	.4byte _0804B210 @ case 3
	.4byte _0804B252 @ case 4
	.4byte _0804B252 @ case 5
	.4byte _0804B218 @ case 6
	.4byte _0804B252 @ case 7
	.4byte _0804B22C @ case 8
	.4byte _0804B234 @ case 9
	.4byte _0804B23C @ case 10
	.4byte _0804B244 @ case 11
	.4byte _0804B24C @ case 12
_0804B200:
	adds r0, r4, #0
	bl sub_0804B290
	b _0804B252
_0804B208:
	adds r0, r4, #0
	bl sub_0804B29C
	b _0804B252
_0804B210:
	adds r0, r4, #0
	bl sub_0804B300
	b _0804B252
_0804B218:
	ldr r0, _0804B224 @ =gUnk_02033A90
	ldr r1, _0804B228 @ =0x00000864
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	str r1, [r0]
	b _0804B252
	.align 2, 0
_0804B224: .4byte gUnk_02033A90
_0804B228: .4byte 0x00000864
_0804B22C:
	adds r0, r4, #0
	bl sub_0804B334
	b _0804B252
_0804B234:
	adds r0, r4, #0
	bl sub_0804B340
	b _0804B252
_0804B23C:
	adds r0, r4, #0
	bl sub_0804B260
	b _0804B252
_0804B244:
	adds r0, r4, #0
	bl sub_0804B27C
	b _0804B252
_0804B24C:
	ldr r1, _0804B25C @ =gUnk_02034350
	ldrb r0, [r4, #3]
	strb r0, [r1, #9]
_0804B252:
	adds r4, #8
_0804B254:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804B1B6
_0804B25A:
	pop {r4, pc}
	.align 2, 0
_0804B25C: .4byte gUnk_02034350

	thumb_func_start sub_0804B260
sub_0804B260: @ 0x0804B260
	push {lr}
	ldrb r0, [r0, #1]
	lsls r0, r0, #5
	ldr r1, _0804B274 @ =gUnk_080015BC
	adds r0, r0, r1
	ldr r1, _0804B278 @ =gUnk_02034398
	movs r2, #0x20
	bl sub_0801D66C
	pop {pc}
	.align 2, 0
_0804B274: .4byte gUnk_080015BC
_0804B278: .4byte gUnk_02034398

	thumb_func_start sub_0804B27C
sub_0804B27C: @ 0x0804B27C
	push {lr}
	ldr r1, _0804B28C @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	strb r0, [r1, #1]
	bl sub_08054524
	pop {pc}
	.align 2, 0
_0804B28C: .4byte gUnk_02033A90

	thumb_func_start sub_0804B290
sub_0804B290: @ 0x0804B290
	push {lr}
	ldrb r0, [r0, #1]
	bl sub_0807CCB4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B29C
sub_0804B29C: @ 0x0804B29C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0804B2EC @ =gUnk_02017660
	movs r1, #0
_0804B2A4:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0804B2F4
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_0801D66C
	ldrb r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804B2FC
	ldr r0, _0804B2F0 @ =gUnk_03000BF0
	ldrb r1, [r0, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B2FC
	ldrb r0, [r4, #1]
	bl sub_0807CBD0
	cmp r0, #0
	bne _0804B2FC
	ldrb r1, [r4, #1]
	movs r0, #0x52
	movs r2, #0
	bl sub_080A2960
	cmp r0, #0
	beq _0804B2FC
	ldrh r1, [r4, #4]
	bl sub_0806F704
	b _0804B2FC
	.align 2, 0
_0804B2EC: .4byte gUnk_02017660
_0804B2F0: .4byte gUnk_03000BF0
_0804B2F4:
	adds r1, #1
	adds r4, #8
	cmp r1, #7
	bls _0804B2A4
_0804B2FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804B300
sub_0804B300: @ 0x0804B300
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B332
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x24
	strb r0, [r1, #9]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x38]
	ldrh r0, [r4, #6]
	strh r0, [r1, #0x3a]
	ldrb r0, [r4, #2]
	adds r2, r1, #0
	adds r2, #0x35
	strb r0, [r2]
	ldrb r0, [r4, #1]
	strh r0, [r1, #0x3e]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805EA2C
_0804B332:
	pop {r4, pc}

	thumb_func_start sub_0804B334
sub_0804B334: @ 0x0804B334
	push {lr}
	ldrb r0, [r0, #3]
	movs r1, #1
	bl sub_0805BB00
	pop {pc}

	thumb_func_start sub_0804B340
sub_0804B340: @ 0x0804B340
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B35A
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #4]
	ldrb r2, [r4, #1]
	bl sub_0807B314
	b _0804B380
_0804B35A:
	ldr r1, _0804B384 @ =gUnk_02034350
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0804B380
	movs r0, #1
	strb r0, [r1, #1]
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B380
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x2a
	strb r0, [r1, #9]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805EA2C
_0804B380:
	pop {r4, pc}
	.align 2, 0
_0804B384: .4byte gUnk_02034350

	thumb_func_start sub_0804B388
sub_0804B388: @ 0x0804B388
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x34
	cmp r4, #1
	bne _0804B396
	movs r0, #0x26
_0804B396:
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0807B314
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl sub_080A2960
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B3BA
	adds r0, #0x38
	strb r4, [r0]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_0806F704
_0804B3BA:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526F8
	pop {r4, r5, pc}

	thumb_func_start sub_0804B3C4
sub_0804B3C4: @ 0x0804B3C4
	push {lr}
	bl sub_0804B29C
	pop {pc}

	thumb_func_start sub_0804B3CC
sub_0804B3CC: @ 0x0804B3CC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B3D0
sub_0804B3D0: @ 0x0804B3D0
	push {lr}
	movs r0, #0
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B3DC
sub_0804B3DC: @ 0x0804B3DC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B3E0
sub_0804B3E0: @ 0x0804B3E0
	push {lr}
	movs r0, #1
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B3EC
sub_0804B3EC: @ 0x0804B3EC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B3F0
sub_0804B3F0: @ 0x0804B3F0
	push {lr}
	movs r0, #2
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B3FC
sub_0804B3FC: @ 0x0804B3FC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B400
sub_0804B400: @ 0x0804B400
	push {lr}
	movs r0, #3
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B40C
sub_0804B40C: @ 0x0804B40C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B410
sub_0804B410: @ 0x0804B410
	push {lr}
	movs r0, #4
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B41C
sub_0804B41C: @ 0x0804B41C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B420
sub_0804B420: @ 0x0804B420
	push {lr}
	movs r0, #5
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B42C
sub_0804B42C: @ 0x0804B42C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B430
sub_0804B430: @ 0x0804B430
	push {lr}
	movs r0, #6
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B43C
sub_0804B43C: @ 0x0804B43C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B440
sub_0804B440: @ 0x0804B440
	push {lr}
	movs r0, #7
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B44C
sub_0804B44C: @ 0x0804B44C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B450
sub_0804B450: @ 0x0804B450
	push {lr}
	movs r0, #8
	bl sub_08030118
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B45C
sub_0804B45C: @ 0x0804B45C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B460
sub_0804B460: @ 0x0804B460
	push {lr}
	movs r0, #9
	bl sub_08030118
	ldr r0, _0804B474 @ =gUnk_02033A90
	movs r1, #3
	strb r1, [r0, #3]
	movs r1, #0x4e
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_0804B474: .4byte gUnk_02033A90

	thumb_func_start sub_0804B478
sub_0804B478: @ 0x0804B478
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B47C
sub_0804B47C: @ 0x0804B47C
	push {lr}
	movs r0, #0xa
	bl sub_08030118
	ldr r0, _0804B490 @ =gUnk_02033A90
	movs r1, #3
	strb r1, [r0, #3]
	movs r1, #0x4e
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_0804B490: .4byte gUnk_02033A90

	thumb_func_start sub_0804B494
sub_0804B494: @ 0x0804B494
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B498
sub_0804B498: @ 0x0804B498
	push {lr}
	movs r0, #0x23
	bl sub_080575C8
	bl sub_08057688
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B4A8
sub_0804B4A8: @ 0x0804B4A8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B4AC
sub_0804B4AC: @ 0x0804B4AC
	push {lr}
	movs r0, #0x23
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B4B8
sub_0804B4B8: @ 0x0804B4B8
	push {lr}
	movs r0, #0x23
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B4C4
sub_0804B4C4: @ 0x0804B4C4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B4C8
sub_0804B4C8: @ 0x0804B4C8
	push {lr}
	movs r0, #0x22
	bl sub_080580B0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B4D4
sub_0804B4D4: @ 0x0804B4D4
	push {lr}
	movs r0, #0x22
	bl sub_080580B0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B4E0
sub_0804B4E0: @ 0x0804B4E0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B4E4
sub_0804B4E4: @ 0x0804B4E4
	push {lr}
	movs r0, #0x22
	bl sub_080580B0
	movs r0, #2
	bl sub_0807CA84
	cmp r0, #0
	beq _0804B4FC
	movs r0, #0x56
	bl sub_0807CD04
_0804B4FC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B500
sub_0804B500: @ 0x0804B500
	push {lr}
	movs r0, #0x22
	bl sub_080580B0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B50C
sub_0804B50C: @ 0x0804B50C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B510
sub_0804B510: @ 0x0804B510
	push {lr}
	movs r0, #0x1e
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B51C
sub_0804B51C: @ 0x0804B51C
	push {lr}
	movs r0, #0x1e
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B528
sub_0804B528: @ 0x0804B528
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B52C
sub_0804B52C: @ 0x0804B52C
	push {lr}
	movs r0, #0x21
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B538
sub_0804B538: @ 0x0804B538
	push {lr}
	movs r0, #0x21
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B544
sub_0804B544: @ 0x0804B544
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B548
sub_0804B548: @ 0x0804B548
	push {lr}
	movs r0, #0x1f
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B554
sub_0804B554: @ 0x0804B554
	push {lr}
	movs r0, #0x1f
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B560
sub_0804B560: @ 0x0804B560
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B564
sub_0804B564: @ 0x0804B564
	push {lr}
	movs r0, #0x20
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B570
sub_0804B570: @ 0x0804B570
	push {lr}
	movs r0, #0x20
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B57C
sub_0804B57C: @ 0x0804B57C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B580
sub_0804B580: @ 0x0804B580
	push {lr}
	movs r0, #0x20
	bl sub_080575C8
	ldr r0, _0804B5A0 @ =gLinkEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldr r1, _0804B5A4 @ =gUnk_03000BF0
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r0, #0x40
	ble _0804B59E
	ldr r0, _0804B5A8 @ =gUnk_080D6138
	bl LoadRoomEntityList
_0804B59E:
	pop {pc}
	.align 2, 0
_0804B5A0: .4byte gLinkEntity
_0804B5A4: .4byte gUnk_03000BF0
_0804B5A8: .4byte gUnk_080D6138

	thumb_func_start sub_0804B5AC
sub_0804B5AC: @ 0x0804B5AC
	push {lr}
	movs r0, #0x20
	bl sub_080575C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B5B8
sub_0804B5B8: @ 0x0804B5B8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B5BC
sub_0804B5BC: @ 0x0804B5BC
	push {lr}
	ldr r0, _0804B5D0 @ =gUnk_030010A0
	ldrh r0, [r0, #0x12]
	cmp r0, #0x40
	bls _0804B5CC
	ldr r0, _0804B5D4 @ =gUnk_080D6210
	bl LoadRoomEntityList
_0804B5CC:
	pop {pc}
	.align 2, 0
_0804B5D0: .4byte gUnk_030010A0
_0804B5D4: .4byte gUnk_080D6210

	thumb_func_start sub_0804B5D8
sub_0804B5D8: @ 0x0804B5D8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B5DC
sub_0804B5DC: @ 0x0804B5DC
	push {r4, r5, r6, lr}
	movs r0, #0x2c
	bl sub_0801E7F4
	cmp r0, #0
	beq _0804B5EE
	ldr r0, _0804B618 @ =gUnk_080D6340
	bl LoadRoomEntityList
_0804B5EE:
	movs r6, #0
	ldr r4, _0804B61C @ =gUnk_080D64F8
	movs r5, #7
_0804B5F4:
	ldrh r0, [r4]
	adds r4, #2
	bl sub_0807CA84
	cmp r0, #0
	beq _0804B602
	adds r6, #1
_0804B602:
	subs r5, #1
	cmp r5, #0
	bge _0804B5F4
	movs r0, #0x8b
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B648
	ldr r4, _0804B620 @ =gUnk_080D6508
	movs r5, #0
	b _0804B628
	.align 2, 0
_0804B618: .4byte gUnk_080D6340
_0804B61C: .4byte gUnk_080D64F8
_0804B620: .4byte gUnk_080D6508
_0804B624:
	adds r5, #1
	adds r4, #2
_0804B628:
	cmp r5, r6
	bge _0804B648
	ldrh r0, [r4]
	bl sub_0807CBD0
	cmp r0, #0
	bne _0804B624
	ldrh r0, [r4]
	bl sub_0807CCB4
	movs r0, #0x8b
	bl sub_0807CD34
	movs r0, #0x8c
	bl sub_0807CCB4
_0804B648:
	movs r0, #0x1f
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B658
	ldr r0, _0804B6CC @ =gUnk_080D6360
	bl LoadRoomEntityList
_0804B658:
	movs r0, #0x20
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B668
	ldr r0, _0804B6D0 @ =gUnk_080D6380
	bl LoadRoomEntityList
_0804B668:
	movs r0, #0x21
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B678
	ldr r0, _0804B6D4 @ =gUnk_080D63A0
	bl LoadRoomEntityList
_0804B678:
	movs r0, #0x22
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B688
	ldr r0, _0804B6D8 @ =gUnk_080D63C0
	bl LoadRoomEntityList
_0804B688:
	movs r0, #0x23
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B698
	ldr r0, _0804B6DC @ =gUnk_080D63E0
	bl LoadRoomEntityList
_0804B698:
	movs r0, #0x24
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B6A8
	ldr r0, _0804B6E0 @ =gUnk_080D6400
	bl LoadRoomEntityList
_0804B6A8:
	movs r0, #0x25
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B6B8
	ldr r0, _0804B6E4 @ =gUnk_080D6420
	bl LoadRoomEntityList
_0804B6B8:
	movs r0, #0x26
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B6C8
	ldr r0, _0804B6E8 @ =gUnk_080D6440
	bl LoadRoomEntityList
_0804B6C8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0804B6CC: .4byte gUnk_080D6360
_0804B6D0: .4byte gUnk_080D6380
_0804B6D4: .4byte gUnk_080D63A0
_0804B6D8: .4byte gUnk_080D63C0
_0804B6DC: .4byte gUnk_080D63E0
_0804B6E0: .4byte gUnk_080D6400
_0804B6E4: .4byte gUnk_080D6420
_0804B6E8: .4byte gUnk_080D6440

	thumb_func_start sub_0804B6EC
sub_0804B6EC: @ 0x0804B6EC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B6F0
sub_0804B6F0: @ 0x0804B6F0
	push {lr}
	movs r0, #0x46
	bl sub_0807CA84
	cmp r0, #0
	bne _0804B71C
	ldr r0, _0804B714 @ =gUnk_080D6578
	bl LoadRoomEntityList
	movs r0, #0x73
	bl sub_0807CBD0
	cmp r0, #0
	bne _0804B722
	ldr r0, _0804B718 @ =gUnk_080D6638
	bl LoadRoomEntityList
	b _0804B728
	.align 2, 0
_0804B714: .4byte gUnk_080D6578
_0804B718: .4byte gUnk_080D6638
_0804B71C:
	ldr r0, _0804B72C @ =gUnk_080D6558
	bl LoadRoomEntityList
_0804B722:
	ldr r0, _0804B730 @ =gUnk_080D6618
	bl LoadRoomEntityList
_0804B728:
	pop {pc}
	.align 2, 0
_0804B72C: .4byte gUnk_080D6558
_0804B730: .4byte gUnk_080D6618

	thumb_func_start sub_0804B734
sub_0804B734: @ 0x0804B734
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B738
sub_0804B738: @ 0x0804B738
	push {lr}
	ldr r0, _0804B770 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #4
	bls _0804B748
	ldr r0, _0804B774 @ =gUnk_080D6714
	bl LoadRoomEntityList
_0804B748:
	movs r0, #0x46
	bl sub_0807CA84
	cmp r0, #0
	bne _0804B77C
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0804B77C
	movs r0, #0x6a
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B77C
	ldr r0, _0804B778 @ =gUnk_080D6734
	bl LoadRoomEntityList
	b _0804B782
	.align 2, 0
_0804B770: .4byte gUnk_02002A40
_0804B774: .4byte gUnk_080D6714
_0804B778: .4byte gUnk_080D6734
_0804B77C:
	ldr r0, _0804B784 @ =gUnk_080D66F4
	bl LoadRoomEntityList
_0804B782:
	pop {pc}
	.align 2, 0
_0804B784: .4byte gUnk_080D66F4

	thumb_func_start sub_0804B788
sub_0804B788: @ 0x0804B788
	movs r0, #1
	bx lr

	thumb_func_start sub_0804B78C
sub_0804B78C: @ 0x0804B78C
	push {lr}
	ldr r0, _0804B7A0 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #7
	bls _0804B79C
	ldr r0, _0804B7A4 @ =gUnk_080D6924
	bl LoadRoomEntityList
_0804B79C:
	pop {pc}
	.align 2, 0
_0804B7A0: .4byte gUnk_02002A40
_0804B7A4: .4byte gUnk_080D6924

	thumb_func_start sub_0804B7A8
sub_0804B7A8: @ 0x0804B7A8
	push {r4, lr}
	movs r0, #0x91
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B7C8
	bl sub_08000E50
	movs r1, #3
	bl __modsi3
	adds r4, r0, #0
	movs r0, #1
	bl sub_0807CD34
	b _0804B7D0
_0804B7C8:
	movs r4, #0
	movs r0, #1
	bl sub_0807CCB4
_0804B7D0:
	ldr r2, _0804B7E0 @ =gUnk_02034350
	ldr r1, _0804B7E4 @ =gUnk_080D6A74
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #0x78]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0804B7E0: .4byte gUnk_02034350
_0804B7E4: .4byte gUnk_080D6A74

	thumb_func_start sub_0804B7E8
sub_0804B7E8: @ 0x0804B7E8
	push {lr}
	movs r0, #0x91
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B81E
	movs r0, #0x91
	bl sub_0807CD34
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	ldr r2, _0804B820 @ =gLinkEntity
	ldr r1, _0804B824 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r0, #0x50
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x38
	strh r0, [r2, #0x32]
	ldr r2, _0804B828 @ =gUnk_08010A5C
	movs r0, #1
	movs r1, #2
	bl sub_080751E8
_0804B81E:
	pop {pc}
	.align 2, 0
_0804B820: .4byte gLinkEntity
_0804B824: .4byte gUnk_03000BF0
_0804B828: .4byte gUnk_08010A5C

	thumb_func_start sub_0804B82C
sub_0804B82C: @ 0x0804B82C
	push {r4, lr}
	movs r0, #0x91
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B84A
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	movs r0, #2
	bl sub_0807CD34
	b _0804B852
_0804B84A:
	movs r4, #0
	movs r0, #2
	bl sub_0807CCB4
_0804B852:
	ldr r2, _0804B864 @ =gUnk_02034350
	ldr r1, _0804B868 @ =gUnk_080D6B18
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #0x78]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0804B864: .4byte gUnk_02034350
_0804B868: .4byte gUnk_080D6B18

	thumb_func_start sub_0804B86C
sub_0804B86C: @ 0x0804B86C
	push {lr}
	movs r0, #0x91
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B8A2
	movs r0, #0x91
	bl sub_0807CD34
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	ldr r2, _0804B8A4 @ =gLinkEntity
	ldr r1, _0804B8A8 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r0, #0x50
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x38
	strh r0, [r2, #0x32]
	ldr r2, _0804B8AC @ =gUnk_08010A5C
	movs r0, #1
	movs r1, #2
	bl sub_080751E8
_0804B8A2:
	pop {pc}
	.align 2, 0
_0804B8A4: .4byte gLinkEntity
_0804B8A8: .4byte gUnk_03000BF0
_0804B8AC: .4byte gUnk_08010A5C

	thumb_func_start sub_0804B8B0
sub_0804B8B0: @ 0x0804B8B0
	push {r4, lr}
	movs r0, #0x91
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B8D0
	bl sub_08000E50
	movs r1, #3
	bl __modsi3
	adds r4, r0, #0
	movs r0, #3
	bl sub_0807CD34
	b _0804B8D8
_0804B8D0:
	movs r4, #0
	movs r0, #3
	bl sub_0807CCB4
_0804B8D8:
	ldr r2, _0804B8E8 @ =gUnk_02034350
	ldr r1, _0804B8EC @ =gUnk_080D6BB8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #0x78]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0804B8E8: .4byte gUnk_02034350
_0804B8EC: .4byte gUnk_080D6BB8

	thumb_func_start sub_0804B8F0
sub_0804B8F0: @ 0x0804B8F0
	push {lr}
	movs r0, #0x91
	bl sub_0807CBD0
	cmp r0, #0
	beq _0804B926
	movs r0, #0x91
	bl sub_0807CD34
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	ldr r2, _0804B928 @ =gLinkEntity
	ldr r1, _0804B92C @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r0, #0x60
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x38
	strh r0, [r2, #0x32]
	ldr r2, _0804B930 @ =gUnk_08010A5C
	movs r0, #1
	movs r1, #2
	bl sub_080751E8
_0804B926:
	pop {pc}
	.align 2, 0
_0804B928: .4byte gLinkEntity
_0804B92C: .4byte gUnk_03000BF0
_0804B930: .4byte gUnk_08010A5C

	thumb_func_start sub_0804B934
sub_0804B934: @ 0x0804B934
	movs r0, #1
	bx lr
