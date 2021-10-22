	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Dust
Dust: @ 0x08044118
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08044130 @ =gUnk_080D1588
	bl GetNextFunction
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
	bl DeleteThisEntity
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
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080441F2
	bl DeleteThisEntity
_080441F2:
	ldrb r7, [r4, #0xa]
	cmp r7, #0
	bne _08044284
.ifdef EU
	movs r0, #0xf5
	lsls r0, r0, #0x1
.else
	ldr r0, _08044244 @ =0x000001EB
.endif
	movs r1, #1
	bl sub_080AD8F0
	adds r6, r0, #0
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r5, r0, #1
	adds r0, r5, #0
	bl zMalloc
	adds r1, r0, #0
	str r1, [r4, #0x64]
	cmp r1, #0
	beq _0804429A
	adds r0, r6, #0
	adds r2, r5, #0
	bl MemCopy
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0xc
	bl zMalloc
	adds r2, r0, #0
	cmp r2, #0
	bne _08044248
	ldr r0, [r4, #0x64]
	bl zFree
	b _0804429A
	.align 2, 0
.ifndef EU
_08044244: .4byte 0x000001EB
.endif
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
	ldr r0, _08044334 @ =gPlayerEntity
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
_08044334: .4byte gPlayerEntity
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
	bl SetGlobalFlag
	movs r0, #0x72
	bl SoundReq
	bl DeleteThisEntity
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
	ldr r6, _08044538 @ =gPlayerEntity
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
	ldr r0, _08044540 @ =gPlayerState
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
	ldr r0, _08044538 @ =gPlayerEntity
	bl CopyPosition
	b _0804454C
	.align 2, 0
_08044538: .4byte gPlayerEntity
_0804453C: .4byte gRoomControls
_08044540: .4byte gPlayerState
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
	ldr r0, _080445A8 @ =gPlayerState
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
	ldr r5, _080445AC @ =gPlayerEntity
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
_080445A8: .4byte gPlayerState
_080445AC: .4byte gPlayerEntity
_080445B0: .4byte gUnk_08126EE4
_080445B4:
	adds r0, r6, #0
	bl sub_080445C0
	bl DeleteThisEntity
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
