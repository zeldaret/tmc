	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Puffstool
Puffstool: @ 0x08024FE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08025004 @ =gUnk_080CBF9C
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_08025004: .4byte gUnk_080CBF9C

	thumb_func_start sub_08025008
sub_08025008: @ 0x08025008
	push {lr}
	ldr r2, _0802501C @ =gUnk_080CBFB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802501C: .4byte gUnk_080CBFB4

	thumb_func_start sub_08025020
sub_08025020: @ 0x08025020
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080250C2
	cmp r1, #3
	ble _0802510C
	cmp r1, #0x1b
	bne _080250C2
	adds r0, r4, #0
	bl sub_0804AA1C
	ldr r1, _08025058 @ =gUnk_080CBFE8
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r1, r0
	bhs _0802505C
	subs r0, r0, r1
	strb r0, [r3]
	b _08025078
	.align 2, 0
_08025058: .4byte gUnk_080CBFE8
_0802505C:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #0x45
	movs r0, #0x83
	strb r0, [r1]
	strb r2, [r3]
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
_08025078:
	movs r2, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802508A
	str r2, [r4, #0x20]
_0802508A:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802510C
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5]
	b _0802510C
_080250C2:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x82
	bne _0802510C
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802510C
	movs r0, #0x21
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08025104
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r1, r2, #0
	bl CopyPosition
_08025104:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
_0802510C:
	ldr r1, _08025118 @ =gUnk_080CBF9C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08025118: .4byte gUnk_080CBF9C

	thumb_func_start sub_0802511C
sub_0802511C: @ 0x0802511C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025142
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08025142
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025142
	adds r0, r4, #0
	bl sub_08025B18
_08025142:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802514C
sub_0802514C: @ 0x0802514C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08025178
	ldr r0, _08025174 @ =gUnk_080CBFEC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802517E
	.align 2, 0
_08025174: .4byte gUnk_080CBFEC
_08025178:
	adds r0, r4, #0
	bl sub_08025C2C
_0802517E:
	pop {r4, pc}

	thumb_func_start sub_08025180
sub_08025180: @ 0x08025180
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	bl Random
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0x15]
	movs r1, #0x10
	eors r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0804AA1C
	pop {r4, pc}

	thumb_func_start sub_080251AC
sub_080251AC: @ 0x080251AC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r0, #3
	bls _080251D8
	subs r0, #3
	strb r0, [r3]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080251F4
	adds r0, r4, #0
	bl sub_08025BD4
	b _080251F4
_080251D8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #0x45
	movs r0, #0x83
	strb r0, [r1]
	strb r2, [r3]
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
_080251F4:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_080251FC
sub_080251FC: @ 0x080251FC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r1, r4, #0
	adds r1, #0x82
	movs r5, #0
	movs r0, #0xf0
	strb r0, [r1]
	bl Random
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08025230
sub_08025230: @ 0x08025230
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025242
	subs r0, #1
	strb r0, [r1]
