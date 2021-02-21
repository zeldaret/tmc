	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MazaalHead
MazaalHead: @ 0x08033ED4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08033EEC @ =gUnk_080CEC88
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08033EEC: .4byte gUnk_080CEC88

	thumb_func_start sub_08033EF0
sub_08033EF0: @ 0x08033EF0
	push {lr}
	ldr r2, _08033F04 @ =gUnk_080CECA0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08033F04: .4byte gUnk_080CECA0

	thumb_func_start sub_08033F08
sub_08033F08: @ 0x08033F08
	push {lr}
	ldr r1, _08033F14 @ =gUnk_080CEC88
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08033F14: .4byte gUnk_080CEC88

	thumb_func_start nullsub_160
nullsub_160: @ 0x08033F18
	bx lr
	.align 2, 0

	thumb_func_start sub_08033F1C
sub_08033F1C: @ 0x08033F1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08033F38 @ =gUnk_080CECB4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803499C
	pop {r4, pc}
	.align 2, 0
_08033F38: .4byte gUnk_080CECB4

	thumb_func_start sub_08033F3C
sub_08033F3C: @ 0x08033F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033F64 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08033FFA
	ldr r0, _08033F68 @ =gScreenTransition
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033F6C
	adds r0, r4, #0
	bl sub_08034420
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	b _08033F70
	.align 2, 0
_08033F64: .4byte gEntCount
_08033F68: .4byte gScreenTransition
_08033F6C:
	movs r0, #1
	strb r0, [r4, #0xc]
_08033F70:
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
	adds r0, #0x80
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	movs r0, #0x36
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r4, [r5, #0x50]
	movs r0, #0x7e
	movs r1, #0
	movs r2, #0
	bl CreateObject
	str r4, [r0, #0x50]
	ldr r0, _08033FD0 @ =gScreenTransition
	adds r0, #0x39
	ldrb r1, [r0]
	cmp r1, #0
	bne _08033FD4
	movs r0, #0xd
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0xfc
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08033FFA
	.align 2, 0
_08033FD0: .4byte gScreenTransition
_08033FD4:
	movs r0, #0x44
	movs r1, #0
	bl CreateEnemy
	str r4, [r0, #0x50]
	str r4, [r0, #0x78]
	str r0, [r4, #0x74]
	movs r0, #0x44
	movs r1, #1
	bl CreateEnemy
	str r4, [r0, #0x50]
	str r5, [r0, #0x78]
	str r0, [r4, #0x78]
	movs r0, #0x36
	movs r1, #4
	bl CreateEnemy
	str r4, [r0, #0x50]
_08033FFA:
	pop {r4, r5, pc}
	
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
	bl UnloadOBJPalette
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
	ldr r1, _080340C0 @ =gScreen
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
_080340C0: .4byte gScreen
_080340C4:
	ldrb r1, [r3, #0xe]
	adds r1, #1
	strb r1, [r3, #0xe]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x19
	ldr r4, _08034110 @ =gScreen
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
_08034110: .4byte gScreen
_08034114:
	ldr r0, [r3, #0x74]
	ldrb r1, [r0, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803413E
	ldr r1, _08034140 @ =gRoomControls
	ldr r0, _08034144 @ =gPlayerEntity
	str r0, [r1, #0x30]
	adds r0, r3, #0
	bl sub_08034420
	ldr r0, _08034148 @ =gPlayerState
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
_08034144: .4byte gPlayerEntity
_08034148: .4byte gPlayerState

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
	bl CreateFx
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
	ldr r0, _0803445C @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhi _08034460
	adds r0, r2, #0
	bl sub_080344BC
	b _08034472
	.align 2, 0
_0803445C: .4byte gScreenTransition
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
	ldr r0, _08034760 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	adds r2, r0, #0
	subs r2, #0x60
	b _08034776
	.align 2, 0
_08034760: .4byte gPlayerEntity
_08034764:
	ldr r0, [r3, #0x78]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034790 @ =gPlayerEntity
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
_08034790: .4byte gPlayerEntity
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
	ldr r0, _080347D8 @ =gPlayerEntity
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
_080347D8: .4byte gPlayerEntity
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
	bl InitializeAnimation
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
	bl DeleteEntity
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
	bl InitializeAnimation
_08034ABA:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
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
	bl InitializeAnimation
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
	bl GetNextFrame
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
	bl InitializeAnimation
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
	bl GetNextFrame
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
	bl DeleteEntity
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
	bl InitializeAnimation
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
	ldr r0, _08034C44 @ =gPlayerState
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
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08034C5A
	ldr r0, _08034C4C @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _08034C54
	ldr r0, _08034C50 @ =gUnk_080CED88
	bl DoExitTransition
	b _08034C5A
	.align 2, 0
_08034C44: .4byte gPlayerState
_08034C48: .4byte gRoomControls
_08034C4C: .4byte gScreenTransition
_08034C50: .4byte gUnk_080CED88
_08034C54:
	ldr r0, _08034C5C @ =gUnk_080CED9C
	bl DoExitTransition
_08034C5A:
	pop {r4, pc}
	.align 2, 0
_08034C5C: .4byte gUnk_080CED9C
