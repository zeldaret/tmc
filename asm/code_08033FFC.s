	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08033FFC
sub_08033FFC: @ 0x08033FFC
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xd]
	cmp r0, #7
	bls _08034008
	b _08034114
_08034008:
	lsls r0, r0, #2
	ldr r1, _08034014 @ =_08034018
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034014: .4byte _08034018
_08034018: @ jump table
	.4byte _0803413E @ case 0
	.4byte _08034038 @ case 1
	.4byte _0803413E @ case 2
	.4byte _08034056 @ case 3
	.4byte _08034068 @ case 4
	.4byte _0803413E @ case 5
	.4byte _08034090 @ case 6
	.4byte _080340C4 @ case 7
_08034038:
	movs r0, #2
	strb r0, [r3, #0xd]
	movs r0, #0x1e
	strb r0, [r3, #0xe]
	ldr r0, [r3, #0x74]
	ldr r2, [r0, #0x74]
	movs r1, #1
	strb r1, [r2, #0xd]
	ldr r0, [r3, #0x78]
	ldr r2, [r0, #0x74]
	strb r1, [r2, #0xd]
	adds r0, r3, #0
	bl sub_0801D230
	b _0803413E
_08034056:
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803413E
	movs r0, #4
	strb r0, [r3, #0xd]
	b _0803413E
_08034068:
	ldr r0, [r3, #0x34]
	ldr r1, _0803408C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x36
	ldrsh r1, [r3, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803413E
	movs r0, #5
	strb r0, [r3, #0xd]
	adds r1, r3, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	b _0803413E
	.align 2, 0
_0803408C: .4byte 0xFFFF8000
_08034090:
	movs r1, #0
	movs r0, #7
	strb r0, [r3, #0xd]
	strb r1, [r3, #0xe]
	ldr r2, [r3, #0x74]
	movs r1, #1
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	movs r0, #4
	strb r0, [r2, #0xd]
	ldr r2, [r3, #0x78]
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	strb r0, [r2, #0xd]
	ldr r1, _080340C0 @ =gLCDControls
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	adds r0, #0xc0
	strh r0, [r1]
	b _0803413E
	.align 2, 0
_080340C0: .4byte gLCDControls
_080340C4:
	ldrb r1, [r3, #0xe]
	adds r1, #1
	strb r1, [r3, #0xe]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x19
	ldr r4, _08034110 @ =gLCDControls
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	orrs r2, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x1f
	bls _0803413E
	movs r0, #8
	strb r0, [r3, #0xd]
	ldr r2, [r3, #0x74]
	movs r1, #3
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r2, [r3, #0x78]
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	strb r0, [r2, #0xd]
	ldrb r1, [r3, #0x19]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r3, #0x19]
	adds r1, r4, #0
	adds r1, #0x66
	movs r0, #0
	strh r0, [r1]
	b _0803413E
	.align 2, 0
_08034110: .4byte gLCDControls
_08034114:
	ldr r0, [r3, #0x74]
	ldrb r1, [r0, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803413E
	ldr r1, _08034140 @ =gRoomControls
	ldr r0, _08034144 @ =gLinkEntity
	str r0, [r1, #0x30]
	adds r0, r3, #0
	bl sub_08034420
	ldr r0, _08034148 @ =gLinkState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_080791D0
	movs r0, #0x2e
	bl PlaySFX
_0803413E:
	pop {r4, pc}
	.align 2, 0
_08034140: .4byte gRoomControls
_08034144: .4byte gLinkEntity
_08034148: .4byte gLinkState

	thumb_func_start sub_0803414C
sub_0803414C: @ 0x0803414C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08034194 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r2, r0, #0
	adds r2, #0xb8
	ldrh r0, [r1, #8]
	adds r3, r0, #0
	adds r3, #0x48
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r0, r0, r2
	adds r0, #1
	cmp r0, #2
	bhi _080341A2
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r0, r0, r3
	adds r0, #1
	cmp r0, #2
	bhi _080341A2
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080341B6
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08034198
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0803442C
	b _080341B6
	.align 2, 0
_08034194: .4byte gRoomControls
_08034198:
	adds r0, r4, #0
	movs r1, #0x5a
	bl sub_0803442C
	b _080341B6
_080341A2:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_080341B6:
	pop {r4, r5, pc}

	thumb_func_start sub_080341B8
sub_080341B8: @ 0x080341B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080341CC
	adds r0, r4, #0
	movs r1, #0x2d
	bl sub_0803442C
_080341CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080341D0
sub_080341D0: @ 0x080341D0
	push {lr}
	adds r2, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _080341F2
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080341F2
	adds r0, r2, #0
	bl sub_0803443C
_080341F2:
	pop {pc}

	thumb_func_start sub_080341F4
sub_080341F4: @ 0x080341F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080347B4
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _0803420C
	adds r0, r4, #0
	bl sub_08034420
_0803420C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034210
sub_08034210: @ 0x08034210
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080347B4
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034238
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034238
	adds r0, r4, #0
	bl sub_08034420
	b _0803423E
_08034238:
	adds r0, r4, #0
	bl sub_08034830
_0803423E:
	pop {r4, pc}

	thumb_func_start sub_08034240
sub_08034240: @ 0x08034240
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	cmp r0, #0
	beq _08034260
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x95
	bhi _08034260
	adds r0, r4, #0
	bl sub_0803473C
_08034260:
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034270
	adds r0, r4, #0
	bl sub_08034420
_08034270:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034274
sub_08034274: @ 0x08034274
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034288
	adds r0, r4, #0
	bl sub_08034420
	b _0803429E
_08034288:
	adds r0, r4, #0
	bl sub_0803473C
	adds r0, r4, #0
	bl sub_08034A10
	cmp r0, #0
	beq _0803429E
	adds r0, r4, #0
	bl sub_080347FC
_0803429E:
	pop {r4, pc}

	thumb_func_start sub_080342A0
sub_080342A0: @ 0x080342A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080342B2
	adds r0, r4, #0
	bl sub_08034420
_080342B2:
	pop {r4, pc}

	thumb_func_start sub_080342B4
sub_080342B4: @ 0x080342B4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _080342C6
	adds r0, r1, #0
	bl sub_08034420
_080342C6:
	pop {pc}

	thumb_func_start sub_080342C8
sub_080342C8: @ 0x080342C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r1, r0, #0
	cmp r1, #0
	beq _08034304
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080342E4
	ldr r0, _080342FC @ =0x00000115
	bl PlaySFX
_080342E4:
	ldr r2, _08034300 @ =gUnk_080CECEC
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08034340
	.align 2, 0
_080342FC: .4byte 0x00000115
_08034300: .4byte gUnk_080CECEC
_08034304:
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08034340
	movs r0, #0xc
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x7e
	movs r1, #0
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	adds r0, #4
	strb r1, [r0]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	ldr r0, _08034344 @ =0x000001A1
	bl PlaySFX
_08034340:
	pop {r4, pc}
	.align 2, 0
_08034344: .4byte 0x000001A1

	thumb_func_start sub_08034348
sub_08034348: @ 0x08034348
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803435C
	subs r0, #1
	strh r0, [r1]
	b _08034388
_0803435C:
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08034370
	subs r0, r2, #1
	strh r0, [r4, #0x36]
	b _08034388
_08034370:
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034388
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08034420
_08034388:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803438C
sub_0803438C: @ 0x0803438C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r1, r0, #0
	cmp r1, #0
	bne _080343A0
	adds r0, r5, #0
	adds r0, #0x45
	strb r1, [r0]
	b _08034414
_080343A0:
	subs r2, r0, #1
	strb r2, [r5, #0xe]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc0
	bls _080343C4
	ldr r0, _080343C0 @ =gUnk_080CED06
	movs r1, #3
	ands r2, r1
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08034414
	.align 2, 0
_080343C0: .4byte gUnk_080CED06
_080343C4:
	movs r0, #0x1f
	ands r2, r0
	cmp r2, #0
	bne _08034414
	ldr r4, _08034418 @ =gUnk_080CED02
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08034414
	ldrb r1, [r5, #0xe]
	lsrs r1, r1, #4
	ldr r0, _0803441C @ =gUnk_080CECF4
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08034414:
	pop {r4, r5, pc}
	.align 2, 0
_08034418: .4byte gUnk_080CED02
_0803441C: .4byte gUnk_080CECF4

	thumb_func_start sub_08034420
sub_08034420: @ 0x08034420
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r0, #0x7d
	movs r1, #3
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0803442C
sub_0803442C: @ 0x0803442C
	movs r2, #4
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xe]
	adds r0, #0x7d
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803443C
sub_0803443C: @ 0x0803443C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7d
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803445C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhi _08034460
	adds r0, r2, #0
	bl sub_080344BC
	b _08034472
	.align 2, 0
_0803445C: .4byte gUnk_030010A0
_08034460:
	cmp r0, #0x3c
	bhi _0803446C
	adds r0, r2, #0
	bl sub_08034498
	b _08034472
_0803446C:
	adds r0, r2, #0
	bl sub_08034474
_08034472:
	pop {pc}

	thumb_func_start sub_08034474
sub_08034474: @ 0x08034474
	push {r4, lr}
	ldr r2, _08034494 @ =gUnk_080CED0C
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08034494: .4byte gUnk_080CED0C

	thumb_func_start sub_08034498
sub_08034498: @ 0x08034498
	push {r4, lr}
	ldr r2, _080344B8 @ =gUnk_080CED2C
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080344B8: .4byte gUnk_080CED2C

	thumb_func_start sub_080344BC
sub_080344BC: @ 0x080344BC
	push {r4, lr}
	ldr r2, _080344DC @ =gUnk_080CED4C
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080344DC: .4byte gUnk_080CED4C

	thumb_func_start sub_080344E0
sub_080344E0: @ 0x080344E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080344F8
	adds r0, r4, #0
	bl sub_080345A0
	b _0803451A
_080344F8:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0803450C
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08034514
_0803450C:
	adds r0, r4, #0
	bl sub_080345B8
	b _0803451A
_08034514:
	adds r0, r4, #0
	bl sub_080345A0
_0803451A:
	pop {r4, pc}

	thumb_func_start sub_0803451C
sub_0803451C: @ 0x0803451C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	bne _08034548
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0803453C
	adds r0, r4, #0
	bl sub_08034638
	b _08034556
_0803453C:
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08034550
_08034548:
	adds r0, r4, #0
	bl sub_08034618
	b _08034556
_08034550:
	adds r0, r4, #0
	bl sub_08034638
_08034556:
	pop {r4, pc}

	thumb_func_start sub_08034558
sub_08034558: @ 0x08034558
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08034570
	adds r0, r4, #0
	bl sub_08034658
	b _08034576
_08034570:
	adds r0, r4, #0
	bl sub_0803467C
_08034576:
	pop {r4, pc}

	thumb_func_start sub_08034578
sub_08034578: @ 0x08034578
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080348A4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080345A0
sub_080345A0: @ 0x080345A0
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #1
	strb r1, [r2]
	ldr r1, [r0, #0x78]
	movs r2, #1
	bl sub_080348A4
	pop {pc}

	thumb_func_start sub_080345B8
sub_080345B8: @ 0x080345B8
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #2
	strb r1, [r2]
	ldr r1, [r0, #0x74]
	movs r2, #1
	bl sub_080348A4
	pop {pc}

	thumb_func_start sub_080345D0
sub_080345D0: @ 0x080345D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080345FE
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	cmp r0, #0
	bne _08034616
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	b _08034616
_080345FE:
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	cmp r0, #0
	bne _08034616
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
_08034616:
	pop {r4, pc}

	thumb_func_start sub_08034618
sub_08034618: @ 0x08034618
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #1
	strb r1, [r2]
	adds r2, #1
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, [r0, #0x78]
	movs r2, #3
	bl sub_080348A4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034638
sub_08034638: @ 0x08034638
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #2
	strb r1, [r2]
	adds r2, #1
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, [r0, #0x74]
	movs r2, #3
	bl sub_080348A4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034658
sub_08034658: @ 0x08034658
	push {r4, lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r4, r0, #0
	adds r4, #0x7d
	strb r2, [r4]
	ldr r1, [r0, #0x78]
	movs r2, #4
	bl sub_080348A4
	cmp r0, #0
	bne _0803467A
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
_0803467A:
	pop {r4, pc}

	thumb_func_start sub_0803467C
sub_0803467C: @ 0x0803467C
	push {r4, lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r4, r0, #0
	adds r4, #0x7d
	strb r2, [r4]
	ldr r1, [r0, #0x74]
	movs r2, #4
	bl sub_080348A4
	cmp r0, #0
	bne _0803469E
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
_0803469E:
	pop {r4, pc}

	thumb_func_start sub_080346A0
sub_080346A0: @ 0x080346A0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080348A4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080346C8
sub_080346C8: @ 0x080346C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803470C
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	cmp r0, #0
	beq _080346F6
	ldr r1, [r4, #0x78]
	b _0803471C
_080346F6:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #7
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	b _0803473A
_0803470C:
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	cmp r0, #0
	beq _08034726
	ldr r1, [r4, #0x74]
_0803471C:
	adds r0, r4, #0
	movs r2, #7
	bl sub_080348A4
	b _0803473A
_08034726:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #7
	bl sub_080348A4
_0803473A:
	pop {r4, pc}

	thumb_func_start sub_0803473C
sub_0803473C: @ 0x0803473C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034764
	ldr r0, [r3, #0x74]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034760 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	adds r2, r0, #0
	subs r2, #0x60
	b _08034776
	.align 2, 0
_08034760: .4byte gLinkEntity
_08034764:
	ldr r0, [r3, #0x78]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034790 @ =gLinkEntity
	movs r5, #0x2e
	ldrsh r0, [r0, r5]
	adds r2, r0, #0
	adds r2, #0x60
_08034776:
	ldr r0, _08034794 @ =gRoomControls
	ldrh r4, [r0, #6]
	subs r0, r2, #4
	movs r5, #0x2e
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bls _08034798
	adds r0, r4, #0
	adds r0, #0xe0
	cmp r0, r1
	blo _080347B0
	movs r0, #8
	b _080347A8
	.align 2, 0
_08034790: .4byte gLinkEntity
_08034794: .4byte gRoomControls
_08034798:
	adds r0, r2, #4
	cmp r0, r1
	bhs _080347B0
	adds r0, r4, #0
	adds r0, #0x90
	cmp r0, r1
	bhi _080347B0
	movs r0, #0x18
_080347A8:
	strb r0, [r3, #0x15]
	adds r0, r3, #0
	bl sub_0806F69C
_080347B0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080347B4
sub_080347B4: @ 0x080347B4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _080347D8 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	ldr r0, _080347DC @ =gRoomControls
	ldrh r4, [r0, #6]
	subs r0, r3, #4
	movs r5, #0x2e
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bls _080347E0
	adds r0, r4, #0
	adds r0, #0xe0
	cmp r0, r1
	blo _080347F8
	movs r0, #8
	b _080347F0
	.align 2, 0
_080347D8: .4byte gLinkEntity
_080347DC: .4byte gRoomControls
_080347E0:
	adds r0, r3, #4
	cmp r0, r1
	bhs _080347F8
	adds r0, r4, #0
	adds r0, #0x90
	cmp r0, r1
	bhi _080347F8
	movs r0, #0x18
_080347F0:
	strb r0, [r2, #0x15]
	adds r0, r2, #0
	bl sub_0806F69C
_080347F8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080347FC
sub_080347FC: @ 0x080347FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034818
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #5
	bl sub_080348A4
	b _08034822
_08034818:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #5
	bl sub_080348A4
_08034822:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	pop {r4, pc}

	thumb_func_start sub_08034830
sub_08034830: @ 0x08034830
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _0803484C
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x80
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080345D0
	b _080348A0
_0803484C:
	adds r0, r4, #0
	bl sub_08034A10
	cmp r0, #0
	beq _080348A0
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08034876
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080348A0
	adds r0, r4, #0
	bl sub_08034420
	b _080348A0
_08034876:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08034896
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	b _080348A0
_08034896:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
_080348A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080348A4
sub_080348A4: @ 0x080348A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _080348C6
	movs r2, #5
	movs r0, #0x7d
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	b _080348C8
_080348C6:
	movs r2, #0xa
_080348C8:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _080348F0
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r2, [r0]
	ldrb r1, [r3, #0xa]
	adds r3, r0, #0
	cmp r1, #0
	bne _080348E6
	movs r0, #1
	b _080348E8
_080348E6:
	movs r0, #2
_080348E8:
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08034998
_080348F0:
	cmp r5, #8
	bhi _08034996
	lsls r0, r5, #2
	ldr r1, _08034900 @ =_08034904
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034900: .4byte _08034904
_08034904: @ jump table
	.4byte _08034928 @ case 0
	.4byte _0803492E @ case 1
	.4byte _0803493C @ case 2
	.4byte _0803494A @ case 3
	.4byte _0803493C @ case 4
	.4byte _08034958 @ case 5
	.4byte _08034966 @ case 6
	.4byte _0803496C @ case 7
	.4byte _08034982 @ case 8
_08034928:
	movs r0, #3
	strb r0, [r3, #0xc]
	b _08034996
_0803492E:
	movs r0, #4
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7c
	movs r0, #3
	strb r0, [r1]
	b _08034996
_0803493C:
	movs r0, #4
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7c
	movs r0, #1
	strb r0, [r1]
	b _08034996
_0803494A:
	movs r0, #0xf
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #0xb4
	strh r0, [r1]
	b _08034996
_08034958:
	movs r0, #0xf
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #1
	strh r0, [r1]
	b _08034996
_08034966:
	movs r0, #0x1e
	strb r0, [r3, #0xc]
	b _08034996
_0803496C:
	movs r0, #0x1b
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	movs r1, #5
	bl sub_08004260
	b _08034996
_08034982:
	ldrb r0, [r3, #0xa]
	adds r2, r0, #2
	movs r0, #0x36
	adds r1, r2, #0
	bl CreateEnemy
	adds r3, r0, #0
	cmp r3, #0
	beq _08034996
	str r4, [r3, #0x50]
_08034996:
	movs r0, #1
_08034998:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803499C
sub_0803499C: @ 0x0803499C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0xc
	beq _080349D0
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _080349D0
	ldr r2, _080349D4 @ =gUnk_080CED6C
	ldrb r0, [r3, #0xf]
	adds r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0x36]
_080349D0:
	pop {pc}
	.align 2, 0
_080349D4: .4byte gUnk_080CED6C

	thumb_func_start sub_080349D8
sub_080349D8: @ 0x080349D8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #3
	beq _08034A08
	cmp r1, #1
	bne _080349F6
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #0xa
	b _08034A02
_080349F6:
	cmp r1, #2
	bne _08034A0C
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #5
_08034A02:
	ands r0, r1
	cmp r0, #0
	beq _08034A0C
_08034A08:
	movs r0, #1
	b _08034A0E
_08034A0C:
	movs r0, #0
_08034A0E:
	pop {pc}

	thumb_func_start sub_08034A10
sub_08034A10: @ 0x08034A10
	push {r4, lr}
	adds r1, r0, #0
	adds r3, r1, #0
	adds r3, #0x7d
	ldrb r2, [r3]
	movs r0, #0x60
	ands r0, r2
	cmp r0, #0x40
	beq _08034A52
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08034A56
	adds r4, r1, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08034A3E
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r3]
_08034A3E:
	ldrb r1, [r4]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08034A7E
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _08034A7E
_08034A52:
	movs r0, #1
	b _08034A80
_08034A56:
	adds r4, r1, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08034A6A
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r3]
_08034A6A:
	ldrb r1, [r4]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08034A7E
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	beq _08034A52
_08034A7E:
	movs r0, #0
_08034A80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034A84
sub_08034A84: @ 0x08034A84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034A98
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08034AC2
_08034A98:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08034ABA
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08034ABA:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
_08034AC2:
	pop {r4, pc}

	thumb_func_start sub_08034AC4
sub_08034AC4: @ 0x08034AC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldr r1, _08034AE8 @ =gUnk_080CED74
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08034AE8: .4byte gUnk_080CED74

	thumb_func_start sub_08034AEC
sub_08034AEC: @ 0x08034AEC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0xa]
	adds r1, #1
	bl sub_08004260
	ldr r0, _08034B08 @ =0x00000151
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08034B08: .4byte 0x00000151

	thumb_func_start sub_08034B0C
sub_08034B0C: @ 0x08034B0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08034B1A
	subs r0, #1
	b _08034B34
_08034B1A:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034B36
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x50
_08034B34:
	strb r0, [r4, #0xe]
_08034B36:
	pop {r4, pc}

	thumb_func_start sub_08034B38
sub_08034B38: @ 0x08034B38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034B58
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r1, #3
	adds r0, r4, #0
	bl sub_08004260
	b _08034B9A
_08034B58:
	movs r0, #0xe
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _08034B9A
	ldrb r0, [r4, #0xa]
	subs r0, #2
	strb r0, [r5, #0xa]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034B78
	ldrb r1, [r4, #0xe]
	movs r0, #0xa8
	subs r0, r0, r1
	b _08034B7C
_08034B78:
	ldrb r0, [r4, #0xe]
	adds r0, #0x58
_08034B7C:
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	ldr r1, _08034B9C @ =gUnk_080CED84
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_08034B9A:
	pop {r4, r5, pc}
	.align 2, 0
_08034B9C: .4byte gUnk_080CED84

	thumb_func_start sub_08034BA0
sub_08034BA0: @ 0x08034BA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034BC4
	ldr r0, [r4, #0x50]
	adds r0, #0x7e
	movs r1, #0xff
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0805E7BC
_08034BC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034BC8
sub_08034BC8: @ 0x08034BC8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08034BDE
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08034BDE:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r0, r4, #0
	bl sub_0800445C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08034BFE
	adds r0, r4, #0
	bl sub_08034C00
_08034BFE:
	pop {r4, pc}

	thumb_func_start sub_08034C00
sub_08034C00: @ 0x08034C00
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08034C44 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034C5A
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _08034C48 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r4, #0x32
	ldrsh r1, [r3, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	adds r1, #0xd
	movs r2, #3
	movs r3, #3
	bl sub_0800293E
	cmp r0, #0
	beq _08034C5A
	ldr r0, _08034C4C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _08034C54
	ldr r0, _08034C50 @ =gUnk_080CED88
	bl sub_08080840
	b _08034C5A
	.align 2, 0
_08034C44: .4byte gLinkState
_08034C48: .4byte gRoomControls
_08034C4C: .4byte gUnk_030010A0
_08034C50: .4byte gUnk_080CED88
_08034C54:
	ldr r0, _08034C5C @ =gUnk_080CED9C
	bl sub_08080840
_08034C5A:
	pop {r4, pc}
	.align 2, 0
_08034C5C: .4byte gUnk_080CED9C

	thumb_func_start sub_08034C60
sub_08034C60: @ 0x08034C60
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08034C78 @ =gUnk_080CEE90
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08034C78: .4byte gUnk_080CEE90

	thumb_func_start sub_08034C7C
sub_08034C7C: @ 0x08034C7C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	beq _08034C9C
	ldr r0, _08034C98 @ =gUnk_080CEEA4
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08034CA2
	.align 2, 0
_08034C98: .4byte gUnk_080CEEA4
_08034C9C:
	adds r0, r2, #0
	bl sub_08034E18
_08034CA2:
	pop {pc}

	thumb_func_start sub_08034CA4
sub_08034CA4: @ 0x08034CA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08034FA0
	ldr r1, _08034CB8 @ =gUnk_080CEE90
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08034CB8: .4byte gUnk_080CEE90

	thumb_func_start sub_08034CBC
sub_08034CBC: @ 0x08034CBC
	push {lr}
	bl sub_0804A7D4
	pop {pc}

	thumb_func_start sub_08034CC4
sub_08034CC4: @ 0x08034CC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08035084
	cmp r0, #0
	beq _08034D42
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xf]
	adds r2, r5, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034F70
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, _08034D44 @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08034D48 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	movs r0, #0x37
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D42
	str r1, [r5, #0x54]
	str r5, [r1, #0x50]
	adds r0, r5, #0
	bl CopyPosition
_08034D42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08034D44: .4byte 0x00004022
_08034D48: .4byte gRoomControls

	thumb_func_start sub_08034D4C
sub_08034D4C: @ 0x08034D4C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r6, r5, #0
	adds r6, #0x78
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034DC4
	ldrb r0, [r5, #0xf]
	cmp r0, #7
	bhi _08034DBC
	movs r0, #0x4b
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _08034DBC
	bl Random
	movs r1, #5
	bl __modsi3
	adds r0, #0xc
	strb r0, [r4, #0x15]
	ldr r1, _08034DB8 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #1
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #8
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r6]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	b _08034DC4
	.align 2, 0
_08034DB8: .4byte gRoomControls
_08034DBC:
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0x78
	strh r0, [r1]
_08034DC4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08034DC8
sub_08034DC8: @ 0x08034DC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08034E10 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034E0E
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08034E14 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	bl sub_0805E780
_08034E0E:
	pop {r4, r5, pc}
	.align 2, 0
_08034E10: .4byte gUnk_030010A0
_08034E14: .4byte gRoomControls

	thumb_func_start sub_08034E18
sub_08034E18: @ 0x08034E18
	push {lr}
	ldr r2, _08034E2C @ =gUnk_080CEEB0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08034E2C: .4byte gUnk_080CEEB0

	thumb_func_start sub_08034E30
sub_08034E30: @ 0x08034E30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xa]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034E68
sub_08034E68: @ 0x08034E68
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034EBC
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _08034E8A
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08035120
_08034E8A:
	ldr r0, _08034EB0 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034EB8
	bl sub_08079F8C
	cmp r0, #0
	beq _08034EBC
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _08034EB4 @ =gUnk_08012E20
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	b _08034EBC
	.align 2, 0
_08034EB0: .4byte gUnk_030010A0
_08034EB4: .4byte gUnk_08012E20
_08034EB8:
	bl sub_0805E780
_08034EBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034EC0
sub_08034EC0: @ 0x08034EC0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034ED6
	adds r0, r1, #0
	bl sub_08035120
	bl sub_0805E780
_08034ED6:
	pop {pc}

	thumb_func_start sub_08034ED8
sub_08034ED8: @ 0x08034ED8
	push {lr}
	movs r1, #0
	bl sub_0807DDAC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034EE4
sub_08034EE4: @ 0x08034EE4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08034F46
	bl Random
	adds r4, r0, #0
	ldr r0, _08034F50 @ =gUnk_080CEEC8
	movs r1, #3
	ands r1, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFX
	adds r3, r0, #0
	cmp r3, #0
	beq _08034F46
	lsrs r1, r4, #2
	movs r0, #0x77
	ands r1, r0
	lsls r1, r1, #1
	adds r1, #1
	ldr r2, _08034F54 @ =gRoomControls
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	lsrs r1, r4, #9
	movs r0, #0x7e
	ands r1, r0
	adds r1, #1
	ldrh r0, [r2, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r3, #0
	bl UpdateSpriteOrderAndFlip
_08034F46:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	pop {r4, r5, pc}
	.align 2, 0
_08034F50: .4byte gUnk_080CEEC8
_08034F54: .4byte gRoomControls

	thumb_func_start sub_08034F58
sub_08034F58: @ 0x08034F58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034F6C @ =gUnk_0813ABA8
	bl sub_08080840
	adds r0, r4, #0
	bl sub_0805E7BC
	pop {r4, pc}
	.align 2, 0
_08034F6C: .4byte gUnk_0813ABA8

	thumb_func_start sub_08034F70
sub_08034F70: @ 0x08034F70
	push {lr}
	adds r2, r0, #0
	ldr r0, _08034F8C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _08034F90
	movs r0, #0
	b _08034F9A
	.align 2, 0
_08034F8C: .4byte gUnk_030010A0
_08034F90:
	cmp r0, #0x1e
	bls _08034F98
	movs r0, #1
	b _08034F9A
_08034F98:
	movs r0, #2
_08034F9A:
	strb r0, [r2, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034FA0
sub_08034FA0: @ 0x08034FA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08034FC0
	ldr r0, [r4, #0x54]
	adds r0, #0x3d
	strb r1, [r0]
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
_08034FC0:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08035008
	cmp r0, #1
	beq _08035020
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08035040
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08035004 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	b _08035040
	.align 2, 0
_08035004: .4byte gRoomControls
_08035008:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x3b
	bhi _08035040
	ldr r0, _0803501C @ =gUnk_030010A0
	adds r0, #0x39
	movs r1, #0x3c
	b _08035032
	.align 2, 0
_0803501C: .4byte gUnk_030010A0
_08035020:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x1d
	bhi _08035040
	ldr r0, _0803503C @ =gUnk_030010A0
	adds r0, #0x39
	movs r1, #0x1e
_08035032:
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08035050
	b _08035048
	.align 2, 0
_0803503C: .4byte gUnk_030010A0
_08035040:
	ldr r0, _0803504C @ =gUnk_030010A0
	ldrb r1, [r5]
	adds r0, #0x39
	strb r1, [r0]
_08035048:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803504C: .4byte gUnk_030010A0

	thumb_func_start sub_08035050
sub_08035050: @ 0x08035050
	push {r4, lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	movs r4, #0
	strb r1, [r0, #0x10]
	adds r0, #0x45
	strb r4, [r0]
	movs r0, #0x4b
	movs r1, #0
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _08035082
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_08035082:
	pop {r4, pc}

	thumb_func_start sub_08035084
sub_08035084: @ 0x08035084
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08035118
	ldr r0, _080350A0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bls _080350A4
	movs r0, #0
	b _0803511A
	.align 2, 0
_080350A0: .4byte gUnk_03003DBC
_080350A4:
	ldr r4, _080350D8 @ =gUnk_030010D8
_080350A6:
	bl Random
	movs r1, #6
	bl __modsi3
	adds r6, r0, #0
	ldrb r0, [r4]
	lsrs r0, r0, #4
	cmp r6, r0
	beq _080350A6
	ldr r2, _080350DC @ =gUnk_030010A0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r6, #4
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	ldr r4, _080350E0 @ =gUnk_080CEECC
	ldr r7, _080350E4 @ =gRoomControls
_080350D0:
	cmp r5, r6
	bne _080350E8
	mov r2, r8
	b _080350F2
	.align 2, 0
_080350D8: .4byte gUnk_030010D8
_080350DC: .4byte gUnk_030010A0
_080350E0: .4byte gUnk_080CEECC
_080350E4: .4byte gRoomControls
_080350E8:
	movs r0, #0x37
	movs r1, #1
	bl CreateEnemy
	adds r2, r0, #0
_080350F2:
	ldrh r0, [r7, #6]
	ldrb r1, [r4]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r7, #8]
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
	adds r5, #1
	adds r4, #2
	cmp r5, #5
	bls _080350D0
_08035118:
	movs r0, #1
_0803511A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08035120
sub_08035120: @ 0x08035120
	push {r4, r5, r6, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0803515C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r6, #0
	ldr r5, _08035160 @ =gUnk_080CEED8
_08035146:
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r0, r4, r0
	bl sub_0807B600
	adds r5, #2
	adds r6, #1
	cmp r6, #0x17
	bls _08035146
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803515C: .4byte gRoomControls
_08035160: .4byte gUnk_080CEED8

	thumb_func_start sub_08035164
sub_08035164: @ 0x08035164
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803518C
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_0803518C:
	adds r0, r4, #0
	bl sub_08035194
	pop {r4, pc}

	thumb_func_start sub_08035194
sub_08035194: @ 0x08035194
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080351A8
	ldr r0, _080351A4 @ =gUnk_080CEF34
	b _080351AA
	.align 2, 0
_080351A4: .4byte gUnk_080CEF34
_080351A8:
	ldr r0, _080351B8 @ =gUnk_080CEF58
_080351AA:
	ldrb r1, [r2, #0x1e]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x48]
	pop {pc}
	.align 2, 0
_080351B8: .4byte gUnk_080CEF58

	thumb_func_start sub_080351BC
sub_080351BC: @ 0x080351BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080351D4 @ =gUnk_080CF040
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080351D4: .4byte gUnk_080CF040

	thumb_func_start sub_080351D8
sub_080351D8: @ 0x080351D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _08035204
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080368D8
	adds r0, r4, #0
	bl sub_0803520C
	b _08035208
_08035204:
	bl sub_0805E780
_08035208:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803520C
sub_0803520C: @ 0x0803520C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035238
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	beq _0803524C
	ldr r2, _08035234 @ =gRoomControls
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0x30]
	movs r0, #0x5a
	strb r0, [r1, #7]
	bl sub_08078B48
	b _0803524C
	.align 2, 0
_08035234: .4byte gRoomControls
_08035238:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0803524C
	subs r0, #1
	strb r0, [r1, #7]
	bl sub_08078B48
_0803524C:
	ldr r1, _08035284 @ =gUnk_080CF054
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bls _08035266
	bl sub_08078B48
_08035266:
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_08035284: .4byte gUnk_080CF054

	thumb_func_start sub_08035288
sub_08035288: @ 0x08035288
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x76
	movs r4, #0
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r2, #0
	adds r3, #0x84
	ldr r0, [r3]
	strb r4, [r0, #6]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #4
	bne _080352C8
	strb r0, [r2, #0xd]
	ldr r0, _080352C4 @ =gUnk_02034490
	movs r1, #1
	strb r1, [r0]
	bl sub_08078B48
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	b _080352FA
	.align 2, 0
_080352C4: .4byte gUnk_02034490
_080352C8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080352DA
	strb r4, [r2, #0xb]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x3c
	b _080352F4
_080352DA:
	ldr r1, [r3]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bls _080352E6
	subs r0, #1
	strb r0, [r1, #1]
_080352E6:
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	adds r0, #0x7d
	strb r4, [r0]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x78
_080352F4:
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xd]
_080352FA:
	pop {r4, pc}

	thumb_func_start sub_080352FC
sub_080352FC: @ 0x080352FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r6, #1
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #0
	bne _080353EC
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	adds r1, #0x7d
	ldrb r2, [r1]
	mov sb, r0
	cmp r2, #0
	beq _0803532C
	subs r0, r2, #1
	strb r0, [r1]
_0803532C:
	ldr r3, _0803538C @ =gRoomControls
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r0, #0
	ldrh r2, [r3, #6]
	adds r1, r1, r2
	ldrh r0, [r5, #0x2e]
	subs r1, r1, r0
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r3, #8]
	ldrh r2, [r5, #0x32]
	subs r0, r0, r2
	adds r0, #0x8c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #8
	bhi _08035356
	cmp r0, #8
	bls _08035394
_08035356:
	mov r1, sb
	ldr r0, [r1]
	strb r6, [r0, #2]
	ldrh r0, [r3, #6]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r2, _08035390 @ =0xFFFFFEF8
	adds r1, r1, r2
	subs r0, r0, r1
	ldrh r1, [r3, #8]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r2, #0x88
	subs r1, r1, r2
	bl sub_080045DA
	asrs r0, r0, #3
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_080AEF88
	adds r7, r5, #0
	adds r7, #0x79
	b _08035456
	.align 2, 0
_0803538C: .4byte gRoomControls
_08035390: .4byte 0xFFFFFEF8
_08035394:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080353D8
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #0
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #1
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #2
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #3
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #4
	bl CreateObjectWithParent
	strb r6, [r5, #0xb]
_080353D8:
	mov r1, sb
	ldr r0, [r1]
	strb r4, [r0, #2]
	adds r1, r5, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r7, r1, #0
	b _08035456
_080353EC:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r1, [r1, #1]
	subs r4, r1, #1
	mov sb, r0
	adds r7, r5, #0
	adds r7, #0x79
	cmp r4, #0
	beq _08035438
	mov ip, sb
	movs r2, #1
	mov sl, r2
	lsls r0, r4, #2
	subs r6, r0, #4
	movs r3, #3
	mov r8, r3
_0803540E:
	mov r1, ip
	ldr r0, [r1]
	adds r0, #0xc
	adds r0, r0, r6
	ldr r3, [r0]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	mov r0, sl
	orrs r1, r0
	mov r0, r8
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	subs r6, #4
	subs r4, #1
	cmp r4, #0
	bne _0803540E
_08035438:
	ldr r1, _080354AC @ =gUnk_030010A0
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08035450
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #6
	movs r3, #0
	bl CreateObjectWithParent
_08035450:
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
_08035456:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080354E8
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r4, r5, #0
	adds r4, #0x7c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_080AE068
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080354B0
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x5f
	strb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_08036F14
	mov r2, sb
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	movs r1, #1
	bl sub_080042AC
	b _080354DC
	.align 2, 0
_080354AC: .4byte gUnk_030010A0
_080354B0:
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x61
	strb r0, [r1]
	ldr r1, _080354F4 @ =0x00000109
	adds r0, r5, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xf0
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xf3
	bl sub_08036F14
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	movs r1, #2
	bl sub_080042AC
_080354DC:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #8
	movs r3, #0
	bl CreateObjectWithParent
_080354E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080354F4: .4byte 0x00000109

	thumb_func_start sub_080354F8
sub_080354F8: @ 0x080354F8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0x80
	beq _08035512
	adds r0, #1
	strb r0, [r2]
	b _08035522
_08035512:
	movs r0, #3
	strb r0, [r1, #0xd]
	adds r1, #0x79
	movs r0, #0x96
	strb r0, [r1]
	ldr r1, _08035524 @ =gRoomControls
	ldr r0, _08035528 @ =gLinkEntity
	str r0, [r1, #0x30]
_08035522:
	pop {pc}
	.align 2, 0
_08035524: .4byte gRoomControls
_08035528: .4byte gLinkEntity

	thumb_func_start sub_0803552C
sub_0803552C: @ 0x0803552C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035570
	ldr r1, _08035574 @ =gUnk_080CF070
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r3, [r2, #0xd]
	adds r0, r2, #0
	adds r0, #0x7e
	strb r3, [r0]
	adds r0, r2, #0
	bl sub_08036DA0
_08035570:
	pop {pc}
	.align 2, 0
_08035574: .4byte gUnk_080CF070

	thumb_func_start sub_08035578
sub_08035578: @ 0x08035578
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xd]
	movs r1, #0x87
	movs r2, #9
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _08035592
	ldr r0, _08035594 @ =gRoomControls
	str r1, [r0, #0x30]
_08035592:
	pop {pc}
	.align 2, 0
_08035594: .4byte gRoomControls

	thumb_func_start sub_08035598
sub_08035598: @ 0x08035598
	adds r2, r0, #0
	movs r1, #0
	movs r0, #6
	strb r0, [r2, #0xd]
	adds r3, r2, #0
	adds r3, #0x79
	movs r0, #0x78
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080355B4
sub_080355B4: @ 0x080355B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	adds r1, #6
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080355FA
	bl Random
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4]
	subs r1, r1, r0
	strb r1, [r4]
	ands r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _08035616
	b _08035614
_080355FA:
	bl Random
	movs r1, #3
	ands r0, r1
	ldrb r2, [r4]
	adds r1, r0, r2
	strb r1, [r4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _08035616
	movs r0, #0x80
	orrs r1, r0
_08035614:
	strb r1, [r4]
_08035616:
	ldr r0, _080356E4 @ =gUnk_080C9160
	mov r8, r0
	movs r1, #0x81
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r6, r7, #0
	adds r6, #0x80
	ldrb r2, [r6]
	movs r4, #0x7f
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #8
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_0806FA04
	lsrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	ands r4, r1
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r1, #0x16
	ldrb r0, [r1]
	cmp r0, #0
	bne _080356EC
	ldr r0, _080356E8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080356B2
	adds r0, r7, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
_080356B2:
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x79
	bne _080356F0
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, #0x45
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r7, #0
	bl sub_0804A7D4
	b _080356F0
	.align 2, 0
_080356E4: .4byte gUnk_080C9160
_080356E8: .4byte gUnk_030010A0
_080356EC:
	subs r0, #1
	strb r0, [r1]
_080356F0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080356F8
sub_080356F8: @ 0x080356F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08035718 @ =gUnk_080CF078
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_08035718: .4byte gUnk_080CF078

	thumb_func_start sub_0803571C
sub_0803571C: @ 0x0803571C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0803573A
	b _08035974
_0803573A:
	lsls r0, r0, #2
	ldr r1, _08035744 @ =_08035748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035744: .4byte _08035748
_08035748: @ jump table
	.4byte _08035764 @ case 0
	.4byte _080358D8 @ case 1
	.4byte _080358D8 @ case 2
	.4byte _080358D8 @ case 3
	.4byte _080358D8 @ case 4
	.4byte _08035920 @ case 5
	.4byte _08035940 @ case 6
_08035764:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x7c
	movs r5, #0
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x30
	bl sub_0801D8E0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r2, [r0]
	mov r8, r0
	cmp r2, #0
	bne _0803579E
	adds r0, r4, #0
	bl sub_0804A7D4
	b _080359A6
_0803579E:
	str r2, [r4, #0x64]
	mov r1, r8
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r1, [r1]
	movs r0, #2
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r1, [r2]
	movs r0, #5
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #6
	strh r5, [r0]
	movs r5, #0
	movs r0, #0x79
	adds r0, r0, r4
	mov sb, r0
	mov r7, r8
_080357E6:
	adds r6, r5, #1
	movs r0, #0x39
	adds r1, r6, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035816
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r5, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_08035816:
	adds r5, r6, #0
	cmp r5, #3
	bls _080357E6
	movs r0, #0x39
	movs r1, #5
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035840
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
_08035840:
	movs r0, #0x39
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0803586A
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0xc]
_0803586A:
	movs r5, #0
	mov r7, r8
_0803586E:
	movs r0, #0x39
	movs r1, #7
	bl CreateEnemy
	str r0, [r4, #0x54]
	adds r6, r5, #1
	cmp r0, #0
	beq _080358A0
	strb r5, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r6, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_080358A0:
	adds r5, r6, #0
	cmp r5, #3
	bls _0803586E
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x3c
	mov r1, sb
	strb r0, [r1]
	ldr r1, _080358D0 @ =gLinkEntity
	ldrb r2, [r1, #0x18]
	subs r0, #0x40
	ands r0, r2
	strb r0, [r1, #0x18]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	subs r0, #0xa0
	strh r0, [r1, #0x32]
	ldr r0, _080358D4 @ =gRoomControls
	str r4, [r0, #0x30]
	b _08035974
	.align 2, 0
_080358D0: .4byte gLinkEntity
_080358D4: .4byte gRoomControls
_080358D8:
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080358F4
	strb r2, [r4, #0xf]
	b _080358F8
_080358F4:
	movs r0, #0xfe
	strb r0, [r4, #0xf]
_080358F8:
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035918
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _08035974
_08035918:
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _08035974
_08035920:
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r4, [r0, #8]
	b _08035974
_08035940:
	adds r0, r4, #0
	adds r0, #0x76
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x80
	strb r0, [r1]
_08035974:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08035990
	ldr r0, _0803598C @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08004260
	b _080359A0
	.align 2, 0
_0803598C: .4byte gUnk_080CF08C
_08035990:
	ldr r0, _080359B0 @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080042AC
_080359A0:
	adds r0, r4, #0
	bl sub_08035B94
_080359A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080359B0: .4byte gUnk_080CF08C

	thumb_func_start sub_080359B4
sub_080359B4: @ 0x080359B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldr r1, _080359F0 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036F60
	ldr r1, _080359F4 @ =gUnk_080CF0AC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_080359F0: .4byte gUnk_02034490
_080359F4: .4byte gUnk_080CF0AC

	thumb_func_start sub_080359F8
sub_080359F8: @ 0x080359F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035A22
	movs r0, #1
	strb r0, [r2, #0xd]
	adds r1, #9
	adds r0, #0xff
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1]
_08035A22:
	pop {pc}

	thumb_func_start sub_08035A24
sub_08035A24: @ 0x08035A24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08035A54
	adds r2, r4, #0
	adds r2, #0x79
	movs r1, #0
	movs r0, #0x3c
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, _08035A50 @ =0x00000159
	bl PlaySFX
	b _08035A64
	.align 2, 0
_08035A50: .4byte 0x00000159
_08035A54:
	adds r1, r4, #0
	adds r1, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_08035A64:
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08036FAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08035A70
sub_08035A70: @ 0x08035A70
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035AA8
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r1]
	ldr r2, _08035AAC @ =gLinkEntity
	ldrb r3, [r2, #0x18]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r4, #1
	orrs r1, r4
	subs r0, #0x40
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, _08035AB0 @ =gRoomControls
	str r2, [r0, #0x30]
	strb r4, [r0, #0xe]
_08035AA8:
	pop {r4, pc}
	.align 2, 0
_08035AAC: .4byte gLinkEntity
_08035AB0: .4byte gRoomControls

	thumb_func_start sub_08035AB4
sub_08035AB4: @ 0x08035AB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035AE4
	ldr r1, _08035AE8 @ =gLinkEntity
	movs r0, #0x10
	strb r0, [r1, #0x15]
	movs r4, #4
	strb r4, [r1, #0x14]
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	movs r0, #0x3c
	strb r0, [r5]
	strb r4, [r6, #0xd]
_08035AE4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08035AE8: .4byte gLinkEntity

	thumb_func_start sub_08035AEC
sub_08035AEC: @ 0x08035AEC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x79
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035B18
	movs r0, #5
	strb r0, [r3, #0xd]
	movs r0, #0x2d
	strb r0, [r2]
	ldr r1, _08035B14 @ =gLinkEntity
	movs r0, #0
	strb r0, [r1, #0x14]
	b _08035B2C
	.align 2, 0
_08035B14: .4byte gLinkEntity
_08035B18:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08035B2C
	ldr r0, _08035B30 @ =gLinkEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #0xc
	bl sub_080A2CFC
_08035B2C:
	pop {pc}
	.align 2, 0
_08035B30: .4byte gLinkEntity

	thumb_func_start sub_08035B34
sub_08035B34: @ 0x08035B34
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08035B70 @ =gLinkEntity
	ldrb r5, [r2, #0x14]
	cmp r5, #4
	bne _08035B7C
	adds r2, r3, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08035B92
	movs r4, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	strb r4, [r3, #0xd]
	ldr r0, _08035B74 @ =gRoomControls
	strb r5, [r0, #0xe]
	adds r0, r3, #0
	bl sub_08036C90
	ldr r0, _08035B78 @ =gUnk_02034490
	strb r4, [r0]
	movs r0, #0x2e
	bl PlaySFX
	b _08035B92
	.align 2, 0
_08035B70: .4byte gLinkEntity
_08035B74: .4byte gRoomControls
_08035B78: .4byte gUnk_02034490
_08035B7C:
	adds r1, r3, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035B92
	movs r0, #4
	strb r0, [r2, #0x14]
_08035B92:
	pop {r4, r5, pc}

	thumb_func_start sub_08035B94
sub_08035B94: @ 0x08035B94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08035BAE
	ldr r0, [r5, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
_08035BAE:
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _08035BB6
	b _08035F6C
_08035BB6:
	lsls r0, r0, #2
	ldr r1, _08035BC0 @ =_08035BC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035BC0: .4byte _08035BC4
_08035BC4: @ jump table
	.4byte _08035F16 @ case 0
	.4byte _08035BE4 @ case 1
	.4byte _08035BE4 @ case 2
	.4byte _08035BE4 @ case 3
	.4byte _08035BE4 @ case 4
	.4byte _08035E78 @ case 5
	.4byte _08035DB0 @ case 6
	.4byte _08035D14 @ case 7
_08035BE4:
	ldr r0, [r5, #0x50]
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035BF6
	bl sub_0805E780
_08035BF6:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x76
	movs r1, #0x74
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #1
	bne _08035C42
	ldrh r1, [r7]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _08035C20
	subs r0, r1, #4
	b _08035C22
_08035C20:
	adds r0, r1, #4
_08035C22:
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r8, r0
	cmp r1, #0
	bge _08035C3C
	subs r0, r2, #4
	mov r1, r8
	strh r0, [r1]
	b _08035C42
_08035C3C:
	adds r0, r2, #4
	mov r2, r8
	strh r0, [r2]
_08035C42:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08035C66
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	beq _08035C66
	ldrb r0, [r1, #0xd]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08035C82
_08035C66:
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08035C76
	ldr r0, [r6]
	ldrb r0, [r0]
	rsbs r0, r0, #0
	b _08035C7A
_08035C76:
	ldr r0, [r6]
	ldrb r0, [r0]
_08035C7A:
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08036998
_08035C82:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	ldr r0, _08035CB0 @ =0xFFFFE000
	adds r3, r3, r0
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _08035CB4
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r3, r1
	b _08035CBC
	.align 2, 0
_08035CB0: .4byte 0xFFFFE000
_08035CB4:
	lsrs r0, r3, #1
	movs r2, #0x88
	lsls r2, r2, #6
	adds r3, r0, r2
_08035CBC:
	adds r2, r4, #0
	adds r2, #0x7b
	ldr r1, _08035D0C @ =gUnk_080CF0D8
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r2, [r5, #0x50]
	adds r2, #0x7b
	ldr r1, _08035D10 @ =gUnk_080CF0DC
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r2]
	adds r1, r1, r2
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	mov r3, r8
	ldrh r2, [r3]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r3, [r0]
	b _08035E70
	.align 2, 0
_08035D0C: .4byte gUnk_080CF0D8
_08035D10: .4byte gUnk_080CF0DC
_08035D14:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08035D28
	bl sub_0805E780
_08035D28:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #2
	ldrb r1, [r5, #0xb]
	cmp r0, r1
	bge _08035D38
	bl sub_0805E780
_08035D38:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #2
	ldrb r2, [r5, #0xb]
	cmp r0, r2
	bne _08035D8A
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
_08035D8A:
	ldr r0, [r5, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08035D9C
	b _08035F6C
_08035D9C:
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r3
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _08035F6C
_08035DB0:
	adds r6, r5, #0
	adds r6, #0x84
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08035DC4
	bl sub_0805E780
_08035DC4:
	adds r0, r5, #0
	bl sub_080042B8
	ldr r0, [r5, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08035E24
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_08036AF0
	adds r2, r5, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r3, #0x7f
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #7
	bne _08035E56
	ldrb r1, [r5, #0x10]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _08035E56
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x54]
	adds r0, #0x84
	ldr r1, [r6]
	str r1, [r0]
	b _08035E56
_08035E24:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r3
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_08036998
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #4
	bl sub_080369D0
	adds r4, r5, #0
	adds r4, #0x41
_08035E56:
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	rsbs r3, r3, #0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r3, r0
_08035E70:
	adds r0, r5, #0
	bl sub_0805EC9C
	b _08035F6C
_08035E78:
	adds r4, r5, #0
	adds r4, #0x45
	ldrb r0, [r4]
	cmp r0, #1
	bne _08035E88
	movs r0, #0
	strb r0, [r4]
	b _08035F6C
_08035E88:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r7, r5, #0
	adds r7, #0x76
	adds r6, r5, #0
	adds r6, #0x79
	cmp r0, #4
	beq _08035EC2
	ldrb r0, [r4]
	cmp r0, #1
	beq _08035EC2
	ldrb r0, [r6]
	cmp r0, #0x1c
	bls _08035EB0
	subs r0, #1
	strb r0, [r6]
_08035EB0:
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08035EC0
	subs r0, #1
	strh r0, [r7]
	b _08035EC2
_08035EC0:
	strh r1, [r7]
_08035EC2:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r0, r3, r0
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	bl sub_0800445C
	b _08035F6C
_08035F16:
	adds r0, r5, #0
	bl sub_0800445C
	adds r0, r5, #0
	bl sub_08036F60
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08035F48
	subs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08035F74 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08035F48
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #3
	bl sub_0804A98C
_08035F48:
	ldr r1, _08035F78 @ =gUnk_080CF0C4
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
_08035F6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08035F74: .4byte gUnk_030010A0
_08035F78: .4byte gUnk_080CF0C4

	thumb_func_start sub_08035F7C
sub_08035F7C: @ 0x08035F7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08035FD0 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0x80
	eors r1, r2
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	bne _08035FB6
	movs r1, #8
_08035FB6:
	cmn r2, r1
	ble _08035FEE
	cmp r2, r1
	bge _08035FEE
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08035FD4
	adds r0, r4, #0
	bl sub_08036C90
	b _08036074
	.align 2, 0
_08035FD0: .4byte gLinkEntity
_08035FD4:
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035FE6
	adds r0, r4, #0
	bl sub_08036E00
	b _08036028
_08035FE6:
	adds r0, r4, #0
	bl sub_08036D70
	b _08036028
_08035FEE:
	cmp r2, #0x80
	bls _0803600E
	adds r2, r4, #0
	adds r2, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #4]
	b _08036028
_0803600E:
	adds r2, r4, #0
	adds r2, #0x7a
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #4]
_08036028:
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x7c
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803606C
	adds r3, r4, #0
	adds r3, #0x82
	ldrh r2, [r3]
	ldr r0, _08036060 @ =0x0000027F
	cmp r2, r0
	bhi _0803606C
	ldrb r1, [r5]
	cmp r1, #1
	beq _08036064
	cmp r1, #3
	beq _08036068
	b _0803606C
	.align 2, 0
_08036060: .4byte 0x0000027F
_08036064:
	adds r0, r2, #1
	b _0803606A
_08036068:
	adds r0, r2, #2
_0803606A:
	strh r0, [r3]
_0803606C:
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08036FAC
_08036074:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08036078
sub_08036078: @ 0x08036078
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080360A0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	cmp r1, #0
	beq _080360A0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080360B2
_080360A0:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036D4C
	b _080360BE
_080360B2:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080360BE
	strb r0, [r5]
_080360BE:
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08036FAC
	pop {r4, r5, pc}

	thumb_func_start sub_080360C8
sub_080360C8: @ 0x080360C8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080360E4
	adds r0, r2, #0
	bl sub_08036DA0
_080360E4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080360E8
sub_080360E8: @ 0x080360E8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0
	bne _08036178
	adds r0, r4, #0
	bl sub_080AEF88
	movs r2, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _08036116
	cmp r0, #0x10
	beq _08036116
	ldrh r0, [r4, #0x2a]
	movs r1, #0xee
	lsls r1, r1, #8
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_08036116:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	beq _0803612C
	cmp r0, #8
	beq _0803612C
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _0803612C
	movs r2, #1
_0803612C:
	cmp r2, #0
	beq _0803617C
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	adds r0, #0x3c
	strb r0, [r1, #6]
	adds r0, r4, #0
	bl sub_08036C90
	movs r0, #0x3c
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	b _0803617C
_08036178:
	subs r0, #1
	strb r0, [r1]
_0803617C:
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08036FAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08036188
sub_08036188: @ 0x08036188
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080361EC @ =gUnk_080CF0E0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	bl sub_08036FE4
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _080361EA
	ldr r4, _080361F0 @ =gLinkEntity
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	bl sub_08078B48
	bl sub_08077B20
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r1, [r0]
	adds r1, #0x80
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r0, r4, #0
	bl sub_08036914
_080361EA:
	pop {r4, r5, pc}
	.align 2, 0
_080361EC: .4byte gUnk_080CF0E0
_080361F0: .4byte gLinkEntity

	thumb_func_start sub_080361F4
sub_080361F4: @ 0x080361F4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #4
	bne _08036208
	adds r0, r2, #0
	bl sub_08036D4C
	b _08036236
_08036208:
	adds r1, r2, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xb]
	subs r1, #6
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08036228
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x16
	b _0803622E
_08036228:
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0
_0803622E:
	strb r0, [r1]
	ldr r0, _08036238 @ =0x00000155
	bl PlaySFX
_08036236:
	pop {pc}
	.align 2, 0
_08036238: .4byte 0x00000155

	thumb_func_start sub_0803623C
sub_0803623C: @ 0x0803623C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	cmp r0, #0xbf
	bhi _08036250
	adds r0, #1
	strh r0, [r1]
	b _080362A0
_08036250:
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080362A0
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	cmp r1, #1
	bne _08036292
	movs r0, #3
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08036280
	movs r0, #0x3c
	b _08036282
_08036280:
	movs r0, #0x78
_08036282:
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #9
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _0803629A
_08036292:
	movs r0, #2
	strb r0, [r2, #0xb]
	movs r0, #0x2d
	strb r0, [r3]
_0803629A:
	ldr r0, _080362A4 @ =0x00000155
	bl PlaySFX
_080362A0:
	pop {pc}
	.align 2, 0
_080362A4: .4byte 0x00000155

	thumb_func_start sub_080362A8
sub_080362A8: @ 0x080362A8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x79
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080362FA
	adds r4, r2, #0
	adds r4, #0x76
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r3, [r1]
	ldrh r0, [r4]
	cmp r0, r3
	bhs _080362D0
	adds r0, r3, #0
	subs r0, #8
	strh r0, [r1]
	b _08036300
_080362D0:
	movs r0, #3
	strb r0, [r2, #0xb]
	ldrh r0, [r4]
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080362E6
	movs r0, #0x3c
	b _080362FC
_080362E6:
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x87
	movs r2, #4
	movs r3, #0
	bl CreateObjectWithParent
	b _08036300
_080362FA:
	subs r0, #1
_080362FC:
	mov r1, ip
	strb r0, [r1]
_08036300:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08036304
sub_08036304: @ 0x08036304
	push {lr}
	mov ip, r0
	ldr r0, _08036328 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803632C
	mov r2, ip
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	b _08036350
	.align 2, 0
_08036328: .4byte gUnk_030010A0
_0803632C:
	mov r2, ip
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #8]
	adds r3, r0, #0
	adds r3, #0x76
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	bls _08036350
	strh r1, [r3]
_08036350:
	mov r0, ip
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	beq _0803637A
	ldr r0, [r2]
	ldr r0, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0x1f
	bhi _0803637A
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
_0803637A:
	ldr r0, _0803638C @ =gUnk_080CF0F0
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803638C: .4byte gUnk_080CF0F0

	thumb_func_start sub_08036390
sub_08036390: @ 0x08036390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xf
	movs r2, #0
	bl sub_0804A98C
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080363B4
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #0x15]
_080363B4:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036C90
	pop {r4, pc}

	thumb_func_start sub_080363CC
sub_080363CC: @ 0x080363CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x80
	ldrb r2, [r7]
	cmp r2, #0
	bne _080364CC
	ldr r5, _08036498 @ =gLinkEntity
	ldr r0, [r5, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r5, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #0x15]
	subs r3, r0, r1
	mov r8, r2
	cmp r3, #0
	bge _0803640C
	rsbs r3, r3, #0
_0803640C:
	adds r6, r4, #0
	adds r6, #0x79
	cmp r3, #0xf
	bgt _080364AA
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xf0
	bl sub_0806FC80
	cmp r0, #0
	beq _080364AA
	ldr r2, _0803649C @ =gLinkState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080364A4
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080364AA
	movs r1, #0xa0
	lsls r1, r1, #2
	mov r0, r8
	ldrb r2, [r0]
	rsbs r2, r2, #0
	adds r0, r5, #0
	bl sub_0806F62C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl sub_0806FC80
	cmp r0, #0
	beq _080364AA
	movs r0, #1
	strb r0, [r7]
	movs r0, #2
	strb r0, [r6]
	ldr r2, _080364A0 @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldrh r1, [r2, #8]
	adds r1, #0x88
	lsls r1, r1, #0x10
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	strb r0, [r1, #3]
	ldr r1, [r2]
	ldrb r0, [r1, #3]
	adds r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r1, #3]
	movs r0, #0xed
	bl PlaySFX
	b _080364AA
	.align 2, 0
_08036498: .4byte gLinkEntity
_0803649C: .4byte gLinkState
_080364A0: .4byte gRoomControls
_080364A4:
	ldr r0, _080364C4 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r2, #0x30]
_080364AA:
	ldr r0, _080364C8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803657A
	adds r0, r4, #0
	movs r1, #0x87
	movs r2, #2
	movs r3, #0
	bl CreateObjectWithParent
	b _0803657A
	.align 2, 0
_080364C4: .4byte 0xFFFFF7FF
_080364C8: .4byte gUnk_030010A0
_080364CC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x84
	cmp r0, #0
	bne _080364F0
	ldr r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r0, #3]
	mov r8, r1
	ldrb r6, [r1]
	cmp r0, r6
	bne _08036570
_080364F0:
	cmp r2, #1
	bne _08036510
	movs r0, #2
	strb r0, [r7]
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x2d
	strb r0, [r1]
	adds r1, #9
	movs r2, #0
	adds r0, #0xd3
	strh r0, [r1]
	ldr r0, [r3]
	strb r2, [r0, #2]
	b _08036652
_08036510:
	movs r0, #0
	strb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0803656C @ =gLinkEntity
	ldrb r2, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0x18]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	adds r1, #0x38
	strb r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	adds r1, #0x80
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #0x30
	bl sub_080792BC
	adds r0, r4, #0
	bl sub_08036C90
	movs r0, #0xef
	bl PlaySFX
	b _08036652
	.align 2, 0
_0803656C: .4byte gLinkEntity
_08036570:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	adds r6, r1, #0
_0803657A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08036598
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	movs r2, #0
	strh r0, [r1]
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036652
_08036598:
	subs r2, r0, #1
	strb r2, [r6]
	ldr r0, _080365E4 @ =gLinkState
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _080365F8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080365F8
	ldr r2, _080365E8 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	mov r7, r8
	ldrb r2, [r7]
	rsbs r0, r2, #0
	movs r1, #0x80
	eors r0, r1
	subs r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080365EC
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x30
	b _080365F6
	.align 2, 0
_080365E4: .4byte gLinkState
_080365E8: .4byte gLinkEntity
_080365EC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	subs r0, #0x30
_080365F6:
	strb r0, [r1, #3]
_080365F8:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r5, #1
	adds r2, r5, #0
	ands r2, r0
	cmp r2, #0
	bne _08036652
	adds r3, r4, #0
	adds r3, #0x84
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	mov r6, r8
	ldrb r6, [r6]
	cmp r0, r6
	beq _08036650
	strb r5, [r1, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	mov r7, r8
	ldrb r1, [r7]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _0803663E
	adds r2, r4, #0
	adds r2, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r2]
	b _08036652
_0803663E:
	adds r1, r4, #0
	adds r1, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _08036652
_08036650:
	strb r2, [r1, #2]
_08036652:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08036658
sub_08036658: @ 0x08036658
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08036678
	movs r0, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_08036C90
	movs r0, #0x78
	strb r0, [r4]
	b _080366AC
_08036678:
	adds r0, r1, #1
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805308C
	ldr r0, _080366B0 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080366AC
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080366A0
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
_080366A0:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #3
	movs r3, #0
	bl CreateObjectWithParent
_080366AC:
	pop {r4, r5, pc}
	.align 2, 0
_080366B0: .4byte gUnk_030010A0

	thumb_func_start sub_080366B4
sub_080366B4: @ 0x080366B4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _080366D4
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036706
_080366D4:
	subs r0, #1
	strb r0, [r2]
	ldr r0, _08036708 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08036706
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #2
	bl sub_0804A98C
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _08036706
	str r4, [r0, #0x50]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	strb r0, [r2, #0x15]
_08036706:
	pop {r4, pc}
	.align 2, 0
_08036708: .4byte gUnk_030010A0

	thumb_func_start sub_0803670C
sub_0803670C: @ 0x0803670C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803675C @ =gUnk_080CF100
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08036746
	subs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08036760 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08036746
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #3
	bl sub_0804A98C
_08036746:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0803675C: .4byte gUnk_080CF100
_08036760: .4byte gUnk_030010A0

	thumb_func_start sub_08036764
sub_08036764: @ 0x08036764
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strh r1, [r4, #0x2a]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080368D8
	adds r0, r4, #0
	bl sub_080367B0
	pop {r4, pc}

	thumb_func_start sub_080367B0
sub_080367B0: @ 0x080367B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803683A
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x84
	ldr r1, [r3]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080367E4
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	rsbs r0, r0, #0
	strb r0, [r1, #3]
_080367E4:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _080367FE
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	rsbs r1, r1, #0
	movs r5, #0x80
	rsbs r5, r5, #0
	adds r2, r5, #0
	eors r1, r2
	strb r1, [r0, #3]
_080367FE:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	adds r0, #0x1e
	strb r0, [r1, #6]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
_0803683A:
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08036852
	subs r1, #0x34
	movs r0, #0
	strb r0, [r1]
_08036852:
	ldr r0, _08036868 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08036864
	ldr r0, _0803686C @ =0x00000159
	bl PlaySFX
_08036864:
	pop {r4, r5, pc}
	.align 2, 0
_08036868: .4byte gUnk_030010A0
_0803686C: .4byte 0x00000159

	thumb_func_start sub_08036870
sub_08036870: @ 0x08036870
	push {lr}
	adds r3, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r1, [r0, #3]
	movs r0, #0x7b
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #7
	cmp r0, #0xe
	bhi _080368AA
	movs r2, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	mov r1, ip
	ldrb r0, [r1]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r3, #0x15]
	strh r2, [r3, #0x2a]
	adds r0, r3, #0
	bl sub_080AEF88
	b _080368D4
_080368AA:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080368C4
	adds r2, r3, #0
	adds r2, #0x7a
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r2]
	b _080368D4
_080368C4:
	adds r1, r3, #0
	adds r1, #0x7a
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_080368D4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080368D8
sub_080368D8: @ 0x080368D8
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036902
	ldr r2, _08036910 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r2, #0x38
	movs r0, #1
	strb r0, [r2]
_08036902:
	adds r0, r3, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	pop {pc}
	.align 2, 0
_08036910: .4byte gLinkEntity

	thumb_func_start sub_08036914
sub_08036914: @ 0x08036914
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _08036994 @ =gUnk_080C9160
	mov sb, r0
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	bl sub_0806FA04
	ldr r1, [r5, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x2c]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl sub_0806FA04
	ldr r2, [r5, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r5, #0x30]
	adds r2, #0x62
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r0, #0x63
	ldrb r0, [r0]
	adds r5, #0x63
	strb r0, [r5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_08036994: .4byte gUnk_080C9160

	thumb_func_start sub_08036998
sub_08036998: @ 0x08036998
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r2, #0xf]
	ldrb r4, [r3]
	adds r1, r0, r4
	strb r1, [r3]
	ldrb r4, [r2, #0xf]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080369BE
	ldrb r0, [r2, #0xe]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmn r1, r0
	bge _080369CC
	b _080369C8
_080369BE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r2, #0xe]
	cmp r0, r1
	ble _080369CC
_080369C8:
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
_080369CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080369D0
sub_080369D0: @ 0x080369D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r1
	adds r6, r2, #0
	adds r1, r0, #0
	adds r1, #0x84
	ldr r4, [r1]
	ldr r2, [r4, #0xc]
	ldrb r1, [r4, #1]
	subs r1, #1
	lsls r1, r1, #2
	adds r3, r4, #0
	adds r3, #0xc
	adds r1, r3, r1
	ldr r1, [r1]
	adds r1, #0x7b
	adds r0, #0x79
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r2, #0x7b
	strb r0, [r2]
	ldrb r0, [r4, #1]
	movs r2, #0
	cmp r0, #1
	beq _08036A58
	adds r5, r3, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	rsbs r0, r6, #0
	lsls r0, r0, #0x18
	asrs r7, r0, #0x18
_08036A16:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	adds r1, #0x7b
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x7b
	ldrb r1, [r1]
	ldrb r0, [r3]
	cmp r1, r0
	beq _08036A4C
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08036A44
	cmp r0, r8
	ble _08036A4C
	adds r0, r1, r6
	b _08036A4A
_08036A44:
	cmp r0, r7
	bge _08036A4C
	subs r0, r1, r6
_08036A4A:
	strb r0, [r3]
_08036A4C:
	ldrb r0, [r4, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	blo _08036A16
_08036A58:
	ldrb r0, [r4, #1]
	subs r2, r0, #1
	cmp r2, #0
	beq _08036AE4
	ldr r0, _08036AEC @ =gUnk_080C9160
	mov sb, r0
	movs r1, #0x80
	mov r8, r1
	mov r1, ip
	lsls r0, r1, #0x14
	asrs r6, r0, #0x10
	lsls r0, r2, #2
	adds r0, #8
	adds r5, r0, r4
	movs r7, #0x80
	lsls r7, r7, #1
_08036A78:
	subs r4, r2, #1
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	subs r5, #4
	adds r2, r4, #0
	cmp r2, #0
	bne _08036A78
_08036AE4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036AEC: .4byte gUnk_080C9160

	thumb_func_start sub_08036AF0
sub_08036AF0: @ 0x08036AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp]
	mov r8, r2
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #1]
	subs r4, r0, #1
	cmp r4, #0
	bne _08036B10
	b _08036C80
_08036B10:
	ldr r0, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #8]
	lsls r0, r1, #0x14
	asrs r0, r0, #0x10
	mov sl, r0
_08036B1C:
	mov r1, r8
	cmp r1, #0
	bne _08036BC0
	lsls r0, r4, #2
	ldr r2, [sp, #8]
	adds r6, r2, r0
	ldr r0, [r6]
	subs r4, #1
	lsls r1, r4, #2
	adds r5, r2, r1
	ldr r2, [r5]
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	bl sub_080041DC
	mov sb, r4
	ldr r1, [sp]
	cmp r1, r0
	blo _08036B48
	b _08036C78
_08036B48:
	ldr r2, [r5]
	ldr r3, [r6]
	ldr r0, [r2, #0x2c]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r3, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r1, [r5]
	adds r1, #0x7b
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, _08036BBC @ =gUnk_080C9160
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08036BBC @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r6]
	b _08036C6E
	.align 2, 0
_08036BBC: .4byte gUnk_080C9160
_08036BC0:
	subs r2, r4, #1
	lsls r0, r2, #2
	ldr r3, [sp, #8]
	adds r0, r3, r0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x7b
	lsls r1, r4, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x7b
	ldrb r4, [r5]
	ldrb r3, [r0]
	adds r7, r1, #0
	ldr r6, [sp, #4]
	adds r6, #0xc
	mov sb, r2
	cmp r4, r3
	beq _08036C0E
	subs r0, r3, r4
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	ble _08036BFE
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	ble _08036C0E
	subs r0, r3, r2
	b _08036C0C
_08036BFE:
	mov r2, r8
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _08036C0E
	adds r0, r3, r2
_08036C0C:
	strb r0, [r5]
_08036C0E:
	mov r3, sb
	lsls r4, r3, #2
	adds r4, r6, r4
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _08036C8C @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r4]
	adds r5, r6, r7
	ldr r1, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08036C8C @ =gUnk_080C9160
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r4]
	ldr r1, [r5]
_08036C6E:
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
_08036C78:
	mov r4, sb
	cmp r4, #0
	beq _08036C80
	b _08036B1C
_08036C80:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036C8C: .4byte gUnk_080C9160

	thumb_func_start sub_08036C90
sub_08036C90: @ 0x08036C90
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r2, [r0]
	cmp r2, #4
	bne _08036CDC
	adds r3, r4, #0
	adds r3, #0x81
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08036CDC
	movs r1, #0
	strb r2, [r4, #0xd]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	ldr r1, _08036CFC @ =gUnk_080CF124
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0x7e
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #5
	bne _08036D42
	movs r0, #0xff
	strb r0, [r3]
_08036CDC:
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08036D14
	ldrb r1, [r2]
	cmp r1, #1
	beq _08036D00
	cmp r1, #3
	beq _08036D0A
	b _08036D42
	.align 2, 0
_08036CFC: .4byte gUnk_080CF124
_08036D00:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1e
	strb r0, [r1]
	b _08036D42
_08036D0A:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xa
	strb r0, [r1]
	b _08036D42
_08036D14:
	ldr r0, _08036D2C @ =gUnk_02034350
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036D30
	adds r0, r4, #0
	adds r0, #0x79
	strb r3, [r0]
	b _08036D42
	.align 2, 0
_08036D2C: .4byte gUnk_02034350
_08036D30:
	ldr r0, _08036D44 @ =gUnk_080CF10C
	bl sub_080028F4
	ldr r1, _08036D48 @ =gUnk_080CF110
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
_08036D42:
	pop {r4, pc}
	.align 2, 0
_08036D44: .4byte gUnk_080CF10C
_08036D48: .4byte gUnk_080CF110

	thumb_func_start sub_08036D4C
sub_08036D4C: @ 0x08036D4C
	mov ip, r0
	mov r1, ip
	adds r1, #0x82
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	mov r2, ip
	adds r2, #0x84
	ldr r1, [r2]
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0xff
	strb r0, [r1, #4]
	mov r0, ip
	strb r3, [r0, #0xd]
	bx lr

	thumb_func_start sub_08036D70
sub_08036D70: @ 0x08036D70
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	strb r1, [r4, #0xd]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, _08036D98 @ =gUnk_080CF134
	bl sub_080028F4
	ldr r1, _08036D9C @ =gUnk_080CF138
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, #0x79
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08036D98: .4byte gUnk_080CF134
_08036D9C: .4byte gUnk_080CF138

	thumb_func_start sub_08036DA0
sub_08036DA0: @ 0x08036DA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	bne _08036DF0
	ldr r0, _08036DD0 @ =gUnk_02034350
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036DD4
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	b _08036DF8
	.align 2, 0
_08036DD0: .4byte gUnk_02034350
_08036DD4:
	ldr r0, _08036DE8 @ =gUnk_080CF13C
	bl sub_080028F4
	ldr r1, _08036DEC @ =gUnk_080CF13F
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x78
	strb r1, [r0]
	b _08036DF8
	.align 2, 0
_08036DE8: .4byte gUnk_080CF13C
_08036DEC: .4byte gUnk_080CF13F
_08036DF0:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
_08036DF8:
	adds r0, r4, #0
	bl sub_08036D4C
	pop {r4, pc}

	thumb_func_start sub_08036E00
sub_08036E00: @ 0x08036E00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xd]
	strb r2, [r4, #0xb]
	adds r7, r4, #0
	adds r7, #0x81
	movs r0, #0xff
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r6, r4, #0
	adds r6, #0x84
	ldr r0, [r6]
	strb r2, [r0, #2]
	movs r0, #0x7c
	adds r0, r0, r4
	mov r8, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _08036E3E
	adds r0, r4, #0
	adds r0, #0x7d
	strb r2, [r0]
	b _08036F00
_08036E3E:
	cmp r5, #4
	bne _08036ECC
	str r2, [sp]
	bl Random
	movs r1, #3
	mov sb, r1
	ands r0, r1
	ldr r2, [sp]
	cmp r0, #0
	beq _08036E62
	ldr r0, _08036E84 @ =gUnk_02034350
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036E8C
_08036E62:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x3c
	strb r0, [r1]
	strh r2, [r4, #0x2a]
	ldr r0, [r6]
	strb r5, [r0]
	ldr r0, _08036E88 @ =0x00000159
	bl PlaySFX
	b _08036F00
	.align 2, 0
_08036E84: .4byte gUnk_02034350
_08036E88: .4byte 0x00000159
_08036E8C:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #4
	bne _08036ECC
	adds r0, r4, #0
	adds r0, #0x7e
	strb r2, [r0]
	bl Random
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	ldr r0, [r6]
	ldrb r0, [r0, #5]
	cmp r0, r1
	beq _08036EB0
	strb r1, [r7]
	b _08036EB8
_08036EB0:
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r7]
_08036EB8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #3
	ldrb r0, [r0]
	strb r0, [r1, #5]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036F00
_08036ECC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _08036F0C @ =gUnk_080CF147
	cmp r0, #0
	bne _08036EDE
	ldr r1, _08036F10 @ =gUnk_080CF142
_08036EDE:
	adds r2, r4, #0
	adds r2, #0x7e
	ldrb r0, [r2]
	adds r0, r1, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08036F00
	movs r0, #0
	strb r0, [r2]
_08036F00:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036F0C: .4byte gUnk_080CF147
_08036F10: .4byte gUnk_080CF142

	thumb_func_start sub_08036F14
sub_08036F14: @ 0x08036F14
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_0801D2B4
	movs r5, #0
	adds r7, r4, #0
_08036F28:
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	adds r5, #1
	cmp r5, #3
	bls _08036F28
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r5, r0, #1
	cmp r5, #0
	beq _08036F5E
_08036F48:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	subs r5, #1
	cmp r5, #0
	bne _08036F48
_08036F5E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08036F60
sub_08036F60: @ 0x08036F60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #4
	beq _08036FA8
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08036FA8
	adds r3, r2, #0
	adds r3, #0x76
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, #0x9b
	bhi _08036FA0
	strb r4, [r2, #0xe]
	b _08036FA8
_08036FA0:
	cmp r0, #0xa4
	bls _08036FA8
	movs r0, #0xff
	strb r0, [r2, #0xe]
_08036FA8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08036FAC
sub_08036FAC: @ 0x08036FAC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08036FD0 @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08036FDE
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08036FD8
	ldr r0, _08036FD4 @ =0x00000163
	bl PlaySFX
	b _08036FDE
	.align 2, 0
_08036FD0: .4byte gUnk_030010A0
_08036FD4: .4byte 0x00000163
_08036FD8:
	ldr r0, _08036FE0 @ =0x000001B1
	bl PlaySFX
_08036FDE:
	pop {pc}
	.align 2, 0
_08036FE0: .4byte 0x000001B1

	thumb_func_start sub_08036FE4
sub_08036FE4: @ 0x08036FE4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037048
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037048
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r3, [r0]
	adds r4, r0, #0
	cmp r3, #0
	beq _08037048
	adds r0, #2
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	beq _0803702C
	cmp r0, #0
	bne _08037022
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r5, [r1]
	adds r0, r3, r5
	b _0803702A
_08037022:
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, r0, r3
_0803702A:
	strh r0, [r1]
_0803702C:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803703C
	cmp r0, #3
	beq _08037042
	b _08037048
_0803703C:
	ldrh r0, [r4]
	subs r0, #1
	b _08037046
_08037042:
	ldrh r0, [r4]
	subs r0, #2
_08037046:
	strh r0, [r4]
_08037048:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803704C
sub_0803704C: @ 0x0803704C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08037070
	ldr r0, _0803706C @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08037084
	.align 2, 0
_0803706C: .4byte gUnk_080012C8
_08037070:
	ldr r4, _08037088 @ =gUnk_080CF244
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08037084:
	pop {r4, r5, pc}
	.align 2, 0
_08037088: .4byte gUnk_080CF244

	thumb_func_start sub_0803708C
sub_0803708C: @ 0x0803708C
	push {lr}
	ldr r2, _080370A0 @ =gUnk_080CF25C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080370A0: .4byte gUnk_080CF25C

	thumb_func_start sub_080370A4
sub_080370A4: @ 0x080370A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08037110
	movs r0, #6
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0803710C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	b _0803711E
	.align 2, 0
_0803710C: .4byte gRoomControls
_08037110:
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0803711E
	adds r0, r5, #0
	bl sub_08037408
_0803711E:
	ldr r1, _08037128 @ =gUnk_080CF244
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037128: .4byte gUnk_080CF244

	thumb_func_start sub_0803712C
sub_0803712C: @ 0x0803712C
	push {lr}
	ldr r2, _08037140 @ =gUnk_080CF278
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037140: .4byte gUnk_080CF278

	thumb_func_start sub_08037144
sub_08037144: @ 0x08037144
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037418
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	movs r0, #0x30
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803715C
sub_0803715C: @ 0x0803715C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037418
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08037176
	adds r0, r4, #0
	bl sub_0806F4E8
	b _0803718A
_08037176:
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0803718A
	adds r0, r4, #0
	bl sub_08037408
_0803718A:
	pop {r4, pc}

	thumb_func_start sub_0803718C
sub_0803718C: @ 0x0803718C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xe]
	cmp r4, #0
	bne _080371DA
	bl sub_08037418
	movs r0, #1
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x62
	strb r4, [r0]
	adds r0, #0x12
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080371EC @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_080371DA:
	adds r0, r5, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080371F0
	adds r0, r5, #0
	bl sub_0806F3E4
	b _080371F6
	.align 2, 0
_080371EC: .4byte gRoomControls
_080371F0:
	adds r0, r5, #0
	bl sub_08037408
_080371F6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080371F8
sub_080371F8: @ 0x080371F8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08037210 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803720E
	adds r0, r2, #0
	bl sub_08037408
_0803720E:
	pop {pc}
	.align 2, 0
_08037210: .4byte gLinkState

	thumb_func_start nullsub_161
nullsub_161: @ 0x08037214
	bx lr
	.align 2, 0

	thumb_func_start sub_08037218
sub_08037218: @ 0x08037218
	push {lr}
	bl sub_08037408
	pop {pc}

	thumb_func_start sub_08037220
sub_08037220: @ 0x08037220
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1c]
	ldrh r0, [r5, #0x32]
	adds r0, #3
	strh r0, [r5, #0x32]
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _0803727C @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x74
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	adds r0, r5, #0
	movs r1, #5
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803727C: .4byte gRoomControls

	thumb_func_start sub_08037280
sub_08037280: @ 0x08037280
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r0, r5, #0
	bl sub_080002A0
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	beq _080372CC
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080372E4 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r5, #0
	bl sub_08037408
_080372CC:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x40
	bl sub_08049F64
	cmp r0, #0
	beq _080372E2
	movs r0, #2
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
_080372E2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080372E4: .4byte gRoomControls

	thumb_func_start sub_080372E8
sub_080372E8: @ 0x080372E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r3, r5, #0
	adds r3, #0x62
	ldr r2, _08037370 @ =gUnk_080CF290
	ldrb r1, [r5, #0xe]
	movs r6, #3
	adds r0, r6, #0
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0803736E
	strb r6, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r3]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xa0
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08037374 @ =gUnk_080FD34C
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08037378 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0803736E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037370: .4byte gUnk_080CF290
_08037374: .4byte gUnk_080FD34C
_08037378: .4byte gRoomControls

	thumb_func_start sub_0803737C
sub_0803737C: @ 0x0803737C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, _080373A8 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080373A6
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r1, _080373AC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_080373A6:
	pop {r4, pc}
	.align 2, 0
_080373A8: .4byte 0xFFFF0000
_080373AC: .4byte gLinkEntity

	thumb_func_start sub_080373B0
sub_080373B0: @ 0x080373B0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080373C4
	movs r0, #5
	strb r0, [r1, #0xc]
_080373C4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080373C8
sub_080373C8: @ 0x080373C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080373DC
	adds r0, r4, #0
	bl sub_08037408
_080373DC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080373E0
sub_080373E0: @ 0x080373E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080373F2
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080373F2:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08037406
	adds r0, r4, #0
	bl sub_08037408
_08037406:
	pop {r4, pc}

	thumb_func_start sub_08037408
sub_08037408: @ 0x08037408
	push {lr}
	movs r1, #5
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_08037418
sub_08037418: @ 0x08037418
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08037464 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _08037468 @ =0x00004067
	cmp r0, r1
	bne _08037460
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	bl sub_0805E780
_08037460:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037464: .4byte gRoomControls
_08037468: .4byte 0x00004067

	thumb_func_start sub_0803746C
sub_0803746C: @ 0x0803746C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037488 @ =gUnk_080CF294
	bl sub_0800129E
	movs r3, #0x15
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08037488: .4byte gUnk_080CF294

	thumb_func_start sub_0803748C
sub_0803748C: @ 0x0803748C
	push {lr}
	ldr r2, _080374A0 @ =gUnk_080CF2AC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080374A0: .4byte gUnk_080CF2AC

	thumb_func_start sub_080374A4
sub_080374A4: @ 0x080374A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x87
	bne _080374D4
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bne _080374BC
	adds r0, r4, #0
	bl sub_08037ACC
_080374BC:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08037B48
	b _08037534
_080374D4:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #6
	beq _0803752E
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x27
	bne _080374F2
	cmp r2, #0x80
	bne _080374F2
	adds r0, r4, #0
	bl sub_08037A14
	b _08037534
_080374F2:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037534
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	beq _08037534
	movs r0, #4
	strb r0, [r4, #0xe]
	b _08037534
_0803752E:
	adds r0, r4, #0
	bl sub_08037A58
_08037534:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037546
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037546:
	ldr r1, _08037550 @ =gUnk_080CF294
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037550: .4byte gUnk_080CF294

	thumb_func_start nullsub_162
nullsub_162: @ 0x08037554
	bx lr
	.align 2, 0

	thumb_func_start sub_08037558
sub_08037558: @ 0x08037558
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08037794
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037580
sub_08037580: @ 0x08037580
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037810
	cmp r0, #0
	bne _080375A2
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080375A2
	adds r0, r4, #0
	bl sub_080377B0
_080375A2:
	pop {r4, pc}

	thumb_func_start sub_080375A4
sub_080375A4: @ 0x080375A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _080375F4
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	bne _080375F4
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080375D2
	adds r0, r4, #0
	bl sub_08037794
	b _080375F4
_080375D2:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080375F4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080375F4
	adds r0, r4, #0
	bl sub_080379BC
_080375F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080375F8
sub_080375F8: @ 0x080375F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _08037622
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037622
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_08037622:
	pop {r4, pc}

	thumb_func_start sub_08037624
sub_08037624: @ 0x08037624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_08037914
	cmp r0, #0
	bne _0803768E
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037652
	adds r0, r4, #0
	bl sub_08037794
	b _0803768E
_08037652:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803767C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_080379BC
	b _0803768E
_0803767C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_0803797C
_0803768E:
	pop {r4, pc}

	thumb_func_start sub_08037690
sub_08037690: @ 0x08037690
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080376B6
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08037794
	b _080376CC
_080376B6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080376CC
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x27
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AEF88
_080376CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080376D0
sub_080376D0: @ 0x080376D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080379EC
	cmp r0, #0
	bne _0803773A
	bl sub_08077B2C
	ldr r2, _08037724 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08037728 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	adds r0, r4, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803773A
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803772C
	adds r0, r4, #0
	bl sub_08037A58
	b _0803773A
	.align 2, 0
_08037724: .4byte gLinkState
_08037728: .4byte gLinkEntity
_0803772C:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08037B10
_0803773A:
	pop {r4, pc}

	thumb_func_start sub_0803773C
sub_0803773C: @ 0x0803773C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037758
	adds r0, r4, #0
	bl sub_08037794
_08037758:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803775C
sub_0803775C: @ 0x0803775C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037790
	movs r0, #0x42
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0803778A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0804A4E4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08037C0C
_0803778A:
	adds r0, r5, #0
	bl sub_0805E7BC
_08037790:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08037794
sub_08037794: @ 0x08037794
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x74
	movs r1, #0x1e
	strh r1, [r2]
	subs r2, #0x35
	movs r1, #0x26
	strb r1, [r2]
	ldrb r1, [r0, #0x14]
	bl sub_080042AC
	pop {pc}

	thumb_func_start sub_080377B0
sub_080377B0: @ 0x080377B0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080377F8
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080377F8
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080377FE
_080377F8:
	movs r0, #0x18
	ands r5, r0
	strb r5, [r4, #0x15]
_080377FE:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, r5, pc}

	thumb_func_start sub_08037810
sub_08037810: @ 0x08037810
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	bne _080378A8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080378AC
	ldr r6, _080378A4 @ =gUnk_020000B0
	ldr r0, [r6]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	movs r3, #0x40
	bl sub_0806FCB8
	cmp r0, #0
	beq _080378AC
	ldr r1, [r6]
	adds r0, r5, #0
	bl sub_080045C4
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	adds r0, #6
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xc
	bhi _080378AC
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r1, [r6]
	adds r0, r5, #0
	bl sub_080045C4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, [r6]
	ldrh r1, [r2, #0x2e]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r3, r5, #0
	adds r3, #0x7a
	strh r0, [r3]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_080042AC
	movs r0, #1
	b _080378AE
	.align 2, 0
_080378A4: .4byte gUnk_020000B0
_080378A8:
	subs r0, #1
	strb r0, [r1]
_080378AC:
	movs r0, #0
_080378AE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080378B0
sub_080378B0: @ 0x080378B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803790C
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _08037910
	ldr r5, _08037908 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_0804A044
	ldrb r1, [r4, #0x15]
	cmp r0, r1
	bne _08037910
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x18
	bl sub_0806FCB8
	cmp r0, #0
	beq _08037910
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, #0xfb
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_080042AC
	movs r0, #1
	b _08037912
	.align 2, 0
_08037908: .4byte gUnk_020000B0
_0803790C:
	subs r0, #1
	strb r0, [r1]
_08037910:
	movs r0, #0
_08037912:
	pop {r4, r5, pc}

	thumb_func_start sub_08037914
sub_08037914: @ 0x08037914
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08037970
	ldr r7, _08037950 @ =gUnk_020000B0
	ldr r0, [r7]
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x7a
	ldrh r2, [r6]
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	bne _08037954
	ldr r0, [r7]
	ldrh r1, [r0, #0x2e]
	strh r1, [r5]
	ldrh r0, [r0, #0x32]
	strh r0, [r6]
	adds r0, r4, #0
	bl sub_0803797C
	movs r0, #0
	b _08037978
	.align 2, 0
_08037950: .4byte gUnk_020000B0
_08037954:
	ldrh r1, [r5]
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	bne _08037968
	movs r0, #0
	b _08037978
_08037968:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x3c
	strb r0, [r1]
_08037970:
	adds r0, r4, #0
	bl sub_08037794
	movs r0, #1
_08037978:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803797C
sub_0803797C: @ 0x0803797C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r2, [r2]
	adds r3, r5, #0
	adds r3, #0x7a
	ldrh r3, [r3]
	bl sub_080045D4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _080379BA
	strb r0, [r5, #0x14]
	adds r1, r0, #4
	adds r0, r5, #0
	bl sub_080042AC
_080379BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080379BC
sub_080379BC: @ 0x080379BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	bl Random
	movs r1, #2
	ands r0, r1
	ldrb r1, [r4, #0x14]
	adds r1, r1, r0
	subs r1, #1
	movs r0, #3
	ands r1, r0
	strb r1, [r4, #0x14]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}

	thumb_func_start sub_080379EC
sub_080379EC: @ 0x080379EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807953C
	cmp r0, #0
	beq _08037A0E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037A0E
	adds r0, r4, #0
	bl sub_08037A58
	movs r0, #1
	b _08037A10
_08037A0E:
	movs r0, #0
_08037A10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037A14
sub_08037A14: @ 0x08037A14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x20
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #5
	strb r0, [r1]
	ldr r1, [r4, #0x4c]
	adds r0, r4, #0
	bl CopyPosition
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037A58
sub_08037A58: @ 0x08037A58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037ACC
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xf
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x3d
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08037A84
	movs r0, #0xec
	strb r0, [r3]
_08037A84:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x26
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf4
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0x30
	movs r0, #0x3c
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037ACC
sub_08037ACC: @ 0x08037ACC
	ldr r3, _08037B04 @ =gLinkState
	ldr r1, [r3, #0x30]
	ldr r2, _08037B08 @ =0xFFFFFEFF
	ands r1, r2
	str r1, [r3, #0x30]
	ldr r3, _08037B0C @ =gLinkEntity
	ldrb r2, [r3, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x3d
	movs r1, #0x1e
	strb r1, [r2]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #4
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08037B04: .4byte gLinkState
_08037B08: .4byte 0xFFFFFEFF
_08037B0C: .4byte gLinkEntity

	thumb_func_start sub_08037B10
sub_08037B10: @ 0x08037B10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08037B44 @ =gLinkEntity
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x14
	bl ModHealth
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x7a
	bl sub_0800449C
	cmp r4, #0
	bne _08037B40
	adds r0, r6, #0
	bl sub_08037A58
	adds r1, r6, #0
	adds r1, #0x76
	movs r0, #0xf0
	strb r0, [r1]
_08037B40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037B44: .4byte gLinkEntity

	thumb_func_start sub_08037B48
sub_08037B48: @ 0x08037B48
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037B88
	ldrb r0, [r4, #0xe]
	movs r2, #0
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x62
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037B88:
	adds r0, r4, #0
	adds r0, #0x80
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037BCA
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xfd
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	str r4, [r3, #0x50]
_08037BCA:
	adds r0, r4, #0
	adds r0, #0x84
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037C06
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf5
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037C06:
	str r3, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037C0C
sub_08037C0C: @ 0x08037C0C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C1E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C1E:
	adds r0, r3, #0
	adds r0, #0x84
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C2E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C2E:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08037C3A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C3A:
	pop {pc}

	thumb_func_start sub_08037C3C
sub_08037C3C: @ 0x08037C3C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	cmp r0, #0
	beq _08037C5C
	ldr r0, _08037C58 @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08037C7E
	.align 2, 0
_08037C58: .4byte gUnk_080012C8
_08037C5C:
	ldr r4, _08037C80 @ =gUnk_080CF46C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
_08037C7E:
	pop {r4, r5, pc}
	.align 2, 0
_08037C80: .4byte gUnk_080CF46C

	thumb_func_start sub_08037C84
sub_08037C84: @ 0x08037C84
	push {lr}
	ldr r2, _08037C98 @ =gUnk_080CF484
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037C98: .4byte gUnk_080CF484

	thumb_func_start sub_08037C9C
sub_08037C9C: @ 0x08037C9C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037CB0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037CB0:
	ldr r1, _08037CBC @ =gUnk_080CF46C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037CBC: .4byte gUnk_080CF46C

	thumb_func_start sub_08037CC0
sub_08037CC0: @ 0x08037CC0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037CD6
	ldrb r0, [r4, #0xb]
	bl sub_0807CD04
_08037CD6:
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x58
	bl sub_0804A7E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037CE4
sub_08037CE4: @ 0x08037CE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	bl GetProgressFlag
	cmp r0, #0
	beq _08037CF6
	bl sub_0805E780
_08037CF6:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08037E14
	pop {r4, pc}

	thumb_func_start sub_08037D0C
sub_08037D0C: @ 0x08037D0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08037D1C
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08037D26
_08037D1C:
	adds r0, r4, #0
	bl sub_08037E90
	cmp r0, #0
	bne _08037D52
_08037D26:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08037D40
	adds r0, r4, #0
	bl sub_08037E14
	b _08037D52
_08037D40:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037D52
	adds r0, r4, #0
	bl sub_08037E14
_08037D52:
	pop {r4, pc}

	thumb_func_start sub_08037D54
sub_08037D54: @ 0x08037D54
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08037DC4
	movs r0, #2
	eors r0, r1
	strb r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08037E0C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _08037E0C
	ldrb r0, [r4, #0x15]
	strb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	ldr r0, _08037DBC @ =gUnk_080CF490
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, _08037DC0 @ =0x0000FFFD
	strh r0, [r2, #0x36]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_08004488
	b _08037E0C
	.align 2, 0
_08037DBC: .4byte gUnk_080CF490
_08037DC0: .4byte 0x0000FFFD
_08037DC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037E0C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037DEE
	strb r3, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	orrs r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08037E14
	b _08037E0C
_08037DEE:
	ldr r1, _08037E10 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_08037E0C:
	pop {r4, pc}
	.align 2, 0
_08037E10: .4byte gLinkEntity

	thumb_func_start sub_08037E14
sub_08037E14: @ 0x08037E14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #8
	strb r0, [r5, #0xe]
	ldr r1, _08037E6C @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #4
	movs r0, #0x18
	ands r4, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_0808094C
	ldr r1, _08037E70 @ =0x00002004
	adds r0, r0, r1
	lsrs r3, r4, #2
	ldr r1, _08037E74 @ =gUnk_080CF498
	adds r3, r3, r1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _08037E78
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _08037E7A
	.align 2, 0
_08037E6C: .4byte gLinkEntity
_08037E70: .4byte 0x00002004
_08037E74: .4byte gUnk_080CF498
_08037E78:
	strb r4, [r5, #0x15]
_08037E7A:
	ldrb r0, [r5, #0x15]
	lsrs r4, r0, #3
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _08037E8E
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004260
_08037E8E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08037E90
sub_08037E90: @ 0x08037E90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037EA8 @ =gLinkEntity
	movs r2, #8
	bl sub_0804A044
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08037EAC
	movs r0, #0
	b _08037EC6
	.align 2, 0
_08037EA8: .4byte gLinkEntity
_08037EAC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x15]
	lsrs r0, r1, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	movs r0, #1
_08037EC6:
	pop {r4, pc}

	thumb_func_start sub_08037EC8
sub_08037EC8: @ 0x08037EC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037EE4 @ =gUnk_080CF4A0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08037EE4: .4byte gUnk_080CF4A0

	thumb_func_start sub_08037EE8
sub_08037EE8: @ 0x08037EE8
	push {lr}
	ldr r2, _08037EFC @ =gUnk_080CF4B8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037EFC: .4byte gUnk_080CF4B8

	thumb_func_start sub_08037F00
sub_08037F00: @ 0x08037F00
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037F14
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037F14:
	ldr r1, _08037F54 @ =gUnk_080CF4A0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _08037F50
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08037F46
	ldr r0, [r4, #0x20]
	asrs r0, r0, #2
_08037F46:
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08037F50:
	pop {r4, pc}
	.align 2, 0
_08037F54: .4byte gUnk_080CF4A0

	thumb_func_start sub_08037F58
sub_08037F58: @ 0x08037F58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037F6E
	ldrb r0, [r4, #0xb]
	bl sub_0807CD04
_08037F6E:
	ldrb r0, [r4, #0xa]
	movs r2, #0x58
	cmp r0, #0
	beq _08037F78
	movs r2, #0x59
_08037F78:
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_0804A7E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037F84
sub_08037F84: @ 0x08037F84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08037F9E
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
_08037F9E:
	pop {r4, pc}

	thumb_func_start sub_08037FA0
sub_08037FA0: @ 0x08037FA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	bl GetProgressFlag
	cmp r0, #0
	beq _08037FB2
	bl sub_0805E780
_08037FB2:
	adds r0, r5, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08037FE0
sub_08037FE0: @ 0x08037FE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _08037FF8
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08038046
_08037FF8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803802C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038046
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _08038046
_0803802C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038046
	movs r0, #0x40
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08038046:
	pop {r4, pc}

	thumb_func_start sub_08038048
sub_08038048: @ 0x08038048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl Random
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _08038088
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08004260
	b _0803810C
_08038088:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038098
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _080380B0
_08038098:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _080380B0
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080380B0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080380C8
	adds r0, r5, #0
	adds r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08038168
_080380C8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080380E2
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _080380E2
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	movs r0, #1
	strb r0, [r4, #0xd]
_080380E2:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080380F6
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _08038100
_080380F6:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_08038100:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0803810C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08038110
sub_08038110: @ 0x08038110
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038164
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	cmp r0, #4
	bhi _08038150
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _08038164
_08038150:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r2]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08038164:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038168
sub_08038168: @ 0x08038168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803817E
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _080381AA
_0803817E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08038196
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _080381AA
_08038196:
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080381AA:
	pop {r4, pc}

	thumb_func_start sub_080381AC
sub_080381AC: @ 0x080381AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _080381D0
	ldr r0, _080381CC @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _080381F2
	.align 2, 0
_080381CC: .4byte gUnk_080012C8
_080381D0:
	ldr r4, _080381F4 @ =gUnk_080CF4C8
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
_080381F2:
	pop {r4, r5, pc}
	.align 2, 0
_080381F4: .4byte gUnk_080CF4C8

	thumb_func_start sub_080381F8
sub_080381F8: @ 0x080381F8
	push {lr}
	ldr r2, _0803820C @ =gUnk_080CF4E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803820C: .4byte gUnk_080CF4E0

	thumb_func_start sub_08038210
sub_08038210: @ 0x08038210
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038224
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038224:
	ldr r1, _08038230 @ =gUnk_080CF4C8
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08038230: .4byte gUnk_080CF4C8

	thumb_func_start sub_08038234
sub_08038234: @ 0x08038234
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803824A
	ldrb r0, [r4, #0xb]
	bl sub_0807CD04
_0803824A:
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x58
	bl sub_0804A7E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038258
sub_08038258: @ 0x08038258
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	bl GetProgressFlag
	cmp r0, #0
	beq _0803826A
	bl sub_0805E780
_0803826A:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080383AC
	pop {r4, pc}

	thumb_func_start sub_0803827C
sub_0803827C: @ 0x0803827C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803828C
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080382BC
_0803828C:
	ldr r5, _080382B8 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_0804A044
	cmp r0, #0xff
	bne _080382B0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _080382BC
_080382B0:
	adds r0, r4, #0
	bl sub_080383E4
	b _080382E8
	.align 2, 0
_080382B8: .4byte gLinkEntity
_080382BC:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080382D6
	adds r0, r4, #0
	bl sub_080383AC
	b _080382E8
_080382D6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080382E8
	adds r0, r4, #0
	bl sub_080383AC
_080382E8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080382EC
sub_080382EC: @ 0x080382EC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038300
	movs r0, #3
	strb r0, [r1, #0xc]
_08038300:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08038304
sub_08038304: @ 0x08038304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08038334
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	cmp r0, r1
	bne _08038330
	movs r0, #0x5a
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080383AC
	b _080383AA
_08038330:
	strb r0, [r4, #0x15]
	b _080383AA
_08038334:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080383AA
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r3, [r4, #0x15]
	cmp r0, r3
	bne _08038398
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x79
	lsls r5, r1, #0x18
	lsrs r3, r5, #0x18
	adds r2, r0, #0
	movs r6, #0x7a
	adds r6, r6, r4
	mov ip, r6
	ldrb r0, [r2]
	cmp r3, r0
	bne _08038388
	ldrb r6, [r6]
	cmp r3, r6
	bne _08038388
	rsbs r0, r5, #0
	lsrs r1, r0, #0x18
_08038388:
	ldrb r0, [r2]
	mov r3, ip
	strb r0, [r3]
	strb r1, [r2]
	ldrb r0, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
_08038398:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_080383AA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080383AC
sub_080383AC: @ 0x080383AC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, #0xf8
	strh r0, [r4, #0x24]
	ldr r1, _080383E0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _080383DC
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_080383DC:
	pop {r4, pc}
	.align 2, 0
_080383E0: .4byte gLinkEntity

	thumb_func_start sub_080383E4
sub_080383E4: @ 0x080383E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldr r1, _0803842C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_0803842C: .4byte gLinkEntity

	thumb_func_start sub_08038430
sub_08038430: @ 0x08038430
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803844C @ =gUnk_080CF4F0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0803844C: .4byte gUnk_080CF4F0

	thumb_func_start sub_08038450
sub_08038450: @ 0x08038450
	push {lr}
	ldr r2, _08038464 @ =gUnk_080CF508
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038464: .4byte gUnk_080CF508

	thumb_func_start sub_08038468
sub_08038468: @ 0x08038468
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803847C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803847C:
	ldr r1, _080384B0 @ =gUnk_080CF4F0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080384D8
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x5a
	bne _080384CA
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	beq _080384BA
	cmp r0, #0x14
	bgt _080384B4
	cmp r0, #0xe
	beq _080384C0
	b _080384D8
	.align 2, 0
_080384B0: .4byte gUnk_080CF4F0
_080384B4:
	cmp r0, #0x15
	beq _080384C0
	b _080384D8
_080384BA:
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080384D8
_080384C0:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _080384D8
_080384CA:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x1d
	bne _080384D8
	adds r0, r4, #0
	bl sub_08038754
_080384D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_163
nullsub_163: @ 0x080384DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080384E0
sub_080384E0: @ 0x080384E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	movs r0, #1
	strb r0, [r6, #0xc]
	bl Random
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r6, #0x15]
	lsrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x10]
	strb r4, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	adds r0, #0x82
	strb r4, [r0]
	bl Random
	ands r0, r5
	adds r1, r6, #0
	adds r1, #0x80
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x81
	strb r4, [r0]
	subs r1, #0x41
	movs r0, #0x72
	strb r0, [r1]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08038534
sub_08038534: @ 0x08038534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08038594
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08038578
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803856A
	adds r1, #7
	b _0803856C
_0803856A:
	adds r1, #1
_0803856C:
	movs r0, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	b _0803858A
_08038578:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
_0803858A:
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _080385C8
_08038594:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080385C8
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_0803872C
	cmp r0, #0
	beq _080385C8
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_080385C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080385CC
sub_080385CC: @ 0x080385CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x60
	bl sub_0803872C
	cmp r0, #0
	beq _08038604
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _08038648
_08038604:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038648
	movs r6, #0x10
	strb r6, [r4, #0xf]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08038622
	adds r0, r4, #0
	bl sub_0806FCAC
	b _08038638
_08038622:
	ldrb r5, [r4, #0x14]
	bl Random
	ands r0, r6
	cmp r0, #0
	beq _08038632
	adds r1, r5, #2
	b _08038634
_08038632:
	adds r1, r5, #6
_08038634:
	movs r0, #7
	ands r0, r1
_08038638:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08038648:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803864C
sub_0803864C: @ 0x0803864C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0803872C
	cmp r0, #0
	beq _08038668
	adds r0, r4, #0
	bl sub_08038754
	b _080386B4
_08038668:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080386B4
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r0, [r2]
	cmp r0, #0
	bne _08038698
	ldrh r0, [r4, #0x24]
	adds r0, #0x40
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	ble _080386B4
	movs r0, #1
	strb r0, [r2]
	b _080386B4
_08038698:
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080386AE
	adds r0, r2, #0
	subs r0, #0x50
	strh r0, [r4, #0x24]
	b _080386B4
_080386AE:
	adds r0, r4, #0
	bl sub_08038754
_080386B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080386B8
sub_080386B8: @ 0x080386B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	adds r1, r0, #0
	cmp r1, #1
	bne _08038720
	strb r1, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3f
	movs r0, #0x72
	strb r0, [r2]
	strb r1, [r4, #0xe]
	movs r0, #0x80
	strb r0, [r4, #0xf]
	strh r0, [r4, #0x24]
	subs r2, #0x16
	ldrb r1, [r2]
	subs r0, #0xb9
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0x70
	bl sub_0801D2B4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08038720
	adds r0, r4, #0
	bl sub_0806FAB0
_08038720:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038724
sub_08038724: @ 0x08038724
	push {lr}
	bl sub_08038754
	pop {pc}

	thumb_func_start sub_0803872C
sub_0803872C: @ 0x0803872C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08038750
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _08038750
	movs r0, #1
	b _08038752
_08038750:
	movs r0, #0
_08038752:
	pop {r4, r5, pc}

	thumb_func_start sub_08038754
sub_08038754: @ 0x08038754
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080387C0 @ =0x0000012B
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0x71
	bl sub_0801D2B4
	ldrb r2, [r4, #0x15]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080387C4
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #9
	adds r0, r4, #0
	bl sub_08004260
	b _080387D8
	.align 2, 0
_080387C0: .4byte 0x0000012B
_080387C4:
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_080387D8:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080387EE
	adds r0, r4, #0
	bl sub_0806FAB0
_080387EE:
	pop {r4, pc}

	thumb_func_start sub_080387F0
sub_080387F0: @ 0x080387F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _08038890
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _08038890
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08038868 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xf
	beq _08038836
	cmp r0, #0x2a
	bne _0803883A
_08038836:
	movs r0, #0x20
	strb r0, [r5]
_0803883A:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #1
	ldr r1, _0803886C @ =gUnk_080CF520
	adds r0, r0, r1
	ldrb r5, [r4, #0x15]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002CC
	cmp r0, #0xf
	beq _0803885A
	cmp r0, #0x2a
	bne _08038870
_0803885A:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	b _0803887E
	.align 2, 0
_08038868: .4byte gRoomControls
_0803886C: .4byte gUnk_080CF520
_08038870:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803887E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
_0803887E:
	ldrb r0, [r4, #0x15]
	cmp r5, r0
	beq _08038890
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08038890:
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _080388A8
	adds r0, r4, #0
	bl sub_080AEF88
	b _080388B2
_080388A8:
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806F69C
_080388B2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080388B4
sub_080388B4: @ 0x080388B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080388D0 @ =gUnk_080CF600
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080388D0: .4byte gUnk_080CF600

	thumb_func_start sub_080388D4
sub_080388D4: @ 0x080388D4
	push {lr}
	ldr r2, _080388E8 @ =gUnk_080CF618
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080388E8: .4byte gUnk_080CF618

	thumb_func_start sub_080388EC
sub_080388EC: @ 0x080388EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x43
	ldrb r0, [r6]
	cmp r0, #0
	beq _08038902
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038902:
	ldr r1, _08038948 @ =gUnk_080CF600
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803897E
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _0803897E
	ldr r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0803894C
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	b _0803897E
	.align 2, 0
_08038948: .4byte gUnk_080CF600
_0803894C:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0803897E
	adds r0, r1, #0
	adds r0, #0x12
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	ldrb r0, [r2]
	adds r0, #0x14
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
_0803897E:
	pop {r4, r5, r6, pc}

	thumb_func_start nullsub_164
nullsub_164: @ 0x08038980
	bx lr
	.align 2, 0

	thumb_func_start sub_08038984
sub_08038984: @ 0x08038984
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x13
	bl sub_080A7EE0
	adds r6, r0, #0
	cmp r6, #0
	beq _080389E6
	adds r0, r5, #0
	bl sub_0804A720
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	str r6, [r5, #0x54]
	bl Random
	movs r1, #6
	ands r0, r1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	strh r4, [r0]
	subs r0, #6
	strb r1, [r0]
	str r5, [r6, #0x50]
	strb r1, [r6, #0xa]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_08038BA8
_080389E6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080389E8
sub_080389E8: @ 0x080389E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	cmp r0, #0
	beq _08038A08
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038A68
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _08038A68
_08038A08:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038A22
	adds r0, r4, #0
	bl sub_08038BA8
	adds r0, r6, #0
	bl sub_08038C2C
	b _08038A68
_08038A22:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08038A2E
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08038A68
_08038A2E:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038A68
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r6, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08038A5C
	ldrb r5, [r6, #0x14]
	bl Random
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08038A54
	adds r1, r5, #1
	b _08038A56
_08038A54:
	adds r1, r5, #7
_08038A56:
	movs r0, #7
	ands r0, r1
	strb r0, [r6, #0x14]
_08038A5C:
	adds r0, r4, #0
	bl sub_08038BA8
	adds r0, r6, #0
	bl sub_08038C2C
_08038A68:
	adds r0, r4, #0
	bl sub_08038B90
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08038A70
sub_08038A70: @ 0x08038A70
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08038AC0
	movs r1, #3
	strb r1, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #4
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	movs r4, #0x20
	strb r4, [r5, #0xf]
	strb r1, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r6, #0
	bl sub_08038C2C
	strb r4, [r6, #0xf]
	str r7, [r6, #0x50]
	str r5, [r6, #0x54]
	b _08038AFE
_08038AC0:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038AFE
	movs r0, #0x10
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r6, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r6, #0
	movs r1, #1
	bl sub_08038C84
_08038AFE:
	adds r0, r5, #0
	bl sub_08038B90
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08038B08
sub_08038B08: @ 0x08038B08
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08038B18
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08038B5E
_08038B18:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08038B5E
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x32
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	ldr r0, _08038B60 @ =0x0000015B
	bl sub_08004488
_08038B5E:
	pop {r4, pc}
	.align 2, 0
_08038B60: .4byte 0x0000015B

	thumb_func_start sub_08038B64
sub_08038B64: @ 0x08038B64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038B8C
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #0x1f
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_08038B8C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038B90
sub_08038B90: @ 0x08038B90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038BA8
sub_08038BA8: @ 0x08038BA8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	ldr r1, _08038BEC @ =gUnk_080CF62C
	movs r5, #7
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	movs r3, #1
	strb r3, [r0]
	ldr r0, [r4, #0x54]
	adds r0, #0x82
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038BF0
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	b _08038C2A
	.align 2, 0
_08038BEC: .4byte gUnk_080CF62C
_08038BF0:
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08038C14
	ldrb r2, [r2, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r1, #1
	ands r0, r5
	movs r3, #6
	cmp r2, r0
	bne _08038C0C
	movs r3, #2
_08038C0C:
	adds r3, r3, r1
	movs r0, #6
	ands r3, r0
	b _08038C18
_08038C14:
	ldrb r3, [r2, #0x14]
	ldrb r1, [r4, #0x14]
_08038C18:
	cmp r3, r1
	beq _08038C2A
	strb r3, [r4, #0x14]
	lsls r0, r3, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
_08038C2A:
	pop {r4, r5, pc}

	thumb_func_start sub_08038C2C
sub_08038C2C: @ 0x08038C2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl Random
	ldr r1, _08038C58 @ =gUnk_080CF634
	movs r6, #7
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	ldr r0, [r5, #0x50]
	ldrb r4, [r0, #0x14]
	ldrb r0, [r5, #0x14]
	cmp r0, #0xff
	bne _08038C5C
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
	b _08038C7C
	.align 2, 0
_08038C58: .4byte gUnk_080CF634
_08038C5C:
	bl Random
	ldr r1, _08038C80 @ =gUnk_080CF63C
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	ands r4, r6
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _08038C7C
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
_08038C7C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08038C80: .4byte gUnk_080CF63C

	thumb_func_start sub_08038C84
sub_08038C84: @ 0x08038C84
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #3
	orrs r2, r0
	cmp r1, #0
	bne _08038C98
	lsrs r2, r2, #1
_08038C98:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08038CA4
sub_08038CA4: @ 0x08038CA4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08038CC8
	ldr r0, _08038CC4 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08038CF0
	.align 2, 0
_08038CC4: .4byte gUnk_080012C8
_08038CC8:
	ldr r4, _08038CF4 @ =gUnk_080CF778
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	adds r0, r5, #0
	bl sub_080391B4
_08038CF0:
	pop {r4, r5, pc}
	.align 2, 0
_08038CF4: .4byte gUnk_080CF778

	thumb_func_start sub_08038CF8
sub_08038CF8: @ 0x08038CF8
	push {lr}
	ldr r2, _08038D0C @ =gUnk_080CF790
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038D0C: .4byte gUnk_080CF790

	thumb_func_start sub_08038D10
sub_08038D10: @ 0x08038D10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08038D52
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	bne _08038D3E
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	bne _08038D3E
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xbf
	bhi _08038D46
	movs r0, #1
	strb r0, [r5]
	b _08038D46
_08038D3E:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08038D46:
	adds r0, r4, #0
	bl sub_08039218
	adds r0, r4, #0
	bl sub_08039260
_08038D52:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D64
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038D64:
	ldr r1, _08038D70 @ =gUnk_080CF778
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08038D70: .4byte gUnk_080CF778

	thumb_func_start nullsub_165
nullsub_165: @ 0x08038D74
	bx lr
	.align 2, 0

	thumb_func_start sub_08038D78
sub_08038D78: @ 0x08038D78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08038D96
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #0x30
	strb r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_08039120
	b _08038D9C
_08038D96:
	adds r0, r4, #0
	bl sub_08039140
_08038D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038DA0
sub_08038DA0: @ 0x08038DA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038DB6
	adds r0, r4, #0
	bl sub_0803901C
_08038DB6:
	adds r0, r4, #0
	bl sub_08039298
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038DC0
sub_08038DC0: @ 0x08038DC0
	push {lr}
	ldr r2, _08038DD4 @ =gUnk_080CF7AC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038DD4: .4byte gUnk_080CF7AC

	thumb_func_start sub_08038DD8
sub_08038DD8: @ 0x08038DD8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x10
	strb r1, [r0, #0xe]
	ldr r2, _08038E10 @ =gUnk_080CF7BC
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0xf]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	movs r1, #4
	bl sub_08004260
	ldr r0, _08038E14 @ =0x000001D9
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08038E10: .4byte gUnk_080CF7BC
_08038E14: .4byte 0x000001D9

	thumb_func_start sub_08038E18
sub_08038E18: @ 0x08038E18
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08038E70
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038E70
	bl sub_08079184
	adds r0, r4, #0
	bl sub_08039218
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08038E70:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038EA2
	movs r0, #0x10
	strb r0, [r4, #0xe]
	bl Random
	ldrb r3, [r4, #0x18]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1f
	movs r1, #1
	ands r1, r0
	eors r2, r1
	lsls r2, r2, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08039260
_08038EA2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038EAC
sub_08038EAC: @ 0x08038EAC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08038ED0
sub_08038ED0: @ 0x08038ED0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	bl sub_08039218
	pop {pc}

	thumb_func_start sub_08038EE0
sub_08038EE0: @ 0x08038EE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08039298
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08038F1C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038F16
	adds r0, r4, #0
	bl sub_0803901C
	b _08038F1C
_08038F16:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
_08038F1C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038F20
sub_08038F20: @ 0x08038F20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039298
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038F42
	adds r0, r4, #0
	bl sub_0803901C
_08038F42:
	pop {r4, pc}

	thumb_func_start sub_08038F44
sub_08038F44: @ 0x08038F44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08038F8C @ =gLinkEntity
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08039298
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _08038F90
	adds r0, r4, #0
	bl sub_08039120
	b _08038F9E
	.align 2, 0
_08038F8C: .4byte gLinkEntity
_08038F90:
	movs r0, #0x1f
	ands r2, r0
	cmp r2, #0
	bne _08038F9E
	adds r0, r4, #0
	bl sub_08039260
_08038F9E:
	pop {r4, pc}

	thumb_func_start sub_08038FA0
sub_08038FA0: @ 0x08038FA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08038FB8
	adds r0, r4, #0
	bl sub_08039260
_08038FB8:
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	cmp r1, #0
	beq _08038FFC
	ldr r3, _08038FF4 @ =0x0000FFFF
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08038FE0
	ldr r1, _08038FF8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08038FE0:
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	b _08039018
	.align 2, 0
_08038FF4: .4byte 0x0000FFFF
_08038FF8: .4byte gLinkEntity
_08038FFC:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803917C
	cmp r0, #0
	beq _08039018
	adds r0, r4, #0
	bl sub_0805E7BC
_08039018:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803901C
sub_0803901C: @ 0x0803901C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r3, r0, #0
	movs r5, #3
	ands r5, r3
	cmp r3, #3
	bne _08039042
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0803903C
	cmp r0, #4
	beq _08039040
	movs r5, #0
	b _08039042
_0803903C:
	movs r5, #1
	b _08039042
_08039040:
	movs r5, #2
_08039042:
	cmp r5, #1
	beq _0803906C
	cmp r5, #2
	beq _080390AA
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _08039068 @ =gUnk_080CF7BE
	lsrs r0, r3, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _080390BC
	.align 2, 0
_08039068: .4byte gUnk_080CF7BE
_0803906C:
	movs r1, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	lsrs r0, r3, #8
	ands r0, r1
	adds r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_080390C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	bl Random
	ands r0, r5
	cmp r0, #0
	beq _080390BC
	bl Random
	ands r5, r0
	movs r1, #0xeb
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08004488
	b _080390BC
_080390AA:
	movs r0, #4
	strb r0, [r4, #0xc]
	lsrs r1, r3, #0x10
	movs r0, #1
	ands r1, r0
	adds r1, #2
	adds r0, r4, #0
	bl sub_08004260
_080390BC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080390C0
sub_080390C0: @ 0x080390C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _080390E0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080390E0
	lsrs r0, r5, #0x10
	b _080390E8
_080390E0:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
_080390E8:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080390F8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080390F8
sub_080390F8: @ 0x080390F8
	push {lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803911C
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
_0803911C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039120
sub_08039120: @ 0x08039120
	push {lr}
	ldr r2, _0803913C @ =gUnk_080CF7C2
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r0, #0x24]
	adds r1, r0, #0
	adds r1, #0x7a
	strb r2, [r1]
	bl sub_0803901C
	pop {pc}
	.align 2, 0
_0803913C: .4byte gUnk_080CF7C2

	thumb_func_start sub_08039140
sub_08039140: @ 0x08039140
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	ldr r1, _08039174 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldr r0, _08039178 @ =0x0000FFFC
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xb4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_08039174: .4byte gLinkEntity
_08039178: .4byte 0x0000FFFC

	thumb_func_start sub_0803917C
sub_0803917C: @ 0x0803917C
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r3, _080391AC @ =gRoomControls
	movs r4, #0xa
	ldrsh r1, [r3, r4]
	adds r1, #0xc
	subs r0, r0, r1
	movs r1, #0x84
	lsls r1, r1, #1
	cmp r0, r1
	bhi _080391B0
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	adds r0, #0xc
	subs r1, r1, r0
	cmp r1, #0xb8
	bhi _080391B0
	movs r0, #0
	b _080391B2
	.align 2, 0
_080391AC: .4byte gRoomControls
_080391B0:
	movs r0, #1
_080391B2:
	pop {r4, pc}

	thumb_func_start sub_080391B4
sub_080391B4: @ 0x080391B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803920C
	adds r2, r5, #0
	adds r2, #0x7b
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803920C
	movs r0, #0x41
	movs r1, #2
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0803920C
	bl Random
	movs r1, #0x17
	ands r1, r0
	lsls r1, r1, #2
	ldr r0, _08039210 @ =gUnk_080CF7C4
	adds r1, r1, r0
	ldr r2, _08039214 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r3, [r2, #0xa]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0803920C:
	pop {r4, r5, pc}
	.align 2, 0
_08039210: .4byte gUnk_080CF7C4
_08039214: .4byte gRoomControls

	thumb_func_start sub_08039218
sub_08039218: @ 0x08039218
	push {lr}
	adds r2, r0, #0
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r1, _08039254 @ =gUnk_080CF824
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	ldr r1, _08039258 @ =gUnk_080CF828
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strh r1, [r0]
	subs r0, #0x20
	ldrb r0, [r0]
	cmp r0, #4
	beq _0803924C
	adds r0, r2, #0
	movs r1, #4
	bl sub_08004260
_0803924C:
	ldr r0, _0803925C @ =0x000001D9
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08039254: .4byte gUnk_080CF824
_08039258: .4byte gUnk_080CF828
_0803925C: .4byte 0x000001D9

	thumb_func_start sub_08039260
sub_08039260: @ 0x08039260
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08039290 @ =gUnk_080CF82E
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0803928E
	ldr r0, _08039294 @ =gUnk_080CF82C
	ldrb r1, [r4, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_0803928E:
	pop {r4, pc}
	.align 2, 0
_08039290: .4byte gUnk_080CF82E
_08039294: .4byte gUnk_080CF82C

	thumb_func_start sub_08039298
sub_08039298: @ 0x08039298
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _080392A8
	adds r0, r1, #0
	bl sub_08078930
_080392A8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080392AC
sub_080392AC: @ 0x080392AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080392C8 @ =gUnk_080CF8A4
	bl sub_0800129E
	movs r3, #0x12
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080392C8: .4byte gUnk_080CF8A4

	thumb_func_start sub_080392CC
sub_080392CC: @ 0x080392CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080392FC @ =gUnk_080CF8BC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803930C
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08039300
	subs r1, #0x3d
	movs r0, #0x45
	b _0803930A
	.align 2, 0
_080392FC: .4byte gUnk_080CF8BC
_08039300:
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
_0803930A:
	strb r0, [r1]
_0803930C:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	cmp r1, #0
	beq _0803933A
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08039334
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	b _0803933A
_08039334:
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_0803933A:
	pop {r4, pc}

	thumb_func_start sub_0803933C
sub_0803933C: @ 0x0803933C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x44
	bne _08039390
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #6
	bgt _08039390
	cmp r1, #4
	blt _08039390
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08039390
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	strb r0, [r5, #0x14]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0803981C
_08039390:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x9d
	bne _080393F8
	ldr r1, [r5, #0x54]
	cmp r1, #0
	bne _080393CA
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	bhi _080393EC
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #1
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _080393DC
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x1e]
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
	b _080393DC
_080393CA:
	adds r0, r1, #0
	adds r0, #0x41
	movs r4, #0
	strb r2, [r0]
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
	str r4, [r5, #0x54]
_080393DC:
	adds r0, r5, #0
	bl sub_08039A48
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x5a
	strh r0, [r1]
_080393EC:
	adds r2, r5, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080393F8:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803940A
	adds r0, r5, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803940A:
	ldr r1, _08039414 @ =gUnk_080CF8A4
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08039414: .4byte gUnk_080CF8A4

	thumb_func_start sub_08039418
sub_08039418: @ 0x08039418
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0803942E
	adds r0, r1, #0
	movs r1, #0xf3
	movs r2, #0
	bl sub_0804A7E0
	b _08039434
_0803942E:
	adds r0, r1, #0
	bl sub_0804A7D4
_08039434:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039438
sub_08039438: @ 0x08039438
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08039454
	ldr r0, _08039458 @ =gUnk_080CF8EC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08039454:
	pop {r4, pc}
	.align 2, 0
_08039458: .4byte gUnk_080CF8EC

	thumb_func_start sub_0803945C
sub_0803945C: @ 0x0803945C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x5a
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08039468
sub_08039468: @ 0x08039468
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08039470
sub_08039470: @ 0x08039470
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bne _08039494
	movs r1, #0x10
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0803949C
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0xb]
	b _0803949C
_08039494:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
_0803949C:
	movs r0, #0
	str r0, [r4, #0x54]
	adds r3, r4, #0
	adds r3, #0x3a
	ldrb r2, [r3]
	movs r1, #0xfb
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_08039A48
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x5a
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080394CC
sub_080394CC: @ 0x080394CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0x3d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08039A00
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0803950A
	adds r0, r4, #0
	bl sub_0803998C
	b _0803952A
_0803950A:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldr r1, _0803952C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803981C
_0803952A:
	pop {r4, pc}
	.align 2, 0
_0803952C: .4byte gLinkEntity

	thumb_func_start sub_08039530
sub_08039530: @ 0x08039530
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _08039568
	adds r0, r4, #0
	bl sub_08039758
	cmp r0, #0
	bne _08039568
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039568
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08039858
_08039568:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803956C
sub_0803956C: @ 0x0803956C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039758
	cmp r0, #0
	bne _0803958A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803958A
	adds r0, r4, #0
	bl sub_0803992C
_0803958A:
	pop {r4, pc}

	thumb_func_start sub_0803958C
sub_0803958C: @ 0x0803958C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039758
	cmp r0, #0
	bne _080395D4
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	beq _080395C0
	adds r0, r4, #0
	bl sub_080042B8
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080395D4
	adds r0, r4, #0
	bl sub_0803998C
	b _080395D4
_080395C0:
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0803998C
_080395D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080395D8
sub_080395D8: @ 0x080395D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08039602
	adds r0, r4, #0
	bl sub_0803998C
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x5a
	strb r0, [r1]
	movs r0, #0x7d
	bl sub_08004488
_08039602:
	pop {r4, pc}

	thumb_func_start sub_08039604
sub_08039604: @ 0x08039604
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08039624
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_08039624:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08039628
sub_08039628: @ 0x08039628
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	adds r1, r0, #0
	cmp r1, #0
	beq _0803963A
	subs r0, #1
	strb r0, [r2, #0xe]
	b _0803966A
_0803963A:
	ldrh r0, [r2, #0x36]
	adds r0, #4
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803966A
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #0xa
	strb r0, [r2, #0xe]
	strh r1, [r2, #0x36]
	adds r1, r2, #0
	adds r1, #0x7a
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080399C4
	ldr r0, _0803966C @ =0x0000014B
	bl sub_08004488
_0803966A:
	pop {pc}
	.align 2, 0
_0803966C: .4byte 0x0000014B

	thumb_func_start sub_08039670
sub_08039670: @ 0x08039670
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08039686
	adds r0, r1, #0
	bl sub_0803998C
_08039686:
	pop {pc}

	thumb_func_start sub_08039688
sub_08039688: @ 0x08039688
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080396AC
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_08039A00
	adds r0, r4, #0
	bl sub_0803998C
	b _080396BA
_080396AC:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080396BA
	adds r0, r4, #0
	bl sub_08039A20
_080396BA:
	pop {r4, pc}

	thumb_func_start sub_080396BC
sub_080396BC: @ 0x080396BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _080396E2
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080396E2
	adds r0, r4, #0
	bl sub_08039A70
_080396E2:
	pop {r4, pc}

	thumb_func_start sub_080396E4
sub_080396E4: @ 0x080396E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_080042B8
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039708
	adds r0, r4, #0
	bl sub_08039AD4
_08039708:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803970C
sub_0803970C: @ 0x0803970C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08039756
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0803973A
	adds r0, r4, #0
	bl sub_0803998C
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	movs r0, #0
	str r0, [r4, #0x54]
	b _08039740
_0803973A:
	adds r0, r4, #0
	bl sub_08039A48
_08039740:
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x3c
	strh r0, [r1]
_08039756:
	pop {r4, pc}

	thumb_func_start sub_08039758
sub_08039758: @ 0x08039758
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803976A
	subs r0, #1
	strb r0, [r5]
_0803976A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08039818
	ldrb r0, [r5]
	cmp r0, #0
	bne _08039818
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080397DC
	ldr r5, _080397D8 @ =gUnk_020000B0
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039818
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803981C
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x46
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #1
	b _0803981A
	.align 2, 0
_080397D8: .4byte gUnk_020000B0
_080397DC:
	ldr r5, _08039814 @ =gUnk_020000B0
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x48
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039818
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_080042AC
	movs r0, #1
	b _0803981A
	.align 2, 0
_08039814: .4byte gUnk_020000B0
_08039818:
	movs r0, #0
_0803981A:
	pop {r4, r5, pc}

	thumb_func_start sub_0803981C
sub_0803981C: @ 0x0803981C
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08039836
	movs r0, #0xf4
	strb r0, [r1]
_08039836:
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x45
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	ldrb r1, [r2, #0x14]
	adds r1, #8
	adds r0, r2, #0
	bl sub_080042AC
	ldr r0, _08039854 @ =0x0000012B
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08039854: .4byte 0x0000012B

	thumb_func_start sub_08039858
sub_08039858: @ 0x08039858
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080398C0
	adds r6, r0, #0
	ldrb r0, [r5, #0x14]
	lsls r4, r0, #3
	adds r0, r6, #4
	movs r1, #0x18
	ands r0, r1
	cmp r0, r4
	bne _0803988C
	adds r1, r5, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #3
	bne _080398B8
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r6, r6, r1
_0803988C:
	subs r0, r6, r4
	movs r1, #0x1f
	ands r0, r1
	lsrs r4, r0, #4
	movs r0, #1
	eors r4, r0
	ldr r1, _080398BC @ =gUnk_080CF8F8
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_080042AC
	lsls r0, r4, #1
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	subs r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
_080398B8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080398BC: .4byte gUnk_080CF8F8

	thumb_func_start sub_080398C0
sub_080398C0: @ 0x080398C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08039908
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08039908
	ldr r0, _08039900 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x58
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039908
	ldr r1, _08039904 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	b _08039928
	.align 2, 0
_08039900: .4byte gUnk_020000B0
_08039904: .4byte gLinkEntity
_08039908:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08039922
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	beq _08039922
	adds r0, r4, #0
	bl sub_08049EE4
	b _08039928
_08039922:
	lsrs r0, r5, #0x10
	movs r1, #0x18
	ands r0, r1
_08039928:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803992C
sub_0803992C: @ 0x0803992C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	bl Random
	ldr r2, _08039978 @ =gUnk_080CF900
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	ldr r1, _0803997C @ =gUnk_080CF910
	ldrb r2, [r4, #0x14]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r0, #0
	beq _08039980
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080042AC
	b _08039988
	.align 2, 0
_08039978: .4byte gUnk_080CF900
_0803997C: .4byte gUnk_080CF910
_08039980:
	adds r1, r2, #4
	adds r0, r4, #0
	bl sub_080042AC
_08039988:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803998C
sub_0803998C: @ 0x0803998C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	bl Random
	ldr r2, _080399C0 @ =gUnk_080CF918
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0
_080399C0: .4byte gUnk_080CF918

	thumb_func_start sub_080399C4
sub_080399C4: @ 0x080399C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080399E2
	ldrh r0, [r1, #0x2e]
	subs r0, #4
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #2
	strh r0, [r1, #0x32]
_080399E2:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080399FE
	ldrh r0, [r1, #0x2e]
	adds r0, #4
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #2
	strh r0, [r1, #0x32]
_080399FE:
	pop {r4, pc}

	thumb_func_start sub_08039A00
sub_08039A00: @ 0x08039A00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	ldr r2, _08039A1C @ =gUnk_080CF928
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r5
	adds r4, #0x7a
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_08039A1C: .4byte gUnk_080CF928

	thumb_func_start sub_08039A20
sub_08039A20: @ 0x08039A20
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08039A44
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0xfb
	bl sub_08004488
_08039A44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08039A48
sub_08039A48: @ 0x08039A48
	push {lr}
	adds r2, r0, #0
	movs r0, #9
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xa
	strh r0, [r1]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039A70
sub_08039A70: @ 0x08039A70
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa
	strb r0, [r5, #0xc]
	movs r0, #0xe0
	strh r0, [r5, #0x24]
	bl Random
	adds r4, r0, #0
	ldr r1, _08039AB8 @ =gUnk_080CF92C
	movs r0, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08039ABC
	movs r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08039ABC
	adds r0, r5, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _08039AC2
	.align 2, 0
_08039AB8: .4byte gUnk_080CF92C
_08039ABC:
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
_08039AC2:
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r1, #0x14
	adds r0, r5, #0
	bl sub_080042AC
	pop {r4, r5, pc}

	thumb_func_start sub_08039AD4
sub_08039AD4: @ 0x08039AD4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08039B28
	adds r5, r0, #0
	ldr r0, _08039B18 @ =0x0000FFFF
	cmp r5, r0
	beq _08039B20
	ldrb r2, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08039B20
	str r4, [r1, #0x50]
	movs r0, #0xb
	strb r0, [r4, #0xc]
	str r1, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #0x18
	adds r0, r4, #0
	bl sub_080042AC
	ldr r0, _08039B1C @ =0x00004067
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r5, #0
	bl sub_0800015E
	b _08039B26
	.align 2, 0
_08039B18: .4byte 0x0000FFFF
_08039B1C: .4byte 0x00004067
_08039B20:
	adds r0, r4, #0
	bl sub_08039A48
_08039B26:
	pop {r4, r5, pc}

	thumb_func_start sub_08039B28
sub_08039B28: @ 0x08039B28
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
	bl sub_080002B0
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

	thumb_func_start sub_08039BA0
sub_08039BA0: @ 0x08039BA0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08039BC4
	ldr r0, _08039BC0 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08039BD8
	.align 2, 0
_08039BC0: .4byte gUnk_080012C8
_08039BC4:
	ldr r4, _08039BDC @ =gUnk_080CFB84
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08039BD8:
	pop {r4, r5, pc}
	.align 2, 0
_08039BDC: .4byte gUnk_080CFB84

	thumb_func_start sub_08039BE0
sub_08039BE0: @ 0x08039BE0
	push {lr}
	ldr r2, _08039BF4 @ =gUnk_080CFB9C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08039BF4: .4byte gUnk_080CFB9C

	thumb_func_start sub_08039BF8
sub_08039BF8: @ 0x08039BF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0803A100
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08039C64
	movs r0, #7
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039C60 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	b _08039C72
	.align 2, 0
_08039C60: .4byte gRoomControls
_08039C64:
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08039C72
	adds r0, r5, #0
	bl sub_0803A0E0
_08039C72:
	ldr r1, _08039C7C @ =gUnk_080CFB84
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039C7C: .4byte gUnk_080CFB84

	thumb_func_start sub_08039C80
sub_08039C80: @ 0x08039C80
	push {lr}
	ldr r2, _08039C94 @ =gUnk_080CFBBC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08039C94: .4byte gUnk_080CFBBC

	thumb_func_start sub_08039C98
sub_08039C98: @ 0x08039C98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803A100
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	movs r0, #0x30
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08039CB0
sub_08039CB0: @ 0x08039CB0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803A100
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08039CCA
	adds r0, r4, #0
	bl sub_0806F4E8
	b _08039CDE
_08039CCA:
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08039CDE
	adds r0, r4, #0
	bl sub_0803A0E0
_08039CDE:
	pop {r4, pc}

	thumb_func_start sub_08039CE0
sub_08039CE0: @ 0x08039CE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xe]
	cmp r4, #0
	bne _08039D2A
	bl sub_0803A100
	movs r0, #1
	strb r0, [r5, #0xe]
	ldr r0, _08039D3C @ =0x0000FFFF
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	adds r0, #0x62
	strb r4, [r0]
	adds r0, #0x12
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039D40 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_08039D2A:
	adds r0, r5, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08039D44
	adds r0, r5, #0
	bl sub_0806F3E4
	b _08039D4A
	.align 2, 0
_08039D3C: .4byte 0x0000FFFF
_08039D40: .4byte gRoomControls
_08039D44:
	adds r0, r5, #0
	bl sub_0803A0E0
_08039D4A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08039D4C
sub_08039D4C: @ 0x08039D4C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08039D64 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08039D62
	adds r0, r2, #0
	bl sub_0803A0E0
_08039D62:
	pop {pc}
	.align 2, 0
_08039D64: .4byte gLinkState

	thumb_func_start nullsub_166
nullsub_166: @ 0x08039D68
	bx lr
	.align 2, 0

	thumb_func_start sub_08039D6C
sub_08039D6C: @ 0x08039D6C
	push {lr}
	bl sub_0803A0E0
	pop {pc}

	thumb_func_start sub_08039D74
sub_08039D74: @ 0x08039D74
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1c]
	strb r1, [r5, #0x16]
	ldrh r0, [r5, #0x32]
	adds r0, #3
	strh r0, [r5, #0x32]
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _08039DD0 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x74
	strh r0, [r1]
	ldr r0, _08039DD4 @ =0x00004060
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039DD0: .4byte gRoomControls
_08039DD4: .4byte 0x00004060

	thumb_func_start sub_08039DD8
sub_08039DD8: @ 0x08039DD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0803A100
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08039E38
	adds r0, r5, #0
	bl sub_080002A0
	ldr r1, _08039E30 @ =0x00004073
	cmp r0, r1
	bne _08039E28
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039E34 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r5, #0
	bl sub_0803A0E0
_08039E28:
	adds r0, r5, #0
	bl sub_08078930
	b _08039EC6
	.align 2, 0
_08039E30: .4byte 0x00004073
_08039E34: .4byte gRoomControls
_08039E38:
	ldr r0, _08039E6C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08039EC6
	ldr r2, _08039E70 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r6, #0x32
	ldrsh r2, [r2, r6]
	adds r0, r5, #0
	movs r3, #0x30
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039EC6
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08039E74
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	b _08039EC6
	.align 2, 0
_08039E6C: .4byte gLinkState
_08039E70: .4byte gLinkEntity
_08039E74:
	ldrb r1, [r5, #0xa]
	subs r1, #2
	movs r0, #0x42
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _08039EC6
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r0, r5, #0
	adds r1, r2, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08039EC8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r5, #0
	bl sub_0805E7BC
_08039EC6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039EC8: .4byte gRoomControls

	thumb_func_start sub_08039ECC
sub_08039ECC: @ 0x08039ECC
	push {lr}
	ldr r2, _08039EE0 @ =gUnk_080CFBD4
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08039EE0: .4byte gUnk_080CFBD4

	thumb_func_start sub_08039EE4
sub_08039EE4: @ 0x08039EE4
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r2, #0
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xd]
	ldrb r1, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r1
	mov r3, ip
	strb r0, [r3, #0x10]
	strh r2, [r3, #0x2a]
	ldr r0, _08039F40 @ =gUnk_080FD340
	str r0, [r3, #0x48]
	ldr r0, _08039F44 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	mov r1, ip
	adds r1, #0x76
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x74
	ldrh r0, [r0]
	movs r5, #0x2e
	ldrsh r1, [r3, r5]
	ldr r3, _08039F48 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	mov r6, ip
	movs r5, #0x32
	ldrsh r2, [r6, r5]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r2, ip
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_08039F40: .4byte gUnk_080FD340
_08039F44: .4byte gLinkEntity
_08039F48: .4byte gRoomControls

	thumb_func_start sub_08039F4C
sub_08039F4C: @ 0x08039F4C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08039F74 @ =gLinkEntity
	movs r1, #0x76
	adds r1, r1, r3
	mov ip, r1
	ldrb r2, [r0, #0x14]
	ldrb r0, [r1]
	cmp r2, r0
	beq _08039F70
	subs r0, r2, r0
	ldrb r1, [r3, #0x1e]
	adds r0, r0, r1
	movs r1, #6
	ands r0, r1
	strb r0, [r3, #0x1e]
	mov r0, ip
	strb r2, [r0]
_08039F70:
	pop {pc}
	.align 2, 0
_08039F74: .4byte gLinkEntity

	thumb_func_start sub_08039F78
sub_08039F78: @ 0x08039F78
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x36
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08039F9C
	ldrh r0, [r2, #0x2a]
	cmp r0, #0
	beq _08039FA2
_08039F9C:
	adds r0, r2, #0
	bl sub_0803A0E0
_08039FA2:
	pop {pc}

	thumb_func_start sub_08039FA4
sub_08039FA4: @ 0x08039FA4
	push {lr}
	bl sub_0803A0E0
	pop {pc}

	thumb_func_start sub_08039FAC
sub_08039FAC: @ 0x08039FAC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0803A100
	adds r3, r5, #0
	adds r3, #0x62
	ldr r2, _0803A03C @ =gUnk_080CFBE4
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0803A03A
	movs r0, #4
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r3]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xa0
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0803A040 @ =gUnk_080FD34C
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0803A044 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0803A03A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803A03C: .4byte gUnk_080CFBE4
_0803A040: .4byte gUnk_080FD34C
_0803A044: .4byte gRoomControls

	thumb_func_start sub_0803A048
sub_0803A048: @ 0x0803A048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x34]
	ldr r1, _0803A078 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0803A076
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r1, _0803A07C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0803A076:
	pop {r4, pc}
	.align 2, 0
_0803A078: .4byte 0xFFFF0000
_0803A07C: .4byte gLinkEntity

	thumb_func_start sub_0803A080
sub_0803A080: @ 0x0803A080
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A098
	movs r0, #6
	strb r0, [r4, #0xc]
_0803A098:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803A09C
sub_0803A09C: @ 0x0803A09C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEFE0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803A0B6
	adds r0, r4, #0
	bl sub_0803A0E0
_0803A0B6:
	pop {r4, pc}

	thumb_func_start sub_0803A0B8
sub_0803A0B8: @ 0x0803A0B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0803A0CA
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_0803A0CA:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0803A0DE
	adds r0, r4, #0
	bl sub_0803A0E0
_0803A0DE:
	pop {r4, pc}

	thumb_func_start sub_0803A0E0
sub_0803A0E0: @ 0x0803A0E0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	movs r2, #0
	movs r3, #0
	bl sub_0808288C
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x3c
	bl CreateFX
	bl sub_0805E780
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803A100
sub_0803A100: @ 0x0803A100
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _0803A14C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _0803A150 @ =0x00004067
	cmp r0, r1
	bne _0803A148
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	bl sub_0805E780
_0803A148:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803A14C: .4byte gRoomControls
_0803A150: .4byte 0x00004067

	thumb_func_start sub_0803A154
sub_0803A154: @ 0x0803A154
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803A16C @ =gUnk_080CFC14
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803A16C: .4byte gUnk_080CFC14

	thumb_func_start sub_0803A170
sub_0803A170: @ 0x0803A170
	push {lr}
	ldr r2, _0803A184 @ =gUnk_080CFC2C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803A184: .4byte gUnk_080CFC2C

	thumb_func_start sub_0803A188
sub_0803A188: @ 0x0803A188
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xa]
	cmp r3, #1
	bhi _0803A23E
	ldrb r0, [r4, #0xc]
	cmp r0, #0x2b
	beq _0803A210
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	ble _0803A23E
	adds r0, #4
	ldrb r0, [r0]
	cmp r0, #0x95
	beq _0803A1B2
	cmp r0, #0x8e
	bne _0803A23E
_0803A1B2:
	movs r0, #0x28
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	cmp r3, #0
	bne _0803A1CE
	movs r0, #1
	b _0803A1D0
_0803A1CE:
	movs r0, #2
_0803A1D0:
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x7d
	strb r1, [r0]
	adds r0, #3
	ldrb r2, [r0]
	ldrb r1, [r4, #0xa]
	adds r3, r0, #0
	cmp r1, #0
	bne _0803A1E8
	movs r0, #1
	b _0803A1EA
_0803A1E8:
	movs r0, #2
_0803A1EA:
	orrs r0, r2
	strb r0, [r3]
	ldr r2, [r4, #0x54]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r2, [r4, #0x74]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, _0803A20C @ =0x00000127
	bl PlaySFX
	b _0803A23E
	.align 2, 0
_0803A20C: .4byte 0x00000127
_0803A210:
	ldr r2, [r4, #0x54]
	adds r3, r4, #0
	adds r3, #0x3d
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r2, [r4, #0x74]
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #9
	bl sub_080042AC
	ldr r0, _0803A248 @ =0x00000127
	bl PlaySFX
_0803A23E:
	ldr r1, _0803A24C @ =gUnk_080CFC14
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0803A248: .4byte 0x00000127
_0803A24C: .4byte gUnk_080CFC14

	thumb_func_start nullsub_167
nullsub_167: @ 0x0803A250
	bx lr
	.align 2, 0

	thumb_func_start sub_0803A254
sub_0803A254: @ 0x0803A254
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803A270 @ =gUnk_080CFC3C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803B538
	pop {r4, pc}
	.align 2, 0
_0803A270: .4byte gUnk_080CFC3C

	thumb_func_start sub_0803A274
sub_0803A274: @ 0x0803A274
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803A2C8 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _0803A360
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0803A2CC
	movs r0, #0x38
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0x44
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x74]
	movs r0, #0x7e
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	ldr r0, [r4, #0x50]
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r1, r4, #0
	bl PositionRelative
	b _0803A310
	.align 2, 0
_0803A2C8: .4byte gUnk_03003DBC
_0803A2CC:
	movs r0, #0x38
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0x44
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x74]
	movs r0, #0x7e
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x50]
	ldr r2, _0803A34C @ =0xFFF00000
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r1, r4, #0
	bl PositionRelative
_0803A310:
	ldr r0, _0803A350 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803A354
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r3, #1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x54]
	ldrb r0, [r2, #0x18]
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x18]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08004260
	b _0803A360
	.align 2, 0
_0803A34C: .4byte 0xFFF00000
_0803A350: .4byte gUnk_030010A0
_0803A354:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0803A360:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803A364
sub_0803A364: @ 0x0803A364
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A3A0 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xd]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0xb
	bls _0803A394
	b _0803A52C
_0803A394:
	lsls r0, r1, #2
	ldr r1, _0803A3A4 @ =_0803A3A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803A3A0: .4byte gUnk_080CED6C
_0803A3A4: .4byte _0803A3A8
_0803A3A8: @ jump table
	.4byte _0803A546 @ case 0
	.4byte _0803A3D8 @ case 1
	.4byte _0803A546 @ case 2
	.4byte _0803A3FA @ case 3
	.4byte _0803A418 @ case 4
	.4byte _0803A434 @ case 5
	.4byte _0803A44E @ case 6
	.4byte _0803A468 @ case 7
	.4byte _0803A49A @ case 8
	.4byte _0803A4B2 @ case 9
	.4byte _0803A4CC @ case 10
	.4byte _0803A4FA @ case 11
_0803A3D8:
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x19]
	b _0803A546
_0803A3FA:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x19]
	b _0803A546
_0803A418:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803A42E
	b _0803A546
_0803A42E:
	movs r0, #5
	strb r0, [r4, #0xd]
	b _0803A546
_0803A434:
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	bne _0803A446
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803A546
_0803A446:
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #6
	b _0803A516
_0803A44E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A546
	movs r0, #7
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	b _0803A546
_0803A468:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #0xc
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #8
	bl sub_080042AC
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
	b _0803A546
_0803A49A:
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	movs r0, #9
	b _0803A516
_0803A4B2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A546
	movs r0, #0xa
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl sub_080042AC
	b _0803A546
_0803A4CC:
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #0xf
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _0803A546
_0803A4FA:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0803A51E
	movs r0, #0xc
_0803A516:
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0803A546
_0803A51E:
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _0803A546
_0803A52C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A546
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B4D4
_0803A546:
	pop {r4, pc}

	thumb_func_start sub_0803A548
sub_0803A548: @ 0x0803A548
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B5C0
	adds r0, r4, #0
	bl sub_080042B8
	ldr r2, _0803A588 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	bne _0803A586
	adds r0, r4, #0
	bl sub_0806F69C
_0803A586:
	pop {r4, pc}
	.align 2, 0
_0803A588: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A58C
sub_0803A58C: @ 0x0803A58C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A5C4 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803A5C8
	adds r0, r4, #0
	bl sub_0803B59C
	b _0803A5CE
	.align 2, 0
_0803A5C4: .4byte gUnk_080CED6C
_0803A5C8:
	adds r0, r4, #0
	bl sub_0806F69C
_0803A5CE:
	pop {r4, pc}

	thumb_func_start sub_0803A5D0
sub_0803A5D0: @ 0x0803A5D0
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r3, _0803A608 @ =gUnk_080CED6C
	ldr r1, [r0, #0x50]
	ldrb r1, [r1, #0xf]
	lsrs r1, r1, #4
	adds r1, #3
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #4
	strh r1, [r0, #0x36]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0
_0803A608: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A60C
sub_0803A60C: @ 0x0803A60C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A65C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A658
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0xa
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #8
	bl sub_080042AC
_0803A658:
	pop {r4, pc}
	.align 2, 0
_0803A65C: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A660
sub_0803A660: @ 0x0803A660
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	adds r5, r0, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A6A8
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803A688
	subs r0, r2, #2
	b _0803A6DC
_0803A688:
	movs r1, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldr r1, _0803A6A4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0803A6DE
	.align 2, 0
_0803A6A4: .4byte gLinkEntity
_0803A6A8:
	adds r0, r4, #0
	bl sub_0803B55C
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A6BE
	ldr r0, _0803A6E0 @ =0x00000157
	bl PlaySFX
_0803A6BE:
	ldr r2, _0803A6E4 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
_0803A6DC:
	strh r0, [r4, #0x36]
_0803A6DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803A6E0: .4byte 0x00000157
_0803A6E4: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A6E8
sub_0803A6E8: @ 0x0803A6E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B610
	cmp r0, #0
	beq _0803A6FE
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _0803A71E
_0803A6FE:
	adds r0, r4, #0
	bl sub_0803B63C
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, [r4, #0x50]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	adds r1, #8
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0803A71E
	strh r1, [r4, #0x32]
_0803A71E:
	pop {r4, pc}

	thumb_func_start sub_0803A720
sub_0803A720: @ 0x0803A720
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A73C
	movs r0, #9
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0x16
	bl sub_0803B8E8
_0803A73C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803A740
sub_0803A740: @ 0x0803A740
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0x36]
	adds r0, #4
	strh r0, [r3, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803A77E
	movs r0, #0
	strh r0, [r3, #0x36]
	movs r0, #0xa
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xe]
	ldr r1, [r3, #0x50]
	adds r1, #0x7d
	ldrb r2, [r1]
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r1]
	adds r0, r3, #0
	movs r1, #0x13
	bl sub_0803B8E8
	movs r0, #0xa
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
_0803A77E:
	pop {pc}

	thumb_func_start sub_0803A780
sub_0803A780: @ 0x0803A780
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A7AA
	adds r1, r2, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _0803A7A6
	movs r0, #6
	b _0803A7A8
_0803A7A6:
	movs r0, #0xb
_0803A7A8:
	strb r0, [r2, #0xc]
_0803A7AA:
	pop {pc}

	thumb_func_start sub_0803A7AC
sub_0803A7AC: @ 0x0803A7AC
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803A7C4
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _0803A7C8
_0803A7C4:
	movs r0, #0xc
	strb r0, [r2, #0xc]
_0803A7C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803A7CC
sub_0803A7CC: @ 0x0803A7CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A808 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803A80C
	movs r0, #0xd
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl sub_080042AC
	b _0803A812
	.align 2, 0
_0803A808: .4byte gUnk_080CED6C
_0803A80C:
	adds r0, r4, #0
	bl sub_0806F69C
_0803A812:
	pop {r4, pc}

	thumb_func_start sub_0803A814
sub_0803A814: @ 0x0803A814
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A868 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A864
	movs r0, #0xe
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x12
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0803A864:
	pop {r4, pc}
	.align 2, 0
_0803A868: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A86C
sub_0803A86C: @ 0x0803A86C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A8B4 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A8B2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B59C
_0803A8B2:
	pop {r4, pc}
	.align 2, 0
_0803A8B4: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A8B8
sub_0803A8B8: @ 0x0803A8B8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r2, _0803A904 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl sub_080042AC
	ldr r0, _0803A908 @ =0x00000153
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_0803A904: .4byte gUnk_080CED6C
_0803A908: .4byte 0x00000153

	thumb_func_start sub_0803A90C
sub_0803A90C: @ 0x0803A90C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A974 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803B55C
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A970
	movs r0, #0x11
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #4
	adds r0, #8
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl sub_080042AC
_0803A970:
	pop {r4, pc}
	.align 2, 0
_0803A974: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A978
sub_0803A978: @ 0x0803A978
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A9FC @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803B55C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803A9C2
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08004596
_0803A9C2:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x15]
	cmp r0, #0x10
	bne _0803A9F8
	movs r0, #0x12
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	ldr r2, [r4, #0x74]
	ldrb r0, [r2, #0x10]
	ands r1, r0
	strb r1, [r2, #0x10]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #3
	bl sub_080042AC
_0803A9F8:
	pop {r4, pc}
	.align 2, 0
_0803A9FC: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AA00
sub_0803AA00: @ 0x0803AA00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0803AA90 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B870
	cmp r0, #0
	bne _0803AA8E
	ldrb r1, [r4, #0xa]
	movs r0, #1
	eors r0, r1
	lsls r0, r0, #4
	adds r5, r0, #0
	adds r5, #8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803AA54
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004596
_0803AA54:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x15]
	cmp r0, r5
	beq _0803AA6E
	ldr r0, _0803AA94 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _0803AA8E
_0803AA6E:
	movs r0, #0x13
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x17
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x15]
	ldr r0, _0803AA94 @ =gLinkEntity
	ldrh r1, [r0, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl sub_080042AC
_0803AA8E:
	pop {r4, r5, pc}
	.align 2, 0
_0803AA90: .4byte gUnk_080CED6C
_0803AA94: .4byte gLinkEntity

	thumb_func_start sub_0803AA98
sub_0803AA98: @ 0x0803AA98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AB0C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B870
	cmp r0, #0
	bne _0803AB0A
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803B6F4
	cmp r0, #0
	beq _0803AB0A
	movs r0, #0x14
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08004260
	ldr r2, [r4, #0x74]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x54]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #5
	bl sub_080042AC
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
_0803AB0A:
	pop {r4, pc}
	.align 2, 0
_0803AB0C: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AB10
sub_0803AB10: @ 0x0803AB10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AB58 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AB56
	movs r0, #0x15
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_0803AB56:
	pop {r4, pc}
	.align 2, 0
_0803AB58: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AB5C
sub_0803AB5C: @ 0x0803AB5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803ABB0 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ABAC
	movs r0, #0x16
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x1a
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl sub_080042AC
_0803ABAC:
	pop {r4, pc}
	.align 2, 0
_0803ABB0: .4byte gUnk_080CED6C

	thumb_func_start sub_0803ABB4
sub_0803ABB4: @ 0x0803ABB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AC18 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AC14
	movs r0, #0x17
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
_0803AC14:
	pop {r4, pc}
	.align 2, 0
_0803AC18: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AC1C
sub_0803AC1C: @ 0x0803AC1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AC54 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803AC58
	adds r0, r4, #0
	bl sub_0803B59C
	b _0803AC5E
	.align 2, 0
_0803AC54: .4byte gUnk_080CED6C
_0803AC58:
	adds r0, r4, #0
	bl sub_0806F69C
_0803AC5E:
	pop {r4, pc}

	thumb_func_start sub_0803AC60
sub_0803AC60: @ 0x0803AC60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803ACA8 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0803ACB4
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803ACAC
	movs r0, #0x19
	strb r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	b _0803ACB6
	.align 2, 0
_0803ACA8: .4byte gUnk_080CED6C
_0803ACAC:
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803ACB8
_0803ACB4:
	subs r0, #1
_0803ACB6:
	strb r0, [r4, #0xe]
_0803ACB8:
	adds r0, r4, #0
	bl sub_0803B824
	pop {r4, pc}

	thumb_func_start sub_0803ACC0
sub_0803ACC0: @ 0x0803ACC0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	cmp r0, #4
	bhi _0803ACF0
	lsls r0, r0, #2
	ldr r1, _0803ACD8 @ =_0803ACDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803ACD8: .4byte _0803ACDC
_0803ACDC: @ jump table
	.4byte _0803AD02 @ case 0
	.4byte _0803AD1A @ case 1
	.4byte _0803AD4A @ case 2
	.4byte _0803AD5C @ case 3
	.4byte _0803AD74 @ case 4
_0803ACF0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ADA4
	movs r0, #1
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD02:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0803ADA4
	movs r0, #2
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD1A:
	ldrh r0, [r4, #0x36]
	adds r0, #4
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803ADA4
	movs r0, #0
	strh r0, [r4, #0x36]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0803B804
	b _0803ADA4
_0803AD4A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ADA4
	movs r0, #4
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD5C:
	ldrh r0, [r4, #0x36]
	subs r0, #2
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x28
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0803ADA4
	movs r0, #5
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD74:
	ldrh r0, [r4, #0x36]
	adds r0, #4
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803ADA4
	movs r0, #0
	strh r0, [r4, #0x36]
	movs r0, #0x1a
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0803B804
	b _0803ADAA
_0803ADA4:
	adds r0, r4, #0
	bl sub_0803B824
_0803ADAA:
	pop {r4, pc}

	thumb_func_start sub_0803ADAC
sub_0803ADAC: @ 0x0803ADAC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ADEC
	movs r0, #0x16
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x1a
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x74]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl sub_080042AC
	bl sub_0803B798
	b _0803ADF2
_0803ADEC:
	adds r0, r4, #0
	bl sub_0803B824
_0803ADF2:
	pop {r4, pc}

	thumb_func_start sub_0803ADF4
sub_0803ADF4: @ 0x0803ADF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AE44 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AE42
	movs r0, #0x1c
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r4, #0x18]
_0803AE42:
	pop {r4, pc}
	.align 2, 0
_0803AE44: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AE48
sub_0803AE48: @ 0x0803AE48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AEAC @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803AE82
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803AEB0
_0803AE82:
	ldr r0, [r4, #0x50]
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803AEB0
	movs r0, #0x1d
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x21
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _0803AEC0
	.align 2, 0
_0803AEAC: .4byte gUnk_080CED6C
_0803AEB0:
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	bne _0803AEC0
	adds r0, r4, #0
	bl sub_0806F69C
_0803AEC0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803AEC4
sub_0803AEC4: @ 0x0803AEC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AF14 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AF10
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B59C
_0803AF10:
	pop {r4, pc}
	.align 2, 0
_0803AF14: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AF18
sub_0803AF18: @ 0x0803AF18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	ldr r2, _0803AF4C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	pop {r4, pc}
	.align 2, 0
_0803AF4C: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AF50
sub_0803AF50: @ 0x0803AF50
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AF7A
	movs r0, #0x20
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x24
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #8
	bl sub_080042AC
_0803AF7A:
	pop {r4, pc}

	thumb_func_start sub_0803AF7C
sub_0803AF7C: @ 0x0803AF7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AF9A
	movs r0, #0x21
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_0803AF9A:
	pop {r4, pc}

	thumb_func_start sub_0803AF9C
sub_0803AF9C: @ 0x0803AF9C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0803AFAA
	subs r0, #1
	b _0803AFC4
_0803AFAA:
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803AFBE
	subs r0, r3, #2
	strh r0, [r2, #0x36]
	b _0803AFC6
_0803AFBE:
	movs r0, #0x22
	strb r0, [r2, #0xc]
	movs r0, #0xa
_0803AFC4:
	strb r0, [r2, #0xe]
_0803AFC6:
	pop {pc}

	thumb_func_start sub_0803AFC8
sub_0803AFC8: @ 0x0803AFC8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803AFDC
	movs r0, #0x23
	strb r0, [r1, #0xc]
_0803AFDC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803AFE0
sub_0803AFE0: @ 0x0803AFE0
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0x36]
	movs r2, #0x36
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _0803AFF4
	adds r0, r1, #4
	strh r0, [r3, #0x36]
	b _0803B018
_0803AFF4:
	movs r2, #0
	movs r0, #0x24
	strb r0, [r3, #0xc]
	movs r0, #0xf0
	strb r0, [r3, #0xe]
	adds r1, r3, #0
	adds r1, #0x84
	movs r0, #3
	strb r0, [r1]
	strh r2, [r3, #0x36]
	movs r0, #0xa0
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
_0803B018:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B01C
sub_0803B01C: @ 0x0803B01C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r1, r0, #1
	strb r1, [r2, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803B032
	movs r0, #0x25
	strb r0, [r2, #0xc]
	b _0803B048
_0803B032:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x46
	bls _0803B048
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0803B048
	adds r0, r2, #0
	bl sub_0803B724
_0803B048:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B04C
sub_0803B04C: @ 0x0803B04C
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803B064
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _0803B070
_0803B064:
	movs r0, #0x26
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x54]
	movs r1, #6
	bl sub_080042AC
_0803B070:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B074
sub_0803B074: @ 0x0803B074
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803B0D0 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B0CC
	movs r0, #0x27
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x2b
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
_0803B0CC:
	pop {r4, pc}
	.align 2, 0
_0803B0D0: .4byte gUnk_080CED6C

	thumb_func_start sub_0803B0D4
sub_0803B0D4: @ 0x0803B0D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B0FE
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B59C
_0803B0FE:
	pop {r4, pc}

	thumb_func_start sub_0803B100
sub_0803B100: @ 0x0803B100
	push {lr}
	adds r2, r0, #0
	movs r0, #0x29
	strb r0, [r2, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0803B11C
	ldr r0, _0803B118 @ =gUnk_080FD364
	b _0803B11E
	.align 2, 0
_0803B118: .4byte gUnk_080FD364
_0803B11C:
	ldr r0, _0803B13C @ =gUnk_080FD374
_0803B11E:
	str r0, [r2, #0x48]
	ldr r0, [r2, #0x74]
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r0, #0x74
	movs r1, #0x20
	strb r1, [r0]
	ldr r0, [r2, #0x54]
	movs r1, #9
	bl sub_080042AC
	ldr r0, _0803B140 @ =0x0000014F
	bl PlaySFX
	pop {pc}
	.align 2, 0
_0803B13C: .4byte gUnk_080FD374
_0803B140: .4byte 0x0000014F

	thumb_func_start sub_0803B144
sub_0803B144: @ 0x0803B144
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0803B178
	movs r0, #0x2a
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x16
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0803B8E8
	movs r0, #8
	movs r1, #0
	bl sub_08080964
_0803B178:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B17C
sub_0803B17C: @ 0x0803B17C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B1B4
	movs r0, #0x2b
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #6
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #0x39
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
_0803B1B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B1B8
sub_0803B1B8: @ 0x0803B1B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803B1D4
	adds r0, r5, #0
	bl sub_08004274
	ldr r0, [r5, #0x54]
	bl sub_080042B8
_0803B1D4:
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xf4
	bhi _0803B2B8
	movs r0, #0x32
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x7e
	ldr r0, _0803B284 @ =0x000005DC
	strh r0, [r1]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _0803B23A
	ldr r0, [r5, #0x48]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldr r0, [r5, #0x48]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0803B23A:
	movs r0, #0
	movs r1, #0x5e
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0803B268
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #0x90
	strb r0, [r4, #0x15]
	ldr r0, [r5, #0x48]
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_0803B268:
	ldr r4, [r5, #0x74]
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x40
	strb r0, [r1]
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0803B288
	movs r0, #4
	b _0803B28A
	.align 2, 0
_0803B284: .4byte 0x000005DC
_0803B288:
	movs r0, #8
_0803B28A:
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0xc
	bne _0803B2CE
	movs r0, #0xb
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x74]
	adds r0, #0x7e
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r0, [r4, #0x78]
	adds r0, #0x7e
	strh r1, [r0]
	b _0803B2CE
_0803B2B8:
	adds r1, r5, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803B2CE
	adds r0, r5, #0
	bl sub_0803B6A4
_0803B2CE:
	pop {r4, r5, pc}

	thumb_func_start sub_0803B2D0
sub_0803B2D0: @ 0x0803B2D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B30A
	movs r2, #0
	movs r0, #0x2d
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x31
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x74
	strb r2, [r1]
	adds r1, #4
	strh r2, [r1]
	movs r1, #3
	bl sub_08004260
_0803B30A:
	pop {r4, pc}

	thumb_func_start sub_0803B30C
sub_0803B30C: @ 0x0803B30C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x74]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B334
	movs r0, #0x2e
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #0x13
	bl sub_0803B8E8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0803B334:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B338
sub_0803B338: @ 0x0803B338
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803B350
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _0803B358
_0803B350:
	movs r0, #0x2f
	strb r0, [r2, #0xc]
	movs r0, #0xf
	strb r0, [r2, #0xe]
_0803B358:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B35C
sub_0803B35C: @ 0x0803B35C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0803B394 @ =gUnk_080CED6C
	ldr r0, [r3, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r3, #0x36]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B390
	movs r0, #0x30
	strb r0, [r3, #0xc]
_0803B390:
	pop {pc}
	.align 2, 0
_0803B394: .4byte gUnk_080CED6C

	thumb_func_start sub_0803B398
sub_0803B398: @ 0x0803B398
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803B3E8 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803B3EC
	movs r0, #0x31
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x35
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
	b _0803B3F2
	.align 2, 0
_0803B3E8: .4byte gUnk_080CED6C
_0803B3EC:
	adds r0, r4, #0
	bl sub_0806F69C
_0803B3F2:
	pop {r4, pc}

	thumb_func_start sub_0803B3F4
sub_0803B3F4: @ 0x0803B3F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0803B440 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B47C
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x17
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0803B448
	ldr r0, _0803B444 @ =gUnk_080FD35C
	b _0803B44A
	.align 2, 0
_0803B440: .4byte gUnk_080CED6C
_0803B444: .4byte gUnk_080FD35C
_0803B448:
	ldr r0, _0803B468 @ =gUnk_080FD36C
_0803B44A:
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x50]
	ldrb r2, [r4, #0xa]
	movs r1, #2
	cmp r2, #0
	bne _0803B458
	movs r1, #1
_0803B458:
	adds r0, #0x80
	ldrb r3, [r0]
	adds r5, r0, #0
	cmp r2, #0
	bne _0803B46C
	movs r0, #0x10
	b _0803B46E
	.align 2, 0
_0803B468: .4byte gUnk_080FD36C
_0803B46C:
	movs r0, #0x20
_0803B46E:
	orrs r1, r0
	adds r0, r3, #0
	bics r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0803B59C
_0803B47C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803B480
sub_0803B480: @ 0x0803B480
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803B4B6
	movs r0, #0x2d
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0803B4B6
	ldr r0, _0803B4D0 @ =gUnk_080CFD08
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0
	bl PositionRelative
_0803B4B6:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803B4CC
	adds r0, r4, #0
	bl sub_0803B6A4
_0803B4CC:
	pop {r4, pc}
	.align 2, 0
_0803B4D0: .4byte gUnk_080CFD08

	thumb_func_start sub_0803B4D4
sub_0803B4D4: @ 0x0803B4D4
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x10
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B4E4
sub_0803B4E4: @ 0x0803B4E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x50]
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldr r1, _0803B52C @ =gUnk_080CFD0A
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r3, r0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r6, r0, #0
	adds r6, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803B530
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	movs r0, #0
	b _0803B536
	.align 2, 0
_0803B52C: .4byte gUnk_080CFD0A
_0803B530:
	strh r5, [r4, #0x2e]
	strh r6, [r4, #0x32]
	movs r0, #1
_0803B536:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803B538
sub_0803B538: @ 0x0803B538
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r3, _0803B554 @ =0xFFFF0000
	movs r2, #0
	bl PositionRelative
	ldr r1, [r4, #0x74]
	ldr r3, _0803B558 @ =0xFFFE0000
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	pop {r4, pc}
	.align 2, 0
_0803B554: .4byte 0xFFFF0000
_0803B558: .4byte 0xFFFE0000

	thumb_func_start sub_0803B55C
sub_0803B55C: @ 0x0803B55C
	push {r4, r5, lr}
	ldr r5, [r0, #0x74]
	ldr r4, [r0, #0x54]
	adds r0, r4, #0
	bl sub_080042B8
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B588
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803B59A
	adds r0, r5, #0
	movs r1, #1
	bl sub_08004260
	b _0803B59A
_0803B588:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B59A
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
_0803B59A:
	pop {r4, r5, pc}

	thumb_func_start sub_0803B59C
sub_0803B59C: @ 0x0803B59C
	push {lr}
	movs r3, #2
	strb r3, [r0, #0xc]
	ldr r2, [r0, #0x50]
	adds r1, r2, #0
	adds r1, #0x7d
	ldrb r1, [r1]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0803B5B6
	movs r0, #1
	orrs r1, r0
	b _0803B5B8
_0803B5B6:
	orrs r1, r3
_0803B5B8:
	adds r0, r2, #0
	adds r0, #0x7d
	strb r1, [r0]
	pop {pc}

	thumb_func_start sub_0803B5C0
sub_0803B5C0: @ 0x0803B5C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803B5E8 @ =gLinkEntity
	bl sub_080045C4
	adds r2, r0, #0
	cmp r2, #9
	bhi _0803B5D2
	movs r2, #0xa
_0803B5D2:
	cmp r2, #0x16
	bls _0803B5D8
	movs r2, #0x16
_0803B5D8:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0803B5F0
	ldr r1, _0803B5EC @ =gUnk_080CFD0C
	adds r0, r2, #0
	subs r0, #0xa
	b _0803B5F6
	.align 2, 0
_0803B5E8: .4byte gLinkEntity
_0803B5EC: .4byte gUnk_080CFD0C
_0803B5F0:
	ldr r1, _0803B60C @ =gUnk_080CFD0C
	movs r0, #0x16
	subs r0, r0, r2
_0803B5F6:
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, r1
	beq _0803B60A
	adds r0, r4, #0
	bl sub_08004260
_0803B60A:
	pop {r4, pc}
	.align 2, 0
_0803B60C: .4byte gUnk_080CFD0C

	thumb_func_start sub_0803B610
sub_0803B610: @ 0x0803B610
	push {r4, lr}
	ldr r4, _0803B634 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _0803B638 @ =gUnk_080CFD19
	ldrb r2, [r0, #0xa]
	adds r2, r2, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r2, #0xc
	movs r3, #8
	bl sub_0806FCB8
	pop {r4, pc}
	.align 2, 0
_0803B634: .4byte gLinkEntity
_0803B638: .4byte gUnk_080CFD19

	thumb_func_start sub_0803B63C
sub_0803B63C: @ 0x0803B63C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0803B680 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldr r1, _0803B684 @ =gUnk_080CFD19
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r5, r0, #0
	subs r5, #0xc
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B688
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	b _0803B6A0
	.align 2, 0
_0803B680: .4byte gLinkEntity
_0803B684: .4byte gUnk_080CFD19
_0803B688:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4

	thumb_func_start sub_0803B698
sub_0803B698: @ 0x0803B698
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0803B6A0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803B6A4
sub_0803B6A4: @ 0x0803B6A4
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x2c
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x14
	strb r0, [r1]
	ldr r3, [r2, #0x50]
	adds r0, r3, #0
	adds r0, #0x80
	ldrb r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0803B6C6
	movs r0, #0x10
	b _0803B6C8
_0803B6C6:
	movs r0, #0x20
_0803B6C8:
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x80
	strb r1, [r0]
	ldrb r3, [r0]
	ldrb r1, [r2, #0xa]
	adds r4, r0, #0
	cmp r1, #0
	bne _0803B6E0
	movs r0, #5
	rsbs r0, r0, #0
	b _0803B6E4
_0803B6E0:
	movs r0, #9
	rsbs r0, r0, #0
_0803B6E4:
	ands r0, r3
	strb r0, [r4]
	adds r0, r2, #0
	movs r1, #0x17
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B6F4
sub_0803B6F4: @ 0x0803B6F4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0803B710
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r1, [r0]
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _0803B71E
_0803B70C:
	movs r0, #1
	b _0803B720
_0803B710:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r1, [r0]
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _0803B70C
_0803B71E:
	movs r0, #0
_0803B720:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B724
sub_0803B724: @ 0x0803B724
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	cmp r0, #2
	bhi _0803B78E
	adds r6, r5, #0
	adds r6, #0x84
	ldrb r0, [r6]
	cmp r0, #0
	beq _0803B78E
	movs r0, #7
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0803B78E
	movs r0, #1
	strb r0, [r4, #0xb]
	bl Random
	ldr r2, _0803B790 @ =gUnk_080CFD1B
	ldrb r1, [r5, #0xa]
	adds r1, r1, r2
	movs r3, #0x70
	adds r2, r0, #0
	ands r2, r3
	ldrb r1, [r1]
	adds r2, r2, r1
	ldr r3, _0803B794 @ =gRoomControls
	ldrh r1, [r3, #6]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x5c
	ldrh r3, [r3, #8]
	adds r1, r1, r3
	strh r1, [r4, #0x32]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A30
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0803B78E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803B790: .4byte gUnk_080CFD1B
_0803B794: .4byte gRoomControls

	thumb_func_start sub_0803B798
sub_0803B798: @ 0x0803B798
	ldr r2, _0803B7F4 @ =gLinkState
	movs r1, #0
	movs r0, #0x41
	strb r0, [r2, #2]
	strb r1, [r2, #0xa]
	ldr r0, [r2, #0x30]
	ldr r1, _0803B7F8 @ =0x0000FFEF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r3, _0803B7FC @ =gLinkEntity
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r2, #0
	ldr r0, _0803B800 @ =0x0000FFF6
	strh r0, [r3, #0x36]
	movs r0, #0x10
	strb r0, [r3, #0x15]
	movs r0, #4
	strb r0, [r3, #0x14]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803B7F4: .4byte gLinkState
_0803B7F8: .4byte 0x0000FFEF
_0803B7FC: .4byte gLinkEntity
_0803B800: .4byte 0x0000FFF6

	thumb_func_start sub_0803B804
sub_0803B804: @ 0x0803B804
	push {r4, lr}
	ldr r4, _0803B820 @ =gLinkEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x1e
	strb r0, [r1]
	subs r0, #0x22
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	pop {r4, pc}
	.align 2, 0
_0803B820: .4byte gLinkEntity

	thumb_func_start sub_0803B824
sub_0803B824: @ 0x0803B824
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08077B2C
	ldr r2, _0803B864 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _0803B868 @ =gLinkEntity
	ldr r1, _0803B86C @ =gUnk_080CFD1D
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #1
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfa
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0803B864: .4byte gLinkState
_0803B868: .4byte gLinkEntity
_0803B86C: .4byte gUnk_080CFD1D

	thumb_func_start sub_0803B870
sub_0803B870: @ 0x0803B870
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x54]
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B8DC
	ldr r0, _0803B8D4 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B8DC
	movs r0, #0x18
	strb r0, [r3, #0xc]
	movs r0, #0x44
	strb r0, [r3, #0xe]
	ldrb r1, [r3, #0x18]
	subs r0, #0x48
	ands r0, r1
	strb r0, [r3, #0x18]
	ldr r1, _0803B8D8 @ =gLinkEntity
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	adds r1, #0x3d
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_0803B824
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #1
	b _0803B8E6
	.align 2, 0
_0803B8D4: .4byte gLinkState
_0803B8D8: .4byte gLinkEntity
_0803B8DC:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #0
_0803B8E6:
	pop {r4, pc}

	thumb_func_start sub_0803B8E8
sub_0803B8E8: @ 0x0803B8E8
	ldr r2, [r0, #0x54]
	adds r2, #0x3f
	strb r1, [r2]
	ldr r2, [r0, #0x74]
	adds r0, r2, #0
	adds r0, #0x3f
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0803B8F8
sub_0803B8F8: @ 0x0803B8F8
	push {lr}
	ldr r2, _0803B90C @ =gUnk_080CFD20
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803B90C: .4byte gUnk_080CFD20

	thumb_func_start sub_0803B910
sub_0803B910: @ 0x0803B910
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803B940 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B944
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x74
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0803BA8C
	b _0803B950
	.align 2, 0
_0803B940: .4byte gUnk_030010A0
_0803B944:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x80
	strb r0, [r1]
_0803B950:
	ldrb r1, [r4, #0xa]
	subs r1, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	pop {r4, pc}

	thumb_func_start sub_0803B978
sub_0803B978: @ 0x0803B978
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #5
	bhi _0803BA34
	lsls r0, r0, #2
	ldr r1, _0803B98C @ =_0803B990
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B98C: .4byte _0803B990
_0803B990: @ jump table
	.4byte _0803BA66 @ case 0
	.4byte _0803B9A8 @ case 1
	.4byte _0803B9C0 @ case 2
	.4byte _0803BA46 @ case 3
	.4byte _0803BA14 @ case 4
	.4byte _0803BA40 @ case 5
_0803B9A8:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	ldr r0, _0803BA10 @ =0x000001A9
	bl PlaySFX
_0803B9C0:
	ldrb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0803BA8C
	adds r0, r4, #0
	adds r0, #0x75
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r1, [r0]
	ldrb r0, [r5]
	orrs r0, r1
	cmp r0, #0
	bne _0803B9E0
	ldr r0, _0803BA10 @ =0x000001A9
	bl PlaySFX
_0803B9E0:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803BA66
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BA66
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	subs r0, #4
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0803BA66
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x50]
	movs r0, #3
	strb r0, [r1, #0xd]
	strb r0, [r4, #0xd]
	b _0803BA66
	.align 2, 0
_0803BA10: .4byte 0x000001A9
_0803BA14:
	movs r0, #5
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	b _0803BA46
_0803BA34:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	subs r0, #0xf
	ands r0, r1
	strb r0, [r4, #0x19]
_0803BA40:
	adds r0, r4, #0
	bl sub_08004274
_0803BA46:
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803BA8C
	adds r1, r4, #0
	adds r1, #0x75
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	bne _0803BA66
	ldr r0, _0803BA68 @ =0x000001A9
	bl PlaySFX
_0803BA66:
	pop {r4, r5, pc}
	.align 2, 0
_0803BA68: .4byte 0x000001A9

	thumb_func_start sub_0803BA6C
sub_0803BA6C: @ 0x0803BA6C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa
	bl sub_0803BA8C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803BA80
sub_0803BA80: @ 0x0803BA80
	push {lr}
	movs r1, #0xa
	bl sub_0803BA8C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803BA8C
sub_0803BA8C: @ 0x0803BA8C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r4, r6, #0
	adds r4, #0x74
	ldrb r3, [r4]
	movs r2, #0xe0
	ands r2, r3
	cmp r2, #0
	bne _0803BAEC
	cmp r3, #0
	bne _0803BAD2
	adds r2, r6, #0
	adds r2, #0x75
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0803BABA
	strb r1, [r2]
_0803BABA:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0803BAC8
	ldr r1, _0803BAC4 @ =gUnk_080CFD30
	b _0803BACA
	.align 2, 0
_0803BAC4: .4byte gUnk_080CFD30
_0803BAC8:
	ldr r1, _0803BAE8 @ =gUnk_080CFD44
_0803BACA:
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0803BAD2:
	adds r2, r6, #0
	adds r2, #0x74
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	cmp r5, r0
	bhi _0803BB18
	movs r0, #0
	strb r0, [r2]
	b _0803BB18
	.align 2, 0
_0803BAE8: .4byte gUnk_080CFD44
_0803BAEC:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0803BB18
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r4]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0803BB0C
	ldr r1, _0803BB08 @ =gUnk_080CFD58
	b _0803BB0E
	.align 2, 0
_0803BB08: .4byte gUnk_080CFD58
_0803BB0C:
	ldr r1, _0803BB78 @ =gUnk_080CFD5C
_0803BB0E:
	ldrb r0, [r6, #0xa]
	subs r0, #2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0803BB18:
	cmp r1, #0
	beq _0803BB74
	adds r0, r6, #0
	bl sub_0801D2B4
	ldr r0, [r6, #0x50]
	ldr r4, [r0, #0x78]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r5, [r0, #0x78]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r4, [r5, #0x1a]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r4, [r0, #0x54]
	ldrb r0, [r6, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r4, #0x1a]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r3, [r0, #0x54]
	ldrb r0, [r6, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	ldrb r1, [r3, #0x1a]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x1a]
_0803BB74:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803BB78: .4byte gUnk_080CFD5C

	thumb_func_start sub_0803BB7C
sub_0803BB7C: @ 0x0803BB7C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803BB94 @ =gUnk_080CFF3C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803BB94: .4byte gUnk_080CFF3C

	thumb_func_start sub_0803BB98
sub_0803BB98: @ 0x0803BB98
	push {lr}
	ldr r2, _0803BBAC @ =gUnk_080CFF54
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803BBAC: .4byte gUnk_080CFF54

	thumb_func_start sub_0803BBB0
sub_0803BBB0: @ 0x0803BBB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803BC2C
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0803BC06
	adds r0, r4, #0
	bl sub_0803C0AC
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0803BBF6
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0803BBF2
	adds r0, r2, #2
	b _0803BBF4
_0803BBF2:
	subs r0, r2, #2
_0803BBF4:
	strb r0, [r4, #0x15]
_0803BBF6:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	subs r0, r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803BF2C
	b _0803BC1E
_0803BC06:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803BC1E
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_0803BC1E:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	cmp r0, #0x10
	bls _0803BC2C
	subs r0, #0xc
	strh r0, [r1]
_0803BC2C:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}

	thumb_func_start sub_0803BC34
sub_0803BC34: @ 0x0803BC34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803BC78 @ =gUnk_080CFF6C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0803BC74
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BC74:
	pop {r4, pc}
	.align 2, 0
_0803BC78: .4byte gUnk_080CFF6C

	thumb_func_start sub_0803BC7C
sub_0803BC7C: @ 0x0803BC7C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803BC88
sub_0803BC88: @ 0x0803BC88
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0803BC90
sub_0803BC90: @ 0x0803BC90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0803BCA2
	adds r0, r4, #0
	bl sub_0804A7D4
_0803BCA2:
	pop {r4, pc}

	thumb_func_start sub_0803BCA4
sub_0803BCA4: @ 0x0803BCA4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	strb r5, [r6, #0xc]
	strb r4, [r6, #0xf]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r5, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldrh r1, [r6, #0x2e]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r6, #0x32]
	adds r1, r6, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r6, #0
	bl sub_0803BF2C
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803BD08
sub_0803BD08: @ 0x0803BD08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803BD2C
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0803BD80
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_0803BD2C:
	adds r0, r4, #0
	bl sub_0803BEE8
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803BD80
	ldr r5, _0803BD84 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x88
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _0803BD80
	ldr r0, [r5]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	adds r0, #8
	cmp r1, r0
	ble _0803BD80
	movs r1, #0
	movs r2, #2
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x81
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BD80:
	pop {r4, r5, pc}
	.align 2, 0
_0803BD84: .4byte gUnk_020000B0

	thumb_func_start sub_0803BD88
sub_0803BD88: @ 0x0803BD88
	push {lr}
	bl sub_0803BF70
	pop {pc}

	thumb_func_start sub_0803BD90
sub_0803BD90: @ 0x0803BD90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0803BDC8
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #8
	strb r0, [r4, #0xe]
	b _0803BDD4
_0803BDC8:
	adds r0, r4, #0
	bl sub_0803BF48
	adds r0, r4, #0
	bl sub_08004274
_0803BDD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803BDD8
sub_0803BDD8: @ 0x0803BDD8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BE76
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803BDFE
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803BE06
_0803BDFE:
	adds r0, r4, #0
	bl sub_0803C120
	b _0803BE70
_0803BE06:
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803BE20
	movs r0, #8
	strb r0, [r4, #0x15]
	ldr r1, _0803BE1C @ =gRoomControls
	ldrh r0, [r1, #0xa]
	subs r0, #0x20
	b _0803BE30
	.align 2, 0
_0803BE1C: .4byte gRoomControls
_0803BE20:
	movs r0, #0x18
	strb r0, [r4, #0x15]
	ldr r1, _0803BE78 @ =gRoomControls
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
_0803BE30:
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0xc]
	adds r0, #8
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	subs r1, #2
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, #0x94
	strh r0, [r4, #0x24]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
_0803BE70:
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BE76:
	pop {r4, pc}
	.align 2, 0
_0803BE78: .4byte gRoomControls

	thumb_func_start sub_0803BE7C
sub_0803BE7C: @ 0x0803BE7C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _0803BEE6
	movs r2, #1
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BEE6:
	pop {r4, r5, pc}

	thumb_func_start sub_0803BEE8
sub_0803BEE8: @ 0x0803BEE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BF28
	ldrb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _0803BF0E
	strb r0, [r4, #0x15]
_0803BF0E:
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r2, [r5]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #0x15]
	ands r0, r2
	cmp r1, r0
	beq _0803BF28
	adds r0, r4, #0
	bl sub_0803BF2C
_0803BF28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803BF2C
sub_0803BF2C: @ 0x0803BF2C
	push {lr}
	ldrb r2, [r0, #0x15]
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	adds r2, r0, #0
	adds r2, #0x81
	ldrb r2, [r2]
	adds r1, r1, r2
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803BF48
sub_0803BF48: @ 0x0803BF48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	pop {r4, pc}

	thumb_func_start sub_0803BF70
sub_0803BF70: @ 0x0803BF70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x84
	ldrb r0, [r2]
	cmp r0, #1
	beq _0803BFC0
	cmp r0, #1
	bgt _0803BF88
	cmp r0, #0
	beq _0803BF8E
	b _0803C0A2
_0803BF88:
	cmp r0, #2
	beq _0803BFEA
	b _0803C0A2
_0803BF8E:
	ldrb r1, [r5, #0xe]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0803BFA0
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r5, #0x36]
_0803BFA0:
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C0A2
	strb r3, [r2]
	movs r0, #0x18
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #2
	b _0803BFE0
_0803BFC0:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C0A2
	movs r0, #2
	strb r0, [r2]
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #4
_0803BFE0:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803BF2C
	b _0803C0A2
_0803BFEA:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #0
	bne _0803C02C
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r3, [r2]
	strb r3, [r5, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldrb r2, [r5, #0x15]
	adds r0, r2, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803C024
	movs r0, #0x10
	subs r0, r0, r2
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_0803C024:
	adds r0, r5, #0
	bl sub_0803BF2C
	b _0803C09C
_0803C02C:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C09C
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x80
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r3, [r5, #0x15]
	adds r0, r3, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803C07E
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _0803C076
	ands r3, r0
	cmp r3, #0
	beq _0803C072
	movs r0, #0x12
	b _0803C074
_0803C072:
	movs r0, #0xe
_0803C074:
	strb r0, [r4]
_0803C076:
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	movs r0, #1
	strh r0, [r6]
_0803C07E:
	ldrb r2, [r4]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	lsls r1, r1, #0x18
	ldrb r2, [r5, #0x15]
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x1c
	cmp r1, r0
	beq _0803C09C
	adds r1, r2, #4
	adds r0, r5, #0
	bl sub_08004260
_0803C09C:
	adds r0, r5, #0
	bl sub_0803BF48
_0803C0A2:
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803C0AC
sub_0803C0AC: @ 0x0803C0AC
	push {r4, r5, r6, lr}
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	beq _0803C11C
	ldr r0, _0803C0D4 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r1, [r0]
	ldr r0, _0803C0D8 @ =0x000001F3
	cmp r1, r0
	bls _0803C0DC
	movs r6, #0x56
	movs r4, #5
	movs r0, #0x64
	rsbs r0, r0, #0
	bl ModRupees
	b _0803C118
	.align 2, 0
_0803C0D4: .4byte gUnk_02002A40
_0803C0D8: .4byte 0x000001F3
_0803C0DC:
	cmp r1, #0x63
	bls _0803C0EE
	movs r6, #0x55
	movs r4, #5
	movs r0, #0x19
	rsbs r0, r0, #0
	bl ModRupees
	b _0803C118
_0803C0EE:
	movs r6, #0x54
	adds r4, r1, #0
	cmp r4, #4
	bls _0803C0F8
	movs r4, #5
_0803C0F8:
	rsbs r0, r4, #0
	bl ModRupees
	b _0803C118
_0803C100:
	movs r0, #0x1a
	adds r1, r6, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0803C116
	adds r0, r5, #0
	bl CopyPosition
_0803C116:
	subs r4, #1
_0803C118:
	cmp r4, #0
	bne _0803C100
_0803C11C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803C120
sub_0803C120: @ 0x0803C120
	adds r2, r0, #0
	movs r0, #5
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #9
	ands r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	ldrh r0, [r2, #0x36]
	adds r0, #8
	strh r0, [r2, #0x36]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C160
sub_0803C160: @ 0x0803C160
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803C17C @ =gUnk_080CFF78
	bl sub_0800129E
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0803C17C: .4byte gUnk_080CFF78

	thumb_func_start sub_0803C180
sub_0803C180: @ 0x0803C180
	push {lr}
	ldr r2, _0803C194 @ =gUnk_080CFF90
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803C194: .4byte gUnk_080CFF90

	thumb_func_start sub_0803C198
sub_0803C198: @ 0x0803C198
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C1AC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803C1AC:
	ldr r1, _0803C1D8 @ =gUnk_080CFF78
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C1D4
	adds r0, r4, #0
	bl sub_0803C5F0
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0803C1D4
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
_0803C1D4:
	pop {r4, pc}
	.align 2, 0
_0803C1D8: .4byte gUnk_080CFF78

	thumb_func_start nullsub_168
nullsub_168: @ 0x0803C1DC
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C1E0
sub_0803C1E0: @ 0x0803C1E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #5
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	subs r0, #7
	strb r1, [r0]
	adds r0, #8
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803C228
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803C690
	b _0803C232
_0803C228:
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803C4B0
_0803C232:
	pop {r4, pc}

	thumb_func_start sub_0803C234
sub_0803C234: @ 0x0803C234
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C246
	subs r0, #1
	strb r0, [r1]
_0803C246:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C292
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0xf
	bls _0803C26E
	adds r0, r4, #0
	bl sub_0803C5C4
	b _0803C2D2
_0803C26E:
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0803C28A
	bl Random
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803C28A
	adds r0, r4, #0
	bl sub_0803C624
	b _0803C2D2
_0803C28A:
	adds r0, r4, #0
	bl sub_0803C4B0
	b _0803C2D2
_0803C292:
	adds r0, r4, #0
	bl sub_0803C6F8
	cmp r0, #0
	beq _0803C2C2
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803C690
	b _0803C2D2
_0803C2C2:
	adds r0, r4, #0
	bl sub_0803C568
	cmp r0, #0
	beq _0803C2D2
	adds r0, r4, #0
	bl sub_0803C5F0
_0803C2D2:
	adds r0, r4, #0
	bl sub_0803C6DC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C2DC
sub_0803C2DC: @ 0x0803C2DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803C308
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803C4B0
	b _0803C31E
_0803C308:
	adds r0, r4, #0
	bl sub_0803C568
	cmp r0, #0
	beq _0803C31E
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_0803C31E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _0803C336
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C33A
	adds r0, r4, #0
	bl sub_0803C5F0
	b _0803C33A
_0803C336:
	adds r0, #1
	strb r0, [r4, #0xf]
_0803C33A:
	adds r0, r4, #0
	bl sub_0803C6DC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C344
sub_0803C344: @ 0x0803C344
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C3F8
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bhi _0803C3C8
	lsls r0, r1, #2
	ldr r1, _0803C36C @ =_0803C370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C36C: .4byte _0803C370
_0803C370: @ jump table
	.4byte _0803C3C8 @ case 0
	.4byte _0803C3C8 @ case 1
	.4byte _0803C3A6 @ case 2
	.4byte _0803C388 @ case 3
	.4byte _0803C3BE @ case 4
	.4byte _0803C39C @ case 5
_0803C388:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0803C3E2
_0803C39C:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _0803C3E2
_0803C3A6:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x24]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x40
	b _0803C3E0
_0803C3BE:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_0803C3C8:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x22
_0803C3E0:
	strb r1, [r4, #0xe]
_0803C3E2:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803C690
_0803C3F8:
	adds r0, r4, #0
	bl sub_0803C6DC
	pop {r4, pc}

	thumb_func_start sub_0803C400
sub_0803C400: @ 0x0803C400
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r1, r0, #0
	cmp r1, #0
	beq _0803C458
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0803C4AC
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803C450
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #2
	bhi _0803C450
	bl Random
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _0803C450
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0803C690
	adds r0, r4, #0
	bl sub_0803C6DC
	b _0803C4AC
_0803C450:
	adds r0, r4, #0
	bl sub_0803C634
	b _0803C4AC
_0803C458:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0803C46C
	cmp r0, #0x18
	beq _0803C494
	b _0803C49A
_0803C46C:
	ldrb r2, [r4, #0x14]
	lsls r0, r2, #2
	strb r0, [r4, #0x15]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x19
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0803C49A
	str r2, [r4, #0x54]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	str r4, [r2, #0x50]
	b _0803C49A
_0803C494:
	strb r1, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
_0803C49A:
	adds r0, r4, #0
	bl sub_0803C6DC
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803C4AC
	adds r0, r4, #0
	bl sub_0803C714
_0803C4AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803C4B0
sub_0803C4B0: @ 0x0803C4B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0
	strb r1, [r5, #0xf]
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803C54C
	bl Random
	ldr r1, _0803C4F0 @ =gUnk_080CFFA4
	movs r7, #7
	ands r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803C4F4
	bl Random
	adds r4, r0, #0
	movs r0, #6
	ands r4, r0
	lsls r0, r4, #2
	strb r0, [r5, #0x15]
	b _0803C556
	.align 2, 0
_0803C4F0: .4byte gUnk_080CFFA4
_0803C4F4:
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803C520
	bl Random
	ldr r2, _0803C51C @ =gUnk_080CFFAC
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	b _0803C53E
	.align 2, 0
_0803C51C: .4byte gUnk_080CFFAC
_0803C520:
	bl Random
	ldr r1, _0803C548 @ =gUnk_080CFFAC
	ands r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	ldrb r0, [r5, #0xe]
	adds r0, #0x10
	strb r0, [r5, #0xe]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0803C53E:
	adds r0, r4, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0803C554
	.align 2, 0
_0803C548: .4byte gUnk_080CFFAC
_0803C54C:
	movs r0, #0xc
	strb r0, [r5, #0xe]
	strh r1, [r5, #0x24]
	ldrb r0, [r5, #0x15]
_0803C554:
	lsrs r4, r0, #2
_0803C556:
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _0803C564
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803C690
_0803C564:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803C568
sub_0803C568: @ 0x0803C568
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C5C0
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _0803C5C0
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803C598
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl sub_0806FC80
	cmp r0, #0
	bne _0803C5BC
_0803C598:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _0803C5C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	ldrb r5, [r5, #0x14]
	cmp r0, r5
	bne _0803C5C0
_0803C5BC:
	movs r0, #1
	b _0803C5C2
_0803C5C0:
	movs r0, #0
_0803C5C2:
	pop {r4, r5, pc}

	thumb_func_start sub_0803C5C4
sub_0803C5C4: @ 0x0803C5C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803C664
	adds r4, #0x82
	movs r0, #2
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_0803C5F0
sub_0803C5F0: @ 0x0803C5F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	movs r2, #0
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	subs r0, #9
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0803C664
	adds r4, #0x82
	movs r0, #3
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C624
sub_0803C624: @ 0x0803C624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803C664
	adds r4, #0x82
	movs r0, #5
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_0803C634
sub_0803C634: @ 0x0803C634
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803C664
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0xe]
	adds r4, #0x82
	movs r0, #4
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_0803C664
sub_0803C664: @ 0x0803C664
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	movs r0, #0
	strh r1, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0803C690
	pop {pc}

	thumb_func_start sub_0803C690
sub_0803C690: @ 0x0803C690
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x14]
	lsrs r2, r0, #1
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0803C6D2
	lsls r0, r0, #2
	ldr r1, _0803C6AC @ =_0803C6B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C6AC: .4byte _0803C6B0
_0803C6B0: @ jump table
	.4byte _0803C6D2 @ case 0
	.4byte _0803C6C8 @ case 1
	.4byte _0803C6D0 @ case 2
	.4byte _0803C6CC @ case 3
	.4byte _0803C6C8 @ case 4
	.4byte _0803C6CC @ case 5
_0803C6C8:
	adds r2, #4
	b _0803C6D2
_0803C6CC:
	adds r2, #8
	b _0803C6D2
_0803C6D0:
	adds r2, #0xc
_0803C6D2:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0803C6DC
sub_0803C6DC: @ 0x0803C6DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C6EA
	strh r0, [r4, #0x24]
_0803C6EA:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0803C6F8
sub_0803C6F8: @ 0x0803C6F8
	ldr r2, _0803C710 @ =gUnk_080CFFBC
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r0, #0x2a]
	ldrh r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803C710: .4byte gUnk_080CFFBC

	thumb_func_start sub_0803C714
sub_0803C714: @ 0x0803C714
	push {lr}
	ldr r1, [r0, #0x54]
	ldrb r3, [r0, #0x14]
	ldr r2, _0803C734 @ =gUnk_080CFFC4
	adds r3, r3, r2
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {pc}
	.align 2, 0
_0803C734: .4byte gUnk_080CFFC4

	thumb_func_start sub_0803C738
sub_0803C738: @ 0x0803C738
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803C754 @ =gUnk_080D0110
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0803C754: .4byte gUnk_080D0110

	thumb_func_start sub_0803C758
sub_0803C758: @ 0x0803C758
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0803C76C
	cmp r0, #7
	beq _0803C76C
	adds r0, r4, #0
	bl sub_0803CAD0
_0803C76C:
	ldr r0, _0803C780 @ =gUnk_080D0128
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0803C780: .4byte gUnk_080D0128

	thumb_func_start sub_0803C784
sub_0803C784: @ 0x0803C784
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _0803C7A2
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_0803CBAC
	b _0803C7FA
_0803C7A2:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x43
	bne _0803C7FA
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0803C7FA
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #0x10
	eors r0, r1
	lsls r1, r0, #3
	ldr r3, _0803C818 @ =gUnk_080C9160
	lsls r0, r0, #4
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _0803C7D8
	adds r0, #0x1f
_0803C7D8:
	asrs r0, r0, #5
	ldrh r5, [r2, #0x2e]
	adds r0, r0, r5
	strh r0, [r2, #0x2e]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0803C7F2
	adds r0, #0x1f
_0803C7F2:
	asrs r1, r0, #5
	ldrh r0, [r2, #0x32]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
_0803C7FA:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C80C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803C80C:
	ldr r1, _0803C81C @ =gUnk_080D0110
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0803C818: .4byte gUnk_080C9160
_0803C81C: .4byte gUnk_080D0110

	thumb_func_start sub_0803C820
sub_0803C820: @ 0x0803C820
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0803C83C
	ldr r0, _0803C840 @ =gUnk_080D0148
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803C83C:
	pop {r4, pc}
	.align 2, 0
_0803C840: .4byte gUnk_080D0148

	thumb_func_start sub_0803C844
sub_0803C844: @ 0x0803C844
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C850
sub_0803C850: @ 0x0803C850
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	cmp r0, #0
	beq _0803C864
	adds r1, r2, #0
	adds r1, #0x62
	ldrb r1, [r1]
	adds r0, #0x62
	strb r1, [r0]
_0803C864:
	adds r0, r2, #0
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0803C86C
sub_0803C86C: @ 0x0803C86C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CBAC
	movs r0, #0
	str r0, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C87C
sub_0803C87C: @ 0x0803C87C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0803C8B4
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0803C8B8 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, #2
	strh r1, [r0]
_0803C8B4:
	pop {r4, pc}
	.align 2, 0
_0803C8B8: .4byte 0x0000FFFE

	thumb_func_start sub_0803C8BC
sub_0803C8BC: @ 0x0803C8BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0803CA84
	adds r0, r4, #0
	bl sub_0803CA4C
	cmp r0, #0
	beq _0803C8E0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0803C8E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C8E4
sub_0803C8E4: @ 0x0803C8E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C914
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x42
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_0803C914:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C918
sub_0803C918: @ 0x0803C918
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CB04
	cmp r0, #0
	bne _0803C94E
	adds r0, r4, #0
	bl sub_0803CA4C
	cmp r0, #0
	bne _0803C946
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x43
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_080042AC
	b _0803C94E
_0803C946:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0803CA84
_0803C94E:
	pop {r4, pc}

	thumb_func_start sub_0803C950
sub_0803C950: @ 0x0803C950
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C97A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
_0803C97A:
	pop {r4, pc}

	thumb_func_start sub_0803C97C
sub_0803C97C: @ 0x0803C97C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C9D2
	adds r0, r4, #0
	bl sub_0803CB64
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x42
	strb r0, [r1]
	bl Random
	movs r1, #1
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x79
	cmp r0, #0
	beq _0803C9C2
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803C9C2
	movs r0, #0xf
	strb r0, [r4, #0xe]
	strb r1, [r2]
	b _0803C9D2
_0803C9C2:
	movs r1, #0
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r2]
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	bl sub_080042AC
_0803C9D2:
	pop {r4, pc}

	thumb_func_start sub_0803C9D4
sub_0803C9D4: @ 0x0803C9D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803CA08
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803C9F6
	adds r0, r2, #0
	bl sub_0803CB34
	b _0803CA08
_0803C9F6:
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0xb4
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl sub_080042AC
_0803CA08:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803CA0C
sub_0803CA0C: @ 0x0803CA0C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0803CA3E
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _0803CA3E
	ldrb r1, [r4, #0x14]
	adds r1, #0x14
	adds r0, r4, #0
	bl sub_080042AC
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0803CA3E:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0803CC08
	pop {r4, pc}

	thumb_func_start sub_0803CA4C
sub_0803CA4C: @ 0x0803CA4C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803CA7C @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803CA80
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x70
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _0803CA80
	movs r0, #1
	b _0803CA82
	.align 2, 0
_0803CA7C: .4byte gLinkEntity
_0803CA80:
	movs r0, #0
_0803CA82:
	pop {r4, r5, pc}

	thumb_func_start sub_0803CA84
sub_0803CA84: @ 0x0803CA84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _0803CACC @ =gLinkEntity
	bl sub_080045C4
	adds r4, r0, #0
	subs r0, r4, #3
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	bhi _0803CAAA
	ldrb r0, [r5, #0x14]
	lsrs r1, r4, #3
	subs r0, r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	bls _0803CACA
_0803CAAA:
	adds r0, r4, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r4, r0, #3
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _0803CACA
	strb r4, [r5, #0x14]
	adds r1, r4, r6
	adds r0, r5, #0
	bl sub_080042AC
	ldr r0, [r5, #0x54]
	adds r1, r4, #0
	bl sub_080042AC
_0803CACA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803CACC: .4byte gLinkEntity

	thumb_func_start sub_0803CAD0
sub_0803CAD0: @ 0x0803CAD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r1, [r6]
	adds r5, r4, #0
	adds r5, #0x76
	ldrh r2, [r5]
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803CB02
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r6]
	ldrh r3, [r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEFE0
_0803CB02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803CB04
sub_0803CB04: @ 0x0803CB04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0803CB1A
	movs r0, #0
	b _0803CB32
_0803CB1A:
	adds r0, r4, #0
	bl sub_0803CB34
	adds r0, r4, #0
	adds r0, #0x79
	strb r5, [r0]
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	bl sub_080042AC
	movs r0, #1
_0803CB32:
	pop {r4, r5, pc}

	thumb_func_start sub_0803CB34
sub_0803CB34: @ 0x0803CB34
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0xa6
	strb r0, [r1]
	ldr r1, _0803CB60 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0
_0803CB60: .4byte gLinkEntity

	thumb_func_start sub_0803CB64
sub_0803CB64: @ 0x0803CB64
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x12
	movs r2, #0
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CBA0
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #1
	ldr r0, _0803CBA4 @ =gUnk_080D0154
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	ldr r0, _0803CBA8 @ =0x00000193
	bl sub_08004488
_0803CBA0:
	pop {r4, r5, pc}
	.align 2, 0
_0803CBA4: .4byte gUnk_080D0154
_0803CBA8: .4byte 0x00000193

	thumb_func_start sub_0803CBAC
sub_0803CBAC: @ 0x0803CBAC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _0803CBC6
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x43
	strb r0, [r1]
_0803CBC6:
	movs r0, #7
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x18]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0x18]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0x7b
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x42
	strb r0, [r1]
	ldrb r1, [r3, #0x14]
	adds r1, #0x10
	adds r0, r3, #0
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803CC08
sub_0803CC08: @ 0x0803CC08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _0803CCB4
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #2
	bhi _0803CCB4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0803CCB4
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806FCB8
	cmp r0, #0
	beq _0803CCB4
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CC56
	ldrh r0, [r1, #0x2e]
	adds r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #6
	strh r0, [r1, #0x32]
_0803CC56:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CC72
	ldrh r0, [r1, #0x2e]
	subs r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #6
	strh r0, [r1, #0x32]
_0803CC72:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CC8E
	ldrh r0, [r1, #0x2e]
	adds r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #6
	strh r0, [r1, #0x32]
_0803CC8E:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CCAA
	ldrh r0, [r1, #0x2e]
	subs r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #6
	strh r0, [r1, #0x32]
_0803CCAA:
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r5, #0
	bl sub_0805E7BC
_0803CCB4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803CCB8
sub_0803CCB8: @ 0x0803CCB8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803CCD0 @ =gUnk_080D0418
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803CCD0: .4byte gUnk_080D0418

	thumb_func_start sub_0803CCD4
sub_0803CCD4: @ 0x0803CCD4
	push {lr}
	ldr r2, _0803CCE8 @ =gUnk_080D0430
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803CCE8: .4byte gUnk_080D0430

	thumb_func_start sub_0803CCEC
sub_0803CCEC: @ 0x0803CCEC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x42
	movs r1, #0
	strb r1, [r2]
	bl sub_0803CCD4
	pop {pc}

	thumb_func_start sub_0803CCFC
sub_0803CCFC: @ 0x0803CCFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0803CD16
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bne _0803CD26
	adds r0, r4, #0
	bl sub_0803CE3C
	b _0803CD26
_0803CD16:
	ldr r0, _0803CD28 @ =gUnk_080D043C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803CD26:
	pop {r4, pc}
	.align 2, 0
_0803CD28: .4byte gUnk_080D043C

	thumb_func_start sub_0803CD2C
sub_0803CD2C: @ 0x0803CD2C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803CD38
sub_0803CD38: @ 0x0803CD38
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0803CD40
sub_0803CD40: @ 0x0803CD40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0803CD66
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	ldr r0, _0803CD68 @ =gLinkEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
	adds r0, r4, #0
	bl sub_0803CE3C
_0803CD66:
	pop {r4, pc}
	.align 2, 0
_0803CD68: .4byte gLinkEntity

	thumb_func_start sub_0803CD6C
sub_0803CD6C: @ 0x0803CD6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0803CDA4 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x54]
	str r0, [r4, #0x50]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0803CE14
	pop {r4, pc}
	.align 2, 0
_0803CDA4: .4byte 0x0000FFFE

	thumb_func_start sub_0803CDA8
sub_0803CDA8: @ 0x0803CDA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803CDC0
	adds r0, r4, #0
	bl sub_0806F69C
_0803CDC0:
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803CDD6
	adds r0, r4, #0
	bl sub_0803CE14
_0803CDD6:
	pop {r4, pc}

	thumb_func_start sub_0803CDD8
sub_0803CDD8: @ 0x0803CDD8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r2, #1
	eors r0, r2
	movs r5, #4
	rsbs r5, r5, #0
	adds r3, r5, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803CE10
	movs r0, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r4, #0x10]
	ands r3, r5
	orrs r3, r0
	strb r3, [r4, #0x18]
_0803CE10:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803CE14
sub_0803CE14: @ 0x0803CE14
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	bl sub_080A2CC0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803CE38
	lsrs r1, r1, #3
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_0803CE38:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803CE3C
sub_0803CE3C: @ 0x0803CE3C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0803CE14
	pop {r4, pc}

	thumb_func_start sub_0803CE80
sub_0803CE80: @ 0x0803CE80
	push {lr}
	ldr r2, _0803CE94 @ =gUnk_080D0448
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803CE94: .4byte gUnk_080D0448

	thumb_func_start sub_0803CE98
sub_0803CE98: @ 0x0803CE98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r2, [r1]
	movs r5, #0xf0
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #5
	strh r0, [r6, #0x24]
	ldrh r2, [r1]
	ldr r4, _0803CF1C @ =0x00000FFF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r6, #0xc]
	adds r3, r6, #0
	adds r3, #0x82
	ldrh r0, [r3]
	ands r4, r0
	adds r0, r6, #0
	adds r0, #0x74
	strh r4, [r0]
	ldrh r0, [r3]
	movs r1, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldr r2, _0803CF20 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r0, #8
	adds r1, r1, r0
	strh r1, [r6, #0x2e]
	ldrh r1, [r3]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r1, [r2, #8]
	adds r1, #8
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ands r0, r5
	asrs r0, r0, #0xa
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0803CFF0
	cmp r0, #0
	beq _0803CF18
	adds r0, r6, #0
	bl sub_0803D0B0
_0803CF18:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803CF1C: .4byte 0x00000FFF
_0803CF20: .4byte gRoomControls

	thumb_func_start sub_0803CF24
sub_0803CF24: @ 0x0803CF24
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CFD8
	cmp r0, #0
	beq _0803CF36
	adds r0, r4, #0
	bl sub_0803D024
_0803CF36:
	pop {r4, pc}

	thumb_func_start sub_0803CF38
sub_0803CF38: @ 0x0803CF38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CFF0
	cmp r0, #0
	beq _0803CF4C
	adds r0, r4, #0
	bl sub_0803D0B0
	b _0803CF8C
_0803CF4C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049FDC
	cmp r0, #0
	beq _0803CF8C
	ldr r0, _0803CF90 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803CF8C
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803CF8C
	adds r0, r4, #0
	bl sub_0803D058
	adds r0, r4, #0
	bl sub_0803D024
_0803CF8C:
	pop {r4, pc}
	.align 2, 0
_0803CF90: .4byte gUnk_020000B0

	thumb_func_start sub_0803CF94
sub_0803CF94: @ 0x0803CF94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	cmp r0, #0x76
	bne _0803CFBA
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803D024
	b _0803CFD4
_0803CFBA:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803CFD4
	adds r0, r4, #0
	bl sub_0803CFD8
	cmp r0, #0
	beq _0803CFD4
	adds r0, r4, #0
	bl sub_0803D024
_0803CFD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803CFD8
sub_0803CFD8: @ 0x0803CFD8
	push {lr}
	adds r1, r0, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	bne _0803CFE8
	movs r0, #1
	b _0803CFEE
_0803CFE8:
	ldrh r0, [r1]
	bl sub_0807CBE4
_0803CFEE:
	pop {pc}

	thumb_func_start sub_0803CFF0
sub_0803CFF0: @ 0x0803CFF0
	push {lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldrh r2, [r1]
	cmp r2, #0
	beq _0803D01E
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r2, r0
	bne _0803D016
	adds r0, r2, #0
	bl sub_0807CBE4
	movs r1, #0
	cmp r0, #0
	bne _0803D012
	movs r1, #1
_0803D012:
	adds r0, r1, #0
	b _0803D020
_0803D016:
	ldrh r0, [r1]
	bl sub_0807CBE4
	b _0803D020
_0803D01E:
	movs r0, #0
_0803D020:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803D024
sub_0803D024: @ 0x0803D024
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803D03A
	adds r0, #2
	b _0803D04E
_0803D03A:
	bl Random
	ldr r2, _0803D054 @ =gUnk_080D0458
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
_0803D04E:
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0803D054: .4byte gUnk_080D0458

	thumb_func_start sub_0803D058
sub_0803D058: @ 0x0803D058
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _0803D0AE
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803D078
	strh r1, [r5, #0x24]
	b _0803D08A
_0803D078:
	bl Random
	ldr r2, _0803D0A4 @ =gUnk_080D0468
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r5, #0x24]
_0803D08A:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803D0AC
	ldr r0, _0803D0A8 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	b _0803D0AE
	.align 2, 0
_0803D0A4: .4byte gUnk_080D0468
_0803D0A8: .4byte gUnk_020000B0
_0803D0AC:
	strb r1, [r5, #0x15]
_0803D0AE:
	pop {r4, r5, pc}

	thumb_func_start sub_0803D0B0
sub_0803D0B0: @ 0x0803D0B0
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x75
	bl sub_0807B7D8
	pop {pc}

	thumb_func_start sub_0803D0C8
sub_0803D0C8: @ 0x0803D0C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0803D0F4
	cmp r0, #1
	bgt _0803D0DC
	cmp r0, #0
	beq _0803D0E6
	b _0803D12C
_0803D0DC:
	cmp r0, #2
	beq _0803D104
	cmp r0, #3
	beq _0803D11C
	b _0803D12C
_0803D0E6:
	adds r0, r4, #0
	bl sub_0803DFBC
	ldr r0, _0803D0F0 @ =gUnk_080D0470
	b _0803D106
	.align 2, 0
_0803D0F0: .4byte gUnk_080D0470
_0803D0F4:
	adds r0, r4, #0
	bl sub_0803DC58
	ldr r0, _0803D100 @ =gUnk_080D0490
	b _0803D106
	.align 2, 0
_0803D100: .4byte gUnk_080D0490
_0803D104:
	ldr r0, _0803D118 @ =gUnk_080D0498
_0803D106:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0803D12C
	.align 2, 0
_0803D118: .4byte gUnk_080D0498
_0803D11C:
	ldr r0, _0803D130 @ =gUnk_080D04A0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803D12C:
	pop {r4, pc}
	.align 2, 0
_0803D130: .4byte gUnk_080D04A0

	thumb_func_start sub_0803D134
sub_0803D134: @ 0x0803D134
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x7b
	bl sub_0807CBD0
	cmp r0, #0
	beq _0803D146
	bl sub_0805E780
_0803D146:
	adds r0, r5, #0
	bl sub_0804A720
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	bne _0803D158
	b _0803D25A
_0803D158:
	ldr r0, _0803D25C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x41
	bhi _0803D25A
	movs r0, #0
	bl sub_0807CD8C
	movs r2, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0xff
	strb r0, [r1]
	strb r2, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x76
	strb r2, [r0]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x15]
	adds r3, r5, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #7
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	str r2, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r1, #5
	movs r0, #0x30
	strb r0, [r1]
	subs r1, #1
	subs r0, #0x31
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x87
	strb r2, [r0]
	subs r0, #5
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r0, [r5, #0x2c]
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x30]
	str r0, [r5, #0x7c]
	movs r0, #0x4a
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r6, #0
_0803D1E2:
	movs r0, #0x54
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	adds r0, #0x79
	strb r6, [r0]
	adds r6, #1
	cmp r6, #5
	ble _0803D1E2
	movs r6, #0
_0803D1FA:
	movs r0, #0x4a
	movs r1, #3
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	strb r6, [r4, #0xe]
	adds r6, #1
	cmp r6, #3
	ble _0803D1FA
	movs r6, #0
_0803D210:
	movs r0, #0x54
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	movs r0, #1
	adds r2, r6, #0
	ands r2, r0
	lsls r2, r2, #6
	ldrb r0, [r4, #0x18]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	lsls r1, r6, #1
	ldr r0, _0803D260 @ =gUnk_080D04A8
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r6, #1
	cmp r6, #1
	ble _0803D210
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
_0803D25A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803D25C: .4byte gUnk_03003DBC
_0803D260: .4byte gUnk_080D04A8

	thumb_func_start sub_0803D264
sub_0803D264: @ 0x0803D264
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803D318
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _0803D27E
	b _0803D400
_0803D27E:
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r1, [r5]
	movs r0, #0x70
	ands r0, r1
	cmp r0, #0
	bne _0803D2E4
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0803D2DE
	adds r0, r4, #0
	bl sub_0803DD78
	adds r0, r4, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D2B0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r6, [r5]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	b _0803D2D6
_0803D2B0:
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D2C4
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D2D6
_0803D2C4:
	bl Random
	movs r1, #0x80
	ands r1, r0
	lsrs r1, r1, #3
	movs r0, #8
	orrs r1, r0
	strb r1, [r4, #0x15]
	b _0803D400
_0803D2D6:
	ldrb r0, [r4, #0x15]
	orrs r0, r7
	strb r0, [r4, #0x15]
	b _0803D400
_0803D2DE:
	movs r0, #2
	strb r0, [r4, #0xe]
	b _0803D400
_0803D2E4:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x75
	strb r0, [r1]
	strb r6, [r5]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	orrs r0, r7
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0803D400
_0803D318:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r6, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0803D3BA
	adds r0, r4, #0
	bl sub_0803DEE0
	cmp r0, #1
	beq _0803D366
	cmp r0, #1
	blo _0803D344
	cmp r0, #2
	beq _0803D384
	cmp r0, #3
	beq _0803D374
	b _0803D3BA
_0803D344:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	b _0803D3BA
_0803D366:
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	strb r5, [r4, #0xe]
	b _0803D3B4
_0803D374:
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _0803D3B4
_0803D384:
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D3A2
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D3B4
_0803D3A2:
	bl Random
	movs r1, #0x80
	ands r1, r0
	lsrs r1, r1, #3
	movs r0, #8
	orrs r1, r0
	strb r1, [r4, #0x15]
	b _0803D3BA
_0803D3B4:
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
_0803D3BA:
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0803D400
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803D3FA
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	beq _0803D3F4
	cmp r0, #0x10
	bgt _0803D3E6
	cmp r0, #0
	beq _0803D3EE
	b _0803D3FA
_0803D3E6:
	cmp r0, #0x20
	beq _0803D3F4
	cmp r0, #0x30
	bne _0803D3FA
_0803D3EE:
	ldrh r0, [r4, #0x32]
	adds r0, #1
	b _0803D3F8
_0803D3F4:
	ldrh r0, [r4, #0x32]
	subs r0, #1
_0803D3F8:
	strh r0, [r4, #0x32]
_0803D3FA:
	adds r0, r4, #0
	bl sub_080AEFB4
_0803D400:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803D408
sub_0803D408: @ 0x0803D408
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #1
	beq _0803D458
	cmp r0, #1
	bgt _0803D420
	cmp r0, #0
	beq _0803D42A
	b _0803D558
_0803D420:
	cmp r0, #2
	beq _0803D478
	cmp r0, #3
	beq _0803D4FC
	b _0803D558
_0803D42A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D438
	b _0803D558
_0803D438:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl sub_080042AC
	ldr r0, _0803D454 @ =0x0000019B
	bl PlaySFX
	b _0803D558
	.align 2, 0
_0803D454: .4byte 0x0000019B
_0803D458:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803D558
	movs r0, #2
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	b _0803D558
_0803D478:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D558
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0803E028
	cmp r0, #0
	bne _0803D4D0
	bl Random
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r1, [r5]
	adds r1, #1
	movs r2, #3
	ands r0, r2
	adds r1, r1, r0
	strb r1, [r5]
	ldrb r0, [r5]
	movs r1, #5
	bl __modsi3
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r0, _0803D4F4 @ =gUnk_080D04AC
	adds r1, r1, r0
	ldr r2, _0803D4F8 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r0, #0x10
	strh r0, [r4, #0x32]
_0803D4D0:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080042AC
	movs r0, #0xf5
	bl PlaySFX
	b _0803D558
	.align 2, 0
_0803D4F4: .4byte gUnk_080D04AC
_0803D4F8: .4byte gRoomControls
_0803D4FC:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803D558
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #4
	bls _0803D52E
	ldr r1, _0803D544 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0x18
	strh r0, [r4, #0x32]
_0803D52E:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D548
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0803D54E
	.align 2, 0
_0803D544: .4byte gLinkEntity
_0803D548:
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x10
_0803D54E:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_0803D558:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0803D560
sub_0803D560: @ 0x0803D560
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #2
	beq _0803D62A
	cmp r0, #2
	bgt _0803D57C
	cmp r0, #0
	beq _0803D5BC
	cmp r0, #1
	beq _0803D5F8
	b _0803D650
_0803D57C:
	cmp r0, #0xfe
	beq _0803D590
	cmp r0, #0xfe
	bgt _0803D58A
	cmp r0, #3
	beq _0803D646
	b _0803D650
_0803D58A:
	cmp r0, #0xff
	beq _0803D598
	b _0803D650
_0803D590:
	movs r0, #0
	strb r0, [r2]
	movs r0, #1
	b _0803D64E
_0803D598:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803D5AC
	ldr r0, [r4, #0x34]
	ldr r1, _0803D5B8 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x34]
_0803D5AC:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _0803D650
	movs r0, #0xfe
	strb r0, [r2]
	b _0803D650
	.align 2, 0
_0803D5B8: .4byte 0xFFFFE000
_0803D5BC:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D650
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	beq _0803D5E0
	movs r1, #0x14
_0803D5E0:
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r0, #1
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x80
	strb r0, [r1]
	b _0803D650
_0803D5F8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D650
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803D620
	movs r0, #0xd8
	lsls r0, r0, #1
	bl PlaySFX
_0803D620:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	b _0803D650
_0803D62A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803D650
	movs r0, #3
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0803D650
_0803D646:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
_0803D64E:
	strb r0, [r4, #0xe]
_0803D650:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_0803D658
sub_0803D658: @ 0x0803D658
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D68E
	movs r2, #1
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	strb r2, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0803D6EE
_0803D68E:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803D6EE
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	adds r5, r4, #0
	adds r5, #0x84
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _0803D6C8
	ldr r1, _0803D6F8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	ldr r1, _0803D6FC @ =gUnk_080D04C0
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5]
	movs r0, #0
	strb r0, [r4, #0xf]
_0803D6C8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xf
	bhi _0803D6EE
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r1, #0x1a
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0803D6EE
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0xf]
	str r4, [r1, #0x50]
	ldrh r0, [r4, #0x36]
	strh r0, [r1, #0x36]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
_0803D6EE:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0803D6F8: .4byte gLinkEntity
_0803D6FC: .4byte gUnk_080D04C0

	thumb_func_start sub_0803D700
sub_0803D700: @ 0x0803D700
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D720
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0803D82E
_0803D720:
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	adds r6, r2, #0
	cmp r0, #1
	beq _0803D764
	cmp r0, #1
	bgt _0803D736
	cmp r0, #0
	beq _0803D744
	b _0803D73E
_0803D736:
	cmp r0, #2
	beq _0803D78E
	cmp r0, #3
	beq _0803D7FA
_0803D73E:
	adds r5, r4, #0
	adds r5, #0x87
	b _0803D81C
_0803D744:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x87
	cmp r0, #0
	bne _0803D81C
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	b _0803D81C
_0803D764:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x87
	cmp r0, #0
	beq _0803D81C
	movs r0, #2
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r4, #0xf]
	movs r0, #0xf4
	bl PlaySFX
	b _0803D81C
_0803D78E:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x87
	cmp r0, #0
	bne _0803D81C
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803D7E4
	ldrb r0, [r5]
	cmp r0, #3
	bhi _0803D7E4
	bl Random
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803D7E4
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r4, #0xf]
	ldr r1, _0803D7E0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	movs r1, #0x10
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	b _0803D81A
	.align 2, 0
_0803D7E0: .4byte gLinkEntity
_0803D7E4:
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #0
	strb r0, [r6]
	strb r1, [r5]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080042AC
	b _0803D81C
_0803D7FA:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x87
	cmp r1, #0
	bne _0803D81C
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	orrs r0, r3
_0803D81A:
	strb r0, [r4, #0x15]
_0803D81C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803D828
	adds r0, r4, #0
	bl sub_080AEFB4
_0803D828:
	adds r0, r4, #0
	bl sub_080042B8
_0803D82E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803D830
sub_0803D830: @ 0x0803D830
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D844
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xe]
	b _0803D8F4
_0803D844:
	adds r4, r5, #0
	adds r4, #0x74
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803D870
	cmp r0, #1
	bgt _0803D858
	cmp r0, #0
	beq _0803D862
	b _0803D8EE
_0803D858:
	cmp r0, #2
	beq _0803D8C2
	cmp r0, #3
	beq _0803D8CE
	b _0803D8EE
_0803D862:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0803D8EE
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x70
	b _0803D8EC
_0803D870:
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803D8B0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #0xa8
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r5, #0
	movs r1, #0x18
	movs r2, #0
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	beq _0803D8EE
	ldr r3, _0803D8AC @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	str r5, [r4, #0x50]
	b _0803D8EE
	.align 2, 0
_0803D8AC: .4byte 0xFFF00000
_0803D8B0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bne _0803D8EE
	movs r0, #0xcb
	lsls r0, r0, #1
	bl PlaySFX
	b _0803D8EE
_0803D8C2:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0803D8EE
	movs r0, #0
	strb r0, [r5, #0xf]
	b _0803D8EE
_0803D8CE:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _0803D8DE
	movs r0, #1
	strb r0, [r5, #0xf]
	ldr r0, _0803D8F8 @ =0x0000014F
	bl PlaySFX
_0803D8DE:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0803D8EE
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r4]
_0803D8EC:
	strb r0, [r5, #0xe]
_0803D8EE:
	adds r0, r5, #0
	bl sub_080042B8
_0803D8F4:
	pop {r4, r5, pc}
	.align 2, 0
_0803D8F8: .4byte 0x0000014F

	thumb_func_start sub_0803D8FC
sub_0803D8FC: @ 0x0803D8FC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0803D968
	subs r1, r0, #1
	strb r1, [r2, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803D918
	movs r0, #1
	bl sub_0807CD10
	b _0803D968
_0803D918:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803D968
	adds r0, r2, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _0803D968
	bl Random
	ldr r1, _0803D96C @ =0x00003F3F
	ands r0, r1
	movs r3, #0xff
	adds r1, r0, #0
	ands r1, r3
	ldr r5, _0803D970 @ =0x0000FFE0
	adds r2, r5, #0
	adds r1, r2, r1
	ldrh r5, [r4, #0x2e]
	adds r1, r1, r5
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0803D968:
	pop {r4, r5, pc}
	.align 2, 0
_0803D96C: .4byte 0x00003F3F
_0803D970: .4byte 0x0000FFE0

	thumb_func_start sub_0803D974
sub_0803D974: @ 0x0803D974
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x74
	strb r1, [r5]
	adds r2, r4, #0
	adds r2, #0x75
	strb r0, [r2]
	strb r1, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #0x4a
	movs r1, #2
	bl CreateEnemy
	str r4, [r0, #0x50]
	ldr r1, [r4, #0x50]
	str r1, [r0, #0x54]
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803D9BC
sub_0803D9BC: @ 0x0803D9BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803D9E2
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DA44
	movs r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x30
	b _0803D9F6
_0803D9E2:
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DA02
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x2f
_0803D9F6:
	strb r0, [r1]
	ldrb r1, [r2]
	adds r0, r4, #0
	bl sub_080042AC
	b _0803DA44
_0803DA02:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803DA2E
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803DA2E
	adds r0, r5, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x41
	strb r0, [r2]
_0803DA2E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803DA44
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
_0803DA44:
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DA60
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	beq _0803DA72
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _0803DA70
_0803DA60:
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _0803DA72
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_0803DA70:
	strb r0, [r4, #0x10]
_0803DA72:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803DAA8
sub_0803DAA8: @ 0x0803DAA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x50]
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	strb r2, [r1]
	adds r1, #1
	strb r3, [r1]
	adds r2, r4, #0
	adds r2, #0x63
	movs r1, #0xfe
	strb r1, [r2]
	movs r1, #0xff
	strb r1, [r4, #0x15]
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803DAE4
sub_0803DAE4: @ 0x0803DAE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r2, [r0]
	cmp r2, #0
	bne _0803DB3E
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803DB00
	strb r2, [r1]
_0803DB00:
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0x15]
	cmp r1, #0xff
	beq _0803DB28
	adds r2, r4, #0
	adds r2, #0x75
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803DB16
	movs r0, #1
	strb r0, [r2]
_0803DB16:
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0803DB54
	strb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_080042AC
	b _0803DB54
_0803DB28:
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803DB54
	strb r2, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0803DB54
_0803DB3E:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DB54
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
_0803DB54:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0803DB88
sub_0803DB88: @ 0x0803DB88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x74
	strb r1, [r2]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r1, [r2]
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0803DC0C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803DBB8
sub_0803DBB8: @ 0x0803DBB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x50]
	ldrb r0, [r2, #0x15]
	cmp r0, #0xff
	beq _0803DBE8
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DBD2
	movs r0, #1
	strb r0, [r1]
_0803DBD2:
	ldrb r0, [r2, #0x15]
	lsls r1, r0, #0x18
	ldrb r2, [r4, #0x15]
	cmp r0, r2
	beq _0803DC02
	strb r0, [r4, #0x15]
	lsrs r1, r1, #0x1b
	adds r0, r4, #0
	bl sub_080042AC
	b _0803DC02
_0803DBE8:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803DC02
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
_0803DC02:
	adds r0, r4, #0
	bl sub_0803DC0C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803DC0C
sub_0803DC0C: @ 0x0803DC0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r5, [r4, #0xe]
	lsls r5, r5, #1
	ldr r1, _0803DC54 @ =gUnk_080D04C8
	adds r5, r5, r1
	ldrb r2, [r0, #0x18]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	ldrb r3, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #0x18]
	adds r1, r0, #0
	adds r1, #0x62
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r5, r3]
	adds r3, #1
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0803DC54: .4byte gUnk_080D04C8

	thumb_func_start sub_0803DC58
sub_0803DC58: @ 0x0803DC58
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _0803DC66
	b _0803DD74
_0803DC66:
	ldr r5, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0x77
	movs r7, #0
	strb r7, [r2]
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	mov ip, r0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0803DD20
	ldr r0, _0803DCE4 @ =gUnk_080D04D0
	adds r3, r5, #0
	adds r3, #0x86
	ldrb r2, [r3]
	adds r0, r2, r0
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0803DCFA
	adds r0, r2, #1
	strb r0, [r3]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DCF0
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	movs r0, #7
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	ands r1, r0
	strb r1, [r5, #0x10]
	mov r2, ip
	strb r2, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x62
	strb r7, [r0]
	ldrb r0, [r5, #0x15]
	orrs r0, r3
	strb r0, [r5, #0x15]
	strb r7, [r4, #0xe]
	ldr r0, _0803DCE8 @ =0x80100000
	bl PlaySFX
	ldr r0, _0803DCEC @ =gUnk_02033A90
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	b _0803DD74
	.align 2, 0
_0803DCE4: .4byte gUnk_080D04D0
_0803DCE8: .4byte 0x80100000
_0803DCEC: .4byte gUnk_02033A90
_0803DCF0:
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r6]
	orrs r0, r3
	strb r0, [r6]
_0803DCFA:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803DD20
	ldr r0, _0803DD50 @ =0x00000127
	bl PlaySFX
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0803DD26
	movs r0, #0x48
	strb r0, [r4, #0xe]
_0803DD20:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803DD74
_0803DD26:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803DD74
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x2f
	strb r0, [r1]
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803DD54
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0xf0
	b _0803DD64
	.align 2, 0
_0803DD50: .4byte 0x00000127
_0803DD54:
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0x70
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r1]
	orrs r0, r2
_0803DD64:
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_0803DD74:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803DD78
sub_0803DD78: @ 0x0803DD78
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x7c
	ands r1, r0
	lsrs r2, r1, #2
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803DDFE
	cmp r0, #1
	bgt _0803DD9A
	cmp r0, #0
	beq _0803DDA0
	b _0803DDB6
_0803DD9A:
	cmp r0, #2
	beq _0803DE5C
	b _0803DDB6
_0803DDA0:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	cmp r1, #0
	bne _0803DDBC
	subs r0, #0xb
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x50
	strb r0, [r1]
_0803DDB6:
	adds r5, r4, #0
	adds r5, #0x83
	b _0803DED0
_0803DDBC:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #5
	bls _0803DDCA
	b _0803DED0
_0803DDCA:
	lsls r0, r1, #2
	ldr r1, _0803DDD4 @ =_0803DDD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DDD4: .4byte _0803DDD8
_0803DDD8: @ jump table
	.4byte _0803DDF0 @ case 0
	.4byte _0803DEC2 @ case 1
	.4byte _0803DDF0 @ case 2
	.4byte _0803DEC2 @ case 3
	.4byte _0803DDF0 @ case 4
	.4byte _0803DEC2 @ case 5
_0803DDF0:
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x50
	b _0803DECE
_0803DDFE:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0803DED0
	lsls r0, r1, #2
	ldr r1, _0803DE14 @ =_0803DE18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DE14: .4byte _0803DE18
_0803DE18: @ jump table
	.4byte _0803DE98 @ case 0
	.4byte _0803DEC2 @ case 1
	.4byte _0803DE30 @ case 2
	.4byte _0803DEC2 @ case 3
	.4byte _0803DE46 @ case 4
	.4byte _0803DEC2 @ case 5
_0803DE30:
	movs r1, #8
	ands r1, r2
	cmp r1, #0
	bne _0803DEC2
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x50
	b _0803DECE
_0803DE46:
	movs r0, #8
	ands r2, r0
	cmp r2, #0
	beq _0803DE98
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x50
	b _0803DECE
_0803DE5C:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0803DED0
	lsls r0, r1, #2
	ldr r1, _0803DE74 @ =_0803DE78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DE74: .4byte _0803DE78
_0803DE78: @ jump table
	.4byte _0803DE98 @ case 0
	.4byte _0803DEC2 @ case 1
	.4byte _0803DE90 @ case 2
	.4byte _0803DEC2 @ case 3
	.4byte _0803DEA6 @ case 4
	.4byte _0803DEC2 @ case 5
_0803DE90:
	movs r0, #0xf
	ands r2, r0
	cmp r2, #2
	bls _0803DEC2
_0803DE98:
	adds r0, r4, #0
	adds r0, #0x75
	movs r1, #1
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	b _0803DED0
_0803DEA6:
	cmp r2, #9
	bls _0803DEC2
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #2
	strb r0, [r1]
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x77
	b _0803DECE
_0803DEC2:
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0
	strb r0, [r1]
	adds r1, #2
	movs r0, #1
_0803DECE:
	strb r0, [r1]
_0803DED0:
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	strb r0, [r5]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803DEE0
sub_0803DEE0: @ 0x0803DEE0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #2
	bl Random
	movs r1, #0xf8
	ands r1, r0
	lsrs r2, r1, #3
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DFB8
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803DF28
	cmp r0, #1
	bgt _0803DF0E
	cmp r0, #0
	beq _0803DF14
	b _0803DFB8
_0803DF0E:
	cmp r0, #2
	beq _0803DF68
	b _0803DFB8
_0803DF14:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r5, #1
	ands r5, r1
	adds r1, #1
	movs r2, #3
	ands r1, r2
	strb r1, [r0]
	b _0803DFB8
_0803DF28:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #4
	bhi _0803DFAC
	lsls r0, r1, #2
	ldr r1, _0803DF40 @ =_0803DF44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DF40: .4byte _0803DF44
_0803DF44: @ jump table
	.4byte _0803DF9E @ case 0
	.4byte _0803DF58 @ case 1
	.4byte _0803DF9E @ case 2
	.4byte _0803DF58 @ case 3
	.4byte _0803DF5C @ case 4
_0803DF58:
	movs r5, #1
	b _0803DFAC
_0803DF5C:
	movs r0, #8
	ands r2, r0
	movs r5, #0
	cmp r2, #0
	beq _0803DFAC
	b _0803DF9E
_0803DF68:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #4
	bhi _0803DFAC
	lsls r0, r1, #2
	ldr r1, _0803DF80 @ =_0803DF84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DF80: .4byte _0803DF84
_0803DF84: @ jump table
	.4byte _0803DF9E @ case 0
	.4byte _0803DF98 @ case 1
	.4byte _0803DFA2 @ case 2
	.4byte _0803DF9E @ case 3
	.4byte _0803DFAA @ case 4
_0803DF98:
	movs r5, #0
	cmp r2, #5
	bls _0803DFAC
_0803DF9E:
	movs r5, #3
	b _0803DFAC
_0803DFA2:
	movs r5, #0
	cmp r2, #9
	bhi _0803DFAC
	b _0803DF9E
_0803DFAA:
	movs r5, #0
_0803DFAC:
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	strb r0, [r4]
_0803DFB8:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0803DFBC
sub_0803DFBC: @ 0x0803DFBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0803DFCE
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x7c]
_0803DFCE:
	adds r5, r4, #0
	adds r5, #0x76
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803DFFC
	ldrb r0, [r4, #0x15]
	cmp r0, #0xff
	beq _0803E000
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803E000
	adds r0, r4, #0
	bl sub_08049EE4
	movs r1, #0x10
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x10
	b _0803DFFE
_0803DFFC:
	subs r0, #1
_0803DFFE:
	strb r0, [r5]
_0803E000:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E022
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _0803E024 @ =gUnk_080D04D3
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
_0803E022:
	pop {r4, r5, pc}
	.align 2, 0
_0803E024: .4byte gUnk_080D04D3

	thumb_func_start sub_0803E028
sub_0803E028: @ 0x0803E028
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803E046
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803E046
	movs r0, #0
	b _0803E082
_0803E046:
	adds r0, r4, #0
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803E080
	ldr r2, _0803E084 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r1, r0, #0
	adds r1, #0x58
	ldr r0, _0803E088 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0803E080
	ldrh r2, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x58
	cmp r1, r0
	bgt _0803E080
	adds r1, r2, #0
	adds r1, #0xf8
	cmp r1, r0
	blt _0803E080
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	movs r5, #1
_0803E080:
	adds r0, r5, #0
_0803E082:
	pop {r4, r5, pc}
	.align 2, 0
_0803E084: .4byte gRoomControls
_0803E088: .4byte gLinkEntity

	thumb_func_start sub_0803E08C
sub_0803E08C: @ 0x0803E08C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0803E4A0
	cmp r0, #0
	beq _0803E0AA
	ldrb r0, [r5, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x45
	strb r0, [r1]
	str r0, [r5, #0x50]
_0803E0AA:
	ldr r4, _0803E0C0 @ =gUnk_080D0648
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803E0C0: .4byte gUnk_080D0648

	thumb_func_start sub_0803E0C4
sub_0803E0C4: @ 0x0803E0C4
	push {lr}
	ldr r2, _0803E0D8 @ =gUnk_080D0660
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803E0D8: .4byte gUnk_080D0660

	thumb_func_start sub_0803E0DC
sub_0803E0DC: @ 0x0803E0DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0803E16C
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E158
	movs r0, #5
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r6, #0x7f
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r3, _0803E154 @ =gLinkEntity
	ldrb r1, [r3, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #0x10]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r3, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r3, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x19]
	adds r0, r5, #0
	bl sub_0803E444
	movs r0, #2
	bl sub_08078A90
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _0803E16C
	ldrb r1, [r2, #0x10]
	adds r0, r6, #0
	ands r0, r1
	b _0803E16A
	.align 2, 0
_0803E154: .4byte gLinkEntity
_0803E158:
	ldr r2, _0803E178 @ =gLinkState
	ldr r0, [r2, #0x30]
	ldr r1, _0803E17C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r2, _0803E180 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0803E16A:
	strb r0, [r2, #0x10]
_0803E16C:
	ldr r1, _0803E184 @ =gUnk_080D0648
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803E178: .4byte gLinkState
_0803E17C: .4byte 0xFFFFFEFF
_0803E180: .4byte gLinkEntity
_0803E184: .4byte gUnk_080D0648

	thumb_func_start sub_0803E188
sub_0803E188: @ 0x0803E188
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x50]
	cmp r2, #0
	beq _0803E19C
	ldrb r0, [r2, #0xf]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xf]
	str r1, [r3, #0x50]
_0803E19C:
	adds r0, r3, #0
	bl sub_0804A7D4
	pop {pc}

	thumb_func_start nullsub_19
nullsub_19: @ 0x0803E1A4
	bx lr
	.align 2, 0

	thumb_func_start sub_0803E1A8
sub_0803E1A8: @ 0x0803E1A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0803E1F8
	movs r0, #0x4b
	movs r1, #1
	bl CreateEnemy
	cmp r0, #0
	beq _0803E250
	str r5, [r0, #0x50]
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0803E1D8
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0803E1D4 @ =0x0000FFE8
	strh r0, [r5, #0x36]
	b _0803E1E8
	.align 2, 0
_0803E1D4: .4byte 0x0000FFE8
_0803E1D8:
	movs r0, #9
	strb r0, [r5, #0xc]
	ldr r0, _0803E1F4 @ =0x0000FF80
	strh r0, [r5, #0x36]
	adds r1, r5, #0
	adds r1, #0x3b
	movs r0, #1
	strb r0, [r1]
_0803E1E8:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	b _0803E250
	.align 2, 0
_0803E1F4: .4byte 0x0000FF80
_0803E1F8:
	movs r0, #8
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x50]
	ldr r3, _0803E254 @ =0xFFFF0000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r5, #0
	movs r1, #1
	bl sub_08004260
_0803E250:
	pop {r4, r5, pc}
	.align 2, 0
_0803E254: .4byte 0xFFFF0000

	thumb_func_start sub_0803E258
sub_0803E258: @ 0x0803E258
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803E480
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08049F64
	cmp r0, #0
	beq _0803E280
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl sub_08004260
	b _0803E29C
_0803E280:
	ldr r0, _0803E2A4 @ =gUnk_020000B0
	ldr r1, [r0]
	cmp r1, #0
	beq _0803E29C
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0806F69C
_0803E29C:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0803E2A4: .4byte gUnk_020000B0

	thumb_func_start sub_0803E2A8
sub_0803E2A8: @ 0x0803E2A8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0803E2B8
	subs r0, #1
	strb r0, [r1, #0xe]
	b _0803E2C8
_0803E2B8:
	ldrh r0, [r1, #0x36]
	adds r0, #1
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E2C8
	movs r0, #3
	strb r0, [r1, #0xc]
_0803E2C8:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0803E2D0
sub_0803E2D0: @ 0x0803E2D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E312
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x18
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0803E30C
	movs r0, #4
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0xf
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl sub_08004260
_0803E30C:
	adds r0, r4, #0
	bl sub_08004274
_0803E312:
	pop {r4, pc}

	thumb_func_start sub_0803E314
sub_0803E314: @ 0x0803E314
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E332
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _0803E33C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0803E332:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0803E33C: .4byte gLinkEntity

	thumb_func_start sub_0803E340
sub_0803E340: @ 0x0803E340
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803E444
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803E352
	subs r0, #1
	b _0803E36A
_0803E352:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x18
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0803E36C
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x14
_0803E36A:
	strb r0, [r4, #0xe]
_0803E36C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E370
sub_0803E370: @ 0x0803E370
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E38E
	movs r0, #7
	strb r0, [r1, #0xc]
	movs r0, #0x10
	strb r0, [r1, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x24]
_0803E38E:
	adds r0, r1, #0
	bl sub_0803E444
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E398
sub_0803E398: @ 0x0803E398
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803E444
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803E4D8
	ldr r1, _0803E3CC @ =gRoomControls
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0x20]
	adds r0, r0, r1
	subs r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _0803E3C8
	bl sub_0805E5A8
	ldr r0, _0803E3D0 @ =gUnk_0813AB94
	bl sub_08080840
_0803E3C8:
	pop {r4, pc}
	.align 2, 0
_0803E3CC: .4byte gRoomControls
_0803E3D0: .4byte gUnk_0813AB94

	thumb_func_start sub_0803E3D4
sub_0803E3D4: @ 0x0803E3D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0803E3E4
	bl sub_0805E780
_0803E3E4:
	ldr r0, [r4, #0x50]
	ldr r3, _0803E3F8 @ =0xFFFF0000
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0803E3F8: .4byte 0xFFFF0000

	thumb_func_start sub_0803E3FC
sub_0803E3FC: @ 0x0803E3FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803E438 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0803E43C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803E42E
	movs r0, #0
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl sub_08004260
_0803E42E:
	adds r0, r4, #0
	bl sub_0803E2A8
	b _0803E442
	.align 2, 0
_0803E438: .4byte gLinkEntity
_0803E43C:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x36]
_0803E442:
	pop {r4, pc}

	thumb_func_start sub_0803E444
sub_0803E444: @ 0x0803E444
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077B2C
	ldr r2, _0803E478 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r1, [r4, #0x4c]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806FA90
	ldr r1, _0803E47C @ =gLinkEntity
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #0xe
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0803E478: .4byte gLinkState
_0803E47C: .4byte gLinkEntity

	thumb_func_start sub_0803E480
sub_0803E480: @ 0x0803E480
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #0x96
	lsls r0, r0, #3
	cmp r1, r0
	bls _0803E49A
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	b _0803E49E
_0803E49A:
	adds r0, r1, #1
	strh r0, [r2]
_0803E49E:
	pop {pc}

	thumb_func_start sub_0803E4A0
sub_0803E4A0: @ 0x0803E4A0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803E4B8 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E4C6
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _0803E4BC
	movs r0, #0
	b _0803E4D6
	.align 2, 0
_0803E4B8: .4byte gUnk_030010A0
_0803E4BC:
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E4CA
_0803E4C6:
	movs r0, #1
	b _0803E4D6
_0803E4CA:
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0803E4D4
	movs r2, #1
_0803E4D4:
	adds r0, r2, #0
_0803E4D6:
	pop {pc}

	thumb_func_start sub_0803E4D8
sub_0803E4D8: @ 0x0803E4D8
	push {r4, r5, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0803E51C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #8]
	subs r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r0, _0803E520 @ =gLinkEntity
	adds r5, r0, #0
	adds r5, #0x38
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080002E0
	cmp r0, #0xff
	beq _0803E518
	ldr r0, _0803E524 @ =0x00004074
	ldrb r2, [r5]
	adds r1, r4, #0
	bl sub_0800015E
_0803E518:
	pop {r4, r5, pc}
	.align 2, 0
_0803E51C: .4byte gRoomControls
_0803E520: .4byte gLinkEntity
_0803E524: .4byte 0x00004074

	thumb_func_start sub_0803E528
sub_0803E528: @ 0x0803E528
	push {lr}
	ldr r1, _0803E534 @ =gUnk_080D06E0
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0803E534: .4byte gUnk_080D06E0

	thumb_func_start sub_0803E538
sub_0803E538: @ 0x0803E538
	push {lr}
	ldr r2, _0803E54C @ =gUnk_080D06F8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803E54C: .4byte gUnk_080D06F8

	thumb_func_start sub_0803E550
sub_0803E550: @ 0x0803E550
	push {lr}
	ldr r1, _0803E55C @ =gUnk_080D06E0
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_0803E55C: .4byte gUnk_080D06E0

	thumb_func_start sub_0803E560
sub_0803E560: @ 0x0803E560
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_0803E568
sub_0803E568: @ 0x0803E568
	adds r0, r4, #0
	bl sub_0803E538
	pop {r4, pc}

	thumb_func_start sub_0803E570
sub_0803E570: @ 0x0803E570
	push {lr}
	movs r1, #0xff
	movs r2, #0x57
	bl sub_0804A7E0
	pop {pc}

	thumb_func_start nullsub_20
nullsub_20: @ 0x0803E57C
	bx lr
	.align 2, 0

	thumb_func_start sub_0803E580
sub_0803E580: @ 0x0803E580
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0803E5E4
	str r5, [r0, #0x50]
	str r0, [r5, #0x54]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	movs r4, #0
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x7e
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xfe
	strb r0, [r1]
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_080042AC
	adds r0, r5, #0
	bl sub_0803E86C
_0803E5E4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803E5E8
sub_0803E5E8: @ 0x0803E5E8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xa
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r0, r4, #0
	bl sub_0803E9D4
	cmp r0, #0
	bne _0803E61A
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E61A
	adds r0, r4, #0
	bl sub_0803E8CC
_0803E61A:
	pop {r4, pc}

	thumb_func_start sub_0803E61C
sub_0803E61C: @ 0x0803E61C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xa
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r0, r4, #0
	bl sub_0803E9D4
	cmp r0, #0
	bne _0803E66A
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E654
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803E654
	adds r0, r4, #0
	bl sub_0803E86C
	b _0803E66A
_0803E654:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E66A
	adds r0, r4, #0
	bl sub_0803E92C
_0803E66A:
	pop {r4, pc}

	thumb_func_start sub_0803E66C
sub_0803E66C: @ 0x0803E66C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x21
	bhi _0803E68E
	adds r0, #1
	strb r0, [r1]
_0803E68E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803E6A4
	adds r0, r4, #0
	bl sub_0803EA64
	cmp r0, #0
	bne _0803E6B0
_0803E6A4:
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #0
	strb r0, [r1]
_0803E6B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E6B4
sub_0803E6B4: @ 0x0803E6B4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x20
	bls _0803E6D8
	subs r0, #1
	strb r0, [r1]
	b _0803E6DE
_0803E6D8:
	adds r0, r4, #0
	bl sub_0803E86C
_0803E6DE:
	pop {r4, pc}

	thumb_func_start sub_0803E6E0
sub_0803E6E0: @ 0x0803E6E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xc
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0803E718
	movs r0, #0
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #0x20
	adds r0, r4, #0
	bl sub_080042AC
_0803E718:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E71C
sub_0803E71C: @ 0x0803E71C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0803E756
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xe]
	ldr r1, _0803E758 @ =gUnk_080D0724
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x7c
	strb r1, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r1, r2, #0
	adds r1, #0x7f
	movs r0, #0xf6
	strb r0, [r1]
	adds r0, #0x65
	bl sub_08004488
_0803E756:
	pop {pc}
	.align 2, 0
_0803E758: .4byte gUnk_080D0724

	thumb_func_start sub_0803E75C
sub_0803E75C: @ 0x0803E75C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803E774
	adds r0, r2, #0
	bl sub_080042B8
	b _0803E7B0
_0803E774:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	adds r1, r2, #0
	adds r1, #0x7f
	cmp r0, #0
	bne _0803E78E
	movs r0, #2
	strb r0, [r2, #0xe]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803E78E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803E7A0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	b _0803E7B0
_0803E7A0:
	movs r0, #8
	strb r0, [r2, #0xc]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	movs r0, #8
	movs r1, #0
	bl sub_08080964
_0803E7B0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E7B4
sub_0803E7B4: @ 0x0803E7B4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E7C8
	movs r0, #9
	strb r0, [r1, #0xc]
_0803E7C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E7CC
sub_0803E7CC: @ 0x0803E7CC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0803E806
	movs r0, #0xa
	strb r0, [r2, #0xc]
	movs r0, #0x5a
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #3
	strb r0, [r2, #0x15]
	subs r1, #2
	movs r0, #0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x10
	bl sub_0803E94C
	b _0803E814
_0803E806:
	cmp r0, #0x12
	bhi _0803E814
	ldr r2, [r2, #0x54]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0803E814:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E818
sub_0803E818: @ 0x0803E818
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803E840
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E868
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	b _0803E868
_0803E840:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0803E868
	adds r0, r4, #0
	bl sub_0803E86C
_0803E868:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E86C
sub_0803E86C: @ 0x0803E86C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803E898
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803E898
	ldr r0, _0803E8C4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_0803E898:
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _0803E8C8 @ =gUnk_080D0728
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	pop {r4, pc}
	.align 2, 0
_0803E8C4: .4byte gUnk_020000B0
_0803E8C8: .4byte gUnk_080D0728

	thumb_func_start sub_0803E8CC
sub_0803E8CC: @ 0x0803E8CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803E8F4
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0803E8F4
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	b _0803E8F8
_0803E8F4:
	movs r1, #0x18
	adds r0, r5, #0
_0803E8F8:
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r2, _0803E928 @ =gUnk_080D0730
	lsrs r0, r5, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803E94C
	pop {r4, r5, pc}
	.align 2, 0
_0803E928: .4byte gUnk_080D0730

	thumb_func_start sub_0803E92C
sub_0803E92C: @ 0x0803E92C
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803E944
	adds r0, r4, #0
	bl sub_0803E86C
	b _0803E94A
_0803E944:
	adds r0, r4, #0
	bl sub_0803E8CC
_0803E94A:
	pop {r4, pc}

	thumb_func_start sub_0803E94C
sub_0803E94C: @ 0x0803E94C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	ldrb r2, [r3, #0x15]
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	asrs r4, r0, #3
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _0803E988
	movs r0, #7
	ands r0, r2
	ldrb r5, [r3, #0x14]
	cmp r0, #4
	bne _0803E984
	lsrs r0, r2, #3
	subs r0, r5, r0
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	ble _0803E9A2
_0803E984:
	cmp r4, r5
	beq _0803E9A2
_0803E988:
	strb r4, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	adds r0, r6, r0
	lsls r1, r4, #2
	adds r4, r0, r1
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080042AC
_0803E9A2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803E9A4
sub_0803E9A4: @ 0x0803E9A4
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xff
	ands r0, r1
	asrs r4, r0, #6
	adds r3, r2, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, r4
	beq _0803E9D2
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r1, r4, r1
	adds r0, r2, #0
	bl sub_080042AC
_0803E9D2:
	pop {r4, pc}

	thumb_func_start sub_0803E9D4
sub_0803E9D4: @ 0x0803E9D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803EA58
	adds r0, r4, #0
	movs r1, #0x38
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803EA10
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0803EA0C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #1
	b _0803EA46
	.align 2, 0
_0803EA0C: .4byte gUnk_020000B0
_0803EA10:
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803EA58
	ldr r0, _0803EA54 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0803EA58
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EA60
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0x15]
	movs r0, #4
_0803EA46:
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	movs r0, #1
	b _0803EA62
	.align 2, 0
_0803EA54: .4byte gUnk_020000B0
_0803EA58:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
_0803EA60:
	movs r0, #0
_0803EA62:
	pop {r4, pc}

	thumb_func_start sub_0803EA64
sub_0803EA64: @ 0x0803EA64
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803EAC4
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803EAB8
	ldr r0, _0803EAB4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0803EAB8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EAAE
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
_0803EAAE:
	movs r0, #1
	b _0803EACE
	.align 2, 0
_0803EAB4: .4byte gUnk_020000B0
_0803EAB8:
	adds r0, r4, #0
	movs r1, #0x38
	bl sub_0803EAD0
	cmp r0, #0
	bne _0803EAAE
_0803EAC4:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
_0803EACE:
	pop {r4, pc}

	thumb_func_start sub_0803EAD0
sub_0803EAD0: @ 0x0803EAD0
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0803EAE8 @ =gUnk_020000B0
	ldr r2, [r1]
	movs r4, #0x2e
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, #4
	bl sub_0806FCB8
	pop {r4, pc}
	.align 2, 0
_0803EAE8: .4byte gUnk_020000B0

	thumb_func_start sub_0803EAEC
sub_0803EAEC: @ 0x0803EAEC
	push {lr}
	ldr r1, _0803EAF8 @ =gUnk_080D0880
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0803EAF8: .4byte gUnk_080D0880

	thumb_func_start sub_0803EAFC
sub_0803EAFC: @ 0x0803EAFC
	push {lr}
	ldr r2, _0803EB10 @ =gUnk_080D0898
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803EB10: .4byte gUnk_080D0898

	thumb_func_start sub_0803EB14
sub_0803EB14: @ 0x0803EB14
	push {lr}
	ldr r1, _0803EB20 @ =gUnk_080D0880
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_0803EB20: .4byte gUnk_080D0880

	thumb_func_start sub_0803EB24
sub_0803EB24: @ 0x0803EB24
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_0803EB2C
sub_0803EB2C: @ 0x0803EB2C
	adds r0, r4, #0
	bl sub_0803EAFC
	pop {r4, pc}

	thumb_func_start sub_0803EB34
sub_0803EB34: @ 0x0803EB34
	push {lr}
	movs r1, #0xff
	movs r2, #0x57
	bl sub_0804A7E0
	pop {pc}

	thumb_func_start nullsub_21
nullsub_21: @ 0x0803EB40
	bx lr
	.align 2, 0

	thumb_func_start sub_0803EB44
sub_0803EB44: @ 0x0803EB44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0803EBB2
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	movs r2, #0
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #0x28
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xfe
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0803EE8C
_0803EBB2:
	pop {r4, pc}

	thumb_func_start sub_0803EBB4
sub_0803EBB4: @ 0x0803EBB4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xa
	strb r1, [r0]
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803EBE4
	ldr r0, _0803EC10 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
_0803EBE4:
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803EC14
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803E94C
	b _0803EC24
	.align 2, 0
_0803EC10: .4byte gUnk_020000B0
_0803EC14:
	adds r0, r4, #0
	bl sub_0803EF20
	cmp r0, #0
	bne _0803EC24
	adds r0, r4, #0
	bl sub_0803EEA4
_0803EC24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803EC28
sub_0803EC28: @ 0x0803EC28
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x1c
	bls _0803EC4A
	subs r0, #1
	strb r0, [r1]
_0803EC4A:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EC64
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, #3
	movs r0, #0
	strb r0, [r1]
_0803EC64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803EC68
sub_0803EC68: @ 0x0803EC68
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x27
	bhi _0803EC8C
	adds r0, #1
	strb r0, [r1]
	b _0803EC92
_0803EC8C:
	adds r0, r4, #0
	bl sub_0803EE8C
_0803EC92:
	pop {r4, pc}

	thumb_func_start sub_0803EC94
sub_0803EC94: @ 0x0803EC94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	beq _0803ECD8
	ldrh r0, [r5]
	strh r0, [r4, #0x2e]
	ldrh r0, [r6]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0803EE8C
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	b _0803ED02
_0803ECD8:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ED02
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803E94C
	adds r0, r4, #0
	bl sub_080AEF88
_0803ED02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803ED04
sub_0803ED04: @ 0x0803ED04
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xc
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0803ED3C
	movs r0, #0
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #0x20
	adds r0, r4, #0
	bl sub_080042AC
_0803ED3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803ED40
sub_0803ED40: @ 0x0803ED40
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ED74
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xe]
	ldr r1, _0803ED78 @ =gUnk_080D08C4
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x7c
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x7f
	movs r0, #0xf6
	strb r0, [r1]
	adds r0, #0x65
	bl sub_08004488
_0803ED74:
	pop {pc}
	.align 2, 0
_0803ED78: .4byte gUnk_080D08C4

	thumb_func_start sub_0803ED7C
sub_0803ED7C: @ 0x0803ED7C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803ED94
	adds r0, r2, #0
	bl sub_080042B8
	b _0803EDD0
_0803ED94:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	adds r1, r2, #0
	adds r1, #0x7f
	cmp r0, #0
	bne _0803EDAE
	movs r0, #2
	strb r0, [r2, #0xe]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803EDAE:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803EDC0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	b _0803EDD0
_0803EDC0:
	movs r0, #8
	strb r0, [r2, #0xc]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	movs r0, #8
	movs r1, #0
	bl sub_08080964
_0803EDD0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EDD4
sub_0803EDD4: @ 0x0803EDD4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EDE8
	movs r0, #9
	strb r0, [r1, #0xc]
_0803EDE8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EDEC
sub_0803EDEC: @ 0x0803EDEC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0803EE26
	movs r0, #0xa
	strb r0, [r2, #0xc]
	movs r0, #0x3c
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #3
	strb r0, [r2, #0x15]
	subs r1, #2
	movs r0, #0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x10
	bl sub_0803E94C
	b _0803EE34
_0803EE26:
	cmp r0, #0x12
	bhi _0803EE34
	ldr r2, [r2, #0x54]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0803EE34:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EE38
sub_0803EE38: @ 0x0803EE38
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803EE60
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EE88
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	b _0803EE88
_0803EE60:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0803EE88
	adds r0, r4, #0
	bl sub_0803EE8C
_0803EE88:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803EE8C
sub_0803EE8C: @ 0x0803EE8C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7a
	movs r1, #0x1e
	strb r1, [r2]
	movs r1, #0
	bl sub_0803E94C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EEA4
sub_0803EEA4: @ 0x0803EEA4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803EEF8
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_0803EF04
	cmp r0, #0
	beq _0803EEF8
	ldr r0, _0803EEF4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0803EEF8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EF00
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	movs r0, #1
	b _0803EF02
	.align 2, 0
_0803EEF4: .4byte gUnk_020000B0
_0803EEF8:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x1e
	strb r0, [r1]
_0803EF00:
	movs r0, #0
_0803EF02:
	pop {r4, pc}

	thumb_func_start sub_0803EF04
sub_0803EF04: @ 0x0803EF04
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0803EF1C @ =gUnk_020000B0
	ldr r2, [r1]
	movs r4, #0x2e
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, #4
	bl sub_0806FCB8
	pop {r4, pc}
	.align 2, 0
_0803EF1C: .4byte gUnk_020000B0

	thumb_func_start sub_0803EF20
sub_0803EF20: @ 0x0803EF20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _0803EF5C @ =gUnk_03003D80
	ldr r4, [r6, #4]
	cmp r4, r6
	beq _0803EF6A
	ldr r7, _0803EF60 @ =gUnk_080D08C8
_0803EF2E:
	ldrb r0, [r4, #8]
	cmp r0, #8
	bne _0803EF64
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	beq _0803EF64
	movs r0, #2
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xb4
	strh r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	b _0803EF6C
	.align 2, 0
_0803EF5C: .4byte gUnk_03003D80
_0803EF60: .4byte gUnk_080D08C8
_0803EF64:
	ldr r4, [r4, #4]
	cmp r4, r6
	bne _0803EF2E
_0803EF6A:
	movs r0, #0
_0803EF6C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803EF70
sub_0803EF70: @ 0x0803EF70
	movs r0, #0
	bx lr

	thumb_func_start sub_0803EF74
sub_0803EF74: @ 0x0803EF74
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	movs r3, #0x50
	bl sub_0806FCB8
	cmp r0, #0
	beq _0803EFA8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	ldrb r1, [r4, #0x15]
	subs r1, r1, r0
	adds r1, #2
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #4
	bhi _0803EFA8
	movs r0, #1
	b _0803EFAA
_0803EFA8:
	movs r0, #0
_0803EFAA:
	pop {r4, r5, pc}

	thumb_func_start sub_0803EFAC
sub_0803EFAC: @ 0x0803EFAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r2, #0x50
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _0803EFD6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x1c
	bl sub_0804A044
	cmp r0, #0xff
	beq _0803EFD6
	ldrb r4, [r4, #0x15]
	cmp r0, r4
	bne _0803EFD6
	movs r0, #1
	b _0803EFD8
_0803EFD6:
	movs r0, #0
_0803EFD8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803EFDC
sub_0803EFDC: @ 0x0803EFDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803F004 @ =gUnk_080D0924
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0803F004: .4byte gUnk_080D0924

	thumb_func_start sub_0803F008
sub_0803F008: @ 0x0803F008
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803F024 @ =gUnk_080D093C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803F694
	pop {r4, pc}
	.align 2, 0
_0803F024: .4byte gUnk_080D093C

	thumb_func_start sub_0803F028
sub_0803F028: @ 0x0803F028
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803F05C
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0803F630
	adds r0, r4, #0
	bl sub_0803F6EC
_0803F05C:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x41
	cmp r0, #0x25
	bne _0803F07E
	ldrb r0, [r1]
	cmp r0, #0x80
	bne _0803F07E
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _0803F0E4
_0803F07E:
	ldrb r0, [r1]
	cmp r0, #0x9d
	bne _0803F08A
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0803F08A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F0B0
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803F0B0:
	adds r0, r4, #0
	adds r0, #0x45
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, r2
	beq _0803F0E4
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803F0D4
	adds r0, r4, #0
	bl sub_0803F51C
_0803F0D4:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsrs r1, r1, #4
	adds r1, #7
	adds r0, r4, #0
	bl sub_08004260
_0803F0E4:
	ldr r1, _0803F0F0 @ =gUnk_080D0924
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0803F0F0: .4byte gUnk_080D0924

	thumb_func_start sub_0803F0F4
sub_0803F0F4: @ 0x0803F0F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08001328
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F144
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F144
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F144
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803F144
	ldrb r1, [r1]
	subs r1, #7
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_0803F144:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F148
sub_0803F148: @ 0x0803F148
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803F164
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl sub_08004260
_0803F164:
	adds r0, r4, #0
	bl sub_08001242
	ldrh r1, [r4, #0x36]
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0803F178
	ldr r0, _0803F1A4 @ =0x0000FFFF
	strh r0, [r4, #0x36]
_0803F178:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F1A0
	ldrb r0, [r4, #0x14]
	movs r1, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803F630
_0803F1A0:
	pop {r4, pc}
	.align 2, 0
_0803F1A4: .4byte 0x0000FFFF

	thumb_func_start sub_0803F1A8
sub_0803F1A8: @ 0x0803F1A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0803F1CC
	ldr r0, _0803F1C8 @ =gUnk_080D0964
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0803F1DE
	.align 2, 0
_0803F1C8: .4byte gUnk_080D0964
_0803F1CC:
	adds r0, r4, #0
	bl sub_0803F51C
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_0803F1DE:
	pop {r4, pc}

	thumb_func_start sub_0803F1E0
sub_0803F1E0: @ 0x0803F1E0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	ldr r1, _0803F1F8 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	lsrs r1, r1, #2
	adds r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0
_0803F1F8: .4byte gLinkEntity

	thumb_func_start sub_0803F1FC
sub_0803F1FC: @ 0x0803F1FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F4E8
	pop {r4, pc}

	thumb_func_start sub_0803F20C
sub_0803F20C: @ 0x0803F20C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0803F244
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	cmp r0, #0
	beq _0803F23E
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0803F23E:
	adds r0, r4, #0
	bl sub_0804A7D4
_0803F244:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F248
sub_0803F248: @ 0x0803F248
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r2, #0x1e
	adds r1, r0, #0
	ands r1, r2
	movs r2, #0
	strb r1, [r4, #0x15]
	movs r1, #0xff
	strb r1, [r4, #0x14]
	movs r1, #1
	strb r1, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r1, [r1]
	adds r3, r4, #0
	adds r3, #0x7a
	strb r1, [r3]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803F28E
	adds r0, r4, #0
	bl sub_0803F50C
	b _0803F2A0
_0803F28E:
	adds r0, r4, #0
	bl sub_0803F51C
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_0803F2A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F2A4
sub_0803F2A4: @ 0x0803F2A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5A8
	cmp r0, #0
	beq _0803F2C0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x60
	ands r0, r1
	adds r0, #0xa
	strb r0, [r4, #0xe]
_0803F2C0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F2C4
sub_0803F2C4: @ 0x0803F2C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5A8
	cmp r0, #0
	bne _0803F2D8
	adds r0, r4, #0
	bl sub_0803F50C
	b _0803F322
_0803F2D8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F322
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803F308
	ldr r0, _0803F304 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	b _0803F310
	.align 2, 0
_0803F304: .4byte gUnk_020000B0
_0803F308:
	bl Random
	movs r1, #0x1f
	ands r0, r1
_0803F310:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_0803F322:
	pop {r4, pc}

	thumb_func_start sub_0803F324
sub_0803F324: @ 0x0803F324
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F33E
	adds r0, r4, #0
	bl sub_0803F51C
_0803F33E:
	pop {r4, pc}

	thumb_func_start sub_0803F340
sub_0803F340: @ 0x0803F340
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5D4
	cmp r0, #0
	bne _0803F36A
	adds r0, r4, #0
	bl sub_0803F58C
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F36A
	adds r0, r4, #0
	bl sub_0803F51C
_0803F36A:
	pop {r4, pc}

	thumb_func_start sub_0803F36C
sub_0803F36C: @ 0x0803F36C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0803F3A6
	adds r0, r4, #0
	bl sub_0803F66C
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F3AC
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, #0xfa
	strh r0, [r4, #0x24]
	b _0803F3AC
_0803F3A6:
	adds r0, r4, #0
	bl sub_0803F51C
_0803F3AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F3B0
sub_0803F3B0: @ 0x0803F3B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5A8
	cmp r0, #0
	bne _0803F3C4
	adds r0, r4, #0
	bl sub_0803F51C
	b _0803F41C
_0803F3C4:
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803F414
	ldrb r1, [r4, #0xe]
	adds r1, #1
	strb r1, [r4, #0xe]
	ldr r2, _0803F40C @ =gUnk_080D0970
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1e
	adds r0, r0, r2
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0803F3F6
	ldr r0, _0803F410 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0803F3F6:
	adds r0, r4, #0
	bl sub_0803F66C
	adds r0, r4, #0
	bl sub_080AEFB4
	adds r0, r4, #0
	bl sub_08004274
	b _0803F41C
	.align 2, 0
_0803F40C: .4byte gUnk_080D0970
_0803F410: .4byte gUnk_020000B0
_0803F414:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0803F41C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F420
sub_0803F420: @ 0x0803F420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F43A
	adds r0, r4, #0
	bl sub_0803F51C
_0803F43A:
	pop {r4, pc}

	thumb_func_start sub_0803F43C
sub_0803F43C: @ 0x0803F43C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F738
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803F474
	movs r2, #0
	movs r0, #9
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x78
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0803F474:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F478
sub_0803F478: @ 0x0803F478
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F494
	adds r0, r4, #0
	bl sub_0803F6C0
_0803F494:
	bl sub_0807953C
	adds r1, r4, #0
	adds r1, #0x78
	cmp r0, #0
	beq _0803F4A6
	ldrh r0, [r1]
	adds r0, #0xc
	strh r0, [r1]
_0803F4A6:
	ldr r2, _0803F500 @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F4B6
	movs r0, #0xe0
	strh r0, [r1]
_0803F4B6:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdf
	bls _0803F504
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	subs r1, #0x3f
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F51C
	adds r0, r4, #0
	bl sub_0803F6EC
	b _0803F50A
	.align 2, 0
_0803F500: .4byte gLinkEntity
_0803F504:
	adds r0, r4, #0
	bl sub_0803F738
_0803F50A:
	pop {r4, pc}

	thumb_func_start sub_0803F50C
sub_0803F50C: @ 0x0803F50C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #9
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803F51C
sub_0803F51C: @ 0x0803F51C
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_0803F528
	pop {pc}

	thumb_func_start sub_0803F528
sub_0803F528: @ 0x0803F528
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #8
	adds r1, r5, #0
	ands r1, r0
	adds r1, #8
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803F55C
	ldr r1, _0803F558 @ =gUnk_080D0978
	movs r0, #7
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	b _0803F562
	.align 2, 0
_0803F558: .4byte gUnk_080D0978
_0803F55C:
	adds r0, r4, #0
	bl sub_08049EE4
_0803F562:
	movs r1, #0x1e
	ands r0, r1
	strb r0, [r4, #0x15]
	ldr r2, _0803F588 @ =gUnk_080D0974
	lsrs r0, r5, #4
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x24
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F66C
	pop {r4, r5, pc}
	.align 2, 0
_0803F588: .4byte gUnk_080D0974

	thumb_func_start sub_0803F58C
sub_0803F58C: @ 0x0803F58C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x30]
	bl sub_080AEFB4
	ldr r1, [r5, #0x30]
	subs r4, r1, r4
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	subs r1, r1, r4
	str r1, [r5, #0x30]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803F5A8
sub_0803F5A8: @ 0x0803F5A8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0803F5BA
	movs r0, #0
	b _0803F5D2
_0803F5BA:
	ldr r0, _0803F5CC @ =gUnk_02033A90
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _0803F5D0
	adds r0, r4, #0
	bl sub_0806FD54
	b _0803F5D2
	.align 2, 0
_0803F5CC: .4byte gUnk_02033A90
_0803F5D0:
	movs r0, #1
_0803F5D2:
	pop {r4, pc}

	thumb_func_start sub_0803F5D4
sub_0803F5D4: @ 0x0803F5D4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803F5E8
	subs r0, #1
	strh r0, [r1]
	b _0803F62C
_0803F5E8:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803F62C
	adds r0, r4, #0
	bl sub_0806FD54
	cmp r0, #0
	bne _0803F61A
	ldr r0, _0803F624 @ =gUnk_02033A90
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	ble _0803F62C
	ldr r0, _0803F628 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x70
	movs r3, #0x48
	bl sub_080041A0
	cmp r0, #0
	beq _0803F62C
_0803F61A:
	adds r0, r4, #0
	bl sub_0803F630
	movs r0, #1
	b _0803F62E
	.align 2, 0
_0803F624: .4byte gUnk_02033A90
_0803F628: .4byte gUnk_020000B0
_0803F62C:
	movs r0, #0
_0803F62E:
	pop {r4, pc}

	thumb_func_start sub_0803F630
sub_0803F630: @ 0x0803F630
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x25
	strb r0, [r1]
	movs r5, #0
	ldr r0, _0803F664 @ =gUnk_03004040
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F64C
	movs r5, #0x3c
_0803F64C:
	bl Random
	ldr r2, _0803F668 @ =gUnk_080D0980
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_0803F664: .4byte gUnk_03004040
_0803F668: .4byte gUnk_080D0980

	thumb_func_start sub_0803F66C
sub_0803F66C: @ 0x0803F66C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803F680
	ldrb r0, [r2, #0x14]
	cmp r0, #0xff
	bne _0803F692
_0803F680:
	lsrs r0, r1, #4
	ldrb r1, [r2, #0x14]
	cmp r0, r1
	beq _0803F692
	strb r0, [r2, #0x14]
	adds r1, r0, #1
	adds r0, r2, #0
	bl sub_08004260
_0803F692:
	pop {pc}

	thumb_func_start sub_0803F694
sub_0803F694: @ 0x0803F694
	push {r4, lr}
	ldr r3, _0803F6BC @ =gUnk_080D0984
	movs r1, #0x7b
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r2, r1, #1
	mov r4, ip
	strb r2, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #3
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	pop {r4, pc}
	.align 2, 0
_0803F6BC: .4byte gUnk_080D0984

	thumb_func_start sub_0803F6C0
sub_0803F6C0: @ 0x0803F6C0
	push {r4, lr}
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r0]
	ldr r4, _0803F6E8 @ =gLinkEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x10
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	pop {r4, pc}
	.align 2, 0
_0803F6E8: .4byte gLinkEntity

	thumb_func_start sub_0803F6EC
sub_0803F6EC: @ 0x0803F6EC
	push {lr}
	ldr r2, _0803F72C @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	ldr r3, _0803F730 @ =gLinkState
	cmp r0, #0
	beq _0803F720
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
	ldr r0, _0803F734 @ =0x0000FFFE
	strh r0, [r2, #0x36]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	movs r0, #0x41
	strb r0, [r3, #2]
_0803F720:
	ldr r0, [r3, #0x30]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x30]
	pop {pc}
	.align 2, 0
_0803F72C: .4byte gLinkEntity
_0803F730: .4byte gLinkState
_0803F734: .4byte 0x0000FFFE

	thumb_func_start sub_0803F738
sub_0803F738: @ 0x0803F738
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077B2C
	ldr r2, _0803F768 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _0803F76C @ =gLinkEntity
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r4, #0x63
	ldrb r0, [r4]
	subs r0, #2
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0803F768: .4byte gLinkState
_0803F76C: .4byte gLinkEntity

	thumb_func_start sub_0803F770
sub_0803F770: @ 0x0803F770
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bhi _0803F810
	lsls r0, r0, #2
	ldr r1, _0803F784 @ =_0803F788
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F784: .4byte _0803F788
_0803F788: @ jump table
	.4byte _0803F7A0 @ case 0
	.4byte _0803F7D0 @ case 1
	.4byte _0803F7D8 @ case 2
	.4byte _0803F7E0 @ case 3
	.4byte _0803F7E8 @ case 4
	.4byte _0803F800 @ case 5
_0803F7A0:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0803F7C8
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x7a
	strh r0, [r2]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	adds r2, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080409B0
_0803F7C8:
	ldr r0, _0803F7CC @ =gUnk_080D0AC8
	b _0803F7EA
	.align 2, 0
_0803F7CC: .4byte gUnk_080D0AC8
_0803F7D0:
	ldr r0, _0803F7D4 @ =gUnk_080D0AE8
	b _0803F7EA
	.align 2, 0
_0803F7D4: .4byte gUnk_080D0AE8
_0803F7D8:
	ldr r0, _0803F7DC @ =gUnk_080D0AF0
	b _0803F7EA
	.align 2, 0
_0803F7DC: .4byte gUnk_080D0AF0
_0803F7E0:
	ldr r0, _0803F7E4 @ =gUnk_080D0AFC
	b _0803F7EA
	.align 2, 0
_0803F7E4: .4byte gUnk_080D0AFC
_0803F7E8:
	ldr r0, _0803F7FC @ =gUnk_080D0B04
_0803F7EA:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0803F810
	.align 2, 0
_0803F7FC: .4byte gUnk_080D0B04
_0803F800:
	ldr r0, _0803F814 @ =gUnk_080D0B0C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803F810:
	pop {r4, pc}
	.align 2, 0
_0803F814: .4byte gUnk_080D0B0C

	thumb_func_start sub_0803F818
sub_0803F818: @ 0x0803F818
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	beq _0803F910
	ldr r0, _0803F8FC @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x50
	bhi _0803F910
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r3, r5, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r2, r0
	strb r2, [r1]
	bl Random
	movs r1, #0x17
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0x15]
	movs r0, #0x30
	strb r0, [r5, #0xe]
	movs r0, #0xc
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #4
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x74
	strb r4, [r0]
	adds r0, #3
	strb r4, [r0]
	adds r1, #4
	movs r0, #9
	strb r0, [r1]
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x86
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldrh r1, [r5, #0x2e]
	subs r0, #0xf
	strh r1, [r0]
	ldrh r0, [r5, #0x2e]
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x7c
	strh r1, [r0]
	ldrh r0, [r5, #0x32]
	adds r1, r5, #0
	adds r1, #0x7e
	strh r0, [r1]
	movs r4, #1
	adds r7, r5, #0
	adds r7, #0x75
_0803F8C2:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08040648
	adds r4, #1
	cmp r4, #5
	bls _0803F8C2
	bl Random
	adds r0, r5, #0
	bl sub_080408EC
	movs r4, #0
	movs r6, #1
_0803F8E0:
	movs r0, #0x5a
	movs r1, #0
	bl CreateEnemy
	str r5, [r0, #0x50]
	strb r4, [r0, #0xb]
	ldrb r1, [r7]
	asrs r1, r4
	ands r1, r6
	cmp r1, #0
	beq _0803F900
	strb r6, [r0, #0xe]
	b _0803F902
	.align 2, 0
_0803F8FC: .4byte gUnk_03003DBC
_0803F900:
	strb r1, [r0, #0xe]
_0803F902:
	adds r4, #1
	cmp r4, #7
	bls _0803F8E0
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
_0803F910:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803F914
sub_0803F914: @ 0x0803F914
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0x80
	ldrb r0, [r4]
	cmp r0, #2
	beq _0803F998
	cmp r0, #2
	bgt _0803F932
	cmp r0, #0
	beq _0803F95A
	cmp r0, #1
	beq _0803F97A
	b _0803FA40
_0803F932:
	cmp r0, #4
	bne _0803F938
	b _0803FA3A
_0803F938:
	cmp r0, #4
	blt _0803F9CE
	adds r3, r4, #0
	cmp r0, #0xff
	beq _0803F944
	b _0803FA42
_0803F944:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803FA42
	strb r0, [r3]
	movs r0, #0xb
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F95A:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	adds r3, r4, #0
	cmp r0, #0
	bne _0803FA42
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x24]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F97A:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	adds r3, r4, #0
	cmp r0, #0
	bne _0803FA42
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0xc0
	strh r0, [r7, #0x24]
	movs r0, #0xc
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F998:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, r4, #0
	cmp r1, #0
	bne _0803FA42
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strh r1, [r7, #0x24]
	ldrb r0, [r7, #0x14]
	cmp r0, #1
	bhi _0803F9C8
	str r3, [sp]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r7, #0xe]
	ldr r3, [sp]
	b _0803FA42
_0803F9C8:
	movs r0, #8
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F9CE:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FA32
	movs r0, #0
	strh r1, [r7, #0x36]
	strb r0, [r4]
	ldr r1, _0803FA04 @ =gUnk_080D0ABF
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #0xe]
	adds r0, r7, #0
	bl sub_08040934
	adds r1, r0, #0
	cmp r1, #2
	beq _0803FA1A
	cmp r1, #2
	bhi _0803FA08
	cmp r1, #1
	beq _0803FA0E
	b _0803FA26
	.align 2, 0
_0803FA04: .4byte gUnk_080D0ABF
_0803FA08:
	cmp r1, #3
	beq _0803FA20
	b _0803FA26
_0803FA0E:
	movs r0, #4
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x74
	strb r1, [r0]
	b _0803FA40
_0803FA1A:
	movs r0, #5
	strb r0, [r7, #0xc]
	b _0803FA40
_0803FA20:
	movs r0, #6
	strb r0, [r7, #0xc]
	b _0803FA40
_0803FA26:
	adds r1, r7, #0
	adds r1, #0x80
	movs r0, #4
	strb r0, [r1]
	adds r3, r1, #0
	b _0803FA42
_0803FA32:
	adds r0, r7, #0
	bl sub_08040AD4
	b _0803FA40
_0803FA3A:
	adds r0, r7, #0
	bl sub_08040670
_0803FA40:
	adds r3, r4, #0
_0803FA42:
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803FAAC
	movs r0, #4
	strb r0, [r1]
	ldrb r2, [r7, #0x15]
	adds r2, #0x12
	movs r0, #0x1c
	ands r2, r0
	asrs r2, r2, #2
	movs r0, #0x9b
	movs r1, #0
	str r3, [sp]
	bl CreateObject
	adds r6, r0, #0
	ldr r3, [sp]
	cmp r6, #0
	beq _0803FAAC
	str r7, [r6, #0x50]
	str r3, [sp]
	bl Random
	movs r5, #0xf
	ands r0, r5
	ldr r1, _0803FAC4 @ =0x0000FFF9
	adds r4, r1, #0
	adds r0, r4, r0
	ldrh r1, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	bl Random
	ands r0, r5
	adds r4, r4, r0
	ldrh r0, [r6, #0x32]
	adds r4, r4, r0
	strh r4, [r6, #0x32]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [sp]
_0803FAAC:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0803FAB8
	adds r0, r7, #0
	bl sub_080AEF88
_0803FAB8:
	adds r0, r7, #0
	bl sub_080042B8
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0803FAC4: .4byte 0x0000FFF9

	thumb_func_start sub_0803FAC8
sub_0803FAC8: @ 0x0803FAC8
	push {lr}
	bl sub_080042B8
	pop {pc}

	thumb_func_start sub_0803FAD0
sub_0803FAD0: @ 0x0803FAD0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #5
	bls _0803FADE
	b _0803FD32
_0803FADE:
	lsls r0, r0, #2
	ldr r1, _0803FAE8 @ =_0803FAEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803FAE8: .4byte _0803FAEC
_0803FAEC: @ jump table
	.4byte _0803FB04 @ case 0
	.4byte _0803FB34 @ case 1
	.4byte _0803FBB8 @ case 2
	.4byte _0803FBE2 @ case 3
	.4byte _0803FC80 @ case 4
	.4byte _0803FD0C @ case 5
_0803FB04:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r7, #0
	bl sub_080044EC
	adds r1, r0, #0
	cmp r1, #1
	beq _0803FB16
	b _0803FD32
_0803FB16:
	adds r0, r7, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0xc0
	strb r0, [r7, #0xe]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x14
	b _0803FC4A
_0803FB34:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r7, #0
	adds r3, #0x80
	cmp r2, #0
	bne _0803FB58
	movs r0, #2
	strb r0, [r3]
	adds r1, r7, #0
	adds r1, #0x3f
	movs r0, #0x35
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x62
	strb r2, [r0]
_0803FB58:
	adds r2, r7, #0
	adds r2, #0x45
	ldr r0, _0803FB70 @ =gUnk_080D0ABC
	ldrb r1, [r7, #0x14]
	adds r1, r1, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0803FB74
	movs r0, #1
	strb r0, [r7, #0xe]
	b _0803FB76
	.align 2, 0
_0803FB70: .4byte gUnk_080D0ABC
_0803FB74:
	movs r0, #0
_0803FB76:
	cmp r0, #0
	bne _0803FB7C
	b _0803FD32
_0803FB7C:
	movs r1, #0
	movs r0, #2
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x3f
	movs r0, #0x35
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x62
	strb r1, [r0]
	ldrb r0, [r7, #0x14]
	adds r0, #1
	strb r0, [r7, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803FBA0
	b _0803FD32
_0803FBA0:
	movs r0, #7
	strb r0, [r7, #0xc]
	movs r0, #0xe0
	strb r0, [r7, #0xe]
	bl sub_0807A108
	ldr r0, _0803FBB4 @ =0x00000127
	bl PlaySFX
	b _0803FD4E
	.align 2, 0
_0803FBB4: .4byte 0x00000127
_0803FBB8:
	ldr r0, [r7, #0x54]
	adds r0, #0x74
	movs r1, #0x10
	strb r1, [r0]
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0803FBD4
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #3
	strb r1, [r0]
	movs r0, #0x40
	strb r0, [r7, #0xe]
	b _0803FD32
_0803FBD4:
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #4
	strb r1, [r0]
	movs r0, #0x50
	strb r0, [r7, #0xe]
	b _0803FD32
_0803FBE2:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0803FC08
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803FBF4
	b _0803FD32
_0803FBF4:
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r7, #0x20]
	movs r0, #0x10
	strb r0, [r7, #0xf]
	b _0803FD32
_0803FC08:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r7, #0
	bl sub_08003FC4
	adds r2, r0, #0
	cmp r2, #0
	bne _0803FC52
	adds r1, r7, #0
	adds r1, #0x80
	movs r0, #5
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r7, #0xe]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r7, #0
	bl sub_080408EC
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x1e
_0803FC4A:
	movs r1, #4
	bl sub_08080964
	b _0803FD32
_0803FC52:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _0803FD32
	subs r1, r0, #1
	strb r1, [r7, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FC6C
	movs r0, #0xd8
	lsls r0, r0, #1
	bl PlaySFX
	b _0803FD32
_0803FC6C:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FD32
	ldr r0, _0803FC7C @ =0x00000149
	bl PlaySFX
	b _0803FD32
	.align 2, 0
_0803FC7C: .4byte 0x00000149
_0803FC80:
	ldrb r0, [r7, #0xe]
	subs r1, r0, #1
	strb r1, [r7, #0xe]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0803FCA8
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #5
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r7, #0xe]
	adds r0, r7, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r7, #0
	bl sub_080408EC
	b _0803FD32
_0803FCA8:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803FD32
	movs r0, #0x9b
	movs r1, #1
	movs r2, #0xff
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _0803FD32
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	bl CopyPosition
	bl Random
	movs r5, #0xf
	ands r0, r5
	ldr r1, _0803FD08 @ =0x0000FFF9
	adds r4, r1, #0
	adds r0, r4, r0
	ldrh r1, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	bl Random
	ands r0, r5
	adds r4, r4, r0
	ldrh r0, [r6, #0x32]
	adds r4, r4, r0
	strh r4, [r6, #0x32]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
	b _0803FD32
	.align 2, 0
_0803FD08: .4byte 0x0000FFF9
_0803FD0C:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FD32
	movs r0, #1
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0xb
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_08040670
_0803FD32:
	adds r0, r7, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bls _0803FD48
	ldrb r1, [r7, #0xe]
	movs r0, #1
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
_0803FD48:
	adds r0, r7, #0
	bl sub_080042B8
_0803FD4E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803FD50
sub_0803FD50: @ 0x0803FD50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #1
	beq _0803FDA8
	cmp r0, #1
	bgt _0803FD68
	cmp r0, #0
	beq _0803FD72
	b _0803FE86
_0803FD68:
	cmp r0, #2
	beq _0803FE0C
	cmp r0, #3
	beq _0803FE62
	b _0803FE86
_0803FD72:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0803FD82
	b _0803FE86
_0803FD82:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r0, _0803FDA4 @ =0x0000012B
	bl PlaySFX
	b _0803FE86
	.align 2, 0
_0803FDA4: .4byte 0x0000012B
_0803FDA8:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0803FE86
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803FDD8
	cmp r0, #1
	bgt _0803FDD0
	cmp r0, #0
	beq _0803FDDE
	b _0803FDE4
_0803FDD0:
	cmp r0, #2
	beq _0803FDDE
	cmp r0, #3
	bne _0803FDE4
_0803FDD8:
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0803FDF0
_0803FDDE:
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803FDF0
_0803FDE4:
	bl Random
	movs r1, #0x20
	ands r1, r0
	lsrs r1, r1, #5
	strb r1, [r4, #0xf]
_0803FDF0:
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _0803FDFA
	movs r0, #1
	strb r0, [r4, #0xf]
_0803FDFA:
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x1e
	movs r1, #4
	bl sub_08080964
	b _0803FE86
_0803FE0C:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FE34
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, _0803FE30 @ =gUnk_080D0ABF
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	b _0803FE86
	.align 2, 0
_0803FE30: .4byte gUnk_080D0ABF
_0803FE34:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FE46
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0804A98C
_0803FE46:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803FE86
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _0803FE86
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _0803FE86
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803FE86
_0803FE62:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FE80
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r5]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08040670
	b _0803FE86
_0803FE80:
	adds r0, r4, #0
	bl sub_08040AD4
_0803FE86:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803FE90
sub_0803FE90: @ 0x0803FE90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x80
	ldrb r2, [r3]
	cmp r2, #1
	beq _0803FED4
	cmp r2, #1
	bgt _0803FEA8
	cmp r2, #0
	beq _0803FEAE
	b _0803FF74
_0803FEA8:
	cmp r2, #2
	beq _0803FF52
	b _0803FF74
_0803FEAE:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803FF74
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _0803FF74
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0803FF74
_0803FED4:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FEFC
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r1, _0803FEF8 @ =gUnk_080D0ABF
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	orrs r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	b _0803FF74
	.align 2, 0
_0803FEF8: .4byte gUnk_080D0ABF
_0803FEFC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803FF24
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FF14
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0804A98C
_0803FF14:
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _0803FF74
	movs r0, #0x40
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803FF74
_0803FF24:
	movs r5, #0xf
	ands r5, r1
	cmp r5, #0
	bne _0803FF74
	adds r0, r4, #0
	movs r1, #0x1f
	movs r2, #2
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0803FF74
	strb r5, [r1, #0xb]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FF74
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x24]
	b _0803FF74
_0803FF52:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FF6E
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r3]
	adds r0, r4, #0
	bl sub_08040670
	b _0803FF74
_0803FF6E:
	adds r0, r4, #0
	bl sub_08040AD4
_0803FF74:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0803FF7C
sub_0803FF7C: @ 0x0803FF7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r5, [r2]
	cmp r5, #1
	beq _0803FFBC
	cmp r5, #1
	bgt _0803FF94
	cmp r5, #0
	beq _0803FF9A
	b _08040062
_0803FF94:
	cmp r5, #2
	beq _08040040
	b _08040062
_0803FF9A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040062
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _08040062
	movs r0, #1
	strb r0, [r4, #0xf]
	b _08040062
_0803FFBC:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FFE4
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r1, _0803FFE0 @ =gUnk_080D0ABF
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	orrs r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	b _08040062
	.align 2, 0
_0803FFE0: .4byte gUnk_080D0ABF
_0803FFE4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0804000C
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FFFC
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0804A98C
_0803FFFC:
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08040062
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040062
_0804000C:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _08040062
	adds r0, r4, #0
	movs r1, #0x1f
	movs r2, #2
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08040062
	strb r5, [r1, #0xb]
	ldrh r0, [r1, #0x32]
	subs r0, #0x20
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040062
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x24]
	b _08040062
_08040040:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0804005C
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_08040670
	b _08040062
_0804005C:
	adds r0, r4, #0
	bl sub_08040AD4
_08040062:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804006C
sub_0804006C: @ 0x0804006C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08040090
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080400C2
	movs r0, #2
	bl sub_0807CD10
	movs r0, #8
	strb r0, [r4, #0xf]
	b _080400BA
_08040090:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080400B4
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080400BA
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080400BA
_080400B4:
	adds r0, r4, #0
	bl sub_0804A7D4
_080400BA:
	adds r0, r4, #0
	bl sub_080042B8
	b _08040126
_080400C2:
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xf]
	cmp r0, #0
	bne _08040120
	adds r0, r4, #0
	movs r1, #0x55
	movs r2, #0
	bl CreateFX
	adds r5, r0, #0
	cmp r5, #0
	beq _08040120
	bl Random
	ldr r1, _08040128 @ =0x00003F3F
	ands r0, r1
	movs r3, #0xff
	adds r1, r0, #0
	ands r1, r3
	ldr r6, _0804012C @ =0x0000FFE0
	adds r2, r6, #0
	adds r1, r2, r1
	ldrh r6, [r5, #0x2e]
	adds r1, r1, r6
	strh r1, [r5, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r5, #0x32]
	adds r2, r2, r0
	strh r2, [r5, #0x32]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
_08040120:
	adds r0, r4, #0
	bl sub_080042B8
_08040126:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08040128: .4byte 0x00003F3F
_0804012C: .4byte 0x0000FFE0

	thumb_func_start sub_08040130
sub_08040130: @ 0x08040130
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xe]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #6
	orrs r1, r2
	strb r1, [r3]
	ldrb r1, [r0, #0xe]
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804015C
sub_0804015C: @ 0x0804015C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804017C
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_0804017C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804019E
	adds r0, r4, #0
	bl sub_080042B8
	b _080401A6
_0804019E:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
_080401A6:
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bls _080401C0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080401D2
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	b _080401D2
_080401C0:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080401D2
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_080401D2:
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _080401DC
	ldrh r0, [r5, #0x36]
	strh r0, [r4, #0x36]
_080401DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080401E0
sub_080401E0: @ 0x080401E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	adds r5, r1, #0
	cmp r5, #0
	beq _08040212
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0xb]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	b _08040260
_08040212:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08040264 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _08040260
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_08040648
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	bl sub_08040648
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x17
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_08040260:
	pop {r4, r5, pc}
	.align 2, 0
_08040264: .4byte gUnk_03003DBC

	thumb_func_start sub_08040268
sub_08040268: @ 0x08040268
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040286
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_08040286:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r2, [r4, #0xb]
	cmp r2, #1
	beq _080402C6
	cmp r2, #1
	bgt _0804029E
	cmp r2, #0
	beq _080402E4
	b _08040382
_0804029E:
	cmp r2, #2
	bne _08040382
	ldr r1, _080402DC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	lsls r0, r0, #1
	ldr r1, _080402E0 @ =gUnk_080D0B18
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r2, [r4, #0x2e]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_080402C6:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x1e]
	cmp r0, #2
	beq _08040382
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08040382
	.align 2, 0
_080402DC: .4byte gLinkEntity
_080402E0: .4byte gUnk_080D0B18
_080402E4:
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r0, [r5]
	cmp r0, #1
	beq _0804032E
	cmp r0, #1
	bgt _080402F8
	cmp r0, #0
	beq _08040302
	b _08040382
_080402F8:
	cmp r0, #0x10
	beq _08040354
	cmp r0, #0x11
	beq _08040366
	b _08040382
_08040302:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040382
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x27
	strb r0, [r4, #0xf]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08040382
	strb r1, [r5]
	adds r0, r4, #0
	movs r1, #8
	bl sub_080042AC
	b _08040382
_0804032E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040382
	strb r2, [r5]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x17
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _08040382
_08040354:
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
	movs r0, #0x11
	strb r0, [r5]
	movs r0, #0x50
	strb r0, [r4, #0xf]
	b _08040382
_08040366:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040382
	movs r0, #1
	strb r0, [r5]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #8
	bl sub_080042AC
_08040382:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804038C
sub_0804038C: @ 0x0804038C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080403AA
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_080403AA:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x1e]
	cmp r0, #2
	bne _080403CA
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
_080403CA:
	pop {r4, pc}

	thumb_func_start sub_080403CC
sub_080403CC: @ 0x080403CC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	subs r1, #9
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080403EC
sub_080403EC: @ 0x080403EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804040A
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_0804040A:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804041C
sub_0804041C: @ 0x0804041C
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #0xa
	strb r1, [r0, #0xe]
	ldrb r2, [r0, #0x18]
	subs r1, #0xe
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804044C
sub_0804044C: @ 0x0804044C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804046A
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_0804046A:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	beq _0804048A
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _080404BC
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080404BC
_0804048A:
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	bne _080404A6
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_080404A6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080404BC
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r0, _080404CC @ =0x00000149
	bl PlaySFX
_080404BC:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080404CC: .4byte 0x00000149

	thumb_func_start sub_080404D0
sub_080404D0: @ 0x080404D0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _080404FC
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #0xa
	strb r0, [r2, #0xe]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x12
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	movs r1, #2
	bl sub_08004260
	b _08040518
_080404FC:
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08040518:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804051C
sub_0804051C: @ 0x0804051C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804053A
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_0804053A:
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804054A
	cmp r0, #1
	beq _0804056C
	b _080405C4
_0804054A:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	bne _080405CC
	movs r0, #1
	movs r2, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _080405C4
_0804056C:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	beq _08040582
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080405C4
_08040582:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080405A8
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080405D0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _080405A8
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08040648
_080405A8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080405BE
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r0, _080405D4 @ =0x00000149
	bl PlaySFX
_080405BE:
	adds r0, r4, #0
	bl sub_08004274
_080405C4:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080405CC:
	pop {r4, pc}
	.align 2, 0
_080405D0: .4byte gUnk_03003DBC
_080405D4: .4byte 0x00000149

	thumb_func_start sub_080405D8
sub_080405D8: @ 0x080405D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080405F6
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_080405F6:
	adds r3, r4, #0
	adds r3, #0x80
	ldrb r2, [r3]
	cmp r2, #0
	bne _08040626
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	beq _08040638
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040638
	adds r0, r2, #1
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _08040638
_08040626:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040638
	bl sub_0805E780
_08040638:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08040648
sub_08040648: @ 0x08040648
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r0, #0x4f
	bl CreateEnemy
	adds r5, r0, #0
	strb r7, [r5, #0xb]
	str r6, [r5, #0x50]
	adds r0, r6, #0
	adds r1, r5, #0
	bl CopyPosition
	cmp r4, #2
	bne _0804066E
	cmp r7, #0
	bne _0804066E
	str r5, [r6, #0x54]
_0804066E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08040670
sub_08040670: @ 0x08040670
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
	movs r0, #0xc
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08040698
	adds r0, r2, #0
	bl sub_080406A0
	b _0804069E
_08040698:
	adds r0, r2, #0
	bl sub_08040770
_0804069E:
	pop {pc}

	thumb_func_start sub_080406A0
sub_080406A0: @ 0x080406A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl Random
	mov r8, r0
	movs r0, #0x30
	mov r1, r8
	ands r1, r0
	mov r8, r1
	adds r0, r5, #0
	adds r0, #0x86
	ldrb r6, [r0]
	ldr r2, _080406F0 @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _080406F4 @ =gUnk_080D0B58
	lsls r1, r6, #1
	lsls r0, r6, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r7, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0x1c
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804071E
	cmp r6, #0
	beq _080406F8
	movs r6, #0
	b _08040702
	.align 2, 0
_080406F0: .4byte gRoomControls
_080406F4: .4byte gUnk_080D0B58
_080406F8:
	bl Random
	movs r1, #1
	ands r1, r0
	adds r6, r1, #1
_08040702:
	ldr r2, _0804074C @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _08040750 @ =gUnk_080D0B58
	lsls r1, r6, #1
	lsls r0, r6, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r7, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
_0804071E:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080045D4
	strb r0, [r5, #0x15]
	movs r0, #0x20
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804075A
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	beq _08040754
	adds r0, r1, #1
	b _08040758
	.align 2, 0
_0804074C: .4byte gRoomControls
_08040750: .4byte gUnk_080D0B58
_08040754:
	adds r0, r1, #0
	adds r0, #0x1f
_08040758:
	strb r0, [r5, #0x15]
_0804075A:
	ldrb r0, [r5, #0x15]
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x86
	strb r6, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08040770
sub_08040770: @ 0x08040770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl Random
	mov r8, r0
	movs r0, #0x38
	mov r1, r8
	ands r1, r0
	mov r8, r1
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r5, [r0]
	ldr r2, _080407CC @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _080407D0 @ =gUnk_080D0B64
	lsls r1, r5, #1
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r6, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0x1c
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804089A
	ldrb r0, [r7, #0x14]
	cmp r0, #2
	beq _08040822
	movs r0, #8
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _080407D4
	adds r5, #1
	b _080407D6
	.align 2, 0
_080407CC: .4byte gRoomControls
_080407D0: .4byte gUnk_080D0B64
_080407D4:
	adds r5, #3
_080407D6:
	movs r0, #3
	ands r5, r0
	adds r0, r7, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804087E
	adds r0, r7, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0x3c
	beq _0804080A
	cmp r0, #0x3c
	bgt _080407F8
	cmp r0, #0xf
	beq _08040802
	b _0804087E
_080407F8:
	cmp r0, #0xc3
	beq _0804081A
	cmp r0, #0xf0
	beq _08040812
	b _0804087E
_08040802:
	cmp r5, #0
	bne _0804087E
	movs r5, #2
	b _0804087E
_0804080A:
	cmp r5, #1
	bne _0804087E
	movs r5, #3
	b _0804087E
_08040812:
	cmp r5, #2
	bne _0804087E
	movs r5, #0
	b _0804087E
_0804081A:
	cmp r5, #3
	bne _0804087E
	movs r5, #1
	b _0804087E
_08040822:
	adds r1, r7, #0
	adds r1, #0x87
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08040848
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0804083E
	adds r5, #1
	b _08040840
_0804083E:
	adds r5, #3
_08040840:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804087A
_08040848:
	bl Random
	movs r1, #7
	ands r0, r1
	adds r0, #4
	strb r0, [r4]
	ldrb r6, [r4]
	bl Random
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08040868
	movs r1, #0x80
	orrs r1, r6
	b _0804086A
_08040868:
	adds r1, r6, #0
_0804086A:
	strb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040878
	adds r5, #1
	b _0804087A
_08040878:
	adds r5, #3
_0804087A:
	movs r0, #3
	ands r5, r0
_0804087E:
	ldr r2, _080408C8 @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _080408CC @ =gUnk_080D0B64
	lsls r1, r5, #1
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r6, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
_0804089A:
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_080045D4
	strb r0, [r7, #0x15]
	movs r0, #0x20
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080408D6
	ldrb r1, [r7, #0x15]
	movs r0, #0x10
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	beq _080408D0
	adds r0, r1, #1
	b _080408D4
	.align 2, 0
_080408C8: .4byte gRoomControls
_080408CC: .4byte gUnk_080D0B64
_080408D0:
	adds r0, r1, #0
	adds r0, #0x1f
_080408D4:
	strb r0, [r7, #0x15]
_080408D6:
	ldrb r0, [r7, #0x15]
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r7, #0x15]
	adds r0, r7, #0
	adds r0, #0x86
	strb r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080408EC
sub_080408EC: @ 0x080408EC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08040902
	movs r1, #0xf0
	adds r4, r2, #0
	adds r4, #0x75
	adds r5, r2, #0
	adds r5, #0x76
	b _08040926
_08040902:
	adds r4, r2, #0
	adds r4, #0x75
	adds r5, r2, #0
	adds r5, #0x76
	ldr r7, _08040930 @ =gUnk_080D0B74
	movs r6, #0x3c
_0804090E:
	bl Random
	ands r0, r6
	lsrs r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0]
	ldrb r0, [r4]
	cmp r1, r0
	bne _08040922
	movs r1, #0xff
_08040922:
	cmp r1, #0xff
	beq _0804090E
_08040926:
	movs r0, #0
	strb r1, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08040930: .4byte gUnk_080D0B74

	thumb_func_start sub_08040934
sub_08040934: @ 0x08040934
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x3e
	ands r1, r0
	movs r2, #0
	cmp r1, #0x2e
	bhi _08040948
	movs r2, #1
_08040948:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08040958
	movs r2, #0
_08040958:
	adds r4, #0x84
	ldrb r0, [r4]
	cmp r0, #9
	beq _080409A4
	cmp r2, #0
	beq _080409AA
	adds r0, #1
	movs r1, #5
	bl __modsi3
	strb r0, [r4]
	bl Random
	movs r1, #0xf8
	ands r1, r0
	lsrs r1, r1, #3
	ldr r0, _08040998 @ =gUnk_080D0B84
	adds r0, r1, r0
	ldrb r2, [r0]
	ldrb r0, [r4]
	cmp r0, #1
	beq _0804099C
	cmp r0, #1
	blt _080409AA
	cmp r0, #4
	bgt _080409AA
	cmp r0, #3
	blt _080409AA
	cmp r2, #0
	bne _080409AA
	b _080409A8
	.align 2, 0
_08040998: .4byte gUnk_080D0B84
_0804099C:
	cmp r2, #0
	beq _080409A8
	movs r2, #3
	b _080409AA
_080409A4:
	movs r0, #0
	strb r0, [r4]
_080409A8:
	movs r2, #1
_080409AA:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080409B0
sub_080409B0: @ 0x080409B0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x81
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	cmp r1, #1
	beq _080409EA
	cmp r1, #1
	bgt _080409CA
	cmp r1, #0
	beq _080409D0
	b _08040A68
_080409CA:
	cmp r1, #2
	beq _08040A04
	b _08040A68
_080409D0:
	adds r0, r4, #0
	adds r0, #0x75
	adds r2, r4, #0
	adds r2, #0x76
	ldrb r0, [r0]
	ldrb r3, [r2]
	cmp r0, r3
	bne _08040A68
	movs r0, #1
	mov r3, ip
	strb r0, [r3]
	strb r1, [r2]
	b _08040A68
_080409EA:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040A68
	movs r0, #2
	mov r1, ip
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x10
	strb r0, [r1]
	b _08040A68
_08040A04:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08040A68
	adds r0, r4, #0
	adds r0, #0x75
	adds r3, r4, #0
	adds r3, #0x76
	ldrb r1, [r0]
	ldrb r0, [r3]
	ands r0, r1
	cmp r1, r0
	beq _08040A3C
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	strb r2, [r3]
	ldr r0, _08040A38 @ =0x00000155
	bl PlaySFX
	b _08040A68
	.align 2, 0
_08040A38: .4byte 0x00000155
_08040A3C:
	movs r1, #3
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	mov r3, ip
	strb r1, [r3]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x36
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xb2
	lsls r0, r0, #1
	bl PlaySFX
_08040A68:
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08040A84
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040AC8
	adds r0, r4, #0
	bl sub_080AF18C
	b _08040AC8
_08040A84:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08040AB0
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08040AB0
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
	ldr r0, _08040ACC @ =0x00000127
	bl PlaySFX
_08040AB0:
	ldrb r0, [r5]
	cmp r0, #0x8a
	bne _08040AC8
	ldr r0, _08040AD0 @ =gLinkState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08040AC8
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xc0
	strb r0, [r1]
_08040AC8:
	pop {r4, r5, pc}
	.align 2, 0
_08040ACC: .4byte 0x00000127
_08040AD0: .4byte gLinkState

	thumb_func_start sub_08040AD4
sub_08040AD4: @ 0x08040AD4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	movs r1, #0x3f
	ands r1, r0
	lsls r6, r1, #0x18
	lsrs r4, r6, #0x18
	movs r0, #0x1f
	ands r0, r4
	cmp r0, #0
	bne _08040AF0
	ldr r0, _08040B0C @ =0x000001A9
	bl PlaySFX
_08040AF0:
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	bne _08040B2A
	lsrs r4, r6, #0x1a
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	adds r0, r4, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08040B10
	subs r0, r2, #1
	b _08040B12
	.align 2, 0
_08040B0C: .4byte 0x000001A9
_08040B10:
	adds r0, r2, #1
_08040B12:
	strh r0, [r5, #0x2e]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #2
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08040B26
	subs r0, r2, #1
	b _08040B28
_08040B26:
	adds r0, r2, #1
_08040B28:
	strh r0, [r5, #0x32]
_08040B2A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08040B2C
sub_08040B2C: @ 0x08040B2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08040B5C
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08040B5C
	adds r0, r5, #0
	bl sub_08041300
	cmp r0, #0
	beq _08040B4E
	adds r0, r5, #0
	bl sub_0803F6EC
_08040B4E:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_08040B5C:
	ldr r4, _08040B80 @ =gUnk_080D0DC4
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_08040B80: .4byte gUnk_080D0DC4

	thumb_func_start sub_08040B84
sub_08040B84: @ 0x08040B84
	push {lr}
	ldr r2, _08040B98 @ =gUnk_080D0DDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08040B98: .4byte gUnk_080D0DDC

	thumb_func_start sub_08040B9C
sub_08040B9C: @ 0x08040B9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08040BD0
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08041134
	adds r0, r4, #0
	bl sub_0803F6EC
_08040BD0:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _08040BF4
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	bne _08040C0E
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _08040C9C
_08040BF4:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	bne _08040C0E
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
_08040C0E:
	ldrb r0, [r5]
	cmp r0, #0x9d
	bne _08040C1A
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_08040C1A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C40
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08040C40:
	adds r0, r4, #0
	adds r0, #0x45
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r2, [r0]
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5]
	cmp r2, r0
	beq _08040C9C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040C70
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl sub_08004260
	b _08040C98
_08040C70:
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08040C84
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1]
_08040C84:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r6]
	movs r0, #0xa
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08040C98:
	ldrb r0, [r6]
	strb r0, [r5]
_08040C9C:
	ldr r1, _08040CA8 @ =gUnk_080D0DC4
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08040CA8: .4byte gUnk_080D0DC4

	thumb_func_start sub_08040CAC
sub_08040CAC: @ 0x08040CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08001328
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040D04
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D2C
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040D2C
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D2C
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08040D2C
	ldrb r1, [r1]
	subs r1, #7
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
	b _08040D2C
_08040D04:
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	movs r5, #4
	rsbs r5, r5, #0
	adds r3, r5, #0
	ands r3, r2
	orrs r3, r1
	strb r3, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D2C
	ands r3, r5
	movs r0, #1
	orrs r3, r0
	strb r3, [r4, #0x18]
_08040D2C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08040D30
sub_08040D30: @ 0x08040D30
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08040D4C
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl sub_08004260
_08040D4C:
	adds r0, r4, #0
	bl sub_08001242
	ldrh r1, [r4, #0x36]
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08040D60
	ldr r0, _08040D8C @ =0x0000FFFF
	strh r0, [r4, #0x36]
_08040D60:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D88
	ldrb r0, [r4, #0x14]
	movs r1, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08041134
_08040D88:
	pop {r4, pc}
	.align 2, 0
_08040D8C: .4byte 0x0000FFFF

	thumb_func_start sub_08040D90
sub_08040D90: @ 0x08040D90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08040DB4
	ldr r0, _08040DB0 @ =gUnk_080D0E08
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _08040DC6
	.align 2, 0
_08040DB0: .4byte gUnk_080D0E08
_08040DB4:
	adds r0, r4, #0
	bl sub_08041128
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_08040DC6:
	pop {r4, pc}

	thumb_func_start sub_08040DC8
sub_08040DC8: @ 0x08040DC8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	ldr r1, _08040DE0 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	lsrs r1, r1, #2
	adds r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0
_08040DE0: .4byte gLinkEntity

	thumb_func_start sub_08040DE4
sub_08040DE4: @ 0x08040DE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F4E8
	pop {r4, pc}

	thumb_func_start sub_08040DF4
sub_08040DF4: @ 0x08040DF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08040E38
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	cmp r0, #0
	beq _08040E26
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08040E26:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040E34
	adds r0, r4, #0
	bl sub_0804A7D4
	b _08040E38
_08040E34:
	bl sub_0805E780
_08040E38:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040E3C
sub_08040E3C: @ 0x08040E3C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r2, #0x1e
	adds r1, r0, #0
	ands r1, r2
	movs r2, #0
	strb r1, [r4, #0x15]
	movs r1, #0xff
	strb r1, [r4, #0x14]
	movs r5, #1
	strb r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r1, [r1]
	adds r3, r4, #0
	adds r3, #0x7a
	strb r1, [r3]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040E86
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	bl sub_0804B128
	str r0, [r4, #0x54]
	b _08040E8C
_08040E86:
	adds r0, r4, #0
	bl sub_080411CC
_08040E8C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08040E90
sub_08040E90: @ 0x08040E90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080411E8
	cmp r0, #0
	beq _08040EA4
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_08040EA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040EA8
sub_08040EA8: @ 0x08040EA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040EC4
	adds r0, r4, #0
	bl sub_080411CC
	adds r0, r4, #0
	bl sub_0804122C
_08040EC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040EC8
sub_08040EC8: @ 0x08040EC8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040F08
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl Random
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r2, [r1]
	movs r1, #0x30
	ands r1, r0
	adds r1, #0x3c
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
_08040F08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040F0C
sub_08040F0C: @ 0x08040F0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08041170
	cmp r0, #0
	bne _08040F36
	adds r0, r4, #0
	bl sub_0803F58C
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040F36
	adds r0, r4, #0
	bl sub_08041128
_08040F36:
	pop {r4, pc}

	thumb_func_start sub_08040F38
sub_08040F38: @ 0x08040F38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08040F8E
	adds r0, r4, #0
	bl sub_0803F66C
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08040F94
	movs r0, #6
	strb r0, [r4, #0xc]
	bl Random
	movs r2, #0xe0
	adds r1, r0, #0
	ands r1, r2
	strb r1, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #0x24]
	lsrs r0, r0, #8
	movs r1, #0x78
	ands r0, r1
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	b _08040F94
_08040F8E:
	adds r0, r4, #0
	bl sub_08041128
_08040F94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040F98
sub_08040F98: @ 0x08040F98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803F5A8
	cmp r0, #0
	bne _08040FB2
	adds r0, r4, #0
	bl sub_08041128
	b _08041014
_08040FB2:
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0804100C
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804100C
	ldrb r1, [r4, #0xe]
	adds r1, #1
	strb r1, [r4, #0xe]
	ldr r2, _08041004 @ =gUnk_080D0E14
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1e
	adds r0, r0, r2
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08040FF4
	ldr r0, _08041008 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08040FF4:
	adds r0, r4, #0
	bl sub_0803F66C
	adds r0, r4, #0
	bl sub_080AEFB4
	b _08041014
	.align 2, 0
_08041004: .4byte gUnk_080D0E14
_08041008: .4byte gUnk_020000B0
_0804100C:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_08041014:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041018
sub_08041018: @ 0x08041018
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041042
	bl Random
	movs r1, #0xf8
	ands r0, r1
	adds r0, #0xb4
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
_08041042:
	pop {r4, pc}

	thumb_func_start sub_08041044
sub_08041044: @ 0x08041044
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F738
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041074
	movs r0, #0
	movs r1, #9
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_08041074:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041078
sub_08041078: @ 0x08041078
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041094
	adds r0, r4, #0
	bl sub_0803F6C0
_08041094:
	bl sub_0807953C
	adds r1, r4, #0
	adds r1, #0x78
	cmp r0, #0
	beq _080410A6
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
_080410A6:
	ldr r2, _08041100 @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080410B6
	movs r0, #0xe0
	strh r0, [r1]
_080410B6:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdf
	bls _08041104
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	subs r1, #0x3f
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
	adds r0, r4, #0
	bl sub_0803F6EC
	b _0804110A
	.align 2, 0
_08041100: .4byte gLinkEntity
_08041104:
	adds r0, r4, #0
	bl sub_0803F738
_0804110A:
	pop {r4, pc}

	thumb_func_start sub_0804110C
sub_0804110C: @ 0x0804110C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041126
	adds r0, r4, #0
	bl sub_08041128
_08041126:
	pop {r4, pc}

	thumb_func_start sub_08041128
sub_08041128: @ 0x08041128
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_0803F528
	pop {pc}

	thumb_func_start sub_08041134
sub_08041134: @ 0x08041134
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x25
	strb r0, [r1]
	movs r5, #0
	ldr r0, _08041168 @ =gUnk_03004040
	ldr r0, [r0]
	cmp r0, #0
	beq _08041150
	movs r5, #0x3c
_08041150:
	bl Random
	ldr r2, _0804116C @ =gUnk_080D0E18
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_08041168: .4byte gUnk_03004040
_0804116C: .4byte gUnk_080D0E18

	thumb_func_start sub_08041170
sub_08041170: @ 0x08041170
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _08041184
	subs r0, #1
	strh r0, [r1]
	b _080411C8
_08041184:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080411C8
	adds r0, r4, #0
	bl sub_0806FD54
	cmp r0, #0
	bne _080411B6
	ldr r0, _080411C0 @ =gUnk_02033A90
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	ble _080411C8
	ldr r0, _080411C4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x70
	movs r3, #0x48
	bl sub_080041A0
	cmp r0, #0
	beq _080411C8
_080411B6:
	adds r0, r4, #0
	bl sub_08041134
	movs r0, #1
	b _080411CA
	.align 2, 0
_080411C0: .4byte gUnk_02033A90
_080411C4: .4byte gUnk_020000B0
_080411C8:
	movs r0, #0
_080411CA:
	pop {r4, pc}

	thumb_func_start sub_080411CC
sub_080411CC: @ 0x080411CC
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #7
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080411E8
sub_080411E8: @ 0x080411E8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08041222
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08041204
	cmp r0, #2
	beq _08041218
_08041200:
	movs r0, #1
	b _08041224
_08041204:
	ldr r0, _08041214 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08041222
	b _08041200
	.align 2, 0
_08041214: .4byte gLinkState
_08041218:
	ldr r0, _08041228 @ =gUnk_02033A90
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _08041200
_08041222:
	movs r0, #0
_08041224:
	pop {r4, pc}
	.align 2, 0
_08041228: .4byte gUnk_02033A90

	thumb_func_start sub_0804122C
sub_0804122C: @ 0x0804122C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r8, r0
	bl Random
	movs r6, #6
	ands r6, r0
	lsrs r5, r0, #8
	movs r0, #3
	ands r5, r0
	movs r7, #0
	ldr r3, _080412FC @ =gRoomControls
	mov sb, r3
_08041250:
	movs r0, #0x50
	movs r1, #1
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _080412C8
	lsls r1, r6, #1
	add r1, r8
	mov r3, sb
	ldrh r0, [r3, #6]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	mov r3, sb
	ldrh r0, [r3, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r3, r2, #0
	adds r3, #0x6d
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08016A30
	adds r6, #2
	movs r0, #6
	ands r6, r0
	adds r5, #1
	movs r0, #3
	ands r5, r0
_080412C8:
	adds r7, #1
	cmp r7, #2
	bls _08041250
	lsls r1, r6, #1
	add r1, r8
	ldr r2, _080412FC @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r3, [r1]
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r0, r4, #0
	bl sub_08016A30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080412FC: .4byte gRoomControls

	thumb_func_start sub_08041300
sub_08041300: @ 0x08041300
	push {lr}
	adds r1, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _0804131A
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0804131A
	movs r0, #1
	b _0804132C
_0804131A:
	movs r2, #0
	ldrb r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804132A
	movs r2, #1
_0804132A:
	adds r0, r2, #0
_0804132C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08041330
sub_08041330: @ 0x08041330
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08041384
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041384
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	cmp r0, #0
	bne _08041384
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08041384
	movs r0, #0xd
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldr r0, _08041398 @ =0x80010000
	bl PlaySFX
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_08041384:
	ldr r0, _0804139C @ =gUnk_080D0E1C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08041398: .4byte 0x80010000
_0804139C: .4byte gUnk_080D0E1C

	thumb_func_start sub_080413A0
sub_080413A0: @ 0x080413A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080423A4
	ldr r1, _080413BC @ =gUnk_080D0E2C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080413BC: .4byte gUnk_080D0E2C

	thumb_func_start sub_080413C0
sub_080413C0: @ 0x080413C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _080413F8 @ =gUnk_030010A0
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	cmp r5, #0
	beq _08041420
	adds r0, r4, #0
	bl sub_08041FCC
	cmp r0, #0
	beq _08041486
	adds r0, r7, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080413FC
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	b _08041404
	.align 2, 0
_080413F8: .4byte gUnk_030010A0
_080413FC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08041404:
	ldr r0, _0804141C @ =gUnk_030010A0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4, #0x2e]
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08042004
	b _0804144A
	.align 2, 0
_0804141C: .4byte gUnk_030010A0
_08041420:
	adds r0, r4, #0
	bl sub_08041ED4
	cmp r0, #0
	beq _08041486
	strb r6, [r4, #0xc]
	strb r5, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08041488 @ =0x0000FFB0
	strh r0, [r4, #0x36]
	ldr r0, _0804148C @ =gRoomControls
	str r4, [r0, #0x30]
	bl sub_080809D4
_0804144A:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x6d
	ldrb r0, [r3]
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #6
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_08041486:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041488: .4byte 0x0000FFB0
_0804148C: .4byte gRoomControls

	thumb_func_start sub_08041490
sub_08041490: @ 0x08041490
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xd]
	cmp r0, #5
	bls _080414A0
	b _080415CC
_080414A0:
	lsls r0, r0, #2
	ldr r1, _080414AC @ =_080414B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080414AC: .4byte _080414B0
_080414B0: @ jump table
	.4byte _080415E6 @ case 0
	.4byte _080414C8 @ case 1
	.4byte _08041510 @ case 2
	.4byte _08041532 @ case 3
	.4byte _0804155C @ case 4
	.4byte _08041592 @ case 5
_080414C8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r4, #0x36]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080414F4
	ldr r0, _0804150C @ =0x000001A9
	bl PlaySFX
_080414F4:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080415E6
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r0, _0804150C @ =0x000001A9
	bl PlaySFX
	b _080415E6
	.align 2, 0
_0804150C: .4byte 0x000001A9
_08041510:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08041520
	subs r0, #1
	b _080415E4
_08041520:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041F74
	cmp r0, #0
	beq _080415E6
	movs r0, #3
	strb r0, [r4, #0xd]
	b _080415E2
_08041532:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08041544
	subs r0, #1
	b _080415E4
_08041544:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041F74
	cmp r0, #0
	beq _080415E6
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	b _080415E6
_0804155C:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08041574
	movs r0, #5
	strb r0, [r4, #0xd]
	b _080415E6
_08041574:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _080415E6
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080415E6
	adds r0, r4, #0
	bl sub_08041F1C
	cmp r0, #0
	beq _080415E6
	movs r0, #1
	strb r0, [r4, #0xf]
	b _080415E6
_08041592:
	adds r0, r4, #0
	bl sub_08042004
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldr r1, _080415BC @ =gUnk_030010A0
	adds r1, #0x38
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _080415C0 @ =gRoomControls
	ldr r0, _080415C4 @ =gLinkEntity
	str r0, [r1, #0x30]
	ldr r0, _080415C8 @ =gLinkState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	b _080415E6
	.align 2, 0
_080415BC: .4byte gUnk_030010A0
_080415C0: .4byte gRoomControls
_080415C4: .4byte gLinkEntity
_080415C8: .4byte gLinkState
_080415CC:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080415E6
	movs r0, #2
	strb r0, [r4, #0xc]
_080415E2:
	movs r0, #0x3c
_080415E4:
	strb r0, [r4, #0xe]
_080415E6:
	pop {r4, r5, pc}

	thumb_func_start sub_080415E8
sub_080415E8: @ 0x080415E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041614
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08042028
_08041614:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041618
sub_08041618: @ 0x08041618
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	ldr r0, _0804165C @ =gRoomControls
	ldrh r2, [r0, #8]
	adds r0, r2, #0
	adds r0, #0x90
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	blt _08041644
	adds r0, r2, #0
	adds r0, #0x40
	cmp r0, r1
	ble _08041646
_08041644:
	strh r0, [r4, #0x32]
_08041646:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08041660
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08041694
	.align 2, 0
_0804165C: .4byte gRoomControls
_08041660:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0804166E
	ldrh r0, [r4, #0x24]
	subs r0, #8
	b _0804167A
_0804166E:
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _0804167C
	adds r0, r1, #6
_0804167A:
	strh r0, [r4, #0x24]
_0804167C:
	ldrb r1, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08041694
	adds r0, r4, #0
	bl sub_0804207C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08041694:
	adds r0, r4, #0
	bl sub_0804212C
	adds r0, r4, #0
	bl sub_080421AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080416A4
sub_080416A4: @ 0x080416A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080416DA
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080416D4
	adds r0, r4, #0
	bl sub_08042120
	b _080416DA
_080416D4:
	adds r0, r4, #0
	bl sub_08042028
_080416DA:
	pop {r4, pc}

	thumb_func_start sub_080416DC
sub_080416DC: @ 0x080416DC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08042004
	adds r0, r5, #0
	bl sub_080042B8
	adds r0, r5, #0
	bl sub_0804212C
	adds r0, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	bne _08041748
	movs r4, #1
	strb r4, [r5, #0xd]
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _08041716
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bne _08041724
	ldr r2, [r0, #0x18]
	b _08041720
_08041716:
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x18]
	cmp r2, #0
	bne _08041724
	ldr r2, [r0, #0x14]
_08041720:
	cmp r2, #0
	beq _08041734
_08041724:
	ldrb r0, [r2, #0xc]
	cmp r0, #2
	bne _08041734
	movs r1, #0
	movs r0, #4
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	b _080417AA
_08041734:
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08042028
	b _080417AA
_08041748:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	bne _080417AA
	adds r2, r1, #0
	cmp r2, #2
	bne _080417AA
	ldr r0, _0804179C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080417A4
	movs r0, #0xb5
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080417AA
	str r5, [r2, #0x50]
	ldr r1, [r5, #0x64]
	str r2, [r1, #0x10]
	ldr r0, _080417A0 @ =gRoomControls
	str r2, [r0, #0x30]
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	ldr r1, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0xe
	bl sub_08004260
	b _080417AA
	.align 2, 0
_0804179C: .4byte gUnk_030010A0
_080417A0: .4byte gRoomControls
_080417A4:
	strb r2, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
_080417AA:
	pop {r4, r5, pc}

	thumb_func_start sub_080417AC
sub_080417AC: @ 0x080417AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08041816
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #4]
	adds r0, r4, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #1
	bne _080417DA
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #4
	bl sub_080042AC
	b _0804181A
_080417DA:
	cmp r0, #2
	bne _08041806
	movs r0, #0x51
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _0804181A
	ldr r0, [r5, #0x64]
	str r0, [r1, #0x64]
	ldr r0, [r5, #0x64]
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	movs r1, #0x14
	bl sub_08004260
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	b _0804181A
_08041806:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804181A
	adds r0, r5, #0
	bl sub_0804235C
	b _0804181A
_08041816:
	subs r0, #1
	strb r0, [r5, #0xe]
_0804181A:
	adds r0, r5, #0
	bl sub_08042004
	adds r0, r5, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_08041828
sub_08041828: @ 0x08041828
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042214
	adds r0, r4, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	ldr r2, _08041868 @ =gRoomControls
	ldrh r0, [r2, #8]
	adds r0, #0x48
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _0804186C
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r0, [r2, #8]
	adds r0, #0x48
	movs r2, #0
	cmp r0, r1
	blt _0804185C
	movs r2, #0x10
_0804185C:
	strb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
	b _0804187E
	.align 2, 0
_08041868: .4byte gRoomControls
_0804186C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804187E
	adds r0, r4, #0
	bl sub_08042050
_0804187E:
	pop {r4, pc}

	thumb_func_start sub_08041880
sub_08041880: @ 0x08041880
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080418D4 @ =gRoomControls
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	adds r0, #0x20
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bgt _080418AE
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r0, r1
	bge _080418BE
_080418AE:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0x3f
	ble _080418BE
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
_080418BE:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080418D8
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _080418F8
	.align 2, 0
_080418D4: .4byte gRoomControls
_080418D8:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080418E6
	ldrh r0, [r4, #0x24]
	subs r0, #0xc
	b _080418F6
_080418E6:
	ldrh r2, [r4, #0x24]
	movs r3, #0x24
	ldrsh r1, [r4, r3]
	ldr r0, _08041900 @ =0x000001FF
	cmp r1, r0
	bgt _080418F8
	adds r0, r2, #0
	adds r0, #0x10
_080418F6:
	strh r0, [r4, #0x24]
_080418F8:
	adds r0, r4, #0
	bl sub_08042214
	pop {r4, pc}
	.align 2, 0
_08041900: .4byte 0x000001FF

	thumb_func_start sub_08041904
sub_08041904: @ 0x08041904
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r0, [r3]
	cmp r0, #0
	beq _08041924
	adds r0, r4, #0
	bl sub_08042214
	b _0804197A
_08041924:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0804197A
	ldr r0, _0804196C @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	adds r0, #0x40
	cmp r0, #0x80
	bhi _08041970
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r2, [r0]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0xe]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x20]
	strb r1, [r0, #0xe]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x24]
	strb r1, [r0, #0xe]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x28]
	strb r1, [r0, #0xe]
	b _0804197A
	.align 2, 0
_0804196C: .4byte gLinkEntity
_08041970:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r2, [r3]
_0804197A:
	pop {r4, r5, pc}

	thumb_func_start sub_0804197C
sub_0804197C: @ 0x0804197C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _080419A6
	movs r1, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	b _080419F6
_080419A6:
	cmp r0, #0xf0
	bne _080419F6
	movs r1, #0
	movs r0, #0xb
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0x15]
	adds r0, #0xf5
	strh r0, [r4, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	ldr r1, _080419F8 @ =0x0000016B
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #5
	bl sub_080042AC
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0xf
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x15
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1e
	bl sub_08004260
	ldr r0, _080419FC @ =0x00000127
	bl PlaySFX
_080419F6:
	pop {r4, pc}
	.align 2, 0
_080419F8: .4byte 0x0000016B
_080419FC: .4byte 0x00000127

	thumb_func_start sub_08041A00
sub_08041A00: @ 0x08041A00
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08041A60
	cmp r0, #1
	beq _08041ABC
	ldr r2, _08041A5C @ =gUnk_080D0E64
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _08041AF0
	movs r0, #0xc
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #8
	bl sub_080042AC
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0x10
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x18
	bl sub_08004260
	b _08041AF0
	.align 2, 0
_08041A5C: .4byte gUnk_080D0E64
_08041A60:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080042B8
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_08004274
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08041AF0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #8
	strb r0, [r1]
	subs r1, #6
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #0x14
	movs r1, #0
	bl sub_08080964
	adds r0, r4, #0
	movs r1, #6
	bl sub_080042AC
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x16
	bl sub_08004260
	b _08041AF0
_08041ABC:
	adds r0, r4, #0
	bl sub_080042B8
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041AF0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x39
	strb r0, [r1]
	adds r1, #6
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_08041AF0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041AF4
sub_08041AF4: @ 0x08041AF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08041B12
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_08004274
_08041B12:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08041B44
	cmp r0, #1
	beq _08041B70
	adds r0, r4, #0
	bl sub_08042004
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041BC0
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #9
	bl sub_080042AC
	b _08041BCE
_08041B44:
	ldr r0, [r4, #0x34]
	ldr r1, _08041B6C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08041BCE
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _08041BCE
	.align 2, 0
_08041B6C: .4byte 0xFFFF8000
_08041B70:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08041B82
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08041BCE
_08041B82:
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _08041BBC @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0x48
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08041BCE
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0x11
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x19
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1f
	bl sub_08004260
	b _08041BCE
	.align 2, 0
_08041BBC: .4byte gRoomControls
_08041BC0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041BCE
	adds r0, r4, #0
	bl sub_0804235C
_08041BCE:
	pop {r4, pc}

	thumb_func_start sub_08041BD0
sub_08041BD0: @ 0x08041BD0
	push {lr}
	ldr r2, _08041BE4 @ =gUnk_080D0E68
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08041BE4: .4byte gUnk_080D0E68

	thumb_func_start sub_08041BE8
sub_08041BE8: @ 0x08041BE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_08079F8C
	cmp r0, #0
	beq _08041CBA
	movs r5, #0
	movs r0, #1
	strb r0, [r6, #0xd]
	movs r0, #0x78
	strb r0, [r6, #0xe]
	ldrb r1, [r6, #0x11]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #3
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r6, #0x11]
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_080042AC
	ldr r0, [r6, #0x64]
	ldr r7, [r0, #4]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r0, [r6, #0x64]
	str r5, [r0, #4]
	ldr r7, [r0, #8]
	ldrb r0, [r7, #0x11]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r7, #0x11]
	adds r0, r7, #0
	bl sub_080AE068
	ldr r1, _08041CC0 @ =0x000001F5
	adds r0, r7, #0
	bl sub_080ADF80
	ldr r1, _08041CC4 @ =0x0000016B
	adds r0, r7, #0
	bl sub_0801D2B4
	adds r0, r7, #0
	movs r1, #0x1a
	bl sub_08004260
	ldr r0, [r6, #0x64]
	ldr r7, [r0, #0xc]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r0, [r6, #0x64]
	str r5, [r0, #0xc]
	ldr r7, [r0, #0x10]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r2, [r6, #0x64]
	str r5, [r2, #0x10]
	ldr r1, _08041CC8 @ =gRoomControls
	ldr r0, _08041CCC @ =gLinkEntity
	str r0, [r1, #0x30]
	ldr r7, [r2, #0x1c]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x1c]
	ldr r7, [r0, #0x20]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x20]
	ldr r7, [r0, #0x24]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x24]
	ldr r7, [r0, #0x28]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl sub_0805E7BC
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x28]
	movs r0, #2
	bl sub_08078A90
_08041CBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041CC0: .4byte 0x000001F5
_08041CC4: .4byte 0x0000016B
_08041CC8: .4byte gRoomControls
_08041CCC: .4byte gLinkEntity

	thumb_func_start sub_08041CD0
sub_08041CD0: @ 0x08041CD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041D0C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08041CF6
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08041D12
_08041CF6:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, _08041D08 @ =0x00001651
	bl TextboxTryNoOverlap
	b _08041D12
	.align 2, 0
_08041D08: .4byte 0x00001651
_08041D0C:
	adds r0, r4, #0
	bl sub_080042B8
_08041D12:
	pop {r4, pc}

	thumb_func_start sub_08041D14
sub_08041D14: @ 0x08041D14
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	ldr r0, _08041D3C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08041D7C
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08041D40
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08041D7C
	.align 2, 0
_08041D3C: .4byte gTextBox
_08041D40:
	ldr r0, _08041D80 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _08041D7C
	movs r0, #0xb6
	movs r1, #0
	movs r2, #0
	bl CreateObject
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	movs r0, #0xb6
	movs r1, #1
	movs r2, #0
	bl CreateObject
	str r4, [r0, #0x50]
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x96
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x9a
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xe2
	lsls r0, r0, #1
	bl PlaySFX
_08041D7C:
	pop {r4, r5, pc}
	.align 2, 0
_08041D80: .4byte gUnk_03003DBC

	thumb_func_start sub_08041D84
sub_08041D84: @ 0x08041D84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08041D9C
	subs r0, #1
	strb r0, [r5, #0xe]
	b _08041E18
_08041D9C:
	ldrb r1, [r5, #0xf]
	adds r0, r1, #0
	cmp r0, #0xef
	bhi _08041DEC
	cmp r0, #0xb7
	bls _08041DD8
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08041DD8
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	ldr r4, _08041DE8 @ =gUnk_080D0E80
	ldrb r1, [r5, #0xf]
	subs r1, #0xb8
	asrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	bl sub_0801D2B4
	ldr r0, [r5, #0x54]
	ldrb r1, [r5, #0xf]
	subs r1, #0xb8
	asrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	bl sub_0801D2B4
_08041DD8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0xe6
	bne _08041E0C
	movs r0, #7
	movs r1, #4
	bl DoFade
	b _08041E0C
	.align 2, 0
_08041DE8: .4byte gUnk_080D0E80
_08041DEC:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _08041E1C @ =0x00000173
	adds r0, r5, #0
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_080042AC
_08041E0C:
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08041E78
_08041E18:
	pop {r4, r5, pc}
	.align 2, 0
_08041E1C: .4byte 0x00000173

	thumb_func_start sub_08041E20
sub_08041E20: @ 0x08041E20
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08041E78
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	ldr r0, _08041E4C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041E48
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
_08041E48:
	pop {r4, pc}
	.align 2, 0
_08041E4C: .4byte gUnk_03000FD0

	thumb_func_start sub_08041E50
sub_08041E50: @ 0x08041E50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08041E76
	movs r0, #0x51
	bl sub_0807CD04
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	str r5, [r0, #0x64]
	bl sub_0805E7BC
	bl sub_0805E780
_08041E76:
	pop {r4, r5, pc}

	thumb_func_start sub_08041E78
sub_08041E78: @ 0x08041E78
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08041ECE
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08041ECE
	ldrb r1, [r4, #0xf]
	lsrs r1, r1, #3
	movs r0, #0xe
	ands r1, r0
	ldr r0, _08041ED0 @ =gUnk_080D0E90
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	movs r1, #0
	bl sub_08080964
_08041ECE:
	pop {r4, pc}
	.align 2, 0
_08041ED0: .4byte gUnk_080D0E90

	thumb_func_start sub_08041ED4
sub_08041ED4: @ 0x08041ED4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08041F14 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _08041F18
	movs r0, #0x2c
	bl sub_0801D8E0
	adds r4, r0, #0
	cmp r4, #0
	beq _08041F18
	str r4, [r5, #0x64]
	str r5, [r4]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	movs r0, #0x51
	movs r1, #1
	bl CreateEnemy
	str r4, [r0, #0x64]
	str r0, [r4, #4]
	movs r0, #0x51
	movs r1, #2
	bl CreateEnemy
	str r4, [r0, #0x64]
	str r0, [r4, #8]
	movs r0, #1
	b _08041F1A
	.align 2, 0
_08041F14: .4byte gUnk_03003DBC
_08041F18:
	movs r0, #0
_08041F1A:
	pop {r4, r5, pc}

	thumb_func_start sub_08041F1C
sub_08041F1C: @ 0x08041F1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08041F6C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _08041F70
	movs r0, #0x5f
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x1c]
	movs r0, #0x5f
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x20]
	movs r0, #0x5f
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x24]
	movs r0, #0x5f
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x28]
	movs r0, #1
	b _08041F72
	.align 2, 0
_08041F6C: .4byte gUnk_03003DBC
_08041F70:
	movs r0, #0
_08041F72:
	pop {r4, pc}

	thumb_func_start sub_08041F74
sub_08041F74: @ 0x08041F74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08041F88 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bls _08041F8C
	movs r0, #0
	b _08041FC8
	.align 2, 0
_08041F88: .4byte gUnk_03003DBC
_08041F8C:
	ldr r7, [r5, #0x64]
	movs r4, #0
	ldr r0, _08041FC0 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08041FB6
	movs r0, #0x52
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	strb r6, [r4, #0xb]
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_08041FB6:
	cmp r6, #0
	bne _08041FC4
	str r4, [r7, #0x14]
	b _08041FC6
	.align 2, 0
_08041FC0: .4byte gUnk_030010A0
_08041FC4:
	str r4, [r7, #0x18]
_08041FC6:
	movs r0, #1
_08041FC8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08041FCC
sub_08041FCC: @ 0x08041FCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08041FFC @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x4c
	bhi _08042000
	adds r0, r4, #0
	bl sub_08041ED4
	cmp r0, #0
	beq _08042000
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041F74
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041F74
	adds r0, r4, #0
	bl sub_08041F1C
	movs r0, #1
	b _08042002
	.align 2, 0
_08041FFC: .4byte gUnk_03003DBC
_08042000:
	movs r0, #0
_08042002:
	pop {r4, pc}

	thumb_func_start sub_08042004
sub_08042004: @ 0x08042004
	ldr r3, _08042024 @ =gUnk_080D0EA0
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_08042024: .4byte gUnk_080D0EA0

	thumb_func_start sub_08042028
sub_08042028: @ 0x08042028
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #3
	strb r5, [r4, #0xc]
	bl Random
	ldr r1, _0804204C @ =gUnk_080D0EA8
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804207C
	strb r0, [r4, #0x15]
	pop {r4, r5, pc}
	.align 2, 0
_0804204C: .4byte gUnk_080D0EA8

	thumb_func_start sub_08042050
sub_08042050: @ 0x08042050
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08042078 @ =gUnk_080D0EAC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #0xe]
	movs r1, #0x20
	strh r1, [r4, #0x24]
	lsrs r0, r0, #8
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0
_08042078: .4byte gUnk_080D0EAC

	thumb_func_start sub_0804207C
sub_0804207C: @ 0x0804207C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r6, [r5, r0]
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r7, r0, #0
	subs r7, #0x10
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _080420B8
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _080420B8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0x30
	bl sub_0806FCB8
	cmp r0, #0
	beq _080420B8
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r6, #0
	adds r3, r7, #0
	b _08042118
_080420B8:
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	beq _080420E4
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _080420E4
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0x30
	bl sub_0806FCB8
	cmp r0, #0
	beq _080420E4
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r6, #0
	adds r3, r7, #0
	b _08042118
_080420E4:
	ldr r0, _080420FC @ =gLinkEntity
	movs r4, #0x32
	ldrsh r1, [r0, r4]
	adds r2, r0, #0
	cmp r1, #0x3f
	bgt _08042104
	ldr r0, _08042100 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r3, r0, #0
	adds r3, #0x18
	b _0804210C
	.align 2, 0
_080420FC: .4byte gLinkEntity
_08042100: .4byte gRoomControls
_08042104:
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r3, r0, #0
	subs r3, #0x28
_0804210C:
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	movs r4, #0x2e
	ldrsh r2, [r2, r4]
_08042118:
	bl sub_080045D4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08042120
sub_08042120: @ 0x08042120
	movs r2, #0
	movs r1, #5
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0804212C
sub_0804212C: @ 0x0804212C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804213E
	subs r0, #1
	b _080421A8
_0804213E:
	movs r5, #0
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	subs r1, #0x44
	ldr r3, _0804216C @ =gLinkEntity
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	subs r0, r0, r1
	cmp r0, #0x60
	bhi _0804217A
	movs r6, #0x2e
	ldrsh r2, [r4, r6]
	adds r0, r2, #0
	subs r0, #0x38
	movs r6, #0x2e
	ldrsh r1, [r3, r6]
	subs r0, r1, r0
	cmp r0, #0x38
	bhi _08042170
	ldr r0, [r4, #0x64]
	ldr r5, [r0, #0x18]
	b _0804217A
	.align 2, 0
_0804216C: .4byte gLinkEntity
_08042170:
	subs r0, r1, r2
	cmp r0, #0x38
	bhi _0804217A
	ldr r0, [r4, #0x64]
	ldr r5, [r0, #0x14]
_0804217A:
	cmp r5, #0
	beq _080421A2
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _080421AA
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080421AA
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0xb4
	lsls r0, r0, #2
	b _080421A8
_080421A2:
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x3c
_080421A8:
	strh r0, [r1]
_080421AA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080421AC
sub_080421AC: @ 0x080421AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrh r0, [r5]
	adds r7, r0, #0
	cmp r7, #0
	beq _080421C0
	subs r0, #1
	b _08042210
_080421C0:
	adds r6, r4, #0
	adds r6, #0x79
	ldrb r0, [r6]
	cmp r0, #0
	bne _080421FE
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080421F4
	ldr r0, _080421F0 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080421F4
	adds r0, r4, #0
	bl sub_08042264
	strb r5, [r6]
	b _08042212
	.align 2, 0
_080421F0: .4byte gUnk_030010A0
_080421F4:
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #0x1e
	strh r0, [r1]
	b _08042212
_080421FE:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080422C0
	cmp r0, #0
	beq _08042212
	strb r7, [r6]
	movs r0, #0xb4
	lsls r0, r0, #1
_08042210:
	strh r0, [r5]
_08042212:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08042214
sub_08042214: @ 0x08042214
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x7e
	ldrh r0, [r6]
	adds r7, r0, #0
	cmp r7, #0
	beq _08042228
	subs r0, #1
	b _0804225E
_08042228:
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804224E
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0804224A
	adds r0, r4, #0
	bl sub_0804228C
	movs r0, #1
	strb r0, [r5]
	b _08042260
_0804224A:
	movs r0, #0x1e
	b _0804225E
_0804224E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080422C0
	cmp r0, #0
	beq _08042260
	strb r7, [r5]
	movs r0, #0xb4
_0804225E:
	strh r0, [r6]
_08042260:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08042264
sub_08042264: @ 0x08042264
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_080042AC
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #4]
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0xd
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x13
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0804228C
sub_0804228C: @ 0x0804228C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_080042AC
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #4]
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0xd
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x13
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1d
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080422C0
sub_080422C0: @ 0x080422C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	bl sub_080042B8
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	bl sub_08004274
	ldr r0, [r5, #0x64]
	ldr r7, [r0, #4]
	adds r0, r7, #0
	bl sub_08004274
	mov r0, r8
	adds r0, #1
	adds r6, r7, #0
	adds r6, #0x5a
	ldrb r4, [r6]
	cmp r0, r4
	bne _08042306
	movs r0, #0x21
	bl sub_080A7EE0
	cmp r0, #0
	beq _08042354
	mov r1, r8
	strb r1, [r0, #0xa]
	str r5, [r0, #0x50]
	ldrb r0, [r6]
	bics r0, r4
	strb r0, [r6]
	b _08042354
_08042306:
	cmp r4, #4
	bne _0804231A
	movs r0, #0xfb
	ands r4, r0
	strb r4, [r6]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080042AC
	b _08042354
_0804231A:
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	beq _08042354
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
	movs r0, #0
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_08004260
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x12
	bl sub_08004260
	mov r0, r8
	cmp r0, #1
	bne _08042350
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1b
	bl sub_08004260
_08042350:
	movs r0, #1
	b _08042356
_08042354:
	movs r0, #0
_08042356:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804235C
sub_0804235C: @ 0x0804235C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7e
	movs r5, #0
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	strb r5, [r0, #0xd]
	movs r1, #0xc
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x12
	bl sub_08004260
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1b
	bl sub_08004260
	pop {r4, r5, pc}

	thumb_func_start sub_080423A4
sub_080423A4: @ 0x080423A4
	push {r4, lr}
	ldr r0, _080423CC @ =gUnk_030010A0
	adds r4, r0, #0
	adds r4, #0x38
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804241C
	ldr r0, _080423D0 @ =gUnk_02002A40
	movs r2, #0x93
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _080423D4
	subs r0, #1
	str r0, [r1]
	b _0804241C
	.align 2, 0
_080423CC: .4byte gUnk_030010A0
_080423D0: .4byte gUnk_02002A40
_080423D4:
	ldr r2, _08042420 @ =gLinkState
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #1
	bgt _0804241C
	cmp r0, #0
	blt _0804241C
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _0804241C
	ldr r1, _08042424 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804241C
	movs r3, #0x36
	ldrsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804240A
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _0804241C
_0804240A:
	movs r0, #0xb7
	lsls r0, r0, #4
	movs r1, #0
	bl sub_08078AA8
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_0804241C:
	pop {r4, pc}
	.align 2, 0
_08042420: .4byte gLinkState
_08042424: .4byte gLinkEntity

	thumb_func_start sub_08042428
sub_08042428: @ 0x08042428
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0804243C
	str r0, [r4, #0x64]
	bl sub_0805E780
_0804243C:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08042450
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08004260
_08042450:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0804245C
	adds r0, r4, #0
	bl sub_08004274
_0804245C:
	ldr r0, [r4, #0x58]
	ldr r1, _0804249C @ =0x008000FF
	ands r0, r1
	subs r1, #0xf3
	cmp r0, r1
	bne _08042480
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08004260
	bl Random
	movs r1, #0x78
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
_08042480:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0804249C: .4byte 0x008000FF

	thumb_func_start sub_080424A0
sub_080424A0: @ 0x080424A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080424B4
	str r0, [r4, #0x64]
	bl sub_0805E780
_080424B4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080424C6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x12
	bl sub_08004260
_080424C6:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08042502
	ldr r1, _08042504 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	ldr r1, _08042508 @ =gUnk_080D0EB0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
_08042502:
	pop {r4, pc}
	.align 2, 0
_08042504: .4byte gLinkEntity
_08042508: .4byte gUnk_080D0EB0

	thumb_func_start sub_0804250C
sub_0804250C: @ 0x0804250C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08042520
	str r0, [r4, #0x64]
	bl sub_0805E780
_08042520:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08042532
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_08004260
_08042532:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08042554
sub_08042554: @ 0x08042554
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804256C @ =gUnk_080D1230
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0804256C: .4byte gUnk_080D1230

	thumb_func_start sub_08042570
sub_08042570: @ 0x08042570
	push {lr}
	ldr r2, _08042584 @ =gUnk_080D1248
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08042584: .4byte gUnk_080D1248

	thumb_func_start sub_08042588
sub_08042588: @ 0x08042588
	push {lr}
	ldr r1, _08042594 @ =gUnk_080D1230
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08042594: .4byte gUnk_080D1230

	thumb_func_start nullsub_170
nullsub_170: @ 0x08042598
	bx lr
	.align 2, 0

	thumb_func_start sub_0804259C
sub_0804259C: @ 0x0804259C
	push {lr}
	ldr r2, _080425B0 @ =gUnk_080D125C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080425B0: .4byte gUnk_080D125C

	thumb_func_start sub_080425B4
sub_080425B4: @ 0x080425B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080437DC
	cmp r0, #0
	beq _0804264C
	adds r0, r4, #0
	adds r0, #0x7c
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r5, _08042614 @ =gUnk_030010A0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	movs r6, #1
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0
	beq _08042634
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	cmp r0, r1
	bne _08042620
	adds r0, r4, #0
	bl sub_08043EB8
	adds r0, r4, #0
	bl sub_08043ABC
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r1, [r0]
	ldrb r0, [r4, #0xb]
	adds r0, #2
	asrs r1, r0
	ands r1, r6
	cmp r1, #0
	beq _08042618
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xd]
	b _0804264C
	.align 2, 0
_08042614: .4byte gUnk_030010A0
_08042618:
	movs r0, #8
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0804264C
_08042620:
	adds r0, r4, #0
	bl sub_08044000
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	bl sub_08043A10
	b _0804264C
_08042634:
	strb r6, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldr r2, [r4, #0x64]
	ldr r1, _08042650 @ =gUnk_080D1280
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r0, r4, #0
	bl sub_08042654
_0804264C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08042650: .4byte gUnk_080D1280

	thumb_func_start sub_08042654
sub_08042654: @ 0x08042654
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	lsls r3, r0, #2
	ldr r0, [r6, #0x64]
	adds r2, r0, #0
	adds r2, #0x18
	ldrb r0, [r6, #0xd]
	cmp r0, #4
	bls _0804266A
	b _080427FC
_0804266A:
	lsls r0, r0, #2
	ldr r1, _08042674 @ =_08042678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042674: .4byte _08042678
_08042678: @ jump table
	.4byte _0804268C @ case 0
	.4byte _080426B0 @ case 1
	.4byte _080426E0 @ case 2
	.4byte _08042710 @ case 3
	.4byte _08042740 @ case 4
_0804268C:
	movs r0, #1
	strb r0, [r6, #0xd]
	ldr r1, _080426A8 @ =gUnk_080D1284
	ldrb r0, [r6, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #1]
	ldr r1, _080426AC @ =gUnk_080D1286
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_080426A8: .4byte gUnk_080D1284
_080426AC: .4byte gUnk_080D1286
_080426B0:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x34
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _080426CC
	b _0804280E
_080426CC:
	movs r0, #2
	strb r0, [r6, #0xd]
	ldr r1, _080426DC @ =gUnk_080D1286
	adds r0, r3, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_080426DC: .4byte gUnk_080D1286
_080426E0:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x44
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	bhi _080426FC
	b _0804280E
_080426FC:
	movs r0, #3
	strb r0, [r6, #0xd]
	ldr r1, _0804270C @ =gUnk_080D1286
	adds r0, r3, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_0804270C: .4byte gUnk_080D1286
_08042710:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0804280E
	movs r0, #4
	strb r0, [r6, #0xd]
	ldr r1, _0804273C @ =gUnk_080D1286
	adds r0, r3, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_0804273C: .4byte gUnk_080D1286
_08042740:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x64
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bls _0804280E
	movs r0, #5
	strb r0, [r6, #0xd]
	movs r0, #0x5a
	strb r0, [r6, #0xe]
	ldr r0, [r6, #0x64]
	ldr r1, [r0]
	ldrb r0, [r1, #0x10]
	movs r5, #0x80
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0]
	adds r1, #0x29
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	movs r4, #4
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #4]
	adds r1, #0x29
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #8]
	adds r1, #0x29
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #0xc]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #0xc]
	adds r1, #0x29
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r0, [r0, #0x10]
	adds r0, #0x29
	ldrb r1, [r0]
	ands r3, r1
	orrs r3, r4
	strb r3, [r0]
	adds r0, r6, #0
	movs r1, #7
_080427EE:
	bl sub_080042AC
	movs r0, #0xaf
	lsls r0, r0, #1
	bl PlaySFX
	b _0804280E
_080427FC:
	ldrb r0, [r6, #0xe]
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804280E
	adds r0, r6, #0
	bl sub_08043BC8
_0804280E:
	adds r0, r6, #0
	bl sub_08043A10
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08042818
sub_08042818: @ 0x08042818
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043CD4
	ldr r0, [r4, #0x64]
	adds r2, r0, #0
	adds r2, #0x18
	ldrh r1, [r2, #8]
	ldrh r3, [r0, #0x18]
	adds r1, r1, r3
	strh r1, [r0, #0x18]
	ldrb r0, [r2, #0xd]
	subs r0, #1
	strb r0, [r2, #0xd]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042848
	movs r0, #0x78
	strb r0, [r2, #0xd]
	movs r3, #8
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	strh r0, [r2, #8]
_08042848:
	ldrh r0, [r2, #0xa]
	ldrh r3, [r2, #4]
	adds r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	ands r0, r1
	cmp r0, #0
	bne _08042868
	movs r0, #0x50
	strb r0, [r2, #0xe]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
_08042868:
	adds r0, r4, #0
	bl sub_08043A10
	pop {r4, pc}

	thumb_func_start sub_08042870
sub_08042870: @ 0x08042870
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043CD4
	ldr r1, _08042890 @ =gUnk_080D1290
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A10
	pop {r4, pc}
	.align 2, 0
_08042890: .4byte gUnk_080D1290

	thumb_func_start sub_08042894
sub_08042894: @ 0x08042894
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r2, [r0, #0x64]
	ldr r1, _080428A8 @ =gUnk_080D12AC
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0
_080428A8: .4byte gUnk_080D12AC

	thumb_func_start sub_080428AC
sub_080428AC: @ 0x080428AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	adds r3, r0, #0
	adds r3, #0x18
	ldrb r0, [r3, #5]
	cmp r0, #0x40
	beq _080428CC
	cmp r0, #0x40
	bls _080428C6
	ldrh r0, [r3, #4]
	subs r0, #0x80
	b _080428CA
_080428C6:
	ldrh r0, [r3, #4]
	adds r0, #0x80
_080428CA:
	strh r0, [r3, #4]
_080428CC:
	ldrb r1, [r3, #1]
	ldr r2, _080428E8 @ =gUnk_080D12B0
	ldrb r0, [r4, #0xb]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #1
	cmp r1, #2
	bls _080428EC
	ldrh r0, [r3, #8]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _080428F4
	.align 2, 0
_080428E8: .4byte gUnk_080D12B0
_080428EC:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_080428F4:
	adds r0, r4, #0
	bl sub_08043BF0
	pop {r4, pc}

	thumb_func_start sub_080428FC
sub_080428FC: @ 0x080428FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804293C
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r1, [r4, #0x64]
	adds r1, #0x18
	movs r0, #8
	ldrsh r2, [r1, r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	rsbs r0, r0, #0
	strh r0, [r1, #8]
	ldr r0, _08042940 @ =0x00000153
	bl PlaySFX
	movs r2, #0
	movs r3, #0x3b
_0804292A:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _0804292A
_0804293C:
	pop {r4, pc}
	.align 2, 0
_08042940: .4byte 0x00000153

	thumb_func_start sub_08042944
sub_08042944: @ 0x08042944
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x64]
	adds r1, r2, #0
	adds r1, #0x18
	ldrb r0, [r1, #1]
	subs r0, #0x7c
	cmp r0, #8
	bls _08042960
	ldrh r0, [r1, #8]
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	b _08042968
_08042960:
	movs r0, #4
	strb r0, [r3, #0xd]
	ldrh r0, [r1, #8]
	strh r0, [r3, #0x24]
_08042968:
	adds r0, r3, #0
	bl sub_08043BF0
	pop {pc}

	thumb_func_start sub_08042970
sub_08042970: @ 0x08042970
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x64]
	adds r2, r4, #0
	adds r2, #0x18
	ldrb r0, [r2, #1]
	ldr r1, _080429A4 @ =gUnk_080D12B2
	ldrb r5, [r3, #0xb]
	adds r1, r5, r1
	ldrb r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bls _080429AC
	ldr r0, _080429A8 @ =gUnk_080D12B4
	adds r0, r5, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #8]
	adds r1, r1, r0
	strh r1, [r2, #8]
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	b _080429CA
	.align 2, 0
_080429A4: .4byte gUnk_080D12B2
_080429A8: .4byte gUnk_080D12B4
_080429AC:
	movs r0, #5
	strb r0, [r3, #0xd]
	movs r0, #0x3c
	strb r0, [r3, #0xe]
	movs r2, #0
	movs r4, #0x39
_080429B8:
	ldr r0, [r3, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r4, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080429B8
_080429CA:
	adds r0, r3, #0
	bl sub_08043BF0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080429D4
sub_080429D4: @ 0x080429D4
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080429FA
	movs r0, #6
	strb r0, [r1, #0xd]
	ldr r4, [r1, #0x64]
	adds r4, #0x18
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	movs r1, #6
	bl __divsi3
	strh r0, [r4, #8]
_080429FA:
	pop {r4, pc}

	thumb_func_start sub_080429FC
sub_080429FC: @ 0x080429FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x64]
	adds r5, r3, #0
	adds r5, #0x18
	ldrb r1, [r5, #1]
	ldr r2, _08042A28 @ =gUnk_080D12B6
	ldrb r0, [r4, #0xb]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #1
	cmp r1, #2
	bls _08042A2C
	ldrh r0, [r5, #8]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
	adds r0, r4, #0
	bl sub_08043BF0
	b _08042A3A
	.align 2, 0
_08042A28: .4byte gUnk_080D12B6
_08042A2C:
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
_08042A3A:
	pop {r4, r5, pc}

	thumb_func_start sub_08042A3C
sub_08042A3C: @ 0x08042A3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08042A68 @ =gUnk_080D12B8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A10
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	adds r4, #0x78
	ldrh r0, [r1, #0x36]
	ldrb r4, [r4]
	adds r0, r0, r4
	strh r0, [r1, #0x36]
	pop {r4, pc}
	.align 2, 0
_08042A68: .4byte gUnk_080D12B8

	thumb_func_start sub_08042A6C
sub_08042A6C: @ 0x08042A6C
	adds r3, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r3, #0xd]
	adds r0, #0x78
	strb r2, [r0]
	adds r0, #6
	strb r1, [r0]
	ldr r1, [r3, #0x64]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x22]
	bx lr
	.align 2, 0

	thumb_func_start sub_08042A88
sub_08042A88: @ 0x08042A88
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x64]
	adds r2, r3, #0
	adds r2, #0x18
	ldr r1, _08042AA8 @ =gUnk_080D12C8
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _08042ABC
	cmp r1, r0
	bhs _08042AB0
	ldr r1, _08042AAC @ =0xFFFFFF00
	b _08042AB4
	.align 2, 0
_08042AA8: .4byte gUnk_080D12C8
_08042AAC: .4byte 0xFFFFFF00
_08042AB0:
	movs r1, #0x80
	lsls r1, r1, #1
_08042AB4:
	adds r0, r1, #0
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_08042ABC:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #4]
	cmp r0, r1
	bge _08042ACE
	ldrh r0, [r2, #0xa]
	subs r0, r1, r0
	strh r0, [r2, #4]
	b _08042AE6
_08042ACE:
	movs r0, #0
	strh r0, [r2, #4]
	ldr r1, _08042AE8 @ =gUnk_080D12CA
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_08042AE6:
	pop {r4, pc}
	.align 2, 0
_08042AE8: .4byte gUnk_080D12CA

	thumb_func_start sub_08042AEC
sub_08042AEC: @ 0x08042AEC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042B1C
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x3f
	movs r4, #0x3d
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_080042AC
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r4, [r0]
_08042B1C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08042B20
sub_08042B20: @ 0x08042B20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	cmp r0, #0x7a
	bhi _08042B3E
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r2, [r1, #4]
	adds r0, r0, r2
	strh r0, [r1, #4]
	b _08042B42
_08042B3E:
	movs r0, #0x80
	strb r0, [r1, #5]
_08042B42:
	ldrb r0, [r1, #5]
	cmp r0, #0x30
	bls _08042B50
	ldrh r0, [r1, #8]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_08042B50:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08042BE0
	adds r0, r5, #0
	bl sub_08043C40
	movs r6, #0
	movs r7, #0xa
	rsbs r7, r7, #0
_08042B68:
	ldr r0, [r5, #0x64]
	lsls r1, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, r7
	blt _08042BD4
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08042BD4
	cmp r6, #0
	bne _08042BBA
	movs r0, #0xaf
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042B9C
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x50]
_08042B9C:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x10]
	str r1, [r0, #0x68]
	movs r0, #0xaf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042BBA
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x10]
	bl CopyPosition
_08042BBA:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _08042BDC @ =0x00000161
	bl PlaySFX
_08042BD4:
	adds r6, #1
	cmp r6, #3
	bls _08042B68
	b _08042C12
	.align 2, 0
_08042BDC: .4byte 0x00000161
_08042BE0:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r1, #2
	strb r1, [r0]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08042C12
	movs r0, #5
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x3f
	movs r1, #0x39
	strb r1, [r0]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r1, [r0]
_08042C12:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08042C14
sub_08042C14: @ 0x08042C14
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08042C30 @ =gUnk_080D12D0
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A78
	pop {r4, pc}
	.align 2, 0
_08042C30: .4byte gUnk_080D12D0

	thumb_func_start sub_08042C34
sub_08042C34: @ 0x08042C34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042D0C
	movs r0, #0x3c
	strb r0, [r7, #0xe]
	movs r0, #3
	strb r0, [r7, #0xf]
	movs r0, #1
	strb r0, [r7, #0xd]
	bl Random
	movs r1, #6
	ands r1, r0
	ldr r0, _08042D14 @ =gUnk_080D12F8
	adds r1, r1, r0
	ldr r3, _08042D18 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r6, r2, r0
	movs r0, #0x32
	ldrsh r2, [r3, r0]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r5, r2, r0
	ldr r3, _08042D1C @ =gRoomControls
	ldrh r2, [r3, #6]
	adds r0, r2, #0
	adds r0, #0x20
	cmp r0, r6
	ble _08042C86
	adds r6, r0, #0
_08042C86:
	ldrh r0, [r3, #0x1e]
	adds r0, r2, r0
	subs r0, #0x20
	cmp r0, r6
	bge _08042C92
	adds r6, r0, #0
_08042C92:
	ldrh r1, [r3, #8]
	adds r0, r1, #0
	adds r0, #0x20
	cmp r0, r5
	ble _08042C9E
	adds r5, r0, #0
_08042C9E:
	ldrh r0, [r3, #0x20]
	adds r0, r1, r0
	subs r0, #0x40
	cmp r0, r5
	bge _08042CAA
	adds r5, r0, #0
_08042CAA:
	subs r0, r6, r2
	subs r0, #0x90
	cmp r0, #0x40
	bhi _08042CC2
	subs r0, r5, r1
	subs r0, #8
	cmp r0, #0x40
	bhi _08042CC2
	adds r6, r2, #0
	adds r6, #0xb0
	adds r5, r1, #0
	adds r5, #0x40
_08042CC2:
	movs r4, #0
	mov r8, r4
	movs r3, #0x18
_08042CC8:
	ldr r0, [r7, #0x64]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	strh r6, [r2, #0x2e]
	strh r5, [r2, #0x32]
	movs r0, #0x32
	strh r0, [r2, #0x36]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x39
	strb r0, [r1]
	ldr r1, [r7, #0x64]
	adds r1, r1, r3
	movs r0, #0x80
	strh r0, [r1]
	mov r0, r8
	strh r0, [r1, #4]
	ldr r0, _08042D20 @ =gUnk_080D1419
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	cmp r4, #0
	beq _08042D04
	adds r0, r2, #0
	movs r1, #0x12
	str r3, [sp]
	bl sub_08004260
	ldr r3, [sp]
_08042D04:
	adds r3, #0x10
	adds r4, #1
	cmp r4, #3
	bls _08042CC8
_08042D0C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042D14: .4byte gUnk_080D12F8
_08042D18: .4byte gLinkEntity
_08042D1C: .4byte gRoomControls
_08042D20: .4byte gUnk_080D1419

	thumb_func_start sub_08042D24
sub_08042D24: @ 0x08042D24
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042D68
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0x3d
	strb r1, [r0]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r1, [r0]
	movs r0, #0xaf
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042D5E
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0x50]
_08042D5E:
	str r1, [r4, #0x68]
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_080042AC
_08042D68:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042D6C
sub_08042D6C: @ 0x08042D6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
_08042D72:
	ldr r0, [r5, #0x64]
	lsls r1, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #3
	bgt _08042DC4
	cmp r6, #2
	beq _08042D8E
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08042D8E:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08042DB4
	movs r0, #0xaf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042DB4
	adds r0, r4, #0
	bl CopyPosition
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySFX
_08042DB4:
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08042DC4:
	adds r6, #1
	cmp r6, #3
	bls _08042D72
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0xc]
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08042E28
	ldr r0, _08042E20 @ =0x0000FFFB
	strh r0, [r4, #0x36]
	ldr r2, [r5, #0x64]
	ldr r1, _08042E24 @ =gUnk_080D1300
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	ldr r1, [r5, #0x64]
	movs r0, #0xc0
	strh r0, [r1, #0x22]
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x3f
	movs r4, #0x39
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0x2d
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r4, [r0]
	b _08042E2C
	.align 2, 0
_08042E20: .4byte 0x0000FFFB
_08042E24: .4byte gUnk_080D1300
_08042E28:
	subs r0, r2, #2
	strh r0, [r4, #0x36]
_08042E2C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08042E30
sub_08042E30: @ 0x08042E30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x7f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042E4A
	adds r0, r6, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08042EF0
	b _08042E4E
_08042E4A:
	subs r0, #1
	strb r0, [r1]
_08042E4E:
	ldr r7, [r6, #0x64]
	adds r5, r7, #0
	adds r5, #0x18
	ldrb r0, [r6, #0xe]
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042EB2
	movs r0, #4
	strb r0, [r6, #0xd]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x28
	strb r0, [r6, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #0x24]
	ldrb r0, [r5, #1]
	lsrs r0, r0, #3
	strb r0, [r6, #0x15]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r3, _08042ED4 @ =gRoomControls
	ldrh r2, [r3, #6]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r2, r2, r4
	ldrh r3, [r3, #8]
	adds r3, #0x60
	bl sub_080045D4
	adds r4, r0, #0
	bl Random
	ldr r2, _08042ED8 @ =gUnk_080D1304
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x79
	strb r0, [r1]
_08042EB2:
	ldrh r0, [r5, #8]
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r0, [r5, #0xa]
	ldrh r2, [r5, #4]
	adds r1, r0, r2
	strh r1, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08042EDC
	ldrb r0, [r5, #5]
	cmp r0, #0x18
	bls _08042EEA
	movs r4, #0xa
	ldrsh r0, [r5, r4]
	b _08042EE6
	.align 2, 0
_08042ED4: .4byte gRoomControls
_08042ED8: .4byte gUnk_080D1304
_08042EDC:
	ldrb r0, [r5, #5]
	cmp r0, #3
	bhi _08042EEA
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08042EE6:
	rsbs r0, r0, #0
	strh r0, [r5, #0xa]
_08042EEA:
	adds r0, r6, #0
	bl sub_080042B8
_08042EF0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08042EF4
sub_08042EF4: @ 0x08042EF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08042FCE
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042F4E
	ldr r0, _08042F38 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x50
	bl sub_0806FCB8
	cmp r0, #0
	beq _08042F3C
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	b _08042F4E
	.align 2, 0
_08042F38: .4byte gLinkEntity
_08042F3C:
	movs r0, #5
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_080042AC
	ldr r0, _08042FD4 @ =0x0000019B
	bl PlaySFX
_08042F4E:
	ldr r0, [r4, #0x64]
	adds r7, r0, #0
	adds r7, #0x18
	ldrb r0, [r7, #5]
	cmp r0, #0x1f
	bhi _08042F66
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r7, #4]
	adds r0, r0, r2
	strh r0, [r7, #4]
_08042F66:
	ldr r0, [r4, #0x50]
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	mov r8, r3
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	adds r6, r0, #0
	subs r6, #0x10
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x30
	bl sub_0806FCB8
	adds r5, r4, #0
	adds r5, #0x79
	cmp r0, #0
	beq _08042FAC
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	mov r2, r8
	adds r3, r6, #0
	bl sub_080045D4
	adds r1, r0, #0
	ldrb r0, [r5]
	subs r0, r0, r1
	adds r0, #4
	cmp r0, #8
	bhi _08042FAC
	movs r0, #0x10
	eors r1, r0
	strb r1, [r5]
_08042FAC:
	ldrb r0, [r5]
	ldrb r3, [r4, #0x15]
	cmp r0, r3
	beq _08042FC2
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #3
	strb r0, [r7, #1]
_08042FC2:
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	ldrb r1, [r4, #0x15]
	strb r1, [r0, #0x15]
	bl sub_080AEF88
_08042FCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042FD4: .4byte 0x0000019B

	thumb_func_start sub_08042FD8
sub_08042FD8: @ 0x08042FD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080042B8
	adds r0, r5, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08043046
	adds r6, r5, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043018
	movs r0, #0x20
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _08043046
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #0x18
	movs r1, #0
	strh r0, [r4, #0x36]
	strb r1, [r6]
	b _08043046
_08043018:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043046
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043036
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	b _08043046
_08043036:
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
_08043046:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08043048
sub_08043048: @ 0x08043048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043C98
	cmp r0, #0
	bne _080430CC
	ldr r2, [r4, #0x64]
	adds r1, r2, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	cmp r0, #0x4f
	bhi _08043094
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r1, #4]
	adds r0, r0, r3
	strh r0, [r1, #4]
	ldrb r0, [r1, #5]
	cmp r0, #0x4f
	bls _080430C6
	movs r2, #0
	movs r3, #0x3b
_08043076:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _08043076
	ldr r0, _08043090 @ =0x00000153
	bl PlaySFX
	b _080430C6
	.align 2, 0
_08043090: .4byte 0x00000153
_08043094:
	movs r3, #8
	ldrsh r0, [r1, r3]
	lsls r0, r0, #3
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080430C6
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r2, #0
	movs r3, #0x39
_080430B4:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080430B4
_080430C6:
	adds r0, r4, #0
	bl sub_08043B9C
_080430CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080430D0
sub_080430D0: @ 0x080430D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08043128
	ldr r1, [r4, #0x64]
	adds r2, r1, #0
	adds r2, #0x18
	ldrh r0, [r2, #8]
	ldrh r3, [r1, #0x18]
	adds r0, r0, r3
	strh r0, [r1, #0x18]
	ldr r1, _08043110 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r2, #4]
	adds r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	cmp r0, #0x17
	bhi _08043128
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043114
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _08043128
	.align 2, 0
_08043110: .4byte 0xFFFFFF00
_08043114:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, _0804312C @ =0x0000FF40
	strh r0, [r2, #0xa]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_08043128:
	pop {r4, pc}
	.align 2, 0
_0804312C: .4byte 0x0000FF40

	thumb_func_start sub_08043130
sub_08043130: @ 0x08043130
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x64]
	adds r4, r1, #0
	adds r4, #0x18
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08043160
	adds r0, r6, #0
	bl sub_08043C98
	cmp r0, #0
	bne _080431E0
	ldrb r0, [r4, #5]
	subs r0, #1
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080431E0
	adds r0, r6, #0
	movs r1, #0xd
	bl sub_080042AC
	b _080431E0
_08043160:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _08043186
	subs r0, #1
	strb r0, [r6, #0xe]
	movs r5, #1
	movs r1, #0x28
_0804316E:
	ldr r0, [r6, #0x64]
	adds r4, r0, r1
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0804317C
	subs r0, #1
	strb r0, [r4, #5]
_0804317C:
	adds r1, #0x10
	adds r5, #1
	cmp r5, #3
	bls _0804316E
	b _080431E0
_08043186:
	ldr r1, [r1, #0xc]
	ldrh r0, [r1, #0x36]
	adds r0, #3
	strh r0, [r1, #0x36]
	movs r5, #0
	movs r7, #4
	rsbs r7, r7, #0
_08043194:
	ldr r0, [r6, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, r7
	ble _080431C4
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080431BC
	ldr r0, _080431E4 @ =0x00000161
	bl PlaySFX
_080431BC:
	ldrb r1, [r4, #0x18]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080431C4:
	adds r5, #1
	cmp r5, #3
	bls _08043194
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080431E0
	movs r0, #9
	strb r0, [r6, #0xd]
	movs r0, #0x3c
	strb r0, [r6, #0xe]
	adds r0, r6, #0
	bl sub_0804AA1C
_080431E0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080431E4: .4byte 0x00000161

	thumb_func_start sub_080431E8
sub_080431E8: @ 0x080431E8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0804324E
	movs r0, #6
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r5, #0
	ldr r7, _08043250 @ =gUnk_080D130C
	movs r6, #0x18
_08043206:
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, _08043254 @ =gUnk_080D1414
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	cmp r5, #3
	bne _08043230
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x11
	bl sub_08004260
_08043230:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #3
	bls _08043206
	ldr r2, [r4, #0x64]
	ldr r1, _08043258 @ =gUnk_080D1310
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_080042AC
_0804324E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043250: .4byte gUnk_080D130C
_08043254: .4byte gUnk_080D1414
_08043258: .4byte gUnk_080D1310

	thumb_func_start sub_0804325C
sub_0804325C: @ 0x0804325C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043CD4
	ldr r0, _0804329C @ =gUnk_080D1314
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A10
	adds r2, r4, #0
	adds r2, #0x78
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _080432A4
	cmp r1, #2
	bls _080432A0
	subs r0, #2
	strb r0, [r2]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x36]
	ldrb r2, [r2]
	adds r0, r0, r2
	strh r0, [r1, #0x36]
	b _080432A4
	.align 2, 0
_0804329C: .4byte gUnk_080D1314
_080432A0:
	movs r0, #0
	strb r0, [r2]
_080432A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080432A8
sub_080432A8: @ 0x080432A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #3
	movs r2, #0
	ldr r0, [r4, #0x64]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bls _080432C2
	subs r0, #1
	strb r0, [r1, #0xc]
	movs r2, #1
_080432C2:
	subs r3, #1
	cmp r3, #0
	blt _080432E0
	lsls r0, r3, #4
	adds r0, #0x18
	ldr r1, [r4, #0x64]
	adds r1, r1, r0
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bls _080432C2
	subs r0, #1
	strb r0, [r1, #0xc]
	adds r2, #1
	cmp r2, #1
	ble _080432C2
_080432E0:
	ldr r0, [r4, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	subs r0, #2
	strb r0, [r1, #5]
	movs r3, #0
	movs r6, #0x80
	movs r7, #4
	rsbs r7, r7, #0
	movs r5, #1
_080432F6:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0x36
	ldrsh r0, [r2, r1]
	cmp r0, #3
	bgt _08043316
	ldrb r0, [r2, #0x10]
	orrs r0, r6
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x18]
_08043316:
	adds r3, #1
	cmp r3, #3
	ble _080432F6
	ldr r1, [r4, #0x64]
	ldr r0, [r1]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	cmp r2, #1
	bne _08043348
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08043348
	strb r2, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #0x1c]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	bl sub_0804AA1C
_08043348:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804334C
sub_0804334C: @ 0x0804334C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08043388
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804341C
	movs r5, #0
	movs r7, #0x80
	movs r6, #4
	rsbs r6, r6, #0
	movs r3, #1
_0804336A:
	ldr r0, [r4, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	orrs r0, r7
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x18]
	adds r5, #1
	cmp r5, #4
	bls _0804336A
_08043388:
	ldr r3, [r4, #0x64]
	adds r2, r3, #0
	adds r2, #0x18
	ldr r1, _080433AC @ =gUnk_080D131C
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #2
	bls _080433B0
	ldrh r0, [r2, #8]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
	movs r7, #0
	b _080433B2
	.align 2, 0
_080433AC: .4byte gUnk_080D131C
_080433B0:
	movs r7, #1
_080433B2:
	adds r0, r4, #0
	bl sub_08043B9C
	movs r5, #0
	movs r6, #0x18
_080433BC:
	ldr r0, [r4, #0x64]
	adds r2, r0, r6
	ldr r0, _080433E4 @ =gUnk_080D1414
	adds r0, r5, r0
	ldrb r1, [r2, #0xc]
	ldrb r3, [r0]
	cmp r3, r1
	bls _080433E8
	adds r0, r1, #1
	strb r0, [r2, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r3, r0
	bne _0804341C
	movs r0, #0xaf
	lsls r0, r0, #1
	bl PlaySFX
	b _0804341C
	.align 2, 0
_080433E4: .4byte gUnk_080D1414
_080433E8:
	cmp r7, #0
	beq _08043414
	cmp r5, #4
	bne _08043414
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043414
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x14]
	movs r0, #2
	strb r0, [r1, #0xd]
_08043414:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #4
	bls _080433BC
_0804341C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08043420
sub_08043420: @ 0x08043420
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804343C @ =gUnk_080D1320
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043ABC
	pop {r4, pc}
	.align 2, 0
_0804343C: .4byte gUnk_080D1320

	thumb_func_start sub_08043440
sub_08043440: @ 0x08043440
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r5, #0
	movs r6, #0
	movs r4, #0x18
_0804344C:
	ldr r0, [r3, #0x64]
	adds r1, r0, r4
	ldrb r0, [r1, #5]
	cmp r0, #0x10
	bls _0804345E
	subs r0, #0x10
	strb r0, [r1, #5]
	adds r5, #1
	b _08043460
_0804345E:
	strh r6, [r1, #4]
_08043460:
	adds r4, #0x10
	adds r2, #1
	cmp r2, #4
	bls _0804344C
	cmp r5, #0
	bne _0804348C
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #8
_08043472:
	ldr r0, [r3, #0x64]
	lsls r1, r2, #4
	adds r0, r0, r1
	strh r4, [r0, #0x18]
	adds r2, #1
	cmp r2, #4
	bls _08043472
	movs r0, #1
	strb r0, [r3, #0xd]
	adds r0, r3, #0
	movs r1, #0x10
	bl sub_080042AC
_0804348C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08043490
sub_08043490: @ 0x08043490
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	mov ip, r0
	ldrh r1, [r0, #0x36]
	movs r2, #0x36
	ldrsh r0, [r0, r2]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080434C4
	movs r0, #0xc0
	lsls r0, r0, #9
	mov r3, ip
	str r0, [r3, #0x20]
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x7e
	strb r0, [r2]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd]
	b _08043514
_080434C4:
	subs r0, r1, #2
	mov r1, ip
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08043514
	ldrb r0, [r1, #0x10]
	movs r3, #0x80
	orrs r0, r3
	strb r0, [r1, #0x10]
	ldrb r1, [r1, #0x18]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	strb r0, [r2, #0x18]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x3f
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, _0804351C @ =gUnk_080FD450
	mov r1, ip
	str r0, [r1, #0x48]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x10]
	orrs r3, r0
	strb r3, [r1, #0x10]
	ldr r0, [r4, #0x64]
	ldr r2, [r0, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_08043514:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_0804351C: .4byte gUnk_080FD450

	thumb_func_start sub_08043520
sub_08043520: @ 0x08043520
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x10]
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08043556
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08043556
	ldr r0, _08043558 @ =0x0000FFFA
	strh r0, [r4, #0x36]
	movs r0, #3
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x7a
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
_08043556:
	pop {r4, r5, pc}
	.align 2, 0
_08043558: .4byte 0x0000FFFA

	thumb_func_start sub_0804355C
sub_0804355C: @ 0x0804355C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043DB0
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043578
	movs r0, #4
	strb r0, [r4, #0xd]
_08043578:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_08043580
sub_08043580: @ 0x08043580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x36]
	adds r0, #3
	strh r0, [r1, #0x36]
	movs r2, #0
	movs r5, #4
	rsbs r5, r5, #0
	movs r6, #0x7f
_08043596:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, r5
	ble _080435B6
	ldrb r1, [r3, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #0x10]
	ldrb r1, [r3, #0x18]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3, #0x18]
_080435B6:
	adds r2, #1
	cmp r2, #4
	bls _08043596
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080435EE
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x64]
	ldr r3, [r0, #0x10]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x39
	strb r0, [r1]
	ldr r0, _080435F0 @ =gUnk_080FD538
	str r0, [r3, #0x48]
	adds r0, r4, #0
	bl sub_0804AA1C
_080435EE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080435F0: .4byte gUnk_080FD538

	thumb_func_start sub_080435F4
sub_080435F4: @ 0x080435F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043674
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	movs r5, #0
	ldr r0, _08043658 @ =gUnk_080D1338
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0x18
	ldr r7, _0804365C @ =gUnk_080D133C
_08043622:
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #4]
	mov r0, r8
	strb r0, [r1, #0xc]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #8]
	ldr r0, [r4, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r5, #0
	bne _08043660
	adds r0, r2, #0
	bl sub_08043B9C
	b _0804366C
	.align 2, 0
_08043658: .4byte gUnk_080D1338
_0804365C: .4byte gUnk_080D133C
_08043660:
	ldr r0, _0804367C @ =gUnk_080D1340
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_08004260
_0804366C:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #4
	bls _08043622
_08043674:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804367C: .4byte gUnk_080D1340

	thumb_func_start sub_08043680
sub_08043680: @ 0x08043680
	push {lr}
	ldr r2, _08043694 @ =gUnk_080D1348
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08043694: .4byte gUnk_080D1348

	thumb_func_start sub_08043698
sub_08043698: @ 0x08043698
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r3, #0
	movs r5, #0x7f
_080436A8:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r3, #1
	cmp r3, #4
	bls _080436A8
	pop {r4, r5, pc}

	thumb_func_start sub_080436C0
sub_080436C0: @ 0x080436C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080436FC
	movs r0, #0x14
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	str r5, [r0, #0x64]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0805E7BC
_080436FC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043700
sub_08043700: @ 0x08043700
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08043734
	movs r0, #0x14
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	str r5, [r0, #0x64]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0805E7BC
_08043734:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043738
sub_08043738: @ 0x08043738
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0804376C
	movs r0, #0x14
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	str r5, [r0, #0x64]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_0805E7BC
_0804376C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043770
sub_08043770: @ 0x08043770
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080437D8
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x14]
	ldr r0, _080437AC @ =gUnk_030010A0
	adds r5, r0, #0
	adds r5, #0x39
	ldrb r1, [r5]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0804379A
	movs r0, #2
	strb r0, [r3, #0xd]
_0804379A:
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _080437B0
	ldr r0, [r3, #0x64]
	str r4, [r0, #0x14]
	ldrb r1, [r5]
	movs r0, #0xfe
	b _080437B8
	.align 2, 0
_080437AC: .4byte gUnk_030010A0
_080437B0:
	ldr r0, [r3, #0x64]
	str r4, [r0, #0x18]
	ldrb r1, [r5]
	movs r0, #0xfd
_080437B8:
	ands r0, r1
	strb r0, [r5]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	adds r0, #0x45
	strb r1, [r0]
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x50]
	bl sub_0805E780
_080437D8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080437DC
sub_080437DC: @ 0x080437DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0804392C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bls _080437EE
	b _08043934
_080437EE:
	movs r0, #0x68
	bl sub_0801D8E0
	adds r7, r0, #0
	cmp r7, #0
	bne _080437FC
	b _08043934
_080437FC:
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	movs r5, #0x10
	orrs r0, r5
	strb r0, [r1]
	str r7, [r6, #0x64]
	str r6, [r7]
	movs r0, #0x52
	movs r1, #1
	bl CreateEnemy
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #4]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	movs r0, #0x52
	movs r1, #2
	bl CreateEnemy
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #8]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	movs r0, #0x52
	movs r1, #3
	bl CreateEnemy
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #0xc]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	movs r0, #0x52
	movs r1, #4
	bl CreateEnemy
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r1]
	adds r1, #0x13
	ldrb r0, [r1]
	orrs r5, r0
	strb r5, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #0x10]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	ldr r0, [r6, #0x50]
	str r0, [r7, #0x14]
	ldr r1, _08043930 @ =gUnk_080D135C
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r3, #0
	strh r2, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x24
	strb r3, [r0]
	strh r2, [r7, #0x28]
	strh r1, [r7, #0x2c]
	adds r0, #0x10
	strb r3, [r0]
	strh r2, [r7, #0x38]
	strh r1, [r7, #0x3c]
	adds r0, #0x10
	strb r3, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #8
	strb r3, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #8
	strb r3, [r0]
	movs r0, #1
	b _08043936
	.align 2, 0
_0804392C: .4byte gUnk_03003DBC
_08043930: .4byte gUnk_080D135C
_08043934:
	movs r0, #0
_08043936:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804393C
sub_0804393C: @ 0x0804393C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	cmp r2, #0
	beq _0804397C
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	bhi _0804397C
	ldr r4, _08043978 @ =gUnk_080D1362
	ldrb r3, [r5, #0xa]
	lsls r1, r3, #4
	lsrs r0, r2, #0x1b
	movs r2, #0xf
	ands r0, r2
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r4, [r1]
	adds r6, r3, #0
	b _08043980
	.align 2, 0
_08043978: .4byte gUnk_080D1362
_0804397C:
	movs r4, #0
	ldrb r6, [r5, #0xa]
_08043980:
	lsls r0, r6, #4
	adds r0, #0x18
	ldr r2, [r5, #0x64]
	mov ip, r2
	adds r2, r2, r0
	ldrb r0, [r2, #0xc]
	adds r0, r4, r0
	lsls r4, r0, #8
	ldr r3, _08043A0C @ =gUnk_080C9160
	ldrb r1, [r2, #5]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	adds r7, r0, #0
	muls r7, r4, r7
	mov r8, r7
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	muls r0, r4, r0
	cmp r0, #0
	bge _080439BC
	adds r0, #0xff
_080439BC:
	asrs r4, r0, #8
	ldrb r1, [r2, #1]
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r3, r0, #0
	muls r3, r4, r3
	adds r0, r6, #1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r1, r5, #0
	bl PositionRelative
	ldr r0, [r5, #0x34]
	add r0, r8
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x64]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #0x63
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043A0C: .4byte gUnk_080C9160

	thumb_func_start sub_08043A10
sub_08043A10: @ 0x08043A10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043B7C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x32]
	subs r0, #8
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r4, #0x7c
	ldrb r0, [r4]
	cmp r0, #0
	beq _08043A76
	subs r0, #1
	strb r0, [r4]
_08043A76:
	pop {r4, pc}

	thumb_func_start sub_08043A78
sub_08043A78: @ 0x08043A78
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08043B7C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043ABC
sub_08043ABC: @ 0x08043ABC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08043B7C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043B08
sub_08043B08: @ 0x08043B08
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #0xa]
	lsls r1, r3, #4
	adds r4, r1, #0
	adds r4, #8
	ldr r2, [r0, #0x64]
	adds r6, r2, r4
	adds r1, #0x18
	adds r4, r2, r1
	ldr r0, _08043B40 @ =gUnk_080D13B2
	adds r3, r3, r0
	ldrb r5, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08043B44
	ldrb r1, [r6, #1]
	ldrb r0, [r4, #1]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r5, r3
	bhs _08043B5E
	cmp r3, #0
	ble _08043B56
	subs r0, r1, r5
	b _08043B5C
	.align 2, 0
_08043B40: .4byte gUnk_080D13B2
_08043B44:
	ldrb r0, [r4, #1]
	ldrb r1, [r6, #1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r5, r3
	bhs _08043B5E
	cmp r3, #0
	bge _08043B5A
_08043B56:
	strb r1, [r4, #1]
	b _08043B5E
_08043B5A:
	adds r0, r1, r5
_08043B5C:
	strb r0, [r4, #1]
_08043B5E:
	ldrb r2, [r6, #5]
	ldrb r0, [r4, #5]
	subs r3, r2, r0
	lsls r1, r5, #1
	adds r0, r3, r5
	cmp r1, r0
	bhs _08043B78
	cmp r3, #0
	ble _08043B74
	subs r0, r2, r5
	b _08043B76
_08043B74:
	adds r0, r2, r5
_08043B76:
	strb r0, [r4, #5]
_08043B78:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08043B7C
sub_08043B7C: @ 0x08043B7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_08043B08
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08043B08
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_08043B08
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043B9C
sub_08043B9C: @ 0x08043B9C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x64]
	ldrb r0, [r0, #0x19]
	adds r0, #4
	movs r1, #0xff
	ands r0, r1
	asrs r0, r0, #3
	ldr r1, _08043BC4 @ =gUnk_080D13B7
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2, #0x1e]
	subs r0, #1
	cmp r1, r0
	beq _08043BC0
	adds r0, r2, #0
	bl sub_080042AC
_08043BC0:
	pop {pc}
	.align 2, 0
_08043BC4: .4byte gUnk_080D13B7

	thumb_func_start sub_08043BC8
sub_08043BC8: @ 0x08043BC8
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0xb]
	lsls r2, r2, #2
	ldr r1, _08043BEC @ =gUnk_080D13D8
	adds r2, r2, r1
	ldr r1, [r0, #0x64]
	adds r1, #0x18
	ldrh r0, [r2]
	strh r0, [r1, #8]
	ldrh r0, [r2, #2]
	strh r0, [r1, #0xa]
	movs r0, #0x5a
	strb r0, [r1, #0xd]
	movs r0, #0x28
	strb r0, [r1, #0xe]
	bx lr
	.align 2, 0
_08043BEC: .4byte gUnk_080D13D8

	thumb_func_start sub_08043BF0
sub_08043BF0: @ 0x08043BF0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _08043C18
	ldrb r0, [r1, #1]
	movs r1, #6
	cmp r0, #0x2f
	bls _08043C2E
	movs r1, #7
	cmp r0, #0x5f
	bls _08043C2E
	movs r1, #9
	cmp r0, #0x8f
	bhi _08043C2E
	movs r1, #8
	b _08043C2E
_08043C18:
	ldrb r0, [r1, #1]
	movs r1, #8
	cmp r0, #0xd0
	bhi _08043C2E
	movs r1, #7
	cmp r0, #0xa0
	bhi _08043C2E
	movs r1, #5
	cmp r0, #0x70
	bls _08043C2E
	movs r1, #6
_08043C2E:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _08043C3E
	adds r0, r2, #0
	bl sub_080042AC
_08043C3E:
	pop {pc}

	thumb_func_start sub_08043C40
sub_08043C40: @ 0x08043C40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r1, #5]
	cmp r0, #0x1f
	bhi _08043C54
	ldr r6, _08043C50 @ =gUnk_080D13E0
	b _08043C68
	.align 2, 0
_08043C50: .4byte gUnk_080D13E0
_08043C54:
	cmp r0, #0x2f
	bhi _08043C60
	ldr r6, _08043C5C @ =gUnk_080D13E3
	b _08043C68
	.align 2, 0
_08043C5C: .4byte gUnk_080D13E3
_08043C60:
	ldr r6, _08043C84 @ =gUnk_080D13E0
	cmp r0, #0x77
	bhi _08043C68
	adds r6, #6
_08043C68:
	movs r4, #0
	movs r5, #0x28
_08043C6C:
	ldr r0, [r7, #0x64]
	adds r3, r0, r5
	adds r0, r6, r4
	ldrb r1, [r3, #0xc]
	ldrb r2, [r0]
	adds r0, r1, #0
	cmp r2, r0
	beq _08043C8C
	cmp r2, r0
	bhs _08043C88
	subs r0, r1, #1
	b _08043C8A
	.align 2, 0
_08043C84: .4byte gUnk_080D13E0
_08043C88:
	adds r0, r1, #1
_08043C8A:
	strb r0, [r3, #0xc]
_08043C8C:
	adds r5, #0x10
	adds r4, #1
	cmp r4, #2
	bls _08043C6C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08043C98
sub_08043C98: @ 0x08043C98
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x64]
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	adds r1, #0x41
	ldrb r0, [r1]
	cmp r0, #0x9d
	beq _08043CB4
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08043CD0
_08043CB4:
	adds r0, r3, #0
	bl sub_08043D08
	ldr r0, _08043CCC @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	movs r0, #1
	b _08043CD2
	.align 2, 0
_08043CCC: .4byte gUnk_030010A0
_08043CD0:
	movs r0, #0
_08043CD2:
	pop {pc}

	thumb_func_start sub_08043CD4
sub_08043CD4: @ 0x08043CD4
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0x7c
	movs r5, #0x78
	movs r0, #0x7d
	adds r0, r0, r3
	mov ip, r0
_08043CE6:
	ldr r0, [r3, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08043CFE
	strb r5, [r4]
	mov r0, ip
	strb r2, [r0]
	b _08043D04
_08043CFE:
	adds r2, #1
	cmp r2, #4
	bls _08043CE6
_08043D04:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043D08
sub_08043D08: @ 0x08043D08
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_080042AC
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x10]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x13
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08043D78
	ldr r1, _08043DAC @ =gUnk_080D13E9
	ldrb r0, [r5, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r2, #0x32]
	subs r0, #6
	strh r0, [r2, #0x32]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08043D78:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0xc]
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, [r5, #0x64]
	adds r1, #0x54
	ldrh r0, [r4, #0x36]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	movs r2, #0
	movs r3, #0x39
_08043D92:
	ldr r0, [r5, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _08043D92
	movs r0, #0xfe
	bl sub_08004488
	pop {r4, r5, pc}
	.align 2, 0
_08043DAC: .4byte gUnk_080D13E9

	thumb_func_start sub_08043DB0
sub_08043DB0: @ 0x08043DB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08043E48 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043EAC
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0xc]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r6, _08043E4C @ =gRoomControls
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #8]
	subs r1, r1, r2
	adds r1, #2
	movs r2, #3
	movs r3, #3
	bl sub_0800293E
	cmp r0, #0
	beq _08043EAC
	ldr r0, _08043E50 @ =gUnk_080D13EC
	bl sub_08080840
	ldr r4, _08043E54 @ =gUnk_030010A0
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08043DFE
	movs r0, #1
	strb r0, [r4, #0xd]
_08043DFE:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	movs r1, #0x3c
	bl __divsi3
	movs r1, #0x1e
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r5, #0xb]
	subs r0, #1
	strb r1, [r0]
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x14]
	ldrh r1, [r2, #0x2e]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _08043E58
	ldrh r1, [r3, #0x2e]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r1, [r3, #0x32]
	adds r0, #2
	strh r1, [r0]
	b _08043E70
	.align 2, 0
_08043E48: .4byte gLinkState
_08043E4C: .4byte gRoomControls
_08043E50: .4byte gUnk_080D13EC
_08043E54: .4byte gUnk_030010A0
_08043E58:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #6]
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r0, [r6, #8]
	adds r0, #0x60
	adds r1, #2
	strh r0, [r1]
_08043E70:
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x18]
	cmp r3, #0
	beq _08043E90
	ldr r1, _08043E8C @ =gUnk_030010A0
	ldrh r2, [r3, #0x2e]
	adds r0, r1, #0
	adds r0, #0x48
	strh r2, [r0]
	ldrh r0, [r3, #0x32]
	adds r1, #0x4a
	strh r0, [r1]
	b _08043EAC
	.align 2, 0
_08043E8C: .4byte gUnk_030010A0
_08043E90:
	ldr r2, _08043EB0 @ =gUnk_030010A0
	ldr r3, _08043EB4 @ =gRoomControls
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x48
	strh r0, [r1]
	ldrh r0, [r3, #8]
	adds r0, #0x60
	adds r2, #0x4a
	strh r0, [r2]
_08043EAC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08043EB0: .4byte gUnk_030010A0
_08043EB4: .4byte gRoomControls

	thumb_func_start sub_08043EB8
sub_08043EB8: @ 0x08043EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0x10]
	movs r5, #0x80
	orrs r0, r5
	strb r0, [r7, #0x10]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r6, #4
	orrs r0, r6
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #0xd
	bl sub_080042AC
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #4]
	ldrb r0, [r3, #0x10]
	orrs r0, r5
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #8]
	ldrb r0, [r3, #0x10]
	orrs r0, r5
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	ldrb r2, [r3, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r3, #0x18]
	adds r3, #0x29
	ldrb r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r6
	strb r0, [r3]
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #0x10]
	ldrb r0, [r3, #0x10]
	orrs r5, r0
	strb r5, [r3, #0x10]
	ldrb r0, [r3, #0x18]
	ands r1, r0
	mov r0, r8
	orrs r1, r0
	strb r1, [r3, #0x18]
	adds r1, r3, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	orrs r4, r6
	strb r4, [r1]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _08043F74
	ldr r1, _08043F70 @ =gUnk_030010A0
	adds r0, r1, #0
	adds r0, #0x44
	b _08043F7A
	.align 2, 0
_08043F70: .4byte gUnk_030010A0
_08043F74:
	ldr r1, _08043F8C @ =gUnk_030010A0
	adds r0, r1, #0
	adds r0, #0x48
_08043F7A:
	ldrh r0, [r0]
	strh r0, [r3, #0x2e]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _08043F90
	adds r0, r1, #0
	adds r0, #0x46
	b _08043F94
	.align 2, 0
_08043F8C: .4byte gUnk_030010A0
_08043F90:
	adds r0, r1, #0
	adds r0, #0x4a
_08043F94:
	ldrh r1, [r0]
	movs r0, #0
	strh r1, [r3, #0x32]
	strh r0, [r3, #0x36]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, _08043FF8 @ =gUnk_080FD450
	str r0, [r3, #0x48]
	movs r0, #0xaf
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08043FCA
	ldr r0, [r7, #0x64]
	ldr r0, [r0, #0xc]
	str r0, [r3, #0x50]
_08043FCA:
	ldr r0, [r7, #0x64]
	ldr r0, [r0]
	str r3, [r0, #0x68]
	movs r2, #0
	movs r6, #0
	movs r5, #0x80
	lsls r5, r5, #8
	ldr r4, _08043FFC @ =gUnk_080D1419
	movs r3, #0x18
_08043FDC:
	ldr r0, [r7, #0x64]
	adds r0, r0, r3
	strh r5, [r0]
	strh r6, [r0, #4]
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0, #0xc]
	adds r3, #0x10
	adds r2, #1
	cmp r2, #4
	bls _08043FDC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043FF8: .4byte gUnk_080FD450
_08043FFC: .4byte gUnk_080D1419

	thumb_func_start sub_08044000
sub_08044000: @ 0x08044000
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08044070 @ =gUnk_080D1400
	movs r3, #0
	ldr r2, _08044074 @ =gUnk_080D1414
	mov ip, r2
	movs r7, #8
	rsbs r7, r7, #0
	adds r5, r1, r0
	movs r6, #0x18
_0804401C:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrh r0, [r5]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #4]
	mov r2, ip
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	adds r5, #2
	adds r6, #0x10
	adds r3, #1
	cmp r3, #4
	bls _0804401C
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
	ldr r1, [r4, #0x64]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl CopyPosition
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08044070: .4byte gUnk_080D1400
_08044074: .4byte gUnk_080D1414

	thumb_func_start sub_08044078
sub_08044078: @ 0x08044078
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080440C4
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080440AC
	ldr r3, _080440B8 @ =gUnk_030010A0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080440BC
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r1, r3, #0
	adds r1, #0x3c
	ldrb r0, [r0, #0xb]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080440BC
_080440AC:
	adds r0, r4, #0
	movs r1, #0x12
	bl sub_08004260
	b _080440C4
	.align 2, 0
_080440B8: .4byte gUnk_030010A0
_080440BC:
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_08004260
_080440C4:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080440CC
sub_080440CC: @ 0x080440CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08044110
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _08044104 @ =gUnk_030010A0
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08044108
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r0, #0xb]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08044108
	adds r0, r4, #0
	movs r1, #0x13
	bl sub_08004260
	b _08044110
	.align 2, 0
_08044104: .4byte gUnk_030010A0
_08044108:
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_08004260
_08044110:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08044118
sub_08044118: @ 0x08044118
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08044130 @ =gUnk_080D1588
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08044130: .4byte gUnk_080D1588

	thumb_func_start sub_08044134
sub_08044134: @ 0x08044134
	push {lr}
	ldr r2, _08044148 @ =gUnk_080D15A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08044148: .4byte gUnk_080D15A0

	thumb_func_start sub_0804414C
sub_0804414C: @ 0x0804414C
	push {lr}
	ldr r1, _08044158 @ =gUnk_080D1588
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08044158: .4byte gUnk_080D1588

	thumb_func_start sub_0804415C
sub_0804415C: @ 0x0804415C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0804418E
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08044188
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080441BA
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08044310
	b _080441BA
_08044188:
	movs r0, #8
	strb r0, [r4, #0xe]
	b _080441BA
_0804418E:
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080441B0
	ldr r0, _080441AC @ =gUnk_080D15A8
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080441BA
	.align 2, 0
_080441AC: .4byte gUnk_080D15A8
_080441B0:
	adds r0, r4, #0
	bl sub_080445C0
	bl sub_0805E780
_080441BA:
	pop {r4, pc}

	thumb_func_start sub_080441BC
sub_080441BC: @ 0x080441BC
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_080441C4
sub_080441C4: @ 0x080441C4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080441CC
sub_080441CC: @ 0x080441CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080441DE
	adds r0, r4, #0
	bl sub_0804A7D4
_080441DE:
	pop {r4, pc}

	thumb_func_start sub_080441E0
sub_080441E0: @ 0x080441E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x12
	bl GetProgressFlag
	cmp r0, #0
	beq _080441F2
	bl sub_0805E780
_080441F2:
	ldrb r7, [r4, #0xa]
	cmp r7, #0
	bne _08044284
	ldr r0, _08044244 @ =0x000001EB
	movs r1, #1
	bl sub_080AD8F0
	adds r6, r0, #0
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r5, r0, #1
	adds r0, r5, #0
	bl sub_0801D8E0
	adds r1, r0, #0
	str r1, [r4, #0x64]
	cmp r1, #0
	beq _0804429A
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_0801D66C
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0xc
	bl sub_0801D8E0
	adds r2, r0, #0
	cmp r2, #0
	bne _08044248
	ldr r0, [r4, #0x64]
	bl sub_0801DA0C
	b _0804429A
	.align 2, 0
_08044244: .4byte 0x000001EB
_08044248:
	str r2, [r4, #0x48]
	ldr r0, _0804427C @ =gUnk_080FD188
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	adds r0, r4, #0
	bl sub_080442BC
	movs r0, #1
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	strb r7, [r0]
	adds r1, r4, #0
	adds r1, #0x76
	ldr r0, _08044280 @ =0x0000FFFF
	strh r0, [r1]
	b _08044292
	.align 2, 0
_0804427C: .4byte gUnk_080FD188
_08044280: .4byte 0x0000FFFF
_08044284:
	movs r0, #0
	strb r0, [r4, #0x1e]
	strh r0, [r4, #0x24]
	ldr r0, _0804429C @ =gUnk_080FD168
	str r0, [r4, #0x48]
	movs r0, #1
	strb r0, [r4, #0x1c]
_08044292:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
_0804429A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804429C: .4byte gUnk_080FD168

	thumb_func_start sub_080442A0
sub_080442A0: @ 0x080442A0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _080442B2
	adds r0, r1, #0
	bl sub_08044498
	b _080442B8
_080442B2:
	adds r0, r1, #0
	bl sub_08044550
_080442B8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080442BC
sub_080442BC: @ 0x080442BC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r5, _0804430C @ =gUnk_080D15B4
	ldr r0, [r3, #0x64]
	ldrb r6, [r0]
	movs r4, #0
	cmp r4, r6
	bhs _08044304
	movs r7, #0
_080442CE:
	ldr r1, [r3, #0x48]
	lsls r2, r4, #3
	adds r1, r2, r1
	ldrb r0, [r5]
	strb r0, [r1, #0xc]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	ldrb r1, [r5, #1]
	strb r1, [r0, #0xd]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	ldrb r1, [r5, #2]
	strb r1, [r0, #0xe]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	ldrb r1, [r5, #3]
	strb r1, [r0, #0xf]
	ldr r0, [r3, #0x48]
	adds r0, r2, r0
	adds r0, #0xc
	strb r7, [r0, #4]
	ldr r0, [r3, #0x48]
	adds r2, r2, r0
	strb r4, [r2, #0x11]
	adds r4, #1
	cmp r4, r6
	blo _080442CE
_08044304:
	adds r0, r3, #0
	adds r0, #0x74
	strb r6, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804430C: .4byte gUnk_080D15B4

	thumb_func_start sub_08044310
sub_08044310: @ 0x08044310
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r4, #0xff
	movs r6, #0xff
	ldr r0, _08044334 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r1, r0, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0804436A
	cmp r1, #1
	bgt _08044338
	cmp r1, #0
	beq _08044342
	b _080443EA
	.align 2, 0
_08044334: .4byte gLinkEntity
_08044338:
	cmp r1, #2
	beq _08044392
	cmp r1, #3
	beq _080443C4
	b _080443EA
_08044342:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080443EA
	adds r3, r0, #0
	ldr r1, [r5, #0x48]
_08044352:
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _08044360
	ldrb r0, [r1, #0xd]
	cmp r6, r0
	bls _08044360
	adds r4, r2, #0
_08044360:
	adds r1, #8
	adds r2, #1
	cmp r2, r3
	blo _08044352
	b _080443EA
_0804436A:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080443EA
	adds r3, r0, #0
	ldr r1, [r5, #0x48]
_0804437A:
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _08044388
	ldrb r0, [r1, #0xe]
	cmp r6, r0
	bls _08044388
	adds r4, r2, #0
_08044388:
	adds r1, #8
	adds r2, #1
	cmp r2, r3
	blo _0804437A
	b _080443EA
_08044392:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080443EA
	adds r3, r0, #0
	ldr r1, [r5, #0x48]
_080443A2:
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _080443B0
	ldrb r0, [r1, #0xc]
	cmp r6, r0
	bls _080443B0
	adds r4, r2, #0
_080443B0:
	adds r1, #8
	adds r2, #1
	cmp r2, r3
	blo _080443A2
	b _080443EA
_080443BA:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0, #0x11]
	strb r0, [r3, #5]
	b _08044492
_080443C4:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080443EA
	adds r3, r0, #0
	ldr r1, [r5, #0x48]
_080443D4:
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _080443E2
	ldrb r0, [r1, #0xf]
	cmp r6, r0
	bls _080443E2
	adds r4, r2, #0
_080443E2:
	adds r1, #8
	adds r2, #1
	cmp r2, r3
	blo _080443D4
_080443EA:
	cmp r4, #0xff
	beq _08044492
	ldr r0, [r5, #0x48]
	lsls r4, r4, #3
	adds r0, r4, r0
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r1, [r5, #0x64]
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #1
	adds r7, r2, r0
	ldr r0, [r5, #0x48]
	adds r0, r4, r0
	ldrb r1, [r0, #0x11]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #1
	adds r6, r2, r0
	movs r0, #0x53
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	mov r8, r4
	cmp r1, #0
	beq _08044440
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r2, #8
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r6, r3]
	adds r3, #8
	lsls r3, r3, #0x10
	adds r0, r5, #0
	bl PositionRelative
_08044440:
	ldr r0, [r5, #0x64]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08044458
	movs r0, #0x12
	bl sub_0807CD04
	movs r0, #0x72
	bl PlaySFX
	bl sub_0805E780
_08044458:
	movs r2, #0
	adds r3, r5, #0
	adds r3, #0x74
_0804445E:
	adds r0, r6, r2
	adds r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #4
	bls _0804445E
	movs r2, #0
	ldrb r1, [r3]
	cmp r2, r1
	bhs _08044492
	ldr r4, [r5, #0x48]
	ldr r0, [r5, #0x64]
	ldrb r6, [r0]
	adds r5, r1, #0
	adds r3, r4, #0
	adds r3, #0xc
	adds r1, r4, #0
_08044482:
	ldrb r0, [r1, #0x11]
	cmp r0, r6
	beq _080443BA
	adds r3, #8
	adds r1, #8
	adds r2, #1
	cmp r2, r5
	blo _08044482
_08044492:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08044498
sub_08044498: @ 0x08044498
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, _08044538 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r3, _0804453C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r0, _08044540 @ =gLinkState
	adds r0, #0x92
	ldrh r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r0
	mov r2, ip
	adds r2, #0x75
	ldrb r0, [r2]
	cmp r1, r0
	bne _080444DE
	mov r0, ip
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r4, r0
	beq _0804454C
_080444DE:
	strb r1, [r2]
	mov r0, ip
	adds r0, #0x76
	strh r4, [r0]
	mov r1, ip
	ldr r0, [r1, #0x64]
	adds r2, r0, #1
	ldrb r4, [r0]
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	mov r5, ip
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	subs r5, r1, r0
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	mov r3, ip
	movs r6, #0x32
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	movs r3, #0
	cmp r3, r4
	bhs _0804454C
_0804450C:
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r5, r0
	cmp r0, #0xf
	bhi _08044544
	movs r0, #1
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	cmp r0, #0xf
	bhi _08044544
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0804454C
	ldr r0, _08044538 @ =gLinkEntity
	bl CopyPosition
	b _0804454C
	.align 2, 0
_08044538: .4byte gLinkEntity
_0804453C: .4byte gRoomControls
_08044540: .4byte gLinkState
_08044544:
	adds r2, #5
	adds r3, #1
	cmp r3, r4
	blo _0804450C
_0804454C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08044550
sub_08044550: @ 0x08044550
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080445A8 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080445B4
	ldrh r1, [r6, #0x24]
	movs r2, #0x24
	ldrsh r0, [r6, r2]
	cmp r0, #0xff
	bgt _08044570
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x24]
_08044570:
	ldr r5, _080445AC @ =gLinkEntity
	ldrb r0, [r5, #0x14]
	movs r4, #0xe
	ands r4, r0
	ldr r0, _080445B0 @ =gUnk_08126EE4
	adds r4, r4, r0
	movs r3, #0x2e
	ldrsh r0, [r6, r3]
	movs r7, #0x32
	ldrsh r1, [r6, r7]
	movs r3, #0x2e
	ldrsh r2, [r5, r3]
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r2, r2, r3
	movs r7, #0x32
	ldrsh r3, [r5, r7]
	ldrb r4, [r4, #1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r3, r3, r4
	bl sub_080045D4
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	bl sub_0806F69C
	b _080445BE
	.align 2, 0
_080445A8: .4byte gLinkState
_080445AC: .4byte gLinkEntity
_080445B0: .4byte gUnk_08126EE4
_080445B4:
	adds r0, r6, #0
	bl sub_080445C0
	bl sub_0805E780
_080445BE:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080445C0
sub_080445C0: @ 0x080445C0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x21
	movs r1, #1
	movs r2, #1
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080445DA
	adds r0, r4, #0
	bl CopyPosition
_080445DA:
	pop {r4, pc}

	thumb_func_start sub_080445DC
sub_080445DC: @ 0x080445DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08044604
	cmp r0, #3
	beq _08044604
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x78]
	subs r1, r1, r0
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x7c]
	subs r1, r1, r0
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
_08044604:
	ldr r1, _08044684 @ =gUnk_080D1604
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044626
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08044626:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08044680
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0804464A
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bne _0804464A
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
_0804464A:
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	cmp r0, #0xfc
	bhi _08044680
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080A29BC
	ldr r0, _08044688 @ =0x000001C3
	bl PlaySFX
_08044680:
	pop {r4, r5, pc}
	.align 2, 0
_08044684: .4byte gUnk_080D1604
_08044688: .4byte 0x000001C3

	thumb_func_start sub_0804468C
sub_0804468C: @ 0x0804468C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	movs r6, #0
	movs r5, #3
	strb r5, [r0]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	strb r6, [r0]
	ldrb r3, [r4, #0xa]
	cmp r3, #0
	beq _080446C8
	cmp r3, #1
	beq _08044728
	b _0804474A
_080446C8:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	lsls r0, r0, #3
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x78
	strb r3, [r0]
	adds r0, #0xb
	strb r3, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r2]
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #1
	ldr r0, _08044724 @ =gUnk_080D1620
	adds r1, r1, r0
	ldr r0, [r4, #0x50]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	subs r3, #0x10
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x36]
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0804474A
	.align 2, 0
_08044724: .4byte gUnk_080D1620
_08044728:
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, #0xf
	movs r2, #1
	strb r3, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
_0804474A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0804474C
sub_0804474C: @ 0x0804474C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r2, [r0, #0xc]
	cmp r2, #3
	beq _0804476C
	cmp r2, #3
	bgt _08044762
	cmp r2, #2
	beq _0804479A
	b _080447A8
_08044762:
	cmp r2, #5
	beq _0804477A
	cmp r2, #6
	beq _0804478A
	b _080447A8
_0804476C:
	movs r1, #0
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	strb r1, [r4, #0xe]
	b _080447A8
_0804477A:
	movs r0, #0
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xf]
	b _080447A8
_0804478A:
	movs r0, #0
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080447A8
_0804479A:
	movs r1, #0
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	subs r0, #0x35
	strb r1, [r0]
_080447A8:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080447B6
	adds r0, r4, #0
	bl sub_080042B8
	b _080447DC
_080447B6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080447D0
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080447D0:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080042B8
_080447DC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080447E0
sub_080447E0: @ 0x080447E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x50]
	ldrb r0, [r3, #0xc]
	cmp r0, #1
	bne _08044818
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x2b
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08044E74
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08044864
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08044864
_08044818:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	adds r2, r0, #1
	movs r0, #7
	ands r2, r0
	strb r2, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08044852
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08044848
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08044852
_08044848:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08044852:
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #2
	bne _08044864
	adds r0, r4, #0
	movs r1, #2
	bl sub_08044E74
_08044864:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08044868
sub_08044868: @ 0x08044868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804487E
	b _080449C8
_0804487E:
	cmp r0, #3
	bgt _0804488E
	cmp r0, #1
	beq _08044948
	cmp r0, #2
	bne _0804488C
	b _080449AE
_0804488C:
	b _080449EA
_0804488E:
	cmp r0, #0xfe
	beq _08044898
	cmp r0, #0xff
	beq _080448B6
	b _080449EA
_08044898:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080448A4
	b _080449EA
_080448A4:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #2
	beq _080448B0
	b _080449EA
_080448B0:
	bl sub_0805E780
	b _080449EA
_080448B6:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080448C2
	b _080449EA
_080448C2:
	adds r6, r4, #0
	adds r6, #0x74
	ldrb r0, [r6]
	cmp r0, #0
	beq _080448D2
	cmp r0, #1
	beq _08044900
	b _080449EA
_080448D2:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080448E2
	b _080449EA
_080448E2:
	movs r0, #1
	strb r0, [r6]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _080449EA
_08044900:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	subs r2, #0x10
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806FCB8
	cmp r0, #0
	beq _08044934
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	b _080449EA
_08044934:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	b _080449EA
_08044948:
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044964
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08044964:
	adds r0, r4, #0
	bl sub_08044DEC
	adds r0, r5, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bls _080449A8
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r6, r0, #0x1e
	cmp r6, #1
	bne _080449A8
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldrb r7, [r0]
	cmp r7, #0
	bne _080449A8
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _080449A8
	strb r6, [r5, #0xb]
	str r4, [r5, #0x50]
	mov r0, r8
	strb r6, [r0]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r7, [r0]
_080449A8:
	movs r0, #0x20
	strb r0, [r4, #0xe]
	b _080449EA
_080449AE:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080449EA
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhi _080449EA
	adds r0, r4, #0
	bl sub_0806F69C
	b _080449EA
_080449C8:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08044E74
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080449E2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _080449E8
_080449E2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_080449E8:
	strb r0, [r4, #0x10]
_080449EA:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080449F8
sub_080449F8: @ 0x080449F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	bl sub_080042B8
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08044A90
	adds r6, r4, #0
	adds r6, #0x74
	ldrb r0, [r6]
	cmp r0, #1
	beq _08044A6A
	cmp r0, #1
	bgt _08044A1C
	cmp r0, #0
	beq _08044A26
	b _08044B02
_08044A1C:
	cmp r0, #2
	beq _08044AC6
	cmp r0, #3
	beq _08044AF8
	b _08044B02
_08044A26:
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044B02
	adds r1, r5, #0
	adds r1, #0x78
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044A4C
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
_08044A4C:
	movs r0, #4
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x15]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08044B02
	movs r0, #1
	strb r0, [r6]
	b _08044B02
_08044A6A:
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	beq _08044A84
	cmp r0, #2
	bgt _08044A7A
	cmp r0, #1
	beq _08044A9A
	b _08044B02
_08044A7A:
	cmp r0, #3
	beq _08044ABA
	cmp r0, #4
	beq _08044AB4
	b _08044B02
_08044A84:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08044B02
	strb r0, [r5, #0xf]
_08044A90:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08044E74
	b _08044B02
_08044A9A:
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	ands r0, r4
	strb r0, [r5, #0x15]
	b _08044AC0
_08044AB4:
	adds r0, r5, #0
	bl sub_0806F69C
_08044ABA:
	adds r0, r5, #0
	bl sub_0806F69C
_08044AC0:
	movs r0, #2
	strb r0, [r5, #0xe]
	b _08044B02
_08044AC6:
	adds r1, r5, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044B02
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08044B02
	adds r0, r5, #0
	movs r1, #0x1c
	movs r2, #0
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	beq _08044B02
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	b _08044B02
_08044AF8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _08044B02
	movs r0, #0
	strb r0, [r5, #0xf]
_08044B02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08044B04
sub_08044B04: @ 0x08044B04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	bl sub_080042B8
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	bne _08044B26
	adds r0, r4, #0
	movs r1, #0
	bl sub_08044E74
	movs r0, #0x20
	strb r0, [r4, #0xe]
	b _08044DE6
_08044B26:
	adds r0, r6, #0
	adds r0, #0x74
	ldrb r5, [r0]
	cmp r5, #1
	bne _08044B32
	b _08044D10
_08044B32:
	cmp r5, #1
	bgt _08044B3C
	cmp r5, #0
	beq _08044B4A
	b _08044DE6
_08044B3C:
	cmp r5, #2
	bne _08044B42
	b _08044DE6
_08044B42:
	cmp r5, #3
	bne _08044B48
	b _08044D6A
_08044B48:
	b _08044DE6
_08044B4A:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r7, r4, #0
	adds r7, #0x74
	ldrb r0, [r7]
	mov r8, r7
	cmp r0, #1
	beq _08044BF4
	cmp r0, #1
	bgt _08044B66
	cmp r0, #0
	beq _08044B72
	b _08044DE6
_08044B66:
	cmp r0, #2
	beq _08044C4C
	cmp r0, #3
	bne _08044B70
	b _08044C9C
_08044B70:
	b _08044DE6
_08044B72:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044B98
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	movs r1, #2
	cmp r0, #0
	beq _08044B8C
	movs r1, #4
_08044B8C:
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_08044B98:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08044BAA
	b _08044DE6
_08044BAA:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	beq _08044BB6
	movs r0, #1
	strb r0, [r4, #0xf]
	b _08044DE6
_08044BB6:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #2
	bls _08044BDA
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	b _08044BDE
_08044BDA:
	movs r0, #0x20
	strb r0, [r4, #0xf]
_08044BDE:
	ldrb r0, [r1]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r2, #0
	cmp r0, #0
	beq _08044BF0
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r0, #0
_08044BF0:
	strh r1, [r4, #0x24]
	b _08044DE6
_08044BF4:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08044C04
	b _08044DE6
_08044C04:
	movs r0, #6
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #1
	movs r2, #0x1f
	mov r8, r2
	mov r2, r8
	ands r0, r2
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0x30
	beq _08044C24
	b _08044DE6
_08044C24:
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strh r5, [r4, #0x24]
	adds r0, #0x10
	mov r1, r8
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _08044DE6
_08044C4C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08044CA2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	beq _08044CAE
	cmp r5, #4
	bgt _08044C6A
	cmp r5, #0
	beq _08044C78
	b _08044DE6
_08044C6A:
	cmp r5, #0xc
	beq _08044C70
	b _08044DE6
_08044C70:
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	b _08044DE6
_08044C78:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	strh r5, [r4, #0x24]
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08044DE6
_08044C9C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08044CB6
_08044CA2:
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08044CAE
	b _08044DE6
_08044CAE:
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _08044DE6
_08044CB6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08044CD2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044CD2
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldr r0, _08044D0C @ =0x0000014F
	bl PlaySFX
_08044CD2:
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #3
	bne _08044CF8
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806FCB8
	cmp r0, #0
	beq _08044CF8
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
_08044CF8:
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	b _08044DE6
	.align 2, 0
_08044D0C: .4byte 0x0000014F
_08044D10:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #1
	beq _08044D50
	cmp r0, #3
	bne _08044DE6
	strb r5, [r1]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r3, _08044D4C @ =0xFFF00000
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08044DE6
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08044DE6
	.align 2, 0
_08044D4C: .4byte 0xFFF00000
_08044D50:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08044DE6
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	b _08044DE6
_08044D6A:
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r0, [r5]
	cmp r0, #1
	beq _08044DA4
	cmp r0, #1
	bgt _08044D7E
	cmp r0, #0
	beq _08044D84
	b _08044DE6
_08044D7E:
	cmp r0, #2
	beq _08044DBE
	b _08044DE6
_08044D84:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08044DE6
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044DE6
	adds r0, r4, #0
	bl sub_08044DEC
	movs r0, #1
	strb r0, [r5]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	b _08044DE6
_08044DA4:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044DE6
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08044DE6
_08044DBE:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08044E74
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08044DD8
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _08044DDE
_08044DD8:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_08044DDE:
	strb r0, [r4, #0x10]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
_08044DE6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08044DEC
sub_08044DEC: @ 0x08044DEC
	push {lr}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x80
	mov r1, ip
	adds r1, #0x79
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _08044E1A
	mov r0, ip
	ldrb r1, [r0, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x18]
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	b _08044E26
_08044E1A:
	mov r2, ip
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
_08044E26:
	mov r0, ip
	ldrb r1, [r0, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	mov r2, ip
	strb r0, [r2, #0x10]
	mov r0, ip
	adds r0, #0x78
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	ldr r0, [r2, #0x50]
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r1, [r1]
	subs r1, #1
	ldr r2, _08044E6C @ =gUnk_080D1628
	mov r3, ip
	adds r3, #0x79
	lsls r1, r1, #2
	ldrb r3, [r3]
	adds r1, r1, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r2, ip
	strb r1, [r2, #0x15]
	ldr r3, _08044E70 @ =0xFFF00000
	mov r1, ip
	movs r2, #0
	bl PositionRelative
	pop {pc}
	.align 2, 0
_08044E6C: .4byte gUnk_080D1628
_08044E70: .4byte 0xFFF00000

	thumb_func_start sub_08044E74
sub_08044E74: @ 0x08044E74
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r0, #0
	movs r1, #1
	strb r1, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x74
	strb r0, [r1]
	cmp r2, #1
	beq _08044ED4
	cmp r2, #1
	blo _08044EE4
	adds r6, r5, #0
	adds r6, #0x78
	cmp r2, #2
	bne _08044F3E
	strb r2, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	adds r0, #0x18
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r5, #0x15]
	ldr r0, [r5, #0x50]
	ldr r3, _08044ED0 @ =0xFFF00000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0x15]
	adds r0, #8
	ands r0, r4
	strb r0, [r5, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0806F69C
	b _08044F3E
	.align 2, 0
_08044ED0: .4byte 0xFFF00000
_08044ED4:
	ldrb r0, [r5, #0x15]
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r6, r5, #0
	adds r6, #0x78
	b _08044F3E
_08044EE4:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08044F32
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	beq _08044F18
	cmp r0, #1
	blt _08044F3E
	cmp r0, #4
	bgt _08044F3E
	cmp r0, #3
	blt _08044F3E
	movs r4, #0xff
_08044F04:
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	ands r0, r4
	cmp r0, #2
	bne _08044F04
	b _08044F3E
_08044F18:
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	ands r0, r4
	strb r0, [r5, #0x15]
	b _08044F3E
_08044F32:
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	bne _08044F3E
	adds r0, r5, #0
	bl sub_0806F69C
_08044F3E:
	movs r0, #0
	movs r1, #1
	strb r1, [r5, #0xe]
	strb r0, [r6]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08044F50
sub_08044F50: @ 0x08044F50
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08044F6C @ =gUnk_080D16A4
	bl sub_0800129E
	movs r3, #0xc
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08044F6C: .4byte gUnk_080D16A4

	thumb_func_start sub_08044F70
sub_08044F70: @ 0x08044F70
	push {lr}
	ldr r2, _08044F84 @ =gUnk_080D16BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08044F84: .4byte gUnk_080D16BC

	thumb_func_start sub_08044F88
sub_08044F88: @ 0x08044F88
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	beq _08044FA2
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r1
	beq _08044FA2
	movs r0, #4
	strb r0, [r4, #0xc]
	b _08044FAA
_08044FA2:
	ldr r1, _08044FC0 @ =gUnk_080D16A4
	adds r0, r4, #0
	bl sub_0804AA30
_08044FAA:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044FBC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08044FBC:
	pop {r4, pc}
	.align 2, 0
_08044FC0: .4byte gUnk_080D16A4

	thumb_func_start nullsub_171
nullsub_171: @ 0x08044FC4
	bx lr
	.align 2, 0

	thumb_func_start sub_08044FC8
sub_08044FC8: @ 0x08044FC8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08044FF8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08044FF8
sub_08044FF8: @ 0x08044FF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r4, #0x84
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08045018
sub_08045018: @ 0x08045018
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045086
	movs r4, #3
	strb r4, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0804504C
	movs r0, #0x80
	lsls r0, r0, #5
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	bl sub_0806FA04
	lsrs r0, r0, #8
	strb r0, [r5, #0xe]
_0804504C:
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0804507C
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _0804507C
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _08045086
_0804507C:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_08045086:
	pop {r4, r5, pc}

	thumb_func_start sub_08045088
sub_08045088: @ 0x08045088
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080450A6
	movs r0, #1
	strb r0, [r4, #0xc]
_080450A6:
	pop {r4, pc}

	thumb_func_start sub_080450A8
sub_080450A8: @ 0x080450A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r1, _0804516C @ =gUnk_080D16D0
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #0x48
	subs r0, r0, r7
	ldr r1, _08045170 @ =gUnk_03003DBC
	ldrb r1, [r1]
	cmp r0, r1
	ble _08045160
	cmp r7, #0
	beq _080450E2
	mov r4, sp
	adds r5, r7, #0
_080450D0:
	mov r0, r8
	ldrb r1, [r0, #0xa]
	movs r0, #0x57
	bl CreateEnemy
	stm r4!, {r0}
	subs r5, #1
	cmp r5, #0
	bne _080450D0
_080450E2:
	ldr r2, _08045174 @ =gUnk_080D16D4
	mov sb, r2
	movs r5, #0
	cmp r5, r7
	bge _08045142
_080450EC:
	lsls r0, r5, #2
	add r0, sp
	ldr r6, [r0]
	adds r4, r5, #1
	adds r0, r4, #0
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x54]
	adds r0, r5, r7
	subs r0, #1
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strh r1, [r6, #0x36]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0xf0
	strb r0, [r1]
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r1, r6, #0
	bl sub_08045178
	movs r2, #2
	add sb, r2
	adds r5, r4, #0
	cmp r5, r7
	blt _080450EC
_08045142:
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r6, r0, #0
	cmp r6, #0
	beq _0804515A
	mov r0, r8
	adds r1, r6, #0
	bl CopyPosition
_0804515A:
	mov r0, r8
	bl sub_0805E7BC
_08045160:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804516C: .4byte gUnk_080D16D0
_08045170: .4byte gUnk_03003DBC
_08045174: .4byte gUnk_080D16D4

	thumb_func_start sub_08045178
sub_08045178: @ 0x08045178
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	beq _080451C6
	bl sub_0804A4E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080002CC
	cmp r0, #0
	bne _080451C6
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r2, r0, r5
	cmp r2, #0
	blt _080451AE
	ldr r0, _080451C8 @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0x1e]
	adds r1, r1, r0
	cmp r2, r1
	bge _080451AE
	strh r2, [r4, #0x2e]
_080451AE:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r2, r0, r6
	cmp r2, #0
	blt _080451C6
	ldr r0, _080451C8 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	cmp r2, r1
	bge _080451C6
	strh r2, [r4, #0x32]
_080451C6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080451C8: .4byte gRoomControls

	thumb_func_start sub_080451CC
sub_080451CC: @ 0x080451CC
	ldrb r3, [r0, #0x10]
	movs r2, #0xfe
	ands r2, r3
	strb r2, [r1, #0x10]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x2c]
	ldr r2, [r0, #0x30]
	str r2, [r1, #0x30]
	ldr r2, [r0, #0x34]
	str r2, [r1, #0x34]
	adds r0, #0x68
	adds r1, #0x68
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	ldrb r2, [r0, #7]
	strb r2, [r1, #7]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_08045200
sub_08045200: @ 0x08045200
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804521C @ =gUnk_080D17C0
	bl sub_0800129E
	movs r3, #8
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0804521C: .4byte gUnk_080D17C0

	thumb_func_start sub_08045220
sub_08045220: @ 0x08045220
	push {lr}
	ldr r2, _08045234 @ =gUnk_080D17D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08045234: .4byte gUnk_080D17D8

	thumb_func_start sub_08045238
sub_08045238: @ 0x08045238
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804524C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0804524C:
	ldr r1, _08045258 @ =gUnk_080D17C0
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08045258: .4byte gUnk_080D17C0

	thumb_func_start sub_0804525C
sub_0804525C: @ 0x0804525C
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x50]
	cmp r4, r3
	beq _08045298
	cmp r3, #0
	beq _08045298
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045298
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08058800
_08045298:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, pc}

	thumb_func_start nullsub_22
nullsub_22: @ 0x080452A0
	bx lr
	.align 2, 0

	thumb_func_start sub_080452A4
sub_080452A4: @ 0x080452A4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r5, #1
	strb r5, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080452DC
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	b _080452E2
_080452DC:
	adds r0, r4, #0
	bl sub_080452E4
_080452E2:
	pop {r4, r5, pc}

	thumb_func_start sub_080452E4
sub_080452E4: @ 0x080452E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080452FC
sub_080452FC: @ 0x080452FC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045370
	movs r4, #3
	strb r4, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08045330
	movs r0, #0x80
	lsls r0, r0, #5
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	bl sub_0806FA04
	lsrs r0, r0, #8
	strb r0, [r5, #0xe]
_08045330:
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08045360
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _08045360
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _08045370
_08045360:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08045374
_08045370:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08045374
sub_08045374: @ 0x08045374
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045392
	movs r0, #1
	strb r0, [r4, #0xc]
_08045392:
	pop {r4, pc}

	thumb_func_start sub_08045394
sub_08045394: @ 0x08045394
	push {lr}
	ldr r1, _080453A0 @ =gUnk_080D17E8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080453A0: .4byte gUnk_080D17E8

	thumb_func_start sub_080453A4
sub_080453A4: @ 0x080453A4
	push {lr}
	ldr r2, _080453B8 @ =gUnk_080D1800
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080453B8: .4byte gUnk_080D1800

	thumb_func_start sub_080453BC
sub_080453BC: @ 0x080453BC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	beq _080453D6
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r1
	beq _080453D6
	movs r0, #2
	strb r0, [r2, #0xc]
	b _080453DE
_080453D6:
	ldr r1, _080453E0 @ =gUnk_080D17E8
	adds r0, r2, #0
	bl sub_0804AA30
_080453DE:
	pop {pc}
	.align 2, 0
_080453E0: .4byte gUnk_080D17E8

	thumb_func_start nullsub_172
nullsub_172: @ 0x080453E4
	bx lr
	.align 2, 0

	thumb_func_start sub_080453E8
sub_080453E8: @ 0x080453E8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3f
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08045524
	pop {r4, pc}

	thumb_func_start sub_08045430
sub_08045430: @ 0x08045430
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08045452
	adds r0, r4, #0
	bl sub_08045524
_08045452:
	pop {r4, pc}

	thumb_func_start sub_08045454
sub_08045454: @ 0x08045454
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r1, _08045518 @ =gUnk_080D180C
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #0x48
	subs r0, r0, r7
	ldr r1, _0804551C @ =gUnk_03003DBC
	ldrb r1, [r1]
	cmp r0, r1
	ble _0804550C
	cmp r7, #0
	beq _0804548E
	mov r4, sp
	adds r5, r7, #0
_0804547C:
	mov r0, r8
	ldrb r1, [r0, #0xa]
	movs r0, #0x59
	bl CreateEnemy
	stm r4!, {r0}
	subs r5, #1
	cmp r5, #0
	bne _0804547C
_0804548E:
	ldr r2, _08045520 @ =gUnk_080D1810
	mov sb, r2
	movs r5, #0
	cmp r5, r7
	bge _080454EE
_08045498:
	lsls r0, r5, #2
	add r0, sp
	ldr r6, [r0]
	adds r4, r5, #1
	adds r0, r4, #0
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x54]
	adds r0, r5, r7
	subs r0, #1
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strh r1, [r6, #0x36]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0xf0
	strb r0, [r1]
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r1, r6, #0
	bl sub_08045178
	movs r2, #2
	add sb, r2
	adds r5, r4, #0
	cmp r5, r7
	blt _08045498
_080454EE:
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r6, r0, #0
	cmp r6, #0
	beq _08045506
	mov r0, r8
	adds r1, r6, #0
	bl CopyPosition
_08045506:
	mov r0, r8
	bl sub_0805E7BC
_0804550C:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08045518: .4byte gUnk_080D180C
_0804551C: .4byte gUnk_03003DBC
_08045520: .4byte gUnk_080D1810

	thumb_func_start sub_08045524
sub_08045524: @ 0x08045524
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #8
	bl sub_0804A024
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08045556
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _08045556
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	b _08045596
_08045556:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08045562
	subs r0, #1
	strb r0, [r5, #0xe]
	b _080455A8
_08045562:
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0804559E
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0804559E
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
_08045596:
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _080455A8
_0804559E:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_080455A8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080455AC
sub_080455AC: @ 0x080455AC
	push {lr}
	ldr r1, _080455B8 @ =gUnk_080D1868
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080455B8: .4byte gUnk_080D1868

	thumb_func_start sub_080455BC
sub_080455BC: @ 0x080455BC
	push {lr}
	ldr r2, _080455D0 @ =gUnk_080D1880
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080455D0: .4byte gUnk_080D1880

	thumb_func_start sub_080455D4
sub_080455D4: @ 0x080455D4
	push {lr}
	ldr r1, _080455E0 @ =gUnk_080D1868
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_080455E0: .4byte gUnk_080D1868

	thumb_func_start sub_080455E4
sub_080455E4: @ 0x080455E4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x50]
	cmp r3, r0
	beq _0804560A
	cmp r0, #0
	beq _0804560A
	adds r2, r3, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r3, #0x50]
	ldr r0, [r3, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r3, #0x54]
	ldr r0, [r3, #0x50]
	str r0, [r1, #0x50]
_0804560A:
	adds r0, r3, #0
	bl sub_0804A7D4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_23
nullsub_23: @ 0x08045614
	bx lr
	.align 2, 0

	thumb_func_start sub_08045618
sub_08045618: @ 0x08045618
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08045678
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08045654
sub_08045654: @ 0x08045654
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08045676
	adds r0, r4, #0
	bl sub_08045678
_08045676:
	pop {r4, pc}

	thumb_func_start sub_08045678
sub_08045678: @ 0x08045678
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804568E
	subs r0, #1
	strb r0, [r5, #0xe]
	b _080456D4
_0804568E:
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080456CA
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080456CA
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _080456D4
_080456CA:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_080456D4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080456D8
sub_080456D8: @ 0x080456D8
	push {lr}
	ldr r1, _080456E4 @ =gUnk_080D1888
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080456E4: .4byte gUnk_080D1888

	thumb_func_start sub_080456E8
sub_080456E8: @ 0x080456E8
	push {lr}
	ldr r2, _080456FC @ =gUnk_080D18A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080456FC: .4byte gUnk_080D18A0

	thumb_func_start sub_08045700
sub_08045700: @ 0x08045700
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080457D0
	ldr r0, [r5, #0x50]
	ldr r3, [r0, #0x50]
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080457D0
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0xe
	beq _08045728
	cmp r0, #0x15
	bne _08045778
_08045728:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804575C
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrb r0, [r5, #0xe]
	adds r0, #2
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldrb r2, [r5, #0xe]
	adds r2, #2
	orrs r1, r2
	bl sub_08004260
_0804575C:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804576C
	movs r0, #0xbd
	lsls r0, r0, #1
	bl PlaySFX
	b _080457D0
_0804576C:
	ldr r0, _08045774 @ =0x00000119
	bl PlaySFX
	b _080457D0
	.align 2, 0
_08045774: .4byte 0x00000119
_08045778:
	adds r2, r5, #0
	adds r2, #0x45
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080457D0
	movs r0, #0xff
	strb r0, [r2]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _080457D0
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _080457D0
	adds r0, r3, #0
	adds r0, #0x76
	movs r1, #1
	ldrb r2, [r5, #0xb]
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080457D0
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	movs r4, #6
	orrs r1, r4
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	bl sub_08004260
_080457D0:
	ldr r1, _080457DC @ =gUnk_080D1888
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_080457DC: .4byte gUnk_080D1888

	thumb_func_start nullsub_173
nullsub_173: @ 0x080457E0
	bx lr
	.align 2, 0

	thumb_func_start sub_080457E4
sub_080457E4: @ 0x080457E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08045850 @ =gTextBox
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	cmp r2, #0
	bne _08045868
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #4
	strb r2, [r0]
	strb r2, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x30
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08045854
	adds r0, r4, #0
	bl sub_08045A00
	movs r0, #0x5a
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _0804585A
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	ldrb r0, [r4, #0xe]
	strb r0, [r1, #0xe]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xb]
	adds r0, r4, #0
	bl CopyPosition
	b _0804585A
	.align 2, 0
_08045850: .4byte gTextBox
_08045854:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
_0804585A:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	movs r0, #1
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
_08045868:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804586C
sub_0804586C: @ 0x0804586C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08045A28
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _080458AA
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080458C2
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804589A
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0804589A:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	b _080458C2
_080458AA:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080458C2
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_080458C2:
	pop {r4, pc}

	thumb_func_start sub_080458C4
sub_080458C4: @ 0x080458C4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08045A28
	ldr r1, [r5, #0x50]
	ldrb r2, [r5, #0xa]
	cmp r2, #0
	beq _080458D6
	ldr r1, [r1, #0x50]
_080458D6:
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	bne _08045934
	adds r0, r1, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045934
	movs r0, #0
	movs r4, #4
	strb r4, [r5, #0xc]
	strb r0, [r5, #0xf]
	cmp r2, #0
	beq _08045934
	ldrb r0, [r5, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r5, #0x10]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804591C
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	movs r4, #5
	orrs r1, r4
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	bl sub_08004260
	b _08045934
_0804591C:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	orrs r1, r4
	bl sub_08004260
_08045934:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08045938
sub_08045938: @ 0x08045938
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08045A28
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045980
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08045980
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08045966
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x32
	b _0804597E
_08045966:
	ldr r0, [r4, #0x50]
	ldr r2, [r0, #0x50]
	adds r2, #0x76
	movs r0, #1
	ldrb r1, [r4, #0xb]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x31
_0804597E:
	strb r0, [r1]
_08045980:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08045984
sub_08045984: @ 0x08045984
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08045A28
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080459A6
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080459FE
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080459FE
_080459A6:
	ldr r2, [r4, #0x50]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080459B0
	ldr r2, [r2, #0x50]
_080459B0:
	ldrb r0, [r2, #0x14]
	cmp r0, #2
	bhi _080459FE
	ldrb r0, [r2, #0xc]
	cmp r0, #3
	beq _080459FE
	movs r0, #0
	movs r3, #1
	strb r3, [r4, #0xc]
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080459DA
	subs r1, #0x46
	movs r0, #0x33
	strb r0, [r1]
_080459DA:
	adds r0, r2, #0
	adds r0, #0x75
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080459EE
	strb r3, [r4, #0xe]
	b _080459F0
_080459EE:
	strb r0, [r4, #0xe]
_080459F0:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	movs r0, #1
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
_080459FE:
	pop {r4, pc}

	thumb_func_start sub_08045A00
sub_08045A00: @ 0x08045A00
	push {lr}
	adds r1, r0, #0
	ldrb r3, [r1, #0xb]
	lsls r3, r3, #1
	ldr r0, _08045A24 @ =gUnk_080D18B4
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r3, #3
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {pc}
	.align 2, 0
_08045A24: .4byte gUnk_080D18B4

	thumb_func_start sub_08045A28
sub_08045A28: @ 0x08045A28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _08045A3E
	adds r0, r5, #0
	bl sub_08004274
_08045A3E:
	adds r6, r5, #0
	adds r6, #0x5a
	ldrb r0, [r6]
	movs r1, #0x70
	mov r8, r1
	mov r4, r8
	ands r4, r0
	ldrb r7, [r5, #0xa]
	cmp r7, #0
	bne _08045AF8
	adds r0, r5, #0
	bl sub_08045A00
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #1
	beq _08045AA4
	cmp r0, #1
	bgt _08045A6E
	cmp r0, #0
	beq _08045A78
	b _08045B7C
_08045A6E:
	cmp r0, #2
	beq _08045ABC
	cmp r0, #3
	beq _08045AE8
	b _08045B7C
_08045A78:
	cmp r4, #0x20
	beq _08045A8C
	cmp r4, #0x20
	bhi _08045A86
	cmp r4, #0
	beq _08045A96
	b _08045B7C
_08045A86:
	cmp r4, #0x40
	beq _08045A96
	b _08045B7C
_08045A8C:
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #1
	b _08045B5A
_08045A96:
	movs r0, #2
	strb r0, [r2]
	ldr r1, _08045AA0 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AA0: .4byte 0x0000013F
_08045AA4:
	cmp r4, #0
	beq _08045AB0
	cmp r4, #0x10
	bne _08045B7C
	strb r7, [r1]
	b _08045B58
_08045AB0:
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08045AB8 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AB8: .4byte 0x0000013F
_08045ABC:
	cmp r4, #0x20
	beq _08045AD0
	cmp r4, #0x20
	bhi _08045ACA
	cmp r4, #0x10
	beq _08045ADA
	b _08045B7C
_08045ACA:
	cmp r4, #0x40
	beq _08045ADE
	b _08045B7C
_08045AD0:
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #1
	b _08045B5A
_08045ADA:
	strb r7, [r1]
	b _08045B58
_08045ADE:
	strb r0, [r1]
	ldr r1, _08045AE4 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AE4: .4byte 0x0000013F
_08045AE8:
	cmp r4, #0
	bne _08045B7C
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08045AF4 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045AF4: .4byte 0x0000013F
_08045AF8:
	ldr r0, [r5, #0x50]
	ldr r3, _08045B18 @ =0xFFFF0000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #1
	beq _08045B3A
	cmp r0, #1
	bgt _08045B1C
	cmp r0, #0
	beq _08045B22
	b _08045B7C
	.align 2, 0
_08045B18: .4byte 0xFFFF0000
_08045B1C:
	cmp r0, #2
	beq _08045B68
	b _08045B7C
_08045B22:
	ldrb r0, [r6]
	mov r1, r8
	ands r1, r0
	cmp r1, #0x10
	beq _08045B54
	cmp r1, #0x20
	bne _08045B7C
	movs r0, #1
	strb r0, [r2]
	movs r1, #0x9f
	lsls r1, r1, #1
	b _08045B5A
_08045B3A:
	ldrb r0, [r6]
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08045B4A
	cmp r1, #0x10
	beq _08045B54
	b _08045B7C
_08045B4A:
	strb r1, [r2]
	ldr r1, _08045B50 @ =0x0000013F
	b _08045B5A
	.align 2, 0
_08045B50: .4byte 0x0000013F
_08045B54:
	movs r0, #2
	strb r0, [r2]
_08045B58:
	ldr r1, _08045B64 @ =0x0000013B
_08045B5A:
	adds r0, r5, #0
	bl sub_0801D2B4
	b _08045B7C
	.align 2, 0
_08045B64: .4byte 0x0000013B
_08045B68:
	ldrb r0, [r6]
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	bne _08045B7C
	strb r1, [r2]
	ldr r1, _08045B84 @ =0x0000013F
	adds r0, r5, #0
	bl sub_0801D2B4
_08045B7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08045B84: .4byte 0x0000013F

	thumb_func_start sub_08045B88
sub_08045B88: @ 0x08045B88
	push {lr}
	ldr r1, _08045B94 @ =gUnk_080D19FC
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08045B94: .4byte gUnk_080D19FC

	thumb_func_start sub_08045B98
sub_08045B98: @ 0x08045B98
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _08045BC4 @ =gUnk_080D1A14
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}
	.align 2, 0
_08045BC4: .4byte gUnk_080D1A14

	thumb_func_start sub_08045BC8
sub_08045BC8: @ 0x08045BC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045C2C
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x42
	bne _08045C2C
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08046030
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08045C16
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
_08045C16:
	ldr r0, _08045C30 @ =gLinkState
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _08045C34 @ =0x000001BB
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_08045C2C:
	pop {r4, pc}
	.align 2, 0
_08045C30: .4byte gLinkState
_08045C34: .4byte 0x000001BB

	thumb_func_start nullsub_174
nullsub_174: @ 0x08045C38
	bx lr
	.align 2, 0

	thumb_func_start sub_08045C3C
sub_08045C3C: @ 0x08045C3C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	strb r2, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08046030
	adds r0, r4, #0
	bl sub_08095C48
	ldr r1, _08045CA0 @ =gUnk_08015AC4
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}
	.align 2, 0
_08045CA0: .4byte gUnk_08015AC4

	thumb_func_start sub_08045CA4
sub_08045CA4: @ 0x08045CA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08045CC0
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08045CD8
_08045CC0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08045F54
	cmp r0, #0
	beq _08045CD8
	adds r0, r4, #0
	bl sub_08045FF0
	strb r5, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
_08045CD8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_24
nullsub_24: @ 0x08045CDC
	bx lr
	.align 2, 0

	thumb_func_start sub_08045CE0
sub_08045CE0: @ 0x08045CE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bls _08045CF0
	b _08045DF8
_08045CF0:
	lsls r0, r0, #2
	ldr r1, _08045CFC @ =_08045D00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045CFC: .4byte _08045D00
_08045D00: @ jump table
	.4byte _08045D14 @ case 0
	.4byte _08045D36 @ case 1
	.4byte _08045D60 @ case 2
	.4byte _08045D9A @ case 3
	.4byte _08045DBC @ case 4
_08045D14:
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045DF8
	strb r6, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	b _08045DB2
_08045D36:
	movs r6, #1
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08045DF8
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #2
	bl sub_08046030
	b _08045DF8
_08045D60:
	movs r6, #1
	adds r0, r4, #0
	bl sub_0804604C
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08045DF8
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08045DF8
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08045DF8
_08045D9A:
	movs r6, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045DF8
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
_08045DB2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046030
	b _08045DF8
_08045DBC:
	movs r6, #2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045DF8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08045F54
	adds r5, r0, #0
	cmp r5, #0
	beq _08045DEC
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	b _08045DF8
_08045DEC:
	adds r0, r4, #0
	bl sub_08045FA0
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
_08045DF8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08045F54
	adds r5, r0, #0
	cmp r5, #0
	bne _08045E12
	adds r0, r4, #0
	bl sub_08045FA0
	strb r5, [r4, #0xd]
	strb r5, [r4, #0xe]
	strb r5, [r4, #0xf]
_08045E12:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08045E14
sub_08045E14: @ 0x08045E14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08045E2C @ =gLinkState
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08045E30
	cmp r0, #1
	beq _08045E70
	b _08045EBA
	.align 2, 0
_08045E2C: .4byte gLinkState
_08045E30:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08045E6A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045EBA
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #5
	bl sub_08046030
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08045EBA
_08045E6A:
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08045EBA
_08045E70:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045EBA
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08046030
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r2, r0, #0
	cmp r2, #0
	beq _08045EBA
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x36]
	subs r0, #0xc
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #2
	bl sub_0805E3A0
_08045EBA:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}

	thumb_func_start sub_08045EC8
sub_08045EC8: @ 0x08045EC8
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08045ED4
sub_08045ED4: @ 0x08045ED4
	push {lr}
	bl sub_08045FA0
	pop {pc}

	thumb_func_start sub_08045EDC
sub_08045EDC: @ 0x08045EDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _08045F00
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #2
	bl sub_08046030
_08045F00:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0804604C
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08045F38
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080954AC
	ldr r0, _08045F34 @ =0x0000018D
	bl sub_08004488
	b _08045F4E
	.align 2, 0
_08045F34: .4byte 0x0000018D
_08045F38:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045F4E
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046030
_08045F4E:
	pop {r4, pc}

	thumb_func_start nullsub_25
nullsub_25: @ 0x08045F50
	bx lr
	.align 2, 0

	thumb_func_start sub_08045F54
sub_08045F54: @ 0x08045F54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08045F90
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x20
	movs r3, #0x20
	bl sub_080041A0
	cmp r0, #0
	bne _08045F90
	cmp r5, #2
	beq _08045F94
	movs r3, #0x50
	cmp r5, #0
	beq _08045F82
	movs r3, #0x58
_08045F82:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	bne _08045F94
_08045F90:
	movs r0, #0
	b _08045F96
_08045F94:
	movs r0, #1
_08045F96:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08045F98
sub_08045F98: @ 0x08045F98
	movs r1, #0x10
	strb r1, [r0, #0x15]
	movs r0, #1
	bx lr

	thumb_func_start sub_08045FA0
sub_08045FA0: @ 0x08045FA0
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r0, r2, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08045FF0
sub_08045FF0: @ 0x08045FF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046030
	pop {r4, pc}

	thumb_func_start sub_08046030
sub_08046030: @ 0x08046030
	push {lr}
	adds r3, r1, #0
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #3
	ldr r2, _08046048 @ =gUnk_080D1A38
	adds r3, r3, r2
	ldrb r2, [r3]
	orrs r1, r2
	bl sub_08004260
	pop {pc}
	.align 2, 0
_08046048: .4byte gUnk_080D1A38

	thumb_func_start sub_0804604C
sub_0804604C: @ 0x0804604C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _08046070
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _08046070
	ldr r1, _08046074 @ =gUnk_080D1A3E
	ldrb r0, [r2, #0xe]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x63
	strb r1, [r0]
_08046070:
	pop {pc}
	.align 2, 0
_08046074: .4byte gUnk_080D1A3E

	thumb_func_start sub_08046078
sub_08046078: @ 0x08046078
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08046114 @ =gLinkState
	adds r0, #0x27
	movs r1, #0
	strb r1, [r0]
	ldr r4, _08046118 @ =gUnk_080D1A4E
	ldr r6, _0804611C @ =gRoomControls
	movs r5, #4
_0804608A:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080460AE
	ldrh r0, [r4]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	adds r4, #2
	ldrh r0, [r4]
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	adds r4, #2
_080460AE:
	subs r5, #1
	cmp r5, #0
	bge _0804608A
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08004488
	ldr r0, _08046120 @ =0x000007A2
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08046124 @ =0x000007A3
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08046128 @ =0x000007A5
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804612C @ =0x000007A6
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08046130 @ =0x000007A7
	movs r1, #1
	bl sub_0807BA8C
	adds r0, r7, #0
	movs r1, #0x43
	movs r2, #0x40
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08046102
	adds r0, r7, #0
	bl CopyPosition
	movs r0, #0xc2
	lsls r0, r0, #1
	bl sub_08004488
_08046102:
	ldr r1, [r7, #0x54]
	cmp r1, #0
	beq _0804610C
	movs r0, #0xff
	strb r0, [r1, #0xc]
_0804610C:
	adds r0, r7, #0
	bl sub_0804AA1C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08046114: .4byte gLinkState
_08046118: .4byte gUnk_080D1A4E
_0804611C: .4byte gRoomControls
_08046120: .4byte 0x000007A2
_08046124: .4byte 0x000007A3
_08046128: .4byte 0x000007A5
_0804612C: .4byte 0x000007A6
_08046130: .4byte 0x000007A7

	thumb_func_start sub_08046134
sub_08046134: @ 0x08046134
	push {lr}
	ldr r2, _08046148 @ =gUnk_080D1A64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08046148: .4byte gUnk_080D1A64

	thumb_func_start sub_0804614C
sub_0804614C: @ 0x0804614C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08046248 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x3d
	bhi _08046244
	movs r0, #0x22
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r4, #0
	strb r4, [r1, #0xa]
	str r6, [r1, #0x50]
	ldr r0, [r6, #0x64]
	str r1, [r0, #0x14]
	movs r0, #0x63
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	ldr r0, [r6, #0x64]
	str r1, [r0, #0x10]
	movs r0, #0x61
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #4
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #5
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #7
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r2, [r6, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r6, #0x1b]
	ldrb r0, [r6, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r6, #0x19]
	adds r0, r6, #0
	adds r0, #0x38
	movs r5, #2
	strb r5, [r0]
	adds r0, #0x40
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r6, #0
	adds r1, #0x70
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0804624C @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _08046250 @ =gUnk_02002F00
	adds r1, r4, #0
	bl sub_0801D630
	adds r0, r6, #0
	movs r1, #0
	bl sub_0804660C
	adds r0, r6, #0
	bl sub_080464C0
	ldr r0, _08046254 @ =gLinkEntity
	adds r1, r0, #0
	adds r1, #0x38
	strb r5, [r1]
	bl UpdateSpriteOrderAndFlip
	ldr r1, _08046258 @ =sub_08046498
	adds r0, r6, #0
	movs r2, #0
	bl sub_08052D74
_08046244:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046248: .4byte gUnk_03003DBC
_0804624C: .4byte gUnk_02019EE0
_08046250: .4byte gUnk_02002F00
_08046254: .4byte gLinkEntity
_08046258: .4byte sub_08046498

	thumb_func_start sub_0804625C
sub_0804625C: @ 0x0804625C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08046286
	movs r1, #0x7f
	ands r1, r2
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r3]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_0804660C
	b _0804629A
_08046286:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804629A
	movs r0, #0xbf
	ands r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_080464C0
_0804629A:
	bl sub_080465C8
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r3, #0x38
	ands r3, r1
	cmp r3, #0
	beq _080462D6
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7a
	movs r2, #0
	strh r1, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	b _0804632A
_080462D6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08046302
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x70
	movs r1, #0
	movs r0, #0x3c
	strh r0, [r2]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7a
	strh r3, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	b _0804632A
_08046302:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804632A
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804632A
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046634
_0804632A:
	pop {r4, pc}

	thumb_func_start sub_0804632C
sub_0804632C: @ 0x0804632C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080465C8
	adds r0, r4, #0
	bl sub_080466A8
	adds r3, r4, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	adds r2, r0, #1
	movs r5, #0
	strh r2, [r3]
	lsls r1, r2, #0x10
	ldr r0, _08046360 @ =0x059F0000
	cmp r1, r0
	bls _08046364
	movs r0, #0
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #3
	b _08046388
	.align 2, 0
_08046360: .4byte 0x059F0000
_08046364:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _08046374
	adds r0, r4, #0
	bl sub_08046668
	b _0804638A
_08046374:
	movs r0, #0xa5
	lsls r0, r0, #3
	cmp r1, r0
	bne _0804638A
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #5
	strb r5, [r0]
	adds r0, #2
_08046388:
	strb r5, [r0]
_0804638A:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080463B8
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080463B8
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08046634
_080463B8:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0
	bne _080463E0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	adds r0, #8
	strb r2, [r0]
_080463E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080463E4
sub_080463E4: @ 0x080463E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080465C8
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	ldr r2, _0804643C @ =0x0000FFFF
	adds r6, r2, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08046410
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046634
_08046410:
	adds r0, r4, #0
	bl sub_080466A8
	adds r3, r4, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	adds r2, r0, #1
	strh r2, [r3]
	adds r0, r2, #0
	ands r0, r6
	ldr r1, _08046440 @ =0x0000059F
	cmp r0, r1
	bls _08046444
	movs r0, #0
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #3
	b _08046468
	.align 2, 0
_0804643C: .4byte 0x0000FFFF
_08046440: .4byte 0x0000059F
_08046444:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _08046454
	adds r0, r4, #0
	bl sub_08046668
	b _0804646A
_08046454:
	movs r0, #0xa5
	lsls r0, r0, #3
	cmp r1, r0
	bne _0804646A
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #5
	strb r5, [r0]
	adds r0, #2
_08046468:
	strb r5, [r0]
_0804646A:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046494
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	adds r0, #8
	strb r2, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_08046494:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08046498
sub_08046498: @ 0x08046498
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080464B8 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _080464BC @ =gUnk_02002F00
	adds r1, r4, #0
	bl sub_0801D630
	adds r0, r5, #0
	bl sub_080464C0
	pop {r4, r5, pc}
	.align 2, 0
_080464B8: .4byte gUnk_02019EE0
_080464BC: .4byte gUnk_02002F00

	thumb_func_start sub_080464C0
sub_080464C0: @ 0x080464C0
	push {r4, r5, r6, lr}
	ldr r1, _08046508 @ =gUnk_080D1A74
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080197D4
	bl sub_08046518
	movs r6, #0x20
	ldr r4, _0804650C @ =gUnk_02019EE0
	ldr r0, _08046510 @ =0x00003260
	adds r5, r4, r0
_080464DE:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl sub_0801D66C
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r5, r0
	adds r4, #0x40
	subs r6, #1
	cmp r6, #0
	bne _080464DE
	ldr r0, _0804650C @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r1, _08046514 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046508: .4byte gUnk_080D1A74
_0804650C: .4byte gUnk_02019EE0
_08046510: .4byte 0x00003260
_08046514: .4byte gUnk_02000070

	thumb_func_start sub_08046518
sub_08046518: @ 0x08046518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080465AC @ =gUnk_02010654
	ldr r2, _080465B0 @ =0xFFFFBCB0
	adds r0, r1, r2
	ldr r3, _080465B4 @ =0xFFFFECB0
	adds r2, r1, r3
	ldr r7, _080465B8 @ =0x00006658
	adds r7, r1, r7
	str r7, [sp, #4]
	ldr r3, _080465BC @ =0xFFFFD658
	adds r6, r1, r3
	movs r1, #0x10
_0804653A:
	movs r5, #0x10
	movs r7, #0x80
	adds r7, r7, r0
	mov sl, r7
	adds r3, r2, #0
	adds r3, #0x80
	str r3, [sp]
	ldr r7, [sp, #4]
	adds r7, #0x40
	mov r8, r7
	movs r3, #0x40
	adds r3, r3, r6
	mov sb, r3
	subs r1, #1
	mov ip, r1
	adds r3, r0, #0
	adds r3, #0x20
	adds r4, r2, #0
	adds r4, #0x20
_08046560:
	ldrh r0, [r3]
	strh r0, [r4]
	ldrh r0, [r3]
	lsls r0, r0, #1
	ldr r7, _080465AC @ =gUnk_02010654
	adds r0, r0, r7
	ldrh r1, [r0]
	ldr r0, [sp, #4]
	adds r2, r0, r5
	ldr r7, _080465C0 @ =gUnk_080B37A0
	adds r0, r1, r7
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, r6, r5
	ldr r0, _080465C4 @ =gUnk_080B3E80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	subs r3, #2
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08046560
	mov r0, sl
	ldr r2, [sp]
	mov r1, r8
	str r1, [sp, #4]
	mov r6, sb
	mov r1, ip
	cmp r1, #0
	bne _0804653A
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080465AC: .4byte gUnk_02010654
_080465B0: .4byte 0xFFFFBCB0
_080465B4: .4byte 0xFFFFECB0
_080465B8: .4byte 0x00006658
_080465BC: .4byte 0xFFFFD658
_080465C0: .4byte gUnk_080B37A0
_080465C4: .4byte gUnk_080B3E80

	thumb_func_start sub_080465C8
sub_080465C8: @ 0x080465C8
	push {r4, lr}
	ldr r3, _080465FC @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r1, _08046600 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #3
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #3
	ldr r1, _08046604 @ =gUnk_02019EE0
	lsls r0, r0, #7
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080465F8
	ldr r1, _08046608 @ =gLinkState
	movs r0, #1
	strb r0, [r1, #0x14]
_080465F8:
	pop {r4, pc}
	.align 2, 0
_080465FC: .4byte gLinkEntity
_08046600: .4byte gRoomControls
_08046604: .4byte gUnk_02019EE0
_08046608: .4byte gLinkState

	thumb_func_start sub_0804660C
sub_0804660C: @ 0x0804660C
	push {r4, lr}
	strb r1, [r0, #0x14]
	lsrs r1, r1, #5
	lsls r1, r1, #1
	ldr r2, _0804662C @ =gUnk_080D1A84
	adds r1, r1, r2
	ldr r3, _08046630 @ =gRoomControls
	ldrh r2, [r3, #6]
	ldrh r4, [r1]
	adds r2, r2, r4
	strh r2, [r0, #0x2e]
	ldrh r2, [r3, #8]
	ldrh r1, [r1, #2]
	adds r2, r2, r1
	strh r2, [r0, #0x32]
	pop {r4, pc}
	.align 2, 0
_0804662C: .4byte gUnk_080D1A84
_08046630: .4byte gRoomControls

	thumb_func_start sub_08046634
sub_08046634: @ 0x08046634
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #0
	bne _08046650
	ldr r4, _0804664C @ =gUnk_080D1AF4
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	b _0804665A
	.align 2, 0
_0804664C: .4byte gUnk_080D1AF4
_08046650:
	bl Random
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
_0804665A:
	ldrb r2, [r5, #0x14]
	lsrs r2, r2, #3
	adds r0, r1, #0
	movs r1, #0
	bl sub_080A1ED0
	pop {r4, r5, pc}

	thumb_func_start sub_08046668
sub_08046668: @ 0x08046668
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080466A0
	adds r5, r4, #0
	adds r5, #0x78
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080466A0
	bl Random
	ldr r2, _080466A4 @ =gUnk_080D1AF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r1, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x7f
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080467DC
_080466A0:
	pop {r4, r5, pc}
	.align 2, 0
_080466A4: .4byte gUnk_080D1AF8

	thumb_func_start sub_080466A8
sub_080466A8: @ 0x080466A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r2, [r0]
	cmp r2, #0
	beq _0804674C
	adds r0, #1
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4, #0xe]
	adds r5, r0, #0
	cmp r1, #0
	bne _080466D0
	subs r0, #5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080466D0
	movs r0, #4
	strb r0, [r4, #0xe]
_080466D0:
	ldrb r0, [r5]
	bl sub_08000E62
	cmp r0, #2
	bls _0804674C
	movs r0, #0
	strb r0, [r4, #0xe]
	strb r0, [r5]
	adds r7, r4, #0
	adds r7, #0x78
	subs r0, #1
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r7]
	adds r0, #0x28
	bl PlaySFX
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0
	beq _08046746
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bhi _0804671E
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_0804671E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08046730
	strb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xa5
	lsls r0, r0, #3
	b _08046744
_08046730:
	adds r1, r4, #0
	adds r1, #0x7f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046746
	movs r0, #1
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x87
	lsls r0, r0, #3
_08046744:
	strh r0, [r1]
_08046746:
	adds r0, r4, #0
	bl sub_080467DC
_0804674C:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _080467CC
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080467CC
	subs r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080467CC
	adds r2, r4, #0
	adds r2, #0x80
	adds r3, r4, #0
	adds r3, #0x7d
	ldrb r0, [r2]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r2]
	strb r5, [r3]
	adds r0, r4, #0
	bl sub_080467DC
	ldr r0, [r4, #0x64]
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080467CC
	ldr r2, _080467D8 @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x3e
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x2c
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _080467CC
	ldr r0, [r4, #0x64]
	ldrh r0, [r0, #0x38]
	strh r0, [r2, #0x2e]
	ldr r0, [r4, #0x64]
	ldrh r0, [r0, #0x3a]
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_080467CC:
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080467D8: .4byte gLinkEntity

	thumb_func_start sub_080467DC
sub_080467DC: @ 0x080467DC
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x64]
	movs r2, #0
	adds r0, #0x18
_080467E6:
	stm r0!, {r2}
	adds r1, #1
	cmp r1, #7
	bls _080467E6
	pop {pc}

	thumb_func_start sub_080467F0
sub_080467F0: @ 0x080467F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08046810
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08046810:
	ldr r1, _0804688C @ =gUnk_080D1AFC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #7
	beq _08046836
	ldrh r3, [r5]
	adds r0, r4, #0
	movs r1, #0xaa
	movs r2, #0xaa
	bl sub_0805EC9C
_08046836:
	ldrh r0, [r5]
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08048004
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08046878
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _08046890 @ =gRoomControls
	movs r3, #0xc
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	adds r0, #0x30
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08046878
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r4, #0x18]
_08046878:
	ldr r2, _08046894 @ =gLinkEntity
	ldrh r1, [r2, #0x2e]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	ldrh r1, [r2, #0x32]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0804688C: .4byte gUnk_080D1AFC
_08046890: .4byte gRoomControls
_08046894: .4byte gLinkEntity

	thumb_func_start sub_08046898
sub_08046898: @ 0x08046898
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x22
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _0804690C
	movs r4, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r1, #0xa]
	str r5, [r1, #0x50]
	str r1, [r5, #0x54]
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldrb r1, [r5, #0x19]
	movs r0, #3
	orrs r1, r0
	ldrb r2, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r5, #0x18]
	ldrb r2, [r5, #0x1b]
	movs r3, #0x3f
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ands r1, r3
	orrs r1, r2
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	subs r0, #4
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	subs r0, #8
	strh r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
_0804690C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08046910
sub_08046910: @ 0x08046910
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804692C @ =gUnk_080D1B1C
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_0804692C: .4byte gUnk_080D1B1C

	thumb_func_start sub_08046930
sub_08046930: @ 0x08046930
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08046948
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_08046948:
	adds r0, r4, #0
	bl sub_08047D88
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804696A
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_0804696A:
	pop {r4, pc}

	thumb_func_start sub_0804696C
sub_0804696C: @ 0x0804696C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r5, _080469C8 @ =gRoomControls
	ldrh r0, [r5, #8]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080469A6
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x80
	strb r0, [r4, #0x15]
	adds r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r0, #0x2e
	bl PlaySFX
_080469A6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080469C6
	ldrh r0, [r5, #8]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080469C6
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #0xf7
	bl PlaySFX
_080469C6:
	pop {r4, r5, pc}
	.align 2, 0
_080469C8: .4byte gRoomControls

	thumb_func_start sub_080469CC
sub_080469CC: @ 0x080469CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r0, _080469F0 @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080469EE
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x90
	strb r0, [r4, #0x15]
_080469EE:
	pop {r4, pc}
	.align 2, 0
_080469F0: .4byte gRoomControls

	thumb_func_start sub_080469F4
sub_080469F4: @ 0x080469F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r0, _08046A2C @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08046A28
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
_08046A28:
	pop {r4, pc}
	.align 2, 0
_08046A2C: .4byte gRoomControls

	thumb_func_start sub_08046A30
sub_08046A30: @ 0x08046A30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08046A50
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046A50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08046A54
sub_08046A54: @ 0x08046A54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047E48
	ldr r0, _08046A74 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08046A72
	movs r0, #6
	strb r0, [r4, #0xd]
_08046A72:
	pop {r4, pc}
	.align 2, 0
_08046A74: .4byte gRoomControls

	thumb_func_start sub_08046A78
sub_08046A78: @ 0x08046A78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08046A98
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046A98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08046A9C
sub_08046A9C: @ 0x08046A9C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046ABA
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046ABA
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_08046ABA:
	ldr r1, _08046AE4 @ =gUnk_080D1B38
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046AE2
	movs r1, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046AE2:
	pop {r4, pc}
	.align 2, 0
_08046AE4: .4byte gUnk_080D1B38

	thumb_func_start sub_08046AE8
sub_08046AE8: @ 0x08046AE8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #5
	adds r0, r4, #0
	bl sub_08048178
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08047D88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08046B18
sub_08046B18: @ 0x08046B18
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08046B6C
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046B54
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _08046B50 @ =0xFFFFFF00
	b _08046B5C
	.align 2, 0
_08046B50: .4byte 0xFFFFFF00
_08046B54:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046B5C:
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	b _08046B70
_08046B6C:
	movs r0, #2
	strb r0, [r4, #0xd]
_08046B70:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_08046B8C
sub_08046B8C: @ 0x08046B8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08046BD8
	movs r0, #3
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r1, _08046BD4 @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r5]
	adds r2, #0x10
	adds r0, r2, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r6]
	adds r0, r4, #0
	bl sub_08047D88
	b _08046C02
	.align 2, 0
_08046BD4: .4byte gRoomControls
_08046BD8:
	ldrh r0, [r5]
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
_08046C02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08046C04
sub_08046C04: @ 0x08046C04
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08046C58
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046C40
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _08046C3C @ =0xFFFFFF00
	b _08046C48
	.align 2, 0
_08046C3C: .4byte 0xFFFFFF00
_08046C40:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046C48:
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	b _08046C6C
_08046C58:
	movs r0, #4
	strb r0, [r4, #0xd]
	adds r0, r1, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	lsrs r0, r0, #6
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
_08046C6C:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_08046C88
sub_08046C88: @ 0x08046C88
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08046CC0
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	bl sub_08048158
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08048178
	adds r0, r4, #0
	bl sub_08047D88
	b _08046CEA
_08046CC0:
	ldrh r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
_08046CEA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08046CEC
sub_08046CEC: @ 0x08046CEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046D0A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046D0A
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
_08046D0A:
	ldr r1, _08046D40 @ =gUnk_080D1B4C
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08046D3C
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x24]
	strb r0, [r4, #0x14]
_08046D3C:
	pop {r4, pc}
	.align 2, 0
_08046D40: .4byte gUnk_080D1B4C

	thumb_func_start sub_08046D44
sub_08046D44: @ 0x08046D44
	push {lr}
	mov ip, r0
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x24]
	ldr r0, [r1, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #5
	lsls r1, r1, #1
	ldr r0, _08046D90 @ =gUnk_080D1B60
	adds r1, r1, r0
	ldr r3, _08046D94 @ =gRoomControls
	ldrh r0, [r3, #6]
	ldrh r2, [r1]
	adds r0, r0, r2
	mov r2, ip
	adds r2, #0x80
	strh r0, [r2]
	ldrh r0, [r3, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x82
	strh r0, [r1]
	mov r1, ip
	ldrb r0, [r1, #0x15]
	lsls r0, r0, #8
	adds r1, #0x76
	strh r0, [r1]
	mov r0, ip
	bl sub_08047D88
	pop {pc}
	.align 2, 0
_08046D90: .4byte gUnk_080D1B60
_08046D94: .4byte gRoomControls

	thumb_func_start sub_08046D98
sub_08046D98: @ 0x08046D98
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08046DEC
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046DD4
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _08046DD0 @ =0xFFFFFF00
	b _08046DDC
	.align 2, 0
_08046DD0: .4byte 0xFFFFFF00
_08046DD4:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046DDC:
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	b _08046DF0
_08046DEC:
	movs r0, #2
	strb r0, [r4, #0xd]
_08046DF0:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_08046E0C
sub_08046E0C: @ 0x08046E0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08046E3C
	movs r0, #3
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08047D88
	b _08046E66
_08046E3C:
	ldrh r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
_08046E66:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08046E68
sub_08046E68: @ 0x08046E68
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	movs r0, #0x80
	adds r6, r0, #0
	eors r6, r1
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	beq _08046EC6
	subs r0, r6, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _08046E94
	adds r1, r5, #0
	adds r1, #0x76
	ldr r2, _08046E90 @ =0xFFFFFF00
	b _08046E9C
	.align 2, 0
_08046E90: .4byte 0xFFFFFF00
_08046E94:
	adds r1, r5, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_08046E9C:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08047D88
	ldrb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r5, #0
	bl sub_08047EA4
	b _08046EEE
_08046EC6:
	movs r0, #4
	strb r0, [r5, #0xd]
	movs r0, #0x3f
	strb r0, [r5, #0xe]
	movs r4, #1
	strb r4, [r5, #0xf]
	bl Random
	ldr r1, _08046EF0 @ =gUnk_080D1B70
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r6
	movs r1, #0xc0
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08047D88
_08046EEE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046EF0: .4byte gUnk_080D1B70

	thumb_func_start sub_08046EF4
sub_08046EF4: @ 0x08046EF4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046F12
	movs r0, #0x7f
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r4, #0x15]
_08046F12:
	ldr r2, _08046F60 @ =gUnk_080D1B74
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #3
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r3
	cmp r0, #0
	bne _08046F58
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #0xf]
	movs r0, #0x23
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _08046F58
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_08046F58:
	adds r0, r4, #0
	bl sub_08047E48
	pop {r4, pc}
	.align 2, 0
_08046F60: .4byte gUnk_080D1B74

	thumb_func_start sub_08046F64
sub_08046F64: @ 0x08046F64
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046F82
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08046F82
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
_08046F82:
	ldr r1, _08046FE4 @ =gUnk_080D1B94
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08046FC8
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x23
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _08046FC8
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_08046FC8:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08046FE0
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08046FE0:
	pop {r4, pc}
	.align 2, 0
_08046FE4: .4byte gUnk_080D1B94

	thumb_func_start sub_08046FE8
sub_08046FE8: @ 0x08046FE8
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #0x1e
	strh r0, [r1]
	ldr r2, _08047028 @ =gRoomControls
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x80
	strh r0, [r1]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_08047D88
	pop {pc}
	.align 2, 0
_08047028: .4byte gRoomControls

	thumb_func_start sub_0804702C
sub_0804702C: @ 0x0804702C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	ldrb r2, [r4, #0x15]
	subs r0, r2, r3
	adds r0, #2
	movs r1, #0xff
	ands r0, r1
	cmp r0, #4
	bls _0804706C
	subs r0, r3, r2
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08047068
	subs r0, r2, #1
	b _0804706A
_08047068:
	adds r0, r2, #1
_0804706A:
	strb r0, [r4, #0x15]
_0804706C:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	movs r0, #0x24
	ldrsh r3, [r4, r0]
	asrs r3, r3, #0x10
	adds r3, #0x10
	adds r0, r4, #0
	bl sub_0806FCB8
	cmp r0, #0
	beq _080470B0
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_080470B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080470B4
sub_080470B4: @ 0x080470B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x40
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0804710A
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _080470D8
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _080470D4 @ =0xFFFFFF00
	b _080470E0
	.align 2, 0
_080470D4: .4byte 0xFFFFFF00
_080470D8:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_080470E0:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	b _0804713A
_0804710A:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl Random
	ldr r2, _0804713C @ =gUnk_080D1BBC
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08047D88
_0804713A:
	pop {r4, pc}
	.align 2, 0
_0804713C: .4byte gUnk_080D1BBC

	thumb_func_start sub_08047140
sub_08047140: @ 0x08047140
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0xbf
	bls _08047164
	movs r0, #0xc0
	strb r0, [r2, #0x15]
	movs r0, #4
	strb r0, [r2, #0xd]
_08047164:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804717C
sub_0804717C: @ 0x0804717C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _080471C0 @ =0x0000027F
	cmp r1, r0
	bgt _08047192
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x24]
_08047192:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	ldr r0, _080471C4 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080471BC
	movs r0, #5
	strb r0, [r4, #0xd]
_080471BC:
	pop {r4, pc}
	.align 2, 0
_080471C0: .4byte 0x0000027F
_080471C4: .4byte gRoomControls

	thumb_func_start sub_080471C8
sub_080471C8: @ 0x080471C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080471E0
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r4, #0x24]
_080471E0:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xdf
	bhi _080471EA
	adds r0, #1
	strb r0, [r4, #0x15]
_080471EA:
	ldrb r1, [r4, #0x15]
	movs r5, #0x80
	lsls r5, r5, #1
	subs r1, r5, r1
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	ldr r0, _0804722C @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08047238
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	cmp r0, r5
	bls _08047234
	bl Random
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08047230
	movs r0, #6
	b _08047236
	.align 2, 0
_0804722C: .4byte gRoomControls
_08047230:
	strb r1, [r4, #0xd]
	b _08047238
_08047234:
	movs r0, #0
_08047236:
	strb r0, [r4, #0xd]
_08047238:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804723C
sub_0804723C: @ 0x0804723C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	subs r0, #2
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bhi _08047266
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0xc0
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r1]
_08047266:
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08047284
sub_08047284: @ 0x08047284
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #0xe0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0x3f
	bhi _080472A4
	movs r0, #0x40
	strb r0, [r2, #0x15]
	movs r0, #8
	strb r0, [r2, #0xd]
_080472A4:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080472BC
sub_080472BC: @ 0x080472BC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _08047308 @ =0x000002FF
	cmp r1, r0
	bgt _080472D2
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x24]
_080472D2:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	ldr r0, _0804730C @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08047306
	movs r0, #9
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_08047306:
	pop {r4, pc}
	.align 2, 0
_08047308: .4byte 0x000002FF
_0804730C: .4byte gRoomControls

	thumb_func_start sub_08047310
sub_08047310: @ 0x08047310
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x24]
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	ldr r0, _08047364 @ =0x0000017F
	cmp r1, r0
	bgt _08047326
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r2, #0x24]
_08047326:
	adds r1, r2, #0
	adds r1, #0x76
	ldr r3, _08047368 @ =0xFFFFFE30
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	adds r0, #0x7f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _0804734C
	movs r0, #0xc0
	strb r0, [r2, #0x15]
	movs r0, #4
	strb r0, [r2, #0xd]
_0804734C:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0
_08047364: .4byte 0x0000017F
_08047368: .4byte 0xFFFFFE30

	thumb_func_start sub_0804736C
sub_0804736C: @ 0x0804736C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804738A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804738A
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_0804738A:
	ldr r0, _080473B4 @ =gUnk_080D1BC0
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _080473B0
	movs r0, #7
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080473B0:
	pop {r4, pc}
	.align 2, 0
_080473B4: .4byte gUnk_080D1BC0

	thumb_func_start sub_080473B8
sub_080473B8: @ 0x080473B8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0, #0x24]
	ldr r3, _080473EC @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r2, [r3, #6]
	adds r1, r1, r2
	adds r2, r0, #0
	adds r2, #0x80
	strh r1, [r2]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r3, [r3, #8]
	adds r1, r1, r3
	adds r2, r0, #0
	adds r2, #0x82
	strh r1, [r2]
	bl sub_08047D88
	pop {pc}
	.align 2, 0
_080473EC: .4byte gRoomControls

	thumb_func_start sub_080473F0
sub_080473F0: @ 0x080473F0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	ldrb r2, [r4, #0x15]
	subs r0, r2, r3
	adds r0, #2
	movs r1, #0xff
	ands r0, r1
	cmp r0, #4
	bls _08047444
	subs r1, r3, r2
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08047438
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08047434
	subs r0, r2, #2
	b _08047442
_08047434:
	subs r0, r2, #1
	b _08047442
_08047438:
	cmp r1, #1
	ble _08047440
	adds r0, r2, #2
	b _08047442
_08047440:
	adds r0, r2, #1
_08047442:
	strb r0, [r4, #0x15]
_08047444:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047DF0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	beq _08047482
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_08047482:
	pop {r4, pc}

	thumb_func_start sub_08047484
sub_08047484: @ 0x08047484
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x40
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _080474DA
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0x80
	bls _080474A8
	adds r1, r4, #0
	adds r1, #0x76
	ldr r2, _080474A4 @ =0xFFFFFF00
	b _080474B0
	.align 2, 0
_080474A4: .4byte 0xFFFFFF00
_080474A8:
	adds r1, r4, #0
	adds r1, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_080474B0:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08047D88
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	b _08047504
_080474DA:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0xa
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08047D88
_08047504:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08047508
sub_08047508: @ 0x08047508
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0804754C @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _0804759A
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _08047550
	ldrh r0, [r2, #8]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0804759A
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsrs r0, r0, #8
	b _08047598
	.align 2, 0
_0804754C: .4byte gRoomControls
_08047550:
	adds r0, r4, #0
	adds r0, #0x74
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	bge _0804757E
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r0, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804759A
	movs r0, #0
	strb r0, [r4, #0x15]
	movs r0, #0
	strh r0, [r3]
	b _0804759A
_0804757E:
	cmp r1, #0x3f
	bhi _0804759A
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	cmp r0, #0x3f
	bls _0804759A
	movs r0, #0x40
_08047598:
	strb r0, [r4, #0x15]
_0804759A:
	adds r0, r4, #0
	bl sub_08047E48
	ldr r0, _080475F0 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080475CA
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_080475CA:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080475EE
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _080475EE
	str r4, [r0, #0x50]
_080475EE:
	pop {r4, pc}
	.align 2, 0
_080475F0: .4byte gRoomControls

	thumb_func_start sub_080475F4
sub_080475F4: @ 0x080475F4
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0xbf
	bls _08047626
	movs r0, #0xc0
	strb r0, [r2, #0x15]
	movs r0, #5
	strb r0, [r2, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	adds r1, #8
	movs r0, #0x3c
	strh r0, [r1]
_08047626:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}

	thumb_func_start sub_0804763C
sub_0804763C: @ 0x0804763C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08047680 @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080476D0
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _08047684
	ldrh r0, [r2, #8]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _080476D0
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsrs r0, r0, #8
	b _080476CE
	.align 2, 0
_08047680: .4byte gRoomControls
_08047684:
	adds r0, r4, #0
	adds r0, #0x74
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble _080476B4
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r0, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080476D0
	movs r0, #0
	strb r0, [r4, #0x15]
	strh r1, [r3]
	b _080476D0
_080476B4:
	cmp r1, #0xc0
	bls _080476D0
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	cmp r0, #0xc0
	bhi _080476D0
	movs r0, #0xc0
_080476CE:
	strb r0, [r4, #0x15]
_080476D0:
	adds r0, r4, #0
	bl sub_08047E48
	ldr r0, _08047728 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08047700
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_08047700:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08047724
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _08047724
	str r4, [r0, #0x50]
_08047724:
	pop {r4, pc}
	.align 2, 0
_08047728: .4byte gRoomControls

	thumb_func_start sub_0804772C
sub_0804772C: @ 0x0804772C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x76
	ldr r3, _08047774 @ =0xFFFFFE80
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r2, #0x15]
	cmp r0, #0x40
	bhi _0804775C
	movs r0, #0x40
	strb r0, [r2, #0x15]
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	adds r1, #8
	movs r0, #0x1e
	strh r0, [r1]
_0804775C:
	ldrb r0, [r2, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_08047DF0
	pop {pc}
	.align 2, 0
_08047774: .4byte 0xFFFFFE80

	thumb_func_start sub_08047778
sub_08047778: @ 0x08047778
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08047794 @ =gUnk_080D1BDC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08047794: .4byte gUnk_080D1BDC

	thumb_func_start sub_08047798
sub_08047798: @ 0x08047798
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r0, #0x80
	strh r0, [r3, #0x24]
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldr r2, _080477BC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	ldr r0, _080477C0 @ =0x000001F7
	cmp r1, r0
	bgt _080477C4
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0xa8
	b _080477CC
	.align 2, 0
_080477BC: .4byte gRoomControls
_080477C0: .4byte 0x000001F7
_080477C4:
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0xd2
	lsls r0, r0, #2
_080477CC:
	strh r0, [r1]
	ldrh r0, [r2, #6]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_08047D88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080477F0
sub_080477F0: @ 0x080477F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _08047868 @ =0x000002FF
	cmp r1, r0
	bgt _0804780A
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4, #0x24]
_0804780A:
	adds r7, r4, #0
	adds r7, #0x80
	ldrh r0, [r7]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08047E48
	ldr r0, _0804786C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x80
	bl sub_0806FCB8
	adds r1, r0, #0
	cmp r1, #0
	bne _08047870
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
	b _0804790C
	.align 2, 0
_08047868: .4byte 0x000002FF
_0804786C: .4byte gLinkEntity
_08047870:
	ldr r5, _080478FC @ =gRoomControls
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	ldrh r2, [r5, #8]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, #0
	bl sub_0806FCB8
	cmp r0, #0
	bne _080478A0
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
_080478A0:
	ldrh r1, [r7]
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804790C
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl Random
	ldr r2, _08047900 @ =gUnk_080D1BF0
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	strh r2, [r0]
	ldr r2, [r4, #0x64]
	ldr r0, [r2]
	adds r0, #0x6c
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08047904
	ldr r3, [r2, #4]
	ldrh r0, [r5, #6]
	add r0, r8
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x83
	cmp r0, r1
	ble _080478F4
	movs r2, #0x81
_080478F4:
	adds r0, r3, #0
	adds r0, #0x79
	strb r2, [r0]
	b _0804790C
	.align 2, 0
_080478FC: .4byte gRoomControls
_08047900: .4byte gUnk_080D1BF0
_08047904:
	ldr r0, [r2, #4]
	adds r0, #0x79
	movs r1, #0x80
	strb r1, [r0]
_0804790C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08047914
sub_08047914: @ 0x08047914
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	ldrb r1, [r4, #0x14]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	beq _08047950
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	b _08047976
_08047950:
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #0x3c
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldrb r1, [r4, #0x14]
	bl sub_080A1D70
_08047976:
	pop {r4, pc}

	thumb_func_start sub_08047978
sub_08047978: @ 0x08047978
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	beq _080479C6
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r0, [r2]
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080479B6
	adds r1, r4, #0
	adds r1, #0x72
	movs r0, #1
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080479AE
	movs r0, #0xb4
	strh r0, [r2]
	b _080479CC
_080479AE:
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r2]
	b _080479CC
_080479B6:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bne _080479CC
	adds r0, r4, #0
	bl sub_0804813C
	b _080479CC
_080479C6:
	adds r0, r4, #0
	adds r0, #0x72
	strh r1, [r0]
_080479CC:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080479F4
	movs r0, #0xf0
	strh r0, [r1]
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _080479F4
	str r4, [r0, #0x50]
_080479F4:
	ldr r0, _08047A78 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x80
	bl sub_0806FCB8
	adds r1, r0, #0
	cmp r1, #0
	bne _08047A2C
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
_08047A2C:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047B06
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08047B06
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08047AA4
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _08047A80
	ldr r2, _08047A7C @ =gRoomControls
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0x82
	b _08047B04
	.align 2, 0
_08047A78: .4byte gLinkEntity
_08047A7C: .4byte gRoomControls
_08047A80:
	ldr r2, _08047AA0 @ =gRoomControls
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	adds r3, #0x10
	adds r0, r3, #0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, #2
	b _08047B04
	.align 2, 0
_08047AA0: .4byte gRoomControls
_08047AA4:
	ldr r0, _08047AC4 @ =gRoomControls
	ldrh r1, [r0, #6]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0x2e
	ldrsh r2, [r4, r3]
	adds r3, r0, #0
	cmp r1, r2
	bge _08047AC8
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0xc8
	lsls r0, r0, #1
	b _08047AD0
	.align 2, 0
_08047AC4: .4byte gRoomControls
_08047AC8:
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x9c
	lsls r0, r0, #2
_08047AD0:
	strh r0, [r1]
	ldrh r0, [r3, #6]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r3, #8]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08047AF4
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xd0
	lsls r0, r0, #1
	b _08047AFC
_08047AF4:
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xa0
	lsls r0, r0, #2
_08047AFC:
	strh r0, [r1]
	ldrh r0, [r3, #8]
	ldrh r3, [r1]
	adds r0, r0, r3
_08047B04:
	strh r0, [r1]
_08047B06:
	pop {r4, pc}

	thumb_func_start sub_08047B08
sub_08047B08: @ 0x08047B08
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08047D88
	adds r4, r5, #0
	adds r4, #0x80
	ldrh r0, [r4]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	adds r6, r5, #0
	adds r6, #0x82
	ldrh r1, [r6]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08047E58
	ldrh r1, [r4]
	ldrh r2, [r6]
	adds r0, r5, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08047B80
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08047B60
	movs r0, #7
	strb r0, [r5, #0xc]
	strb r7, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	movs r1, #0x80
	eors r0, r1
	b _08047B7E
_08047B60:
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r7, [r5, #0xd]
	ldrb r2, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x19]
	ldrb r0, [r5, #0x14]
_08047B7E:
	strb r0, [r5, #0x15]
_08047B80:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08047B84
sub_08047B84: @ 0x08047B84
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08047BA0 @ =gUnk_080D1BF4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08047BA0: .4byte gUnk_080D1BF4

	thumb_func_start sub_08047BA4
sub_08047BA4: @ 0x08047BA4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0x78
	strb r2, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r0, _08047BD0 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _08047BD4
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _08047BDC
	.align 2, 0
_08047BD0: .4byte gRoomControls
_08047BD4:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x88
	strh r0, [r1]
_08047BDC:
	ldr r0, _08047BEC @ =0x000001B5
	bl PlaySFX
	adds r0, r4, #0
	bl sub_08047BF0
	pop {r4, pc}
	.align 2, 0
_08047BEC: .4byte 0x000001B5

	thumb_func_start sub_08047BF0
sub_08047BF0: @ 0x08047BF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _08047CB8 @ =gUnk_080D1C00
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08047E48
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08047CC4
	ldrb r1, [r5, #0xf]
	adds r0, r1, #1
	strb r0, [r5, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08047C74
	adds r0, r5, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08047C74
	bl Random
	movs r3, #0x1e
	adds r1, r0, #0
	ands r1, r3
	ldr r6, _08047CBC @ =0x0000FFF1
	adds r2, r6, #0
	adds r1, r2, r1
	ldrh r6, [r4, #0x2e]
	adds r1, r1, r6
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08047C74:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r5, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08047E48
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldr r0, _08047CC0 @ =gRoomControls
	ldrh r0, [r0, #8]
	movs r6, #0x9c
	lsls r6, r6, #2
	adds r0, r0, r6
	cmp r1, r0
	ble _08047D10
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x7e
	movs r0, #0xaa
	strh r0, [r1]
	adds r0, #0x83
	bl PlaySFX
	adds r0, r5, #0
	movs r1, #1
	bl sub_080042AC
	b _08047D10
	.align 2, 0
_08047CB8: .4byte gUnk_080D1C00
_08047CBC: .4byte 0x0000FFF1
_08047CC0: .4byte gRoomControls
_08047CC4:
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5a
	bne _08047CD4
	ldr r4, [r5, #0x54]
	b _08047CDC
_08047CD4:
	cmp r0, #0x3c
	bne _08047CF2
	ldr r0, [r5, #0x54]
	ldr r4, [r0, #0x54]
_08047CDC:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	b _08047D10
_08047CF2:
	cmp r0, #0x1e
	bne _08047D10
	ldr r0, [r5, #0x54]
	ldr r0, [r0, #0x54]
	ldr r4, [r0, #0x54]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
_08047D10:
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r3, [r0]
	adds r0, r5, #0
	movs r1, #0xaa
	movs r2, #0xaa
	bl sub_0805EC9C
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08047D24
sub_08047D24: @ 0x08047D24
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	adds r0, #8
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bls _08047D5A
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08047D4C
	ldr r0, [r4, #0x64]
	str r2, [r0, #8]
	b _08047D50
_08047D4C:
	ldr r0, [r4, #0x64]
	str r2, [r0, #0xc]
_08047D50:
	movs r0, #0
	str r0, [r4, #0x64]
	bl sub_0805E780
	b _08047D84
_08047D5A:
	ldr r0, _08047D68 @ =0x000001FF
	cmp r1, r0
	bhi _08047D6C
	adds r0, r4, #0
	bl sub_08047E48
	b _08047D72
	.align 2, 0
_08047D68: .4byte 0x000001FF
_08047D6C:
	adds r0, r4, #0
	bl sub_08047E58
_08047D72:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r2, [r0]
	subs r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08047D84:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08047D88
sub_08047D88: @ 0x08047D88
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x7c
	ldrb r2, [r5]
	lsls r1, r2, #1
	movs r0, #0x7f
	ands r1, r0
	movs r0, #0x80
	ands r0, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r3, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08047DB0
	ldr r0, _08047DE8 @ =gLinkState
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _08047DE6
_08047DB0:
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _08047DE6
	ldr r4, _08047DEC @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0806FCB8
	cmp r0, #0
	beq _08047DE6
	ldr r0, _08047DE8 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08047DE6
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_08047DE6:
	pop {r4, r5, pc}
	.align 2, 0
_08047DE8: .4byte gLinkState
_08047DEC: .4byte gLinkEntity

	thumb_func_start sub_08047DF0
sub_08047DF0: @ 0x08047DF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08047D88
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08047EA4
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	movs r2, #0x32
	ldrsh r6, [r5, r2]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F62C
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047E42
	bl sub_08079F8C
	cmp r0, #0
	beq _08047E42
	ldr r0, _08047E44 @ =gLinkEntity
	ldrh r1, [r5, #0x2e]
	subs r1, r1, r4
	ldrh r2, [r0, #0x2e]
	adds r1, r1, r2
	strh r1, [r0, #0x2e]
	ldrh r1, [r5, #0x32]
	subs r1, r1, r6
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
_08047E42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08047E44: .4byte gLinkEntity

	thumb_func_start sub_08047E48
sub_08047E48: @ 0x08047E48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08047D88
	adds r0, r4, #0
	bl sub_08047E58
	pop {r4, pc}

	thumb_func_start sub_08047E58
sub_08047E58: @ 0x08047E58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r2, #0x32
	ldrsh r6, [r4, r2]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047E9C
	bl sub_08079F8C
	cmp r0, #0
	beq _08047E9C
	ldr r0, _08047EA0 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	ldrh r2, [r0, #0x2e]
	adds r1, r1, r2
	strh r1, [r0, #0x2e]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r6
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
_08047E9C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08047EA0: .4byte gLinkEntity

	thumb_func_start sub_08047EA4
sub_08047EA4: @ 0x08047EA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r1, [r0]
	adds r0, #2
	ldrh r0, [r0]
	subs r4, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, #0xff
	cmp r1, r0
	bls _08047F58
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047F4E
	adds r0, r5, #0
	bl sub_08047F68
	lsls r0, r0, #8
	mov r8, r0
	ldr r6, _08047F60 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	adds r0, r4, #0
	cmp r4, #0
	bge _08047F00
	adds r0, #0xff
_08047F00:
	asrs r0, r0, #8
	subs r4, r3, r0
	movs r0, #0xff
	ands r4, r0
	ldr r2, _08047F64 @ =gUnk_080C9160
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r0, [r6, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #0x2c]
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r0, [r6, #0x30]
	subs r0, r0, r1
	str r0, [r6, #0x30]
_08047F4E:
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_08047F58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08047F60: .4byte gLinkEntity
_08047F64: .4byte gUnk_080C9160

	thumb_func_start sub_08047F68
sub_08047F68: @ 0x08047F68
	push {r4, r5, lr}
	ldr r3, _08047F98 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r3, r1]
	movs r4, #0x2e
	ldrsh r1, [r0, r4]
	subs r2, r2, r1
	movs r4, #0x32
	ldrsh r1, [r3, r4]
	movs r3, #0x32
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r4, r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bne _08047F9C
	movs r0, #0x20
	b _08048002
	.align 2, 0
_08047F98: .4byte gLinkEntity
_08047F9C:
	ldr r0, _08047FB8 @ =gUnk_080D1C04
	movs r3, #0x18
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r4, r0
	bge _08047FAA
	movs r3, #8
_08047FAA:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r4, r0
	bge _08047FBC
	subs r3, #4
	b _08047FBE
	.align 2, 0
_08047FB8: .4byte gUnk_080D1C04
_08047FBC:
	adds r3, #4
_08047FBE:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r4, r0
	bge _08047FCC
	subs r3, #2
	b _08047FCE
_08047FCC:
	adds r3, #2
_08047FCE:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r4, r0
	bge _08047FDC
	subs r3, #1
	b _08047FDE
_08047FDC:
	adds r3, #1
_08047FDE:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	cmp r4, r1
	bge _08048000
	subs r5, r3, #1
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	subs r0, r1, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	cmp r4, r2
	bgt _08048000
	adds r3, r5, #0
_08048000:
	adds r0, r3, #0
_08048002:
	pop {r4, r5, pc}

	thumb_func_start sub_08048004
sub_08048004: @ 0x08048004
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08048010
	b _08048138
_08048010:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804801C
	b _08048130
_0804801C:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r6, _080480A4 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _08048030
	b _08048138
_08048030:
	bl sub_08079F8C
	cmp r0, #0
	bne _0804803A
	b _08048138
_0804803A:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r3, [r1]
	movs r0, #1
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	beq _080480BA
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _080480B0
	movs r7, #0x2e
	ldrsh r2, [r6, r7]
	ldr r1, _080480A8 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #3
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #3
	ldr r1, _080480AC @ =gUnk_02019EE0
	lsls r0, r0, #7
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080480B0
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08048086
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r5]
_08048086:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08048138
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	strh r0, [r6, #0x2e]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	b _08048138
	.align 2, 0
_080480A4: .4byte gLinkEntity
_080480A8: .4byte gRoomControls
_080480AC: .4byte gUnk_02019EE0
_080480B0:
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	b _08048138
_080480BA:
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	beq _08048124
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	adds r0, r6, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _08048124
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08048124
	movs r7, #0x2e
	ldrsh r0, [r6, r7]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r3, _0804812C @ =gUnk_080C9160
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #0xa
	ldr r1, [r4, #0x2c]
	adds r1, r1, r2
	str r1, [r6, #0x2c]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0xa
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r6, #0x30]
_08048124:
	movs r0, #0
	strb r0, [r5]
	b _08048138
	.align 2, 0
_0804812C: .4byte gUnk_080C9160
_08048130:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08048138:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804813C
sub_0804813C: @ 0x0804813C
	push {lr}
	bl Random
	adds r2, r0, #0
	movs r0, #7
	ands r0, r2
	lsrs r2, r2, #8
	movs r1, #3
	ands r2, r1
	movs r1, #1
	bl sub_080A1ED0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08048158
sub_08048158: @ 0x08048158
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08048174 @ =gUnk_080D1C44
	bl Random
	lsls r4, r5, #1
	adds r4, r4, r5
	movs r1, #3
	bl __modsi3
	adds r4, r4, r0
	adds r4, r4, r6
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048174: .4byte gUnk_080D1C44

	thumb_func_start sub_08048178
sub_08048178: @ 0x08048178
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08048198
	lsls r1, r2, #1
	ldr r0, _08048194 @ =gUnk_080D1C60
	b _0804819C
	.align 2, 0
_08048194: .4byte gUnk_080D1C60
_08048198:
	lsls r1, r2, #1
	ldr r0, _080481B8 @ =gUnk_080D1C50
_0804819C:
	adds r3, r1, r0
	ldr r2, _080481BC @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldrh r3, [r3, #2]
	adds r0, r0, r3
	adds r1, #2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_080481B8: .4byte gUnk_080D1C50
_080481BC: .4byte gRoomControls

	thumb_func_start sub_080481C0
sub_080481C0: @ 0x080481C0
	push {lr}
	ldr r1, _080481CC @ =gUnk_080D1CC8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080481CC: .4byte gUnk_080D1CC8

	thumb_func_start sub_080481D0
sub_080481D0: @ 0x080481D0
	push {lr}
	ldr r2, _080481E4 @ =gUnk_080D1CE0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080481E4: .4byte gUnk_080D1CE0

	thumb_func_start sub_080481E8
sub_080481E8: @ 0x080481E8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	beq _08048210
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	movs r0, #3
	b _08048212
_08048210:
	movs r0, #2
_08048212:
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0xe]
	adds r0, r2, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_26
nullsub_26: @ 0x08048220
	bx lr
	.align 2, 0

	thumb_func_start sub_08048224
sub_08048224: @ 0x08048224
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0x72
	bl sub_0807CBD0
	adds r1, r0, #0
	cmp r1, #0
	bne _0804824E
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _0804825E
_0804824E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xe]
_0804825E:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08048268
sub_08048268: @ 0x08048268
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08048292
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048292
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08048292:
	pop {r4, pc}

	thumb_func_start sub_08048294
sub_08048294: @ 0x08048294
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080482BC
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x72
	bl sub_0807CCB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_080482BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_27
nullsub_27: @ 0x080482C0
	bx lr
	.align 2, 0

	thumb_func_start sub_080482C4
sub_080482C4: @ 0x080482C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080482D4
	bl sub_0805E780
_080482D4:
	ldr r0, _080482E8 @ =gUnk_080D1D48
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080482E8: .4byte gUnk_080D1D48

	thumb_func_start sub_080482EC
sub_080482EC: @ 0x080482EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08048310 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08048314
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08048326
	.align 2, 0
_08048310: .4byte gUnk_030010A0
_08048314:
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySFX
_08048326:
	adds r0, r4, #0
	bl sub_080485D8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048330
sub_08048330: @ 0x08048330
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485D8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048358
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08048358:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804835C
sub_0804835C: @ 0x0804835C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485D8
	ldr r0, _08048384 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08048382
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x80
	strh r0, [r4, #0x24]
_08048382:
	pop {r4, pc}
	.align 2, 0
_08048384: .4byte gUnk_030010A0

	thumb_func_start sub_08048388
sub_08048388: @ 0x08048388
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x50]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	beq _080483A0
	adds r0, r5, #0
	bl sub_080485D8
	b _080483F2
_080483A0:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #1
	ldr r0, _080483F4 @ =gUnk_080D1D98
	adds r1, r1, r0
	movs r0, #0x2e
	ldrsh r4, [r2, r0]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r6, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_080045D4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x36]
	strh r0, [r5, #0x36]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, r4
	bne _080483F2
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r0, r6
	bne _080483F2
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
_080483F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080483F4: .4byte gUnk_080D1D98

	thumb_func_start sub_080483F8
sub_080483F8: @ 0x080483F8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080485FC
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _0804841C
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048436
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _08048436
_0804841C:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048436
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
_08048436:
	pop {r4, r5, pc}

	thumb_func_start sub_08048438
sub_08048438: @ 0x08048438
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0804846A
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _08048454
	movs r0, #0x78
	b _08048456
_08048454:
	movs r0, #0x3c
_08048456:
	strb r0, [r4, #0xe]
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	ldr r0, _08048474 @ =0x0000019B
	bl PlaySFX
_0804846A:
	adds r0, r4, #0
	bl sub_080485FC
	pop {r4, pc}
	.align 2, 0
_08048474: .4byte 0x0000019B

	thumb_func_start sub_08048478
sub_08048478: @ 0x08048478
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485FC
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _080484A2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080484E6
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _080484E6
_080484A2:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080484BC
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	b _080484E6
_080484BC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080484E6
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	movs r0, #0x24
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080484E6
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
_080484E6:
	pop {r4, pc}

	thumb_func_start sub_080484E8
sub_080484E8: @ 0x080484E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485FC
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08048528
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x1f
	movs r2, #0x40
	bl CreateFX
	ldr r2, [r4, #0x50]
	adds r2, #0x7b
	movs r0, #0x10
	b _08048542
_08048528:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0804854C
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldr r2, [r4, #0x50]
	adds r2, #0x7b
	movs r0, #1
_08048542:
	ldrb r4, [r4, #0xa]
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0804854C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048550
sub_08048550: @ 0x08048550
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #0xb
	bne _08048562
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _0804859E
_08048562:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804859E
	movs r0, #9
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080485FC
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySFX
_0804859E:
	pop {r4, pc}

	thumb_func_start sub_080485A0
sub_080485A0: @ 0x080485A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080485FC
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080485D6
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r1, #1
	strb r1, [r4, #0xe]
	ldr r2, [r4, #0x50]
	adds r2, #0x7b
	ldrb r3, [r2]
	movs r0, #0xf
	ands r0, r3
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	orrs r0, r1
	strb r0, [r2]
_080485D6:
	pop {r4, pc}

	thumb_func_start sub_080485D8
sub_080485D8: @ 0x080485D8
	push {lr}
	adds r1, r0, #0
	ldrb r3, [r1, #0xa]
	lsls r3, r3, #1
	ldr r0, _080485F8 @ =gUnk_080D1D70
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	bl sub_0806FA90
	pop {pc}
	.align 2, 0
_080485F8: .4byte gUnk_080D1D70

	thumb_func_start sub_080485FC
sub_080485FC: @ 0x080485FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	ldr r0, _08048638 @ =gUnk_080D1D98
	adds r1, r1, r0
	ldr r0, [r4, #0x50]
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r3, #1
	ldrsb r3, [r1, r3]
	adds r1, r4, #0
	bl sub_0806FA90
	ldr r3, _0804863C @ =gUnk_080D1D78
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldr r0, [r4, #0x50]
	adds r0, #0x78
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r2, #7
	ands r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r4, #0x36]
	pop {r4, pc}
	.align 2, 0
_08048638: .4byte gUnk_080D1D98
_0804863C: .4byte gUnk_080D1D78

	thumb_func_start sub_08048640
sub_08048640: @ 0x08048640
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0804867C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r2, [r0]
	cmp r2, #0
	bne _08048664
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_08048664:
	ldr r4, _08048680 @ =gUnk_080D1E6C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0804867C: .4byte gUnk_030010A0
_08048680: .4byte gUnk_080D1E6C

	thumb_func_start sub_08048684
sub_08048684: @ 0x08048684
	push {lr}
	ldr r2, _08048698 @ =gUnk_080D1E84
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08048698: .4byte gUnk_080D1E84

	thumb_func_start sub_0804869C
sub_0804869C: @ 0x0804869C
	push {lr}
	ldr r1, _080486A8 @ =gUnk_080D1E6C
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_080486A8: .4byte gUnk_080D1E6C

	thumb_func_start sub_080486AC
sub_080486AC: @ 0x080486AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080486C8
	ldr r0, _080486CC @ =gUnk_080D1E94
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080486C8:
	pop {r4, pc}
	.align 2, 0
_080486CC: .4byte gUnk_080D1E94

	thumb_func_start sub_080486D0
sub_080486D0: @ 0x080486D0
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_080486D8
sub_080486D8: @ 0x080486D8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080486E0
sub_080486E0: @ 0x080486E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080486F2
	adds r0, r4, #0
	bl sub_0804A7D4
_080486F2:
	pop {r4, pc}

	thumb_func_start sub_080486F4
sub_080486F4: @ 0x080486F4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0x1c]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0804876C
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl Random
	movs r1, #0xb
	bl __modsi3
	ldrb r1, [r4, #0x15]
	adds r1, r1, r0
	subs r1, #5
	movs r2, #0x1f
	ands r1, r2
	strb r1, [r4, #0x15]
	lsls r0, r0, #1
	ldr r2, _08048768 @ =gUnk_080D1EA0
	adds r1, r0, r2
	ldrb r1, [r1]
	strb r1, [r4, #0xe]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0804877A
	.align 2, 0
_08048768: .4byte gUnk_080D1EA0
_0804876C:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
_0804877A:
	pop {r4, r5, pc}

	thumb_func_start sub_0804877C
sub_0804877C: @ 0x0804877C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080487AA
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080487AA
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080487AA:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080487D4
	cmp r0, #1
	bgt _080487BC
	cmp r0, #0
	beq _080487C2
	b _08048804
_080487BC:
	cmp r0, #2
	beq _080487EC
	b _08048804
_080487C2:
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldr r0, _080487D0 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	b _0804880E
	.align 2, 0
_080487D0: .4byte gRoomControls
_080487D4:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _080487E8 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080487F8
	.align 2, 0
_080487E8: .4byte gRoomControls
_080487EC:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08048800 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	adds r0, #0xb8
_080487F8:
	cmp r1, r0
	blt _08048824
	b _08048814
	.align 2, 0
_08048800: .4byte gRoomControls
_08048804:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _08048828 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
_0804880E:
	subs r0, #0x18
	cmp r1, r0
	bgt _08048824
_08048814:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x5e
	ands r0, r1
	strb r0, [r4, #0x18]
_08048824:
	pop {r4, pc}
	.align 2, 0
_08048828: .4byte gRoomControls

	thumb_func_start sub_0804882C
sub_0804882C: @ 0x0804882C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080488FA
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl Random
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080488D0
	cmp r0, #1
	bgt _080488AA
	cmp r0, #0
	beq _080488AE
	b _080488D0
_080488AA:
	cmp r0, #2
	bne _080488D0
_080488AE:
	ldr r1, _080488C8 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r1, [r1, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldr r1, _080488CC @ =gRoomControls
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	ldrh r1, [r1, #0xc]
	b _080488E8
	.align 2, 0
_080488C8: .4byte gLinkEntity
_080488CC: .4byte gRoomControls
_080488D0:
	ldr r1, _080488FC @ =gRoomControls
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r1, [r1, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldr r1, _08048900 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	ldrh r1, [r1, #0x32]
_080488E8:
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080488FA
	movs r0, #0xcc
	lsls r0, r0, #1
	bl PlaySFX
_080488FA:
	pop {r4, pc}
	.align 2, 0
_080488FC: .4byte gRoomControls
_08048900: .4byte gLinkEntity

	thumb_func_start sub_08048904
sub_08048904: @ 0x08048904
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _0804893C
	cmp r0, #1
	bgt _08048924
	cmp r0, #0
	beq _0804892A
	b _0804896C
_08048924:
	cmp r0, #2
	beq _08048954
	b _0804896C
_0804892A:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08048938 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	b _08048976
	.align 2, 0
_08048938: .4byte gRoomControls
_0804893C:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _08048950 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08048960
	.align 2, 0
_08048950: .4byte gRoomControls
_08048954:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08048968 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	adds r0, #0xc8
_08048960:
	cmp r1, r0
	blt _08048980
	b _0804897C
	.align 2, 0
_08048968: .4byte gRoomControls
_0804896C:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _08048984 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
_08048976:
	subs r0, #0x28
	cmp r1, r0
	bgt _08048980
_0804897C:
	bl sub_0805E780
_08048980:
	pop {r4, pc}
	.align 2, 0
_08048984: .4byte gRoomControls

	thumb_func_start sub_08048988
sub_08048988: @ 0x08048988
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08048998
	bl sub_0805E780
_08048998:
	ldr r4, _080489B0 @ =gUnk_080D1F64
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080489B0: .4byte gUnk_080D1F64

	thumb_func_start sub_080489B4
sub_080489B4: @ 0x080489B4
	push {lr}
	ldr r2, _080489C8 @ =gUnk_080D1F7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080489C8: .4byte gUnk_080D1F7C

	thumb_func_start sub_080489CC
sub_080489CC: @ 0x080489CC
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080489DA
	b _08048AD8
_080489DA:
	mov r0, ip
	ldr r4, [r0, #0x50]
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	mov r2, ip
	ldrb r1, [r2, #0xa]
	asrs r0, r1
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08048AD8
	adds r2, r4, #0
	adds r2, #0x7c
	adds r0, r3, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x16
	bhi _08048AD0
	lsls r0, r0, #2
	ldr r1, _08048A1C @ =_08048A20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048A1C: .4byte _08048A20
_08048A20: @ jump table
	.4byte _08048A7C @ case 0
	.4byte _08048A7C @ case 1
	.4byte _08048A7C @ case 2
	.4byte _08048AD0 @ case 3
	.4byte _08048A7C @ case 4
	.4byte _08048A7C @ case 5
	.4byte _08048A7C @ case 6
	.4byte _08048A7C @ case 7
	.4byte _08048A7C @ case 8
	.4byte _08048A7C @ case 9
	.4byte _08048AD0 @ case 10
	.4byte _08048AD0 @ case 11
	.4byte _08048A7C @ case 12
	.4byte _08048A7C @ case 13
	.4byte _08048A7C @ case 14
	.4byte _08048AD0 @ case 15
	.4byte _08048AD0 @ case 16
	.4byte _08048AD0 @ case 17
	.4byte _08048AD0 @ case 18
	.4byte _08048AD0 @ case 19
	.4byte _08048A7C @ case 20
	.4byte _08048A7C @ case 21
	.4byte _08048A7C @ case 22
_08048A7C:
	ldr r3, [r4, #0x64]
	mov r5, ip
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x4c]
	str r0, [r1]
	ldr r2, _08048ACC @ =gLinkEntity
	movs r6, #0x2e
	ldrsh r0, [r2, r6]
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0x38]
	ldr r3, [r4, #0x64]
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0x3a]
	ldr r2, [r4, #0x64]
	mov r3, ip
	adds r3, #0x3e
	ldrb r0, [r3]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	strb r0, [r2]
	b _08048AD8
	.align 2, 0
_08048ACC: .4byte gLinkEntity
_08048AD0:
	ldr r0, [r4, #0x64]
	adds r0, #0x3c
	movs r1, #0xff
	strb r1, [r0]
_08048AD8:
	mov r1, ip
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08048AEC @ =gUnk_080D1F64
	mov r0, ip
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048AEC: .4byte gUnk_080D1F64

	thumb_func_start sub_08048AF0
sub_08048AF0: @ 0x08048AF0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xff
	strb r1, [r0, #0x14]
	ldrb r3, [r0, #0x1b]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	movs r3, #0x80
	orrs r1, r3
	strb r1, [r0, #0x1b]
	ldrb r1, [r0, #0x19]
	ands r2, r1
	orrs r2, r3
	strb r2, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #2
	strb r1, [r2]
	bl sub_08048D20
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08048B2C
sub_08048B2C: @ 0x08048B2C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08048D20
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	bl sub_08048D70
	cmp r0, #0
	beq _08048B62
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08048B52
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFX
_08048B52:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08048B6C
_08048B62:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08048B6C:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r1, [r4, #0xa]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08048B82
	movs r0, #2
	strb r0, [r4, #0xc]
_08048B82:
	pop {r4, r5, pc}

	thumb_func_start sub_08048B84
sub_08048B84: @ 0x08048B84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048BAE
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1e
	strb r0, [r1]
_08048BAE:
	pop {r4, pc}

	thumb_func_start sub_08048BB0
sub_08048BB0: @ 0x08048BB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r3, [r0]
	ldrb r1, [r4, #0xa]
	adds r0, r3, #0
	asrs r0, r1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _08048C34
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048BFC
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _08048BF8 @ =gUnk_080D2030
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
	b _08048CEA
	.align 2, 0
_08048BF8: .4byte gUnk_080D2030
_08048BFC:
	strb r6, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _08048C30 @ =gUnk_080D2010
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFX
	b _08048CEA
	.align 2, 0
_08048C30: .4byte gUnk_080D2010
_08048C34:
	adds r5, r2, #0
	adds r5, #0x80
	ldrb r0, [r5]
	asrs r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08048CBC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _08048C6C
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x89
	strb r0, [r1]
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #6
	adds r1, #0x14
	adds r0, r4, #0
	bl sub_08004260
	ldr r0, _08048CB4 @ =0x00000119
	bl PlaySFX
_08048C6C:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048CEA
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1e
	strb r0, [r1]
	ldr r1, _08048CB8 @ =gUnk_080D2010
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004276
	adds r1, r6, #0
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
	b _08048CEA
	.align 2, 0
_08048CB4: .4byte 0x00000119
_08048CB8: .4byte gUnk_080D2010
_08048CBC:
	cmp r3, #0xff
	bne _08048CEA
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x10
	cmp r0, #3
	bls _08048CE4
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
	bl Random
	movs r1, #0x1c
	ands r1, r0
	adds r0, r4, #0
	bl sub_08004276
_08048CE4:
	adds r0, r4, #0
	bl sub_08004274
_08048CEA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08048CEC
sub_08048CEC: @ 0x08048CEC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048D1A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _08048D1C @ =gUnk_080D2010
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
_08048D1A:
	pop {r4, pc}
	.align 2, 0
_08048D1C: .4byte gUnk_080D2010

	thumb_func_start sub_08048D20
sub_08048D20: @ 0x08048D20
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _08048D60
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0xa]
	lsls r3, r0, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _08048D64 @ =gUnk_080D1F90
	adds r1, r1, r0
	ldr r2, _08048D68 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldr r1, _08048D6C @ =gUnk_080D2010
	ldrb r0, [r4, #0xa]
	adds r0, r0, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
_08048D60:
	pop {r4, r5, pc}
	.align 2, 0
_08048D64: .4byte gUnk_080D1F90
_08048D68: .4byte gRoomControls
_08048D6C: .4byte gUnk_080D2010

	thumb_func_start sub_08048D70
sub_08048D70: @ 0x08048D70
	push {lr}
	adds r1, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048D8E
	ldr r1, [r1, #0x64]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _08048D86
	ldr r0, [r1, #0xc]
_08048D86:
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048D92
_08048D8E:
	movs r0, #1
	b _08048D94
_08048D92:
	movs r0, #0
_08048D94:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08048D98
sub_08048D98: @ 0x08048D98
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08048DA8
	bl sub_0805E780
_08048DA8:
	ldr r4, _08048E00 @ =gUnk_080D22D8
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldrb r2, [r6, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r6, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r5, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048E00: .4byte gUnk_080D22D8

	thumb_func_start sub_08048E04
sub_08048E04: @ 0x08048E04
	push {lr}
	ldr r2, _08048E18 @ =gUnk_080D22F0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08048E18: .4byte gUnk_080D22F0

	thumb_func_start sub_08048E1C
sub_08048E1C: @ 0x08048E1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0xff
	subs r0, r0, r1
	cmp r0, #0
	beq _08048E96
	ldr r4, [r5, #0x50]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r2, [r1]
	cmp r2, r0
	bls _08048E48
	subs r0, r2, r0
	strb r0, [r1]
	ldr r0, _08048E44 @ =0x00000127
	bl PlaySFX
	b _08048E5C
	.align 2, 0
_08048E44: .4byte 0x00000127
_08048E48:
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x28
	movs r1, #0
	bl sub_08080964
_08048E5C:
	adds r2, r5, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08048E8E
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r4, [r4, #0x54]
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r4, [r4, #0x54]
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r4, [r4, #0x54]
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
_08048E8E:
	adds r1, r5, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08048E96:
	ldr r1, _08048EA0 @ =gUnk_080D22D8
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08048EA0: .4byte gUnk_080D22D8

	thumb_func_start sub_08048EA4
sub_08048EA4: @ 0x08048EA4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x14]
	movs r0, #0xe0
	ands r0, r1
	lsrs r0, r0, #3
	ldrb r1, [r4, #0xa]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08048F50
	adds r0, r4, #0
	bl sub_08048F74
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048ED0
sub_08048ED0: @ 0x08048ED0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F50
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048EFC
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
_08048EFC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08048F00
sub_08048F00: @ 0x08048F00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F50
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048F2E
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_08048F2E:
	pop {r4, pc}

	thumb_func_start sub_08048F30
sub_08048F30: @ 0x08048F30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F50
	adds r0, r4, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048F4E
	bl sub_0805E780
_08048F4E:
	pop {r4, pc}

	thumb_func_start sub_08048F50
sub_08048F50: @ 0x08048F50
	push {lr}
	adds r1, r0, #0
	adds r0, #0x78
	ldrb r3, [r0]
	lsls r3, r3, #1
	ldr r0, _08048F70 @ =gUnk_080D2300
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	bl sub_0806FA90
	pop {pc}
	.align 2, 0
_08048F70: .4byte gUnk_080D2300

	thumb_func_start sub_08048F74
sub_08048F74: @ 0x08048F74
	push {lr}
	ldr r2, _08048F88 @ =gUnk_080D2348
	adds r1, r0, #0
	adds r1, #0x78
	ldrb r1, [r1]
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08004260
	pop {pc}
	.align 2, 0
_08048F88: .4byte gUnk_080D2348

	thumb_func_start sub_08048F8C
sub_08048F8C: @ 0x08048F8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08048F9C
	bl sub_0805E780
_08048F9C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08048FD4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
_08048FD4:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #5
	lsls r6, r0, #0x18
	lsrs r5, r6, #0x18
	ldrb r0, [r4, #0x14]
	cmp r5, r0
	beq _08049018
	strb r5, [r4, #0x14]
	ldr r3, _08049010 @ =gUnk_080D28CC
	lsls r1, r5, #1
	adds r1, r1, r3
	ldr r2, _08049014 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	adds r1, r5, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r2, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	lsrs r1, r6, #0x19
	adds r0, r4, #0
	bl sub_08004260
	b _0804901E
	.align 2, 0
_08049010: .4byte gUnk_080D28CC
_08049014: .4byte gRoomControls
_08049018:
	adds r0, r4, #0
	bl sub_08004274
_0804901E:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08049038
	ldr r0, _08049034 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	b _08049042
	.align 2, 0
_08049034: .4byte gLinkEntity
_08049038:
	ldr r0, _08049054 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
_08049042:
	cmp r1, r0
	bge _08049048
	adds r5, #1
_08049048:
	ldr r0, _08049058 @ =gUnk_080D28AC
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x48]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049054: .4byte gLinkEntity
_08049058: .4byte gUnk_080D28AC

	thumb_func_start sub_0804905C
sub_0804905C: @ 0x0804905C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0804907C
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
_0804907C:
	adds r1, r5, #0
	adds r1, #0x45
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _08049092
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r2, [r5, #0xd]
_08049092:
	ldr r1, _080490F8 @ =gUnk_080D2974
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r3, [r4]
	adds r0, r5, #0
	movs r1, #0xaa
	movs r2, #0xaa
	bl sub_0805EC9C
	ldrh r0, [r4]
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_080499F0
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r2, [r5, #0x18]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080490F4
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldr r1, _080490FC @ =gRoomControls
	movs r3, #0xc
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	adds r0, #0x30
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _080490F4
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #0x18]
_080490F4:
	pop {r4, r5, pc}
	.align 2, 0
_080490F8: .4byte gUnk_080D2974
_080490FC: .4byte gRoomControls

	thumb_func_start sub_08049100
sub_08049100: @ 0x08049100
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x7c
	bl sub_0807CBE4
	cmp r0, #0
	beq _08049144
	ldr r4, _08049140 @ =0x00004081
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #2
	bl sub_0800015E
	adds r0, r4, #0
	movs r1, #0x4a
	movs r2, #2
	bl sub_0800015E
	adds r0, r4, #0
	movs r1, #0x8a
	movs r2, #2
	bl sub_0800015E
	adds r0, r4, #0
	movs r1, #0xca
	movs r2, #2
	bl sub_0800015E
	bl sub_0805E780
	b _0804916E
	.align 2, 0
_08049140: .4byte 0x00004081
_08049144:
	ldr r4, _080491E8 @ =0x00000323
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #1
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0x4a
	movs r2, #1
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0x8a
	movs r2, #1
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0xca
	movs r2, #1
	bl sub_0807B7D8
_0804916E:
	movs r0, #0x22
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _080491E4
	movs r1, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r2, #0xa]
	str r5, [r2, #0x50]
	str r2, [r5, #0x54]
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x14]
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	ldrb r1, [r5, #0x19]
	movs r0, #3
	orrs r1, r0
	ldrb r2, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r5, #0x18]
	ldrb r2, [r5, #0x1b]
	movs r3, #0x3f
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ands r1, r3
	orrs r1, r2
	strb r1, [r5, #0x19]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	subs r0, #4
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
_080491E4:
	pop {r4, r5, pc}
	.align 2, 0
_080491E8: .4byte 0x00000323

	thumb_func_start sub_080491EC
sub_080491EC: @ 0x080491EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08049208 @ =gUnk_080D2988
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08049208: .4byte gUnk_080D2988

	thumb_func_start sub_0804920C
sub_0804920C: @ 0x0804920C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0804921C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08049268
_0804921C:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldr r2, _0804926C @ =gRoomControls
	ldrh r0, [r2, #6]
	ldr r1, _08049270 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _08049268
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	ldrh r0, [r2, #6]
	adds r0, #0xa8
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #8]
	subs r0, #0x40
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x78
	movs r1, #0x80
	lsls r1, r1, #8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_08049268:
	pop {r4, pc}
	.align 2, 0
_0804926C: .4byte gRoomControls
_08049270: .4byte 0xFFFFFF00

	thumb_func_start sub_08049274
sub_08049274: @ 0x08049274
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldr r0, _080492A4 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0x40
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _080492A2
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080492A2:
	pop {r4, pc}
	.align 2, 0
_080492A4: .4byte gRoomControls

	thumb_func_start sub_080492A8
sub_080492A8: @ 0x080492A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080492C4 @ =gUnk_080D2990
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_080492C4: .4byte gUnk_080D2990

	thumb_func_start sub_080492C8
sub_080492C8: @ 0x080492C8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	adds r0, r3, #0
	adds r0, #0x6e
	strb r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldr r2, _08049300 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r5, r2, #0
	cmp r1, #0xa7
	bgt _08049304
	adds r2, r3, #0
	adds r2, #0x80
	movs r0, #0xd8
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x74
	adds r0, #0x28
	b _08049314
	.align 2, 0
_08049300: .4byte gRoomControls
_08049304:
	adds r2, r3, #0
	adds r2, #0x80
	movs r0, #0x78
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x74
	movs r0, #0xff
	lsls r0, r0, #8
_08049314:
	strh r0, [r1]
	adds r4, r1, #0
	ldrh r0, [r5, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	cmp r0, #0x7f
	bgt _08049336
	adds r1, r3, #0
	adds r1, #0x82
	movs r0, #0xb0
	strh r0, [r1]
	b _08049346
_08049336:
	adds r1, r3, #0
	adds r1, #0x82
	movs r0, #0x50
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	strh r0, [r4]
_08049346:
	ldrh r0, [r5, #8]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_08049358
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08049358
sub_08049358: @ 0x08049358
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r1, [r1]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	ldrb r2, [r4, #0x15]
	subs r0, r2, r3
	adds r0, #2
	movs r1, #0xff
	ands r0, r1
	cmp r0, #4
	bls _08049398
	subs r0, r3, r2
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08049394
	subs r0, r2, #1
	b _08049396
_08049394:
	adds r0, r2, #1
_08049396:
	strb r0, [r4, #0x15]
_08049398:
	ldrb r1, [r4, #0x15]
	movs r5, #0x80
	lsls r5, r5, #1
	subs r1, r5, r1
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	movs r0, #0x24
	ldrsh r3, [r4, r0]
	asrs r3, r3, #0x10
	adds r3, #0x10
	adds r0, r4, #0
	bl sub_0806FCB8
	cmp r0, #0
	beq _080493E0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r5, [r0]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_080493E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080493E4
sub_080493E4: @ 0x080493E4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x15]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0804943A
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldr r3, _08049458 @ =gRoomControls
	ldrh r2, [r3, #6]
	adds r2, #0xa8
	ldrh r3, [r3, #8]
	adds r3, #0x80
	bl sub_080045D4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	subs r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #8
	bne _0804943A
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #7
	strb r0, [r4, #0xf]
_0804943A:
	adds r0, r4, #0
	bl sub_08049944
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}
	.align 2, 0
_08049458: .4byte gRoomControls

	thumb_func_start sub_0804945C
sub_0804945C: @ 0x0804945C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	strb r1, [r4, #0x15]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0804948C
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080494B2
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	b _080494B2
_0804948C:
	adds r0, r4, #0
	bl sub_08049A8C
	cmp r0, #0
	beq _080494B2
	movs r0, #0x23
	bl sub_080A7EE0
	adds r2, r0, #0
	cmp r2, #0
	beq _080494B2
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_080494B2:
	adds r0, r4, #0
	bl sub_08049944
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080494D0
sub_080494D0: @ 0x080494D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08049518
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _0804950E
	movs r0, #5
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x24]
	adds r0, #0x40
	strh r0, [r4, #0x24]
	b _08049534
_0804950E:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _08049534
_08049518:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bne _08049534
	bl Random
	movs r1, #3
	ands r1, r0
	movs r0, #0x62
	bl CreateEnemy
	cmp r0, #0
	beq _08049534
	str r4, [r0, #0x50]
_08049534:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08049538
sub_08049538: @ 0x08049538
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldr r0, _08049570 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0xa8
	ldrh r2, [r0, #8]
	adds r2, #0x80
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	adds r1, r0, #0
	cmp r1, #0
	bne _0804956E
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0804956E:
	pop {r4, pc}
	.align 2, 0
_08049570: .4byte gRoomControls

	thumb_func_start sub_08049574
sub_08049574: @ 0x08049574
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08049590 @ =gUnk_080D29A8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08049590: .4byte gUnk_080D29A8

	thumb_func_start sub_08049594
sub_08049594: @ 0x08049594
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080495C8 @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	subs r1, #0xa8
	subs r0, r0, r1
	ldrh r1, [r2, #8]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r2, #0x80
	subs r1, r1, r2
	bl sub_080045DA
	ldrb r2, [r4, #0x15]
	cmp r0, r2
	beq _080495D2
	subs r0, r0, r2
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080495CC
	subs r0, r2, #1
	strb r0, [r4, #0x15]
	b _080495DC
	.align 2, 0
_080495C8: .4byte gRoomControls
_080495CC:
	adds r0, r2, #1
	strb r0, [r4, #0x15]
	b _080495DC
_080495D2:
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_080495DC:
	adds r0, r4, #0
	bl sub_08049944
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08047EA4
	pop {r4, pc}

	thumb_func_start sub_080495F8
sub_080495F8: @ 0x080495F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08049654 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0xa8
	ldrh r2, [r0, #8]
	adds r2, #0x80
	adds r0, r4, #0
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804963C
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	bl Random
	ldr r2, _08049658 @ =gUnk_080D29B8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
_0804963C:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	pop {r4, pc}
	.align 2, 0
_08049654: .4byte gRoomControls
_08049658: .4byte gUnk_080D29B8

	thumb_func_start sub_0804965C
sub_0804965C: @ 0x0804965C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x76
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804969A
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0804969A:
	pop {r4, pc}

	thumb_func_start sub_0804969C
sub_0804969C: @ 0x0804969C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080496C8
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080496C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080496CC
sub_080496CC: @ 0x080496CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080496E8 @ =gUnk_080D29C0
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_080496E8: .4byte gUnk_080D29C0

	thumb_func_start sub_080496EC
sub_080496EC: @ 0x080496EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	bl sub_08079F8C
	cmp r0, #0
	beq _08049720
	ldr r0, _0804971C @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08049720
	movs r0, #2
	bl sub_08078A90
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _08049724
	.align 2, 0
_0804971C: .4byte gLinkEntity
_08049720:
	movs r0, #1
	strb r0, [r4, #0xd]
_08049724:
	adds r0, r4, #0
	bl sub_08049944
	pop {r4, pc}

	thumb_func_start sub_0804972C
sub_0804972C: @ 0x0804972C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08079F8C
	cmp r0, #0
	beq _08049750
	ldr r0, _08049758 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08049750
	movs r0, #2
	bl sub_08078A90
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xe]
_08049750:
	adds r0, r4, #0
	bl sub_08049944
	pop {r4, pc}
	.align 2, 0
_08049758: .4byte gLinkEntity

	thumb_func_start sub_0804975C
sub_0804975C: @ 0x0804975C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804977E
	movs r0, #3
	strb r0, [r1, #0xd]
	movs r0, #0xb4
	strb r0, [r1, #0xe]
	adds r0, #0x4c
	strh r0, [r1, #0x24]
	ldrb r0, [r1, #0x15]
	subs r0, #0x40
	strb r0, [r1, #0x15]
_0804977E:
	adds r0, r1, #0
	bl sub_08049944
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049788
sub_08049788: @ 0x08049788
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049AB0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080497B8
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0x15]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	b _080497C6
_080497B8:
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08049B20
_080497C6:
	adds r0, r4, #0
	bl sub_08049944
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080497D0
sub_080497D0: @ 0x080497D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049AB0
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_08049998
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049802
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r1, #0x10
	bl DoFade
_08049802:
	pop {r4, pc}

	thumb_func_start sub_08049804
sub_08049804: @ 0x08049804
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049944
	ldr r0, _0804987C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049878
	movs r0, #6
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r4, [r4, #0x54]
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x18]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r4, #0x18]
	ldr r4, [r4, #0x54]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x18]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r4, #0x18]
	ldr r4, [r4, #0x54]
	ldrb r0, [r4, #0x10]
	ands r1, r0
	strb r1, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	ands r3, r0
	strb r3, [r4, #0x18]
	ldr r4, _08049880 @ =gLinkEntity
	ldr r1, _08049884 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xa8
	movs r2, #0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x80
	strh r0, [r4, #0x32]
	strb r2, [r4, #0x14]
	bl sub_080809D4
	movs r0, #4
	movs r1, #4
	bl DoFade
_08049878:
	pop {r4, pc}
	.align 2, 0
_0804987C: .4byte gUnk_03000FD0
_08049880: .4byte gLinkEntity
_08049884: .4byte gRoomControls

	thumb_func_start sub_08049888
sub_08049888: @ 0x08049888
	push {lr}
	adds r1, r0, #0
	ldr r0, _080498B0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080498AE
	movs r0, #7
	strb r0, [r1, #0xd]
	movs r0, #0xa0
	strb r0, [r1, #0xe]
	movs r0, #0x72
	bl PlaySFX
	movs r0, #0x7c
	bl sub_0807CCC8
	movs r0, #1
	bl sub_08078A90
_080498AE:
	pop {pc}
	.align 2, 0
_080498B0: .4byte gUnk_03000FD0

	thumb_func_start sub_080498B4
sub_080498B4: @ 0x080498B4
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080498C8
	bl sub_0805E780
	b _0804993E
_080498C8:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _080498E4
	movs r0, #0x36
	movs r1, #0xca
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _080498E0 @ =0x00004081
	movs r1, #0xca
	b _0804990E
	.align 2, 0
_080498E0: .4byte 0x00004081
_080498E4:
	cmp r0, #0x18
	bne _080498FC
	movs r0, #0x36
	movs r1, #0x8a
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _080498F8 @ =0x00004081
	movs r1, #0x8a
	b _0804990E
	.align 2, 0
_080498F8: .4byte 0x00004081
_080498FC:
	cmp r0, #0x20
	bne _08049920
	movs r0, #0x36
	movs r1, #0x4a
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _0804991C @ =0x00004081
	movs r1, #0x4a
_0804990E:
	movs r2, #2
	bl sub_0800015E
	movs r0, #0x71
	bl PlaySFX
	b _0804993E
	.align 2, 0
_0804991C: .4byte 0x00004081
_08049920:
	cmp r0, #0x28
	bne _0804993E
	movs r0, #0x36
	movs r1, #0xa
	movs r2, #1
	bl sub_0807B7D8
	ldr r0, _08049940 @ =0x00004081
	movs r1, #0xa
	movs r2, #2
	bl sub_0800015E
	movs r0, #0x71
	bl PlaySFX
_0804993E:
	pop {pc}
	.align 2, 0
_08049940: .4byte 0x00004081

	thumb_func_start sub_08049944
sub_08049944: @ 0x08049944
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r3, [r4]
	lsls r2, r3, #1
	movs r1, #0x7f
	ands r2, r1
	movs r1, #0x80
	ands r1, r3
	orrs r2, r1
	strb r2, [r4]
	ldr r5, _08049990 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	movs r3, #0x20
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804998C
	ldr r2, _08049994 @ =gLinkState
	movs r0, #1
	strb r0, [r2, #0x14]
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804998C
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_0804998C:
	pop {r4, r5, pc}
	.align 2, 0
_08049990: .4byte gLinkEntity
_08049994: .4byte gLinkState

	thumb_func_start sub_08049998
sub_08049998: @ 0x08049998
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08049944
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08047EA4
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	movs r2, #0x32
	ldrsh r6, [r5, r2]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F62C
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080499EA
	bl sub_08079F8C
	cmp r0, #0
	beq _080499EA
	ldr r0, _080499EC @ =gLinkEntity
	ldrh r1, [r5, #0x2e]
	subs r1, r1, r4
	ldrh r2, [r0, #0x2e]
	adds r1, r1, r2
	strh r1, [r0, #0x2e]
	ldrh r1, [r5, #0x32]
	subs r1, r1, r6
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
_080499EA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080499EC: .4byte gLinkEntity

	thumb_func_start sub_080499F0
sub_080499F0: @ 0x080499F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08049A82
	ldr r5, _08049A84 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08049A82
	bl sub_08079F8C
	cmp r0, #0
	beq _08049A82
	adds r2, r4, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _08049A82
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	adds r0, r5, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _08049A7E
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08049A7E
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r3, _08049A88 @ =gUnk_080C9160
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #0xa
	ldr r1, [r4, #0x2c]
	adds r1, r1, r2
	str r1, [r5, #0x2c]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0xa
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r5, #0x30]
_08049A7E:
	movs r0, #0
	strb r0, [r6]
_08049A82:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049A84: .4byte gLinkEntity
_08049A88: .4byte gUnk_080C9160

	thumb_func_start sub_08049A8C
sub_08049A8C: @ 0x08049A8C
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08049AAA
	bl Random
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08049AAA
	movs r0, #1
	b _08049AAC
_08049AAA:
	movs r0, #0
_08049AAC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049AB0
sub_08049AB0: @ 0x08049AB0
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08049B18
	adds r0, r2, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08049B18
	bl Random
	movs r3, #0x30
	adds r1, r0, #0
	ands r1, r3
	ldr r5, _08049B1C @ =0x0000FFE8
	adds r2, r5, #0
	adds r1, r2, r1
	ldrh r5, [r4, #0x2e]
	adds r1, r1, r5
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08049B18:
	pop {r4, r5, pc}
	.align 2, 0
_08049B1C: .4byte 0x0000FFE8

	thumb_func_start sub_08049B20
sub_08049B20: @ 0x08049B20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08049944
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r2, #0x32
	ldrsh r6, [r4, r2]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08049B68
	bl sub_08079F8C
	cmp r0, #0
	beq _08049B68
	ldr r0, _08049B6C @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	ldrh r2, [r0, #0x2e]
	adds r1, r1, r2
	strh r1, [r0, #0x2e]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r6
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
_08049B68:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049B6C: .4byte gLinkEntity

	thumb_func_start sub_08049B70
sub_08049B70: @ 0x08049B70
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08049BB0
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #4
	ldr r1, _08049BEC @ =gUnk_080D29E0
	adds r0, r0, r1
	bl sub_080028F4
	adds r4, r5, #0
	adds r4, #0x68
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08049B9C
	bl sub_0805E780
_08049B9C:
	ldrb r0, [r4]
	cmp r0, #7
	bhi _08049BB0
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	bne _08049BB0
	movs r0, #8
	strb r0, [r4]
_08049BB0:
	adds r0, r5, #0
	bl sub_08049C2C
	cmp r0, #0
	beq _08049C20
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r1, [r0]
	cmp r1, #0
	blt _08049C16
	cmp r1, #7
	ble _08049BF0
	cmp r1, #8
	bne _08049C16
	movs r0, #0x40
	movs r1, #0x60
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08049C16
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	b _08049C16
	.align 2, 0
_08049BEC: .4byte gUnk_080D29E0
_08049BF0:
	ldr r0, _08049C24 @ =gUnk_080D2AB0
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #0x96
	movs r1, #7
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08049C16
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	ldr r0, _08049C28 @ =0x0000FFE0
	strh r0, [r4, #0x36]
_08049C16:
	adds r0, r5, #0
	bl sub_08049CF4
	bl sub_0805E780
_08049C20:
	pop {r4, r5, pc}
	.align 2, 0
_08049C24: .4byte gUnk_080D2AB0
_08049C28: .4byte 0x0000FFE0

	thumb_func_start sub_08049C2C
sub_08049C2C: @ 0x08049C2C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _08049CA4 @ =gLinkEntity
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _08049CA8
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r4, #0x2e
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	movs r5, #6
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08049C52
	movs r5, #2
_08049C52:
	adds r1, #0x28
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4f
	bhi _08049CA8
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	movs r6, #0x32
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	adds r0, r1, #0
	ands r0, r4
	rsbs r0, r0, #0
	asrs r2, r0, #0x1f
	movs r0, #4
	ands r2, r0
	adds r1, #0x28
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4f
	bhi _08049CA8
	ldrb r0, [r3, #0x14]
	cmp r0, #0
	bne _08049C86
	cmp r2, #0
	beq _08049C9E
_08049C86:
	cmp r0, #4
	bne _08049C8E
	cmp r2, #4
	beq _08049C9E
_08049C8E:
	cmp r0, #6
	bne _08049C96
	cmp r5, #6
	beq _08049C9E
_08049C96:
	cmp r0, #2
	bne _08049CA8
	cmp r5, #2
	bne _08049CA8
_08049C9E:
	movs r0, #1
	b _08049CAA
	.align 2, 0
_08049CA4: .4byte gLinkEntity
_08049CA8:
	movs r0, #0
_08049CAA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08049CAC
sub_08049CAC: @ 0x08049CAC
	push {lr}
	adds r2, r0, #0
	ldr r1, _08049CC8 @ =gUnk_080D2ABC
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08049CCC
	adds r0, r2, #0
	bl _call_via_r1
	b _08049CD0
	.align 2, 0
_08049CC8: .4byte gUnk_080D2ABC
_08049CCC:
	bl sub_0805E780
_08049CD0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049CD4
sub_08049CD4: @ 0x08049CD4
	push {r4, lr}
	movs r0, #1
	rsbs r0, r0, #0
	ldr r4, _08049CEC @ =gUnk_02024050
	adds r1, r4, #0
	movs r2, #0x40
	bl _DmaFill32
	ldr r0, _08049CF0 @ =gUnk_020354B0
	str r4, [r0]
	pop {r4, pc}
	.align 2, 0
_08049CEC: .4byte gUnk_02024050
_08049CF0: .4byte gUnk_020354B0

	thumb_func_start sub_08049CF4
sub_08049CF4: @ 0x08049CF4
	push {lr}
	adds r0, #0x6c
	ldrb r3, [r0]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08049D14
	ldr r0, _08049D18 @ =gUnk_020354B0
	ldr r2, [r0]
	movs r0, #0x1f
	ands r3, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
_08049D14:
	pop {pc}
	.align 2, 0
_08049D18: .4byte gUnk_020354B0

	thumb_func_start sub_08049D1C
sub_08049D1C: @ 0x08049D1C
	ldr r1, _08049D2C @ =gUnk_020354B0
	ldr r1, [r1]
	ldr r1, [r1, #4]
	lsrs r1, r0
	movs r0, #1
	bics r0, r1
	bx lr
	.align 2, 0
_08049D2C: .4byte gUnk_020354B0

	thumb_func_start sub_08049D30
sub_08049D30: @ 0x08049D30
	push {r4, r5, r6, lr}
	ldr r1, _08049D58 @ =gUnk_020354B0
	ldr r0, _08049D5C @ =gUnk_02024050
	str r0, [r1]
	adds r5, r1, #0
	ldr r6, _08049D60 @ =gRoomControls
	ldr r4, _08049D64 @ =0x0000FFFF
_08049D3E:
	ldr r3, [r5]
	ldrh r0, [r3]
	ldrh r2, [r6, #4]
	adds r1, r4, #0
	ands r1, r0
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	bne _08049D68
	adds r0, r3, #0
	bl sub_08049DCC
	b _08049D7C
	.align 2, 0
_08049D58: .4byte gUnk_020354B0
_08049D5C: .4byte gUnk_02024050
_08049D60: .4byte gRoomControls
_08049D64: .4byte 0x0000FFFF
_08049D68:
	adds r1, r3, #0
	adds r1, #8
	str r1, [r5]
	ldr r0, _08049D80 @ =gUnk_02024090
	cmp r1, r0
	blo _08049D3E
	bl sub_08049D88
	ldr r1, _08049D84 @ =gUnk_020354B0
	str r0, [r1]
_08049D7C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049D80: .4byte gUnk_02024090
_08049D84: .4byte gUnk_020354B0

	thumb_func_start sub_08049D88
sub_08049D88: @ 0x08049D88
	push {r4, r5, lr}
	ldr r4, _08049DC0 @ =gUnk_02024050
	adds r1, r4, #0
	adds r1, #8
	ldr r3, _08049DC4 @ =gRoomControls
	adds r2, r4, #0
	adds r2, #0x40
_08049D96:
	ldrh r0, [r1, #2]
	ldrh r5, [r4, #2]
	cmp r0, r5
	bls _08049DA0
	adds r4, r1, #0
_08049DA0:
	adds r1, #8
	cmp r1, r2
	blo _08049D96
	ldrb r0, [r3, #4]
	movs r1, #0
	strb r0, [r4]
	ldrb r0, [r3, #5]
	strb r0, [r4, #1]
	ldr r0, _08049DC8 @ =0x0000FFFF
	strh r0, [r4, #2]
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_08049DCC
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_08049DC0: .4byte gUnk_02024050
_08049DC4: .4byte gRoomControls
_08049DC8: .4byte 0x0000FFFF

	thumb_func_start sub_08049DCC
sub_08049DCC: @ 0x08049DCC
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, _08049DF0 @ =gUnk_02024050
	adds r3, r1, #0
	adds r3, #0x40
_08049DD6:
	ldrh r0, [r1, #2]
	ldrh r4, [r2, #2]
	cmp r0, r4
	bhs _08049DE2
	adds r0, #1
	strh r0, [r1, #2]
_08049DE2:
	adds r1, #8
	cmp r1, r3
	blo _08049DD6
	movs r0, #0
	strh r0, [r2, #2]
	pop {r4, pc}
	.align 2, 0
_08049DF0: .4byte gUnk_02024050

	thumb_func_start sub_08049DF4
sub_08049DF4: @ 0x08049DF4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08049E10 @ =gUnk_020000B0
	ldr r0, [r0]
	cmp r0, #0
	bne _08049E0C
	ldr r1, _08049E14 @ =gUnk_080D3BE8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_08049E0C:
	pop {pc}
	.align 2, 0
_08049E10: .4byte gUnk_020000B0
_08049E14: .4byte gUnk_080D3BE8

	thumb_func_start sub_08049E18
sub_08049E18: @ 0x08049E18
	push {lr}
	ldr r1, _08049E38 @ =gLinkState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E48
	ldr r0, [r1, #0x30]
	ldr r1, _08049E3C @ =0x22189B75
	ands r0, r1
	cmp r0, #0
	bne _08049E48
	ldr r1, _08049E40 @ =gUnk_020000B0
	ldr r0, _08049E44 @ =gLinkEntity
	str r0, [r1]
	b _08049E4A
	.align 2, 0
_08049E38: .4byte gLinkState
_08049E3C: .4byte 0x22189B75
_08049E40: .4byte gUnk_020000B0
_08049E44: .4byte gLinkEntity
_08049E48:
	movs r0, #0
_08049E4A:
	pop {pc}

	thumb_func_start sub_08049E4C
sub_08049E4C: @ 0x08049E4C
	push {lr}
	ldr r1, _08049E6C @ =gLinkState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E7C
	ldr r0, [r1, #0x30]
	ldr r1, _08049E70 @ =0x22189BF5
	ands r0, r1
	cmp r0, #0
	bne _08049E7C
	ldr r1, _08049E74 @ =gUnk_020000B0
	ldr r0, _08049E78 @ =gLinkEntity
	str r0, [r1]
	b _08049E7E
	.align 2, 0
_08049E6C: .4byte gLinkState
_08049E70: .4byte 0x22189BF5
_08049E74: .4byte gUnk_020000B0
_08049E78: .4byte gLinkEntity
_08049E7C:
	movs r0, #0
_08049E7E:
	pop {pc}

	thumb_func_start sub_08049E80
sub_08049E80: @ 0x08049E80
	push {lr}
	ldr r1, _08049E9C @ =gLinkState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E98
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08049EA0
_08049E98:
	movs r0, #0
	b _08049EA6
	.align 2, 0
_08049E9C: .4byte gLinkState
_08049EA0:
	ldr r1, _08049EA8 @ =gUnk_020000B0
	ldr r0, _08049EAC @ =gLinkEntity
	str r0, [r1]
_08049EA6:
	pop {pc}
	.align 2, 0
_08049EA8: .4byte gUnk_020000B0
_08049EAC: .4byte gLinkEntity

	thumb_func_start sub_08049EB0
sub_08049EB0: @ 0x08049EB0
	push {lr}
	ldr r1, _08049ED0 @ =gLinkState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049EE0
	ldr r0, [r1, #0x30]
	ldr r1, _08049ED4 @ =0x00080190
	ands r0, r1
	cmp r0, #0
	bne _08049EE0
	ldr r1, _08049ED8 @ =gUnk_020000B0
	ldr r0, _08049EDC @ =gLinkEntity
	str r0, [r1]
	b _08049EE2
	.align 2, 0
_08049ED0: .4byte gLinkState
_08049ED4: .4byte 0x00080190
_08049ED8: .4byte gUnk_020000B0
_08049EDC: .4byte gLinkEntity
_08049EE0:
	movs r0, #0
_08049EE2:
	pop {pc}

	thumb_func_start sub_08049EE4
sub_08049EE4: @ 0x08049EE4
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x70
	mov r1, ip
	adds r1, #0x6e
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldrh r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, #4
	mov r0, ip
	adds r0, #0x6f
	ldrb r3, [r0]
	lsls r3, r3, #2
	ldrh r1, [r1]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, ip
	movs r4, #0x2e
	ldrsh r0, [r1, r4]
	movs r5, #0x32
	ldrsh r1, [r1, r5]
	bl sub_080045D4
	pop {r4, r5, pc}

	thumb_func_start sub_08049F1C
sub_08049F1C: @ 0x08049F1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	adds r0, #0x38
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08049F5E
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	adds r3, r5, #0
	muls r3, r5, r3
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	cmp r3, r0
	blt _08049F5E
	movs r0, #1
	b _08049F60
_08049F5E:
	movs r0, #0
_08049F60:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08049F64
sub_08049F64: @ 0x08049F64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _08049F80
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08049F1C
	b _08049F82
_08049F80:
	movs r0, #0
_08049F82:
	pop {r4, r5, pc}

	thumb_func_start sub_08049F84
sub_08049F84: @ 0x08049F84
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _08049F9C
	adds r0, r4, #0
	bl sub_080045C4
	b _08049F9E
_08049F9C:
	movs r0, #0xff
_08049F9E:
	pop {r4, pc}

	thumb_func_start sub_08049FA0
sub_08049FA0: @ 0x08049FA0
	push {lr}
	adds r3, r0, #0
	adds r0, #0x6e
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	adds r1, r3, #0
	adds r1, #0x70
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _08049FD6
	adds r0, r3, #0
	adds r0, #0x6f
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	adds r1, r3, #0
	adds r1, #0x72
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _08049FD6
	movs r0, #1
	b _08049FD8
_08049FD6:
	movs r0, #0
_08049FD8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049FDC
sub_08049FDC: @ 0x08049FDC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl sub_08049DF4
	adds r3, r0, #0
	cmp r3, #0
	beq _0804A020
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0804A020
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0804A020
	movs r0, #1
	b _0804A022
_0804A020:
	movs r0, #0
_0804A022:
	pop {r4, pc}

	thumb_func_start sub_0804A024
sub_0804A024: @ 0x0804A024
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _0804A040
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0804A044
	b _0804A042
_0804A040:
	movs r0, #0xff
_0804A042:
	pop {r4, r5, pc}

	thumb_func_start sub_0804A044
sub_0804A044: @ 0x0804A044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	mov r0, r8
	adds r0, #0x38
	movs r1, #0x38
	adds r1, r1, r7
	mov sl, r1
	ldrb r1, [r0]
	mov r3, sl
	ldrb r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0804A15A
	movs r5, #0
	mov r0, r8
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	ldr r0, [r0, #0x48]
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r4, [r7, #0x48]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r6, r1, r0
	lsrs r3, r2, #1
	adds r0, r6, r3
	cmp r2, r0
	blo _0804A096
	movs r5, #1
_0804A096:
	lsls r0, r2, #1
	mov sb, r0
	adds r0, r6, r2
	cmp sb, r0
	blo _0804A0A4
	movs r0, #2
	orrs r5, r0
_0804A0A4:
	mov r1, r8
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	str r1, [sp]
	mov r1, ip
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	ldr r0, [sp]
	add r0, ip
	str r0, [sp]
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	subs r0, r0, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	subs r4, r0, r1
	adds r0, r4, r3
	cmp r2, r0
	blo _0804A0D4
	movs r0, #4
	orrs r5, r0
_0804A0D4:
	adds r0, r4, r2
	cmp sb, r0
	blo _0804A0DE
	movs r0, #8
	orrs r5, r0
_0804A0DE:
	cmp r5, #0
	beq _0804A15A
	movs r0, #5
	ands r0, r5
	cmp r0, #0xa
	beq _0804A15A
	mov r1, sl
	ldrb r0, [r1]
	bl sub_0808094C
	mov sb, r0
	cmp r6, #0
	bge _0804A0FA
	rsbs r6, r6, #0
_0804A0FA:
	cmp r4, #0
	bge _0804A100
	rsbs r4, r4, #0
_0804A100:
	cmp r6, r4
	bge _0804A12E
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804A11A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A168
	cmp r0, #0xff
	bne _0804A15C
_0804A11A:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _0804A15A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A318
	b _0804A156
_0804A12E:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0804A144
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A318
	cmp r0, #0xff
	bne _0804A15C
_0804A144:
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0804A15A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A168
_0804A156:
	cmp r0, #0xff
	bne _0804A15C
_0804A15A:
	movs r0, #0xff
_0804A15C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A168
sub_0804A168: @ 0x0804A168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0804A248
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r0, #4
	movs r0, #0xf
	mov sl, r0
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	movs r7, #5
	cmp r0, #7
	bhi _0804A19E
	movs r7, #0xa
_0804A19E:
	ldr r3, _0804A240 @ =gRoomControls
	mov r8, r3
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	mov ip, r3
	mov r2, ip
	subs r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	mov r3, ip
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A244 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	bne _0804A1EC
	b _0804A308
_0804A1EC:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r2, r0, #4
	mov r3, sl
	eors r7, r3
	mov r0, r8
	ldrh r1, [r0, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	mov r4, r8
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	subs r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A244 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r0, #0x10
	b _0804A30A
	.align 2, 0
_0804A240: .4byte gRoomControls
_0804A244: .4byte 0x00002004
_0804A248:
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r0, #4
	adds r0, r2, #0
	movs r1, #0xf
	ands r0, r1
	movs r7, #5
	cmp r0, #7
	bhi _0804A25C
	movs r7, #0xa
_0804A25C:
	ldr r3, _0804A300 @ =gRoomControls
	mov r8, r3
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	mov sl, r3
	mov r2, sl
	adds r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	mov r3, sl
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A304 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	rsbs r2, r2, #0
	mov sl, r2
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	adds r2, r0, #4
	movs r0, #0xf
	eors r7, r0
	mov r3, r8
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	adds r2, r3, #0
	adds r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r4, sb
	movs r2, #0x32
	ldrsh r4, [r4, r2]
	subs r2, r4, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r3, _0804A304 @ =0x00002004
	adds r0, r0, r3
	adds r0, r5, r0
	adds r1, r1, r3
	adds r1, r5, r1
	mov r2, sl
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r0, #0
	b _0804A30A
	.align 2, 0
_0804A300: .4byte gRoomControls
_0804A304: .4byte 0x00002004
_0804A308:
	movs r0, #0xff
_0804A30A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804A318
sub_0804A318: @ 0x0804A318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sl, r1
	adds r6, r2, #0
	movs r0, #0x2e
	ldrsh r1, [r1, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0804A3F0
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r4, r0, #4
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	movs r2, #3
	mov r8, r2
	cmp r0, #7
	bhi _0804A34C
	movs r0, #0xc
	mov r8, r0
_0804A34C:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0804A3E8 @ =gRoomControls
	mov sb, r2
	ldrh r3, [r2, #6]
	adds r1, r3, #0
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r7, #0x3f
	ands r0, r7
	ldrh r2, [r2, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r1, #0x2e
	ldrsh r4, [r4, r1]
	subs r1, r4, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A3EC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	bne _0804A394
	b _0804A4B0
_0804A394:
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	adds r4, r0, #4
	mov r0, r8
	movs r1, #0xf
	eors r0, r1
	mov r8, r0
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	mov r5, sb
	ldrh r3, [r5, #6]
	adds r1, r3, #0
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	ldrh r2, [r5, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A3EC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r0, #8
	b _0804A4B2
	.align 2, 0
_0804A3E8: .4byte gRoomControls
_0804A3EC: .4byte 0x00002004
_0804A3F0:
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r4, r0, #4
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	movs r2, #3
	mov r8, r2
	cmp r0, #7
	bhi _0804A408
	movs r0, #0xc
	mov r8, r0
_0804A408:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0804A4A8 @ =gRoomControls
	mov sb, r2
	ldrh r3, [r2, #6]
	adds r1, r3, #0
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r7, #0x3f
	ands r0, r7
	ldrh r2, [r2, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r1, #0x2e
	ldrsh r4, [r4, r1]
	subs r1, r4, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A4AC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	adds r4, r0, #4
	mov r0, r8
	movs r1, #0xf
	eors r0, r1
	mov r8, r0
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	mov r5, sb
	ldrh r3, [r5, #6]
	adds r1, r3, #0
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	ldrh r2, [r5, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A4AC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r0, #0x18
	b _0804A4B2
	.align 2, 0
_0804A4A8: .4byte gRoomControls
_0804A4AC: .4byte 0x00002004
_0804A4B0:
	movs r0, #0xff
_0804A4B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A4BC
sub_0804A4BC: @ 0x0804A4BC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, r1
	beq _0804A4DE
_0804A4C4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804A4D8
	cmp r0, #0xf
	bhi _0804A4D4
	ands r0, r3
	cmp r0, #0
	beq _0804A4D8
_0804A4D4:
	movs r0, #0
	b _0804A4E0
_0804A4D8:
	adds r4, r4, r2
	cmp r4, r1
	bne _0804A4C4
_0804A4DE:
	movs r0, #1
_0804A4E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804A4E4
sub_0804A4E4: @ 0x0804A4E4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x6d
	ldrb r1, [r7]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	movs r1, #4
	adds r2, r6, #0
	adds r2, #0x6d
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x6c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0806FA6C
	ldrb r0, [r7]
	ands r4, r0
	cmp r4, #0
	beq _0804A550
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08058800
_0804A550:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804A554
sub_0804A554: @ 0x0804A554
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #4
	ldr r1, _0804A574 @ =gUnk_080D2C58
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _0804A578 @ =0x0000FFFF
	cmp r1, r0
	bne _0804A570
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #4
	ldr r1, [r2, #4]
	adds r2, r1, r0
_0804A570:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0804A574: .4byte gUnk_080D2C58
_0804A578: .4byte 0x0000FFFF

	thumb_func_start sub_0804A57C
sub_0804A57C: @ 0x0804A57C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A58C
	b _0804A6B6
_0804A58C:
	adds r0, r4, #0
	bl sub_0804A554
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804A6C0
	cmp r0, #0
	bne _0804A5A4
	movs r0, #0
	b _0804A6B8
_0804A5A4:
	ldrb r1, [r4, #0x10]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r4, #0x10]
	ldrb r1, [r5, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804A5BE
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #0x10]
_0804A5BE:
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x12]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bne _0804A5DA
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0804A5DA:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	movs r6, #7
	lsrs r1, r1, #0x1a
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #0xa]
	movs r7, #3
	lsrs r1, r1, #6
	lsls r1, r1, #4
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804A612
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
_0804A612:
	ldrb r0, [r5, #0xf]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r0, [r5, #0xe]
	adds r1, #4
	strb r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #0x48]
	ldrb r0, [r5, #0xb]
	adds r2, r4, #0
	adds r2, #0x45
	strb r0, [r2]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804A638
	movs r0, #0x41
	strb r0, [r1]
_0804A638:
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r5, r4, #0
	adds r5, #0x6d
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A6B6
	ldr r2, _0804A6BC @ =gUnk_080D3E74
	ldrb r1, [r4, #9]
	lsrs r0, r1, #3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ands r6, r1
	lsls r0, r6, #1
	asrs r2, r0
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _0804A6B6
	subs r1, r2, #1
	movs r0, #0xa9
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0804A6B6
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0xe]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r2, #0xf]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r3]
	str r4, [r2, #0x50]
	adds r0, r4, #0
	adds r1, r2, #0
	bl CopyPosition
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
_0804A6B6:
	movs r0, #1
_0804A6B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804A6BC: .4byte gUnk_080D3E74

	thumb_func_start sub_0804A6C0
sub_0804A6C0: @ 0x0804A6C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	cmp r1, #0
	beq _0804A712
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0804A6E8
	ldr r0, _0804A6E4 @ =0x000003FF
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	b _0804A712
	.align 2, 0
_0804A6E4: .4byte 0x000003FF
_0804A6E8:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0804A702
	lsrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _0804A70A
_0804A702:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_080ADF80
_0804A70A:
	cmp r0, #0
	bne _0804A712
	movs r0, #0
	b _0804A71C
_0804A712:
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl sub_0801D040
	movs r0, #1
_0804A71C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804A720
sub_0804A720: @ 0x0804A720
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804A7D0
	ldrb r0, [r2, #9]
	lsls r0, r0, #1
	ldr r1, _0804A76C @ =gUnk_080D3D94
	adds r3, r0, r1
	adds r4, r2, #0
	adds r4, #0x68
	ldrb r1, [r4, #0x16]
	cmp r1, #0
	bne _0804A744
	ldrb r1, [r3]
_0804A744:
	adds r0, r2, #0
	adds r0, #0x6e
	strb r1, [r0]
	adds r5, r0, #0
	ldrb r1, [r4, #0x17]
	cmp r1, #0
	bne _0804A754
	ldrb r1, [r3, #1]
_0804A754:
	adds r0, r2, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r6, r0, #0
	ldrh r1, [r4, #0x1c]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A774
	ldr r0, _0804A770 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r0, r1, r0
	b _0804A784
	.align 2, 0
_0804A76C: .4byte gUnk_080D3D94
_0804A770: .4byte gRoomControls
_0804A774:
	ldrb r0, [r5]
	lsls r1, r0, #2
	movs r5, #0x2e
	ldrsh r0, [r2, r5]
	cmp r0, r1
	blt _0804A78C
	ldrh r0, [r2, #0x2e]
	subs r0, r0, r1
_0804A784:
	adds r1, r2, #0
	adds r1, #0x70
	strh r0, [r1]
	b _0804A792
_0804A78C:
	adds r0, r2, #0
	adds r0, #0x70
	strh r3, [r0]
_0804A792:
	ldrh r1, [r4, #0x1e]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A7A8
	ldr r0, _0804A7A4 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, r1, r0
	b _0804A7B8
	.align 2, 0
_0804A7A4: .4byte gRoomControls
_0804A7A8:
	ldrb r0, [r6]
	lsls r1, r0, #2
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r0, r1
	blt _0804A7C0
	ldrh r0, [r2, #0x32]
	subs r0, r0, r1
_0804A7B8:
	adds r1, r2, #0
	adds r1, #0x72
	strh r0, [r1]
	b _0804A7C6
_0804A7C0:
	adds r0, r2, #0
	adds r0, #0x72
	strh r3, [r0]
_0804A7C6:
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_0804A7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0804A7D4
sub_0804A7D4: @ 0x0804A7D4
	push {lr}
	ldrb r1, [r0, #9]
	movs r2, #0
	bl sub_0804A7E0
	pop {pc}

	thumb_func_start sub_0804A7E0
sub_0804A7E0: @ 0x0804A7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r1
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x6d
	ldrb r1, [r6]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804A864
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A80A
	b _0804A982
_0804A80A:
	ldrb r1, [r5, #9]
	movs r0, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _0804A81C
	b _0804A982
_0804A81C:
	adds r0, #0x6c
	strb r7, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl PositionRelative
	str r5, [r4, #0x50]
	ldrb r1, [r6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #9]
	cmp r0, #0x37
	bne _0804A84A
	ldr r0, _0804A85C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A84A
	bl sub_0805E780
_0804A84A:
	bl sub_0807CD9C
	ldr r0, _0804A860 @ =0x80100000
	bl PlaySFX
	bl sub_0805E780
	b _0804A982
	.align 2, 0
_0804A85C: .4byte gUnk_030010A0
_0804A860: .4byte 0x80100000
_0804A864:
	adds r4, r5, #0
	adds r4, #0x3a
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0
	bne _0804A934
	adds r0, r5, #0
	bl sub_08049CF4
	ldr r1, _0804A8E8 @ =gUnk_02002A40
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	ldrb r0, [r4]
	movs r7, #0
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0xff
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r1, [r5, #9]
	movs r0, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A8CA
	adds r0, #0x6c
	mov r2, r8
	strb r2, [r0]
	adds r0, #1
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	mov r2, sl
	strb r2, [r0]
	str r5, [r4, #0x50]
	str r5, [r4, #0x54]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_0804A8CA:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804A8EC
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_0805E7BC
	b _0804A982
	.align 2, 0
_0804A8E8: .4byte gUnk_02002A40
_0804A8EC:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	bne _0804A934
	ldrb r0, [r5, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _0804A91A
	cmp r1, #2
	bne _0804A92A
	cmp r4, #0
	beq _0804A92A
	adds r1, r4, #0
	adds r1, #0x6c
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	b _0804A92A
_0804A91A:
	cmp r4, #0
	beq _0804A92A
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0804A92A:
	movs r0, #0
	str r0, [r4, #0x50]
	bl sub_0805E780
	b _0804A982
_0804A934:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0804A940
	bl sub_0805E780
	b _0804A982
_0804A940:
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0804A95E
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805E3A0
	b _0804A982
_0804A95E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _0804A982
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _0804A976
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	b _0804A980
_0804A976:
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
_0804A980:
	strb r0, [r5, #0x18]
_0804A982:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A98C
sub_0804A98C: @ 0x0804A98C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A9A8
	strb r5, [r4, #0xa]
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
_0804A9A8:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0804A9AC
sub_0804A9AC: @ 0x0804A9AC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov ip, r3
	ldr r4, [r5, #0x68]
	cmp r4, #0
	beq _0804A9FA
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	adds r0, r0, r7
	strh r0, [r4, #0x32]
	ldrh r0, [r5, #0x36]
	add r0, ip
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0804A9FA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A9FC
sub_0804A9FC: @ 0x0804A9FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _0804AA16
	adds r0, r4, #0
	movs r2, #0
	bl CreateFX
	cmp r0, #0
	beq _0804AA16
	str r0, [r4, #0x68]
	b _0804AA18
_0804AA16:
	movs r0, #0
_0804AA18:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804AA1C
sub_0804AA1C: @ 0x0804AA1C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	cmp r1, #0
	beq _0804AA2C
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x68]
_0804AA2C:
	pop {pc}
	.align 2, 0