_08025242:
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025270
	bl Random
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08025C60
	strb r0, [r4, #0x15]
_08025270:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802528C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _08025290
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	b _08025290
_0802528C:
	movs r0, #0x1e
	strb r0, [r4, #0xf]
_08025290:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	bne _080252D8
	adds r0, r4, #0
	bl sub_0802571C
	cmp r0, #0
	beq _080252DC
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080252D4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x86
	strh r1, [r0]
	b _080252DC
	.align 2, 0
_080252D4: .4byte gRoomControls
_080252D8:
	subs r0, #1
	strh r0, [r1]
_080252DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080252E0
sub_080252E0: @ 0x080252E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x7c
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x7e
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl GetNextFrame
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08025348 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r2, [r0]
	cmp r5, r2
	bne _0802534C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025352
	adds r0, r4, #0
	bl sub_080256B4
	b _08025352
	.align 2, 0
_08025348: .4byte gRoomControls
_0802534C:
	strh r5, [r0]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
_08025352:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r1, r0
	bne _08025388
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	cmp r0, r1
	bne _08025388
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08025388:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802538C
sub_0802538C: @ 0x0802538C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802539C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080253CC
_0802539C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080253AE
	adds r0, r4, #0
	bl GetNextFrame
	b _080253CC
_080253AE:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r1, [r4, #0x20]
	ldr r0, _080253D0 @ =0x00001FFF
	cmp r1, r0
	bgt _080253CC
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_080253CC:
	pop {r4, pc}
	.align 2, 0
_080253D0: .4byte 0x00001FFF

	thumb_func_start sub_080253D4
sub_080253D4: @ 0x080253D4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0802541A
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080253FE
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	b _0802541A
_080253FE:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08025A54
	adds r0, r4, #0
	bl sub_08025AE8
_0802541A:
	pop {r4, pc}

	thumb_func_start sub_0802541C
sub_0802541C: @ 0x0802541C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025448
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08025448:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802544C
sub_0802544C: @ 0x0802544C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08025460
	adds r0, r4, #0
	bl GetNextFrame
	b _0802547A
_08025460:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802547A
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0802547A:
	pop {r4, pc}

	thumb_func_start sub_0802547C
sub_0802547C: @ 0x0802547C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r1, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802549E
	adds r0, r4, #0
	bl sub_08025BD4
_0802549E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080254B0
	adds r0, r4, #0
	bl sub_08025C2C
_080254B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080254B4
sub_080254B4: @ 0x080254B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802550C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08025512
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _080254F6
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #0x43
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080256B4
	b _08025502
_080254F6:
	movs r0, #0xc
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08025502:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _08025512
_0802550C:
	adds r0, r4, #0
	bl GetNextFrame
_08025512:
	pop {r4, pc}

	thumb_func_start sub_08025514
sub_08025514: @ 0x08025514
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0802594C
	cmp r0, #0
	beq _08025542
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x78
	strb r0, [r1]
	b _08025550
_08025542:
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	bls _08025550
	movs r0, #0xa
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xe]
_08025550:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08025554
sub_08025554: @ 0x08025554
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	bne _0802556C
	adds r0, r4, #0
	bl sub_080256B4
	b _080255A8
_0802556C:
	ldrb r1, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025580
	adds r0, r2, #0
	adds r1, r4, #0
	bl GetFacingDirection
	strb r0, [r4, #0x15]
_08025580:
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08025598
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080255A8
_08025598:
	adds r0, r4, #0
	bl sub_080258C4
	cmp r0, #0
	bne _080255A8
	adds r0, r4, #0
	bl sub_080256B4
_080255A8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080255AC
sub_080255AC: @ 0x080255AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r6, r0, #0
	cmp r6, #0
	bne _080255C4
	adds r0, r5, #0
	bl sub_080256B4
	b _08025638
_080255C4:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _080255D2
	subs r0, #1
	strb r0, [r1]
_080255D2:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802560C
	bl Random
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0xe]
	bl Random
	adds r4, r0, #0
	movs r0, #0xf
	ands r4, r0
	cmp r4, #7
	bgt _080255FA
	subs r4, #1
_080255FA:
	subs r4, #7
	adds r0, r6, #0
	adds r1, r5, #0
	bl GetFacingDirection
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_0802560C:
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	bne _08025628
	adds r0, r5, #0
	bl sub_080258C4
	cmp r0, #0
	bne _0802562C
	adds r0, r5, #0
	bl sub_080256B4
	b _0802562C
_08025628:
	subs r0, #1
	strh r0, [r1]
_0802562C:
	adds r0, r5, #0
	bl sub_08025C44
	adds r0, r5, #0
	bl GetNextFrame
_08025638:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802563C
sub_0802563C: @ 0x0802563C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _08025678
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D2B4
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #0x43
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	bl sub_0804AA1C
	b _080256B0
_08025678:
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x77
	bhi _080256B0
	ldr r0, _080256A4 @ =gUnk_080CBFF8
	lsrs r1, r1, #0x14
	adds r1, r1, r0
	ldrb r1, [r1]
	ldrh r2, [r2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080256B0
	adds r0, r1, #1
	ands r2, r0
	cmp r2, #0
	beq _080256A8
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
	b _080256B0
	.align 2, 0
_080256A4: .4byte gUnk_080CBFF8
_080256A8:
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D2B4
_080256B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080256B4
sub_080256B4: @ 0x080256B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0xe]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	bl Random
	ldrb r4, [r5, #0x15]
	adds r4, #7
	movs r1, #7
	bl __modsi3
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0x1c
	ands r4, r0
	strb r4, [r5, #0x15]
	bl Random
	ldr r2, _08025718 @ =gUnk_080CC000
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	movs r4, #0
	strh r1, [r0]
	bl Random
	movs r1, #0x18
	bl __modsi3
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x7a
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08025718: .4byte gUnk_080CC000

	thumb_func_start sub_0802571C
sub_0802571C: @ 0x0802571C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080257B0 @ =gRoomControls
	mov sb, r0
	ldrh r0, [r7, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r7, #0x32]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0x7a
	ldrb r4, [r0]
	movs r3, #0
	ldr r0, _080257B4 @ =gUnk_080CC020
	mov r8, r0
_08025764:
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	str r3, [sp, #4]
	bl sub_080257EC
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _080257B8
	mov r3, sb
	ldrh r0, [r3, #6]
	adds r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r3, #8]
	adds r0, r5, r0
	adds r1, #2
	strh r0, [r1]
	movs r0, #1
	b _080257E0
	.align 2, 0
_080257B0: .4byte gRoomControls
_080257B4: .4byte gUnk_080CC020
_080257B8:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2f
	bls _080257C4
	movs r4, #0
_080257C4:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08025764
	adds r0, r7, #0
	adds r0, #0x7a
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
_080257E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080257EC
sub_080257EC: @ 0x080257EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	cmp r2, r0
	beq _08025822
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025822
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025822:
	adds r5, r7, #0
	subs r5, #0x10
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	mov r8, r4
	cmp r2, r0
	beq _08025852
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025852
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025852:
	adds r4, r6, #0
	subs r4, #0x10
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	adds r1, r4, #0
	cmp r2, r0
	beq _08025882
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025882
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025882:
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	cmp r2, r0
	beq _080258BC
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _080258BC
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080258BC
_080258AA:
	movs r0, #1
	b _080258BE
	.align 2, 0
_080258B0: .4byte 0x00000312
_080258B4: .4byte gUnk_080B37A0
_080258B8: .4byte gUnk_080B3E80
_080258BC:
	movs r0, #0
_080258BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080258C4
sub_080258C4: @ 0x080258C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08025922
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r3, r1, r0
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r3, r3, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802591A
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802591A
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _0802591A
	movs r0, #9
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08025942
_0802591A:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r3, r0
	ble _08025926
_08025922:
	movs r0, #0
	b _08025944
_08025926:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl Random
	ldr r2, _08025948 @ =gUnk_080CC050
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
_08025942:
	movs r0, #1
_08025944:
	pop {r4, pc}
	.align 2, 0
_08025948: .4byte gUnk_080CC050

	thumb_func_start sub_0802594C
sub_0802594C: @ 0x0802594C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r0, _08025A20 @ =gUnk_080CC090
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r0, sl
	adds r0, #0x38
	ldrb r0, [r0]
	mov sb, r0
	ldr r3, _08025A24 @ =gRoomControls
	mov r1, sl
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r2, r1, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sl
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08025996:
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, [sp]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldr r1, [sp, #4]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r0, r4, #0x10
	str r0, [sp, #8]
	asrs r4, r4, #0x10
	lsrs r1, r5, #0x10
	str r1, [sp, #0xc]
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r4
	mov r8, r0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	subs r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	str r3, [sp, #0x10]
	bl sub_080002D4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	ldr r3, [sp, #0x10]
	orrs r6, r3
	orrs r4, r6
	orrs r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _08025A28
	adds r7, #2
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x7f
	bne _08025996
	movs r0, #0
	b _08025A44
	.align 2, 0
_08025A20: .4byte gUnk_080CC090
_08025A24: .4byte gRoomControls
_08025A28:
	ldr r2, _08025A50 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7e
	strh r0, [r1]
	movs r0, #1
_08025A44:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025A50: .4byte gRoomControls

	thumb_func_start sub_08025A54
sub_08025A54: @ 0x08025A54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r1, r0, #0
	adds r1, #0x38
	ldrb r1, [r1]
	mov sb, r1
	ldr r3, _08025AB0 @ =gRoomControls
	ldrh r2, [r0, #0x2e]
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	ldrh r1, [r0, #0x32]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	ldr r4, _08025AB4 @ =gUnk_080CC0A0
	movs r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	movs r6, #0x3f
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
_08025A82:
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	asrs r0, r0, #4
	ands r0, r6
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r7, r1
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sb
	bl sub_08025AB8
	adds r5, #1
	adds r4, #2
	cmp r5, #3
	bls _08025A82
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025AB0: .4byte gRoomControls
_08025AB4: .4byte gUnk_080CC0A0

	thumb_func_start sub_08025AB8
sub_08025AB8: @ 0x08025AB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080002E0
	cmp r0, #0
	bne _08025AD6
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	cmp r0, #0xa
	beq _08025ADA
_08025AD6:
	movs r0, #0
	b _08025AE6
_08025ADA:
	movs r0, #0x61
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0807B7D8
	movs r0, #1
_08025AE6:
	pop {r4, r5, pc}

	thumb_func_start sub_08025AE8
sub_08025AE8: @ 0x08025AE8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x22
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08025B00
	ldr r0, [r1, #0x30]
	subs r0, #1
	str r0, [r1, #0x30]
_08025B00:
	adds r0, r4, #0
	movs r1, #0x23
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08025B16
	ldr r0, [r1, #0x30]
	adds r0, #1
	str r0, [r1, #0x30]
_08025B16:
	pop {r4, pc}

	thumb_func_start sub_08025B18
sub_08025B18: @ 0x08025B18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08025BC8 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	str r1, [sp]
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	ldrh r0, [r2, #8]
	subs r1, r1, r0
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	mov sl, r0
	ldr r5, _08025BCC @ =gUnk_080CC0A8
	movs r7, #0
	movs r1, #0x3f
	mov r8, r1
	movs r2, #0x10
	rsbs r2, r2, #0
	mov sb, r2
_08025B52:
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, [sp]
	adds r0, r1, r0
	asrs r0, r0, #4
	mov r2, r8
	ands r0, r2
	movs r1, #1
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	asrs r1, r1, #4
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sl
	bl sub_08025AB8
	movs r0, #0x21
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08025BB4
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r5, r3]
	lsls r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	ldrh r1, [r4, #0x2e]
	mov r0, sb
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r1, [r4, #0x32]
	mov r0, sb
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x32]
	ldr r0, _08025BD0 @ =0x0000FFFF
	strh r0, [r4, #0x36]
_08025BB4:
	adds r7, #1
	adds r5, #2
	cmp r7, #8
	bls _08025B52
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025BC8: .4byte gRoomControls
_08025BCC: .4byte gUnk_080CC0A8
_08025BD0: .4byte 0x0000FFFF

	thumb_func_start sub_08025BD4
sub_08025BD4: @ 0x08025BD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025C22
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025C22
	movs r0, #0x21
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08025C22
	ldr r3, _08025C24 @ =gUnk_080CC0BA
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	adds r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	ldr r0, _08025C28 @ =0x0000FFF6
	strh r0, [r4, #0x36]
_08025C22:
	pop {r4, r5, pc}
	.align 2, 0
_08025C24: .4byte gUnk_080CC0BA
_08025C28: .4byte 0x0000FFF6

	thumb_func_start sub_08025C2C
sub_08025C2C: @ 0x08025C2C
	push {lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #8
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08025C44
sub_08025C44: @ 0x08025C44
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025C58
	movs r0, #0
	b _08025C5E
_08025C58:
	adds r0, r2, #0
	bl sub_080AEF88
_08025C5E:
	pop {pc}

	thumb_func_start sub_08025C60
sub_08025C60: @ 0x08025C60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08025C80
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08025C80
	adds r0, r4, #0
	bl sub_08049EE4
	b _08025C98
_08025C80:
	bl Random
	ldr r2, _08025C9C @ =gUnk_080CC0C2
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrb r4, [r4, #0x15]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
_08025C98:
	pop {r4, pc}
	.align 2, 0
_08025C9C: .4byte gUnk_080CC0C2
