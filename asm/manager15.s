	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805A280
sub_0805A280: @ 0x0805A280
	push {lr}
	ldr r2, _0805A294 @ =gUnk_081085D8
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805A294: .4byte gUnk_081085D8

	thumb_func_start sub_0805A298
sub_0805A298: @ 0x0805A298
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A2D6
	adds r0, r4, #0
	bl sub_0805A89C
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A2BA
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #1
	b _0805A2C0
_0805A2BA:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #2
_0805A2C0:
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_0805AAF0
	ldr r2, _0805A2E0 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805A2D6:
	adds r0, r4, #0
	bl sub_0805A8EC
	pop {r4, pc}
	.align 2, 0
_0805A2E0: .4byte gScreen

	thumb_func_start sub_0805A2E4
sub_0805A2E4: @ 0x0805A2E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A34C
	adds r0, r4, #0
	bl sub_0805A89C
	adds r0, r4, #0
	adds r0, #0x23
	movs r5, #1
	strb r5, [r0]
	movs r0, #1
	bl sub_0805AAF0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A324
	strb r5, [r4, #0xc]
	ldr r2, _0805A31C @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A320 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	b _0805A35C
	.align 2, 0
_0805A31C: .4byte gScreen
_0805A320: .4byte 0x0000B7FF
_0805A324:
	movs r0, #0x48
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A332
	movs r0, #4
	b _0805A334
_0805A332:
	movs r0, #3
_0805A334:
	strb r0, [r4, #0xc]
	ldr r2, _0805A348 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805A35C
	.align 2, 0
_0805A348: .4byte gScreen
_0805A34C:
	ldr r0, _0805A36C @ =gUnk_081085F8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805A35C:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0805A368
	adds r0, r4, #0
	bl sub_0805A8EC
_0805A368:
	pop {r4, r5, pc}
	.align 2, 0
_0805A36C: .4byte gUnk_081085F8

	thumb_func_start sub_0805A370
sub_0805A370: @ 0x0805A370
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A38A
	ldr r0, _0805A38C @ =gUnk_080E4C08
	bl LoadRoomEntityList
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0805A390 @ =0x80100000
	bl PlaySFX
_0805A38A:
	pop {r4, pc}
	.align 2, 0
_0805A38C: .4byte gUnk_080E4C08
_0805A390: .4byte 0x80100000

	thumb_func_start sub_0805A394
sub_0805A394: @ 0x0805A394
	push {lr}
	movs r0, #3
	movs r1, #0x13
	movs r2, #4
	bl sub_0805EB00
	cmp r0, #0
	beq _0805A3AA
	ldrb r0, [r0, #0xa]
	cmp r0, #4
	bne _0805A3C4
_0805A3AA:
	movs r0, #0x48
	bl SetLocalFlag
	movs r0, #0
	bl ClearRoomFlag
	ldr r2, _0805A3C8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A3CC @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805A3C4:
	pop {pc}
	.align 2, 0
_0805A3C8: .4byte gScreen
_0805A3CC: .4byte 0x0000B7FF

	thumb_func_start nullsub_496
nullsub_496: @ 0x0805A3D0
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A3D4
sub_0805A3D4: @ 0x0805A3D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A448
	adds r0, r4, #0
	bl sub_0805A89C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0805A3F2
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #2
	b _0805A3F8
_0805A3F2:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #1
_0805A3F8:
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_0805AAF0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A428
	ldrh r0, [r4, #0x3c]
	bl ClearFlag
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805A420 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A424 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	b _0805A458
	.align 2, 0
_0805A420: .4byte gScreen
_0805A424: .4byte 0x0000B7FF
_0805A428:
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r2, _0805A444 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805A458
	.align 2, 0
_0805A444: .4byte gScreen
_0805A448:
	ldr r0, _0805A460 @ =gUnk_0810860C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805A458:
	adds r0, r4, #0
	bl sub_0805A8EC
	pop {r4, pc}
	.align 2, 0
_0805A460: .4byte gUnk_0810860C

	thumb_func_start sub_0805A464
sub_0805A464: @ 0x0805A464
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A47E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805A4CC
_0805A47E:
	pop {r4, pc}

	thumb_func_start sub_0805A480
sub_0805A480: @ 0x0805A480
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A494
	movs r0, #3
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x3c]
	bl SetFlag
_0805A494:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A498
sub_0805A498: @ 0x0805A498
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A4B2
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805A4CC
_0805A4B2:
	pop {r4, pc}

	thumb_func_start sub_0805A4B4
sub_0805A4B4: @ 0x0805A4B4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A4C8
	movs r0, #1
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x3c]
	bl ClearFlag
_0805A4C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A4CC
sub_0805A4CC: @ 0x0805A4CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8e
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805A4F8
	ldr r1, _0805A4FC @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	subs r0, #0x30
	strh r0, [r3, #0x32]
	str r4, [r3, #0x50]
	strb r2, [r4, #0xd]
_0805A4F8:
	pop {r4, pc}
	.align 2, 0
_0805A4FC: .4byte gRoomControls

	thumb_func_start sub_0805A500
sub_0805A500: @ 0x0805A500
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _0805A588
	bl sub_0805A89C
	str r5, [r4, #0x28]
	movs r0, #0x36
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A538
	adds r3, r4, #0
	adds r3, #0x23
	movs r0, #3
	strb r0, [r3]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r2, _0805A534 @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x90
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	b _0805A574
	.align 2, 0
_0805A534: .4byte gScreen
_0805A538:
	movs r0, #0x34
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A560
	adds r3, r4, #0
	adds r3, #0x23
	movs r0, #4
	strb r0, [r3]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r2, _0805A55C @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x90
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	b _0805A574
	.align 2, 0
_0805A55C: .4byte gScreen
_0805A560:
	adds r3, r4, #0
	adds r3, #0x23
	movs r0, #4
	strb r0, [r3]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805A580 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A584 @ =0x0000B7FF
	ands r0, r1
_0805A574:
	strh r0, [r2]
	ldrb r0, [r3]
	bl sub_0805AAF0
	b _0805A598
	.align 2, 0
_0805A580: .4byte gScreen
_0805A584: .4byte 0x0000B7FF
_0805A588:
	ldr r0, _0805A5C0 @ =gUnk_08108620
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805A598:
	adds r0, r4, #0
	bl sub_0805AA58
	adds r0, r4, #0
	bl sub_0805A9CC
	ldr r1, _0805A5C4 @ =gRoomControls
	ldrh r3, [r1]
	cmp r3, #1
	bne _0805A5CC
	ldr r2, _0805A5C8 @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	strb r3, [r4, #0xd]
	b _0805A5F0
	.align 2, 0
_0805A5C0: .4byte gUnk_08108620
_0805A5C4: .4byte gRoomControls
_0805A5C8: .4byte gScreen
_0805A5CC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A5F0
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	ldrb r1, [r1, #5]
	cmp r0, r1
	beq _0805A5F0
	ldr r2, _0805A5F4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A5F8 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805A5F0:
	pop {r4, r5, pc}
	.align 2, 0
_0805A5F4: .4byte gScreen
_0805A5F8: .4byte 0x0000B7FF

	thumb_func_start sub_0805A5FC
sub_0805A5FC: @ 0x0805A5FC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x34
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A616
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805A4CC
_0805A616:
	pop {r4, pc}

	thumb_func_start sub_0805A618
sub_0805A618: @ 0x0805A618
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A626
	movs r0, #3
	strb r0, [r1, #0xc]
_0805A626:
	pop {pc}

	thumb_func_start sub_0805A628
sub_0805A628: @ 0x0805A628
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x36
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A64A
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805A4CC
_0805A64A:
	pop {r4, pc}

	thumb_func_start sub_0805A64C
sub_0805A64C: @ 0x0805A64C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A65A
	movs r0, #5
	strb r0, [r1, #0xc]
_0805A65A:
	pop {pc}

	thumb_func_start sub_0805A65C
sub_0805A65C: @ 0x0805A65C
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A660
sub_0805A660: @ 0x0805A660
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A664
sub_0805A664: @ 0x0805A664
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805A688 @ =gUnk_08108638
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805A8EC
	adds r0, r4, #0
	bl sub_0805A68C
	pop {r4, pc}
	.align 2, 0
_0805A688: .4byte gUnk_08108638

	thumb_func_start sub_0805A68C
sub_0805A68C: @ 0x0805A68C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	subs r0, #0x18
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	subs r1, #0x18
	movs r2, #0x30
	movs r3, #0x30
	bl sub_0806FBFC
	cmp r0, #0
	beq _0805A6CC
	ldrh r1, [r4, #0x2c]
	ldr r0, _0805A6C4 @ =0x00001007
	cmp r1, r0
	bhi _0805A6E2
	ldr r0, _0805A6C8 @ =gScreen
	adds r1, #1
	movs r2, #0
	strh r1, [r4, #0x2c]
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x22
	strb r2, [r0]
	b _0805A6E2
	.align 2, 0
_0805A6C4: .4byte 0x00001007
_0805A6C8: .4byte gScreen
_0805A6CC:
	ldrh r1, [r4, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bls _0805A6DA
	subs r0, r1, #1
	strh r0, [r4, #0x2c]
_0805A6DA:
	ldr r0, _0805A6E4 @ =gScreen
	ldrh r1, [r4, #0x2c]
	adds r0, #0x68
	strh r1, [r0]
_0805A6E2:
	pop {r4, pc}
	.align 2, 0
_0805A6E4: .4byte gScreen

	thumb_func_start sub_0805A6E8
sub_0805A6E8: @ 0x0805A6E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805A89C
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0
	strb r0, [r1]
	bl sub_0805AAF0
	ldr r1, _0805A734 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	strh r0, [r4, #0x38]
	ldrh r0, [r1, #8]
	ldrh r3, [r4, #0x3a]
	adds r0, r0, r3
	strh r0, [r4, #0x3a]
	adds r0, r4, #0
	bl sub_0805A73C
	cmp r0, #0
	bne _0805A71E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805A71E:
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x2c]
	ldr r2, _0805A738 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, pc}
	.align 2, 0
_0805A734: .4byte gRoomControls
_0805A738: .4byte gScreen

	thumb_func_start sub_0805A73C
sub_0805A73C: @ 0x0805A73C
	push {lr}
	adds r1, r0, #0
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	subs r0, #6
	movs r2, #0x3a
	ldrsh r1, [r1, r2]
	subs r1, #6
	movs r2, #0xc
	movs r3, #0xc
	bl sub_0806FBFC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A758
sub_0805A758: @ 0x0805A758
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805A73C
	cmp r0, #0
	bne _0805A76A
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805A76A:
	pop {r4, pc}

	thumb_func_start sub_0805A76C
sub_0805A76C: @ 0x0805A76C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0805A7D4 @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A7D0
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805A7D0
	ldr r0, _0805A7D8 @ =gPlayerState
	ldr r6, [r0, #0x2c]
	cmp r6, #0
	bne _0805A7D0
	adds r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #1
	bgt _0805A7D0
	cmp r0, #0
	blt _0805A7D0
	adds r0, r4, #0
	bl sub_0805A73C
	cmp r0, #0
	beq _0805A7D0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	bl sub_08004168
	movs r0, #4
	strb r0, [r5, #0x14]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_0805E4E0
	movs r0, #0xff
	bl sub_08078A90
	ldr r1, _0805A7DC @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0805A7E0 @ =gRoomControls
	str r6, [r0, #0x30]
	bl sub_08077B20
_0805A7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805A7D4: .4byte gPlayerEntity
_0805A7D8: .4byte gPlayerState
_0805A7DC: .4byte gUnk_02034490
_0805A7E0: .4byte gRoomControls

	thumb_func_start sub_0805A7E4
sub_0805A7E4: @ 0x0805A7E4
	push {lr}
	ldr r2, _0805A800 @ =gPlayerState
	ldrb r0, [r2, #0xc]
	cmp r0, #0x12
	beq _0805A7FE
	movs r1, #0
	movs r0, #0x12
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0805A7FE:
	pop {pc}
	.align 2, 0
_0805A800: .4byte gPlayerState

	thumb_func_start sub_0805A804
sub_0805A804: @ 0x0805A804
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _0805A896
	lsls r0, r0, #2
	ldr r1, _0805A818 @ =_0805A81C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A818: .4byte _0805A81C
_0805A81C: @ jump table
	.4byte _0805A830 @ case 0
	.4byte _0805A858 @ case 1
	.4byte _0805A866 @ case 2
	.4byte _0805A872 @ case 3
	.4byte _0805A88A @ case 4
_0805A830:
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A83E
	movs r0, #1
	b _0805A840
_0805A83E:
	movs r0, #2
_0805A840:
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	b _0805A89A
_0805A858:
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A89A
	movs r0, #2
	b _0805A87E
_0805A866:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A89A
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0805A89A
_0805A872:
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A89A
	movs r0, #4
_0805A87E:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl sub_0805A4CC
	b _0805A89A
_0805A88A:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A89A
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805A89A
_0805A896:
	bl DeleteThisEntity
_0805A89A:
	pop {r4, pc}

	thumb_func_start sub_0805A89C
sub_0805A89C: @ 0x0805A89C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_0805E3A0
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x21
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r1, _0805A8E4 @ =gRoomControls
	ldrb r2, [r1, #5]
	subs r0, #2
	strb r2, [r0]
	ldrh r0, [r1, #6]
	strh r0, [r4, #0x24]
	ldrh r0, [r1, #8]
	strh r0, [r4, #0x26]
	ldr r1, _0805A8E8 @ =sub_0805AAC8
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	pop {r4, pc}
	.align 2, 0
_0805A8E4: .4byte gRoomControls
_0805A8E8: .4byte sub_0805AAC8

	thumb_func_start sub_0805A8EC
sub_0805A8EC: @ 0x0805A8EC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805AA58
	adds r0, r4, #0
	bl sub_0805A94C
	ldr r1, _0805A914 @ =gRoomControls
	ldrh r3, [r1]
	cmp r3, #1
	bne _0805A91C
	ldr r2, _0805A918 @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	strb r3, [r4, #0xd]
	b _0805A940
	.align 2, 0
_0805A914: .4byte gRoomControls
_0805A918: .4byte gScreen
_0805A91C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A940
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	ldrb r1, [r1, #5]
	cmp r0, r1
	beq _0805A940
	ldr r2, _0805A944 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A948 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805A940:
	pop {r4, r5, pc}
	.align 2, 0
_0805A944: .4byte gScreen
_0805A948: .4byte 0x0000B7FF

	thumb_func_start sub_0805A94C
sub_0805A94C: @ 0x0805A94C
	push {r4, lr}
	ldr r4, _0805A9C4 @ =gScreen
	ldr r3, _0805A9C8 @ =gRoomControls
	ldrh r1, [r3, #0xa]
	ldrh r2, [r0, #0x24]
	subs r1, r1, r2
	ldrh r2, [r0, #0x34]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	ldrh r1, [r3, #0xc]
	ldrh r2, [r0, #0x26]
	subs r1, r1, r2
	ldrh r0, [r0, #0x36]
	adds r1, r1, r0
	strh r1, [r4, #0x30]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	cmp r0, #0
	bge _0805A97C
	movs r0, #0
_0805A97C:
	cmp r0, #0xf0
	ble _0805A982
	movs r0, #0xf0
_0805A982:
	cmp r1, #0
	bge _0805A988
	movs r1, #0
_0805A988:
	cmp r1, #0xf0
	ble _0805A98E
	movs r1, #0xf0
_0805A98E:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	adds r1, r0, r2
	cmp r0, #0
	bge _0805A9A6
	movs r0, #0
_0805A9A6:
	cmp r0, #0xa0
	ble _0805A9AC
	movs r0, #0xa0
_0805A9AC:
	cmp r1, #0
	bge _0805A9B2
	movs r1, #0
_0805A9B2:
	cmp r1, #0xa0
	ble _0805A9B8
	movs r1, #0xa0
_0805A9B8:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x5e
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0805A9C4: .4byte gScreen
_0805A9C8: .4byte gRoomControls

	thumb_func_start sub_0805A9CC
sub_0805A9CC: @ 0x0805A9CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0805AA4C @ =gScreen
	ldr r5, _0805AA50 @ =gRoomControls
	ldrh r0, [r5, #0xa]
	ldrh r1, [r4, #0x24]
	subs r0, r0, r1
	ldrh r1, [r4, #0x34]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	rsbs r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	cmp r2, #0
	bge _0805A9F2
	movs r2, #0
_0805A9F2:
	cmp r2, #0xf0
	ble _0805A9F8
	movs r2, #0xf0
_0805A9F8:
	cmp r1, #0
	bge _0805A9FE
	movs r1, #0
_0805A9FE:
	cmp r1, #0xf0
	ble _0805AA04
	movs r1, #0xf0
_0805AA04:
	lsls r0, r2, #8
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x26]
	subs r0, r0, r1
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	adds r2, r0, r1
	movs r1, #0x3f
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3, #0x30]
	adds r0, r2, #0
	cmp r0, #0
	bge _0805AA2C
	adds r0, #0x3f
_0805AA2C:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r1, _0805AA54 @ =gUnk_02001A40
	adds r1, r0, r1
	str r1, [r3, #0x34]
	adds r2, r3, #0
	adds r2, #0x5e
	movs r0, #0xa0
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0805AA4A
	str r1, [r4, #0x28]
	movs r0, #1
	strh r0, [r3, #0x32]
_0805AA4A:
	pop {r4, r5, pc}
	.align 2, 0
_0805AA4C: .4byte gScreen
_0805AA50: .4byte gRoomControls
_0805AA54: .4byte gUnk_02001A40

	thumb_func_start sub_0805AA58
sub_0805AA58: @ 0x0805AA58
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805AA8C
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x21
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	lsls r0, r0, #5
	ldr r1, _0805AABC @ =gUnk_085A97A0
	adds r0, r0, r1
	movs r1, #5
	movs r2, #1
	bl LoadPalettes
_0805AA8C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0805AABA
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x22
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805AAC0 @ =gScreen
	ldr r3, _0805AAC4 @ =gUnk_081085B8
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_0805AABA:
	pop {r4, r5, pc}
	.align 2, 0
_0805AABC: .4byte gUnk_085A97A0
_0805AAC0: .4byte gScreen
_0805AAC4: .4byte gUnk_081085B8

	thumb_func_start sub_0805AAC8
sub_0805AAC8: @ 0x0805AAC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x23
	ldrb r0, [r0]
	bl sub_0805AAF0
	adds r0, r4, #0
	bl sub_0805A280
	pop {r4, pc}

	thumb_func_start sub_0805AADC
sub_0805AADC: @ 0x0805AADC
	push {lr}
	ldr r1, _0805AAEC @ =gUnk_08108648
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801D7EC
	pop {pc}
	.align 2, 0
_0805AAEC: .4byte gUnk_08108648

	thumb_func_start sub_0805AAF0
sub_0805AAF0: @ 0x0805AAF0
	push {lr}
	bl sub_0805AADC
	ldr r3, _0805AB34 @ =gScreen
	adds r1, r3, #0
	adds r1, #0x66
	movs r2, #0
	ldr r0, _0805AB38 @ =0x00003E48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0805AB3C @ =0x00001008
	strh r0, [r1]
	ldr r0, _0805AB40 @ =0x00001E04
	strh r0, [r3, #0x2c]
	ldr r0, _0805AB44 @ =gUnk_02001A40
	str r0, [r3, #0x34]
	strh r2, [r3, #0x2e]
	strh r2, [r3, #0x30]
	movs r0, #1
	strh r0, [r3, #0x32]
	subs r1, #8
	ldr r0, _0805AB48 @ =0x00003F3F
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x37
	strh r0, [r1]
	subs r1, #8
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	pop {pc}
	.align 2, 0
_0805AB34: .4byte gScreen
_0805AB38: .4byte 0x00003E48
_0805AB3C: .4byte 0x00001008
_0805AB40: .4byte 0x00001E04
_0805AB44: .4byte gUnk_02001A40
_0805AB48: .4byte 0x00003F3F
