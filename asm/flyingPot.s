	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


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
	bl SetTile
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
	bl SetTile
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
	bl SetTile
	adds r0, r5, #0
	movs r1, #5
	bl InitializeAnimation
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803727C: .4byte gRoomControls

	thumb_func_start sub_08037280
sub_08037280: @ 0x08037280
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r0, r5, #0
	bl GetTileTypeByEntity
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
	bl SetTile
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
	bl SetTile
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
	bl CreateFx
	bl DeleteThisEntity
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
	bl SetTile
	bl DeleteThisEntity
_08037460:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037464: .4byte gRoomControls
_08037468: .4byte 0x00004067
