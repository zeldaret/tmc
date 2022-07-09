	.syntax unified
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
    .syntax divided
