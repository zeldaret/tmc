    .syntax unified
	push {r4, r5, r6, lr}
	movs r0, #5
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E3DE
	movs r6, #2
_0804E3DE:
	movs r0, #0x55
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E3EA
	movs r6, #3
_0804E3EA:
	bl Random
	adds r4, r0, #0
	ldr r1, _0804E448 @ =gUnk_080F0D58
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r5, #0x1f
	adds r1, r4, #0
	ands r1, r5
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	ldr r1, _0804E44C @ =gUnk_080F0CB8
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl LoadRoomEntityList
	lsrs r6, r6, #4
	lsrs r4, r4, #8
	ldr r1, _0804E450 @ =gUnk_080F0E08
	lsls r0, r6, #2
	adds r0, r0, r1
	ands r4, r5
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r6, [r0]
	movs r0, #0xc6
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E436
	movs r0, #0xc6
	bl SetLocalFlag
	movs r6, #0xe
_0804E436:
	lsls r0, r6, #3
	ldr r1, _0804E454 @ =gUnk_080F0E1C
	adds r0, r0, r1
	bl sub_0804B3C4
	ldr r0, _0804E458 @ =0x80100000
	bl PlaySFX
	pop {r4, r5, r6, pc}
	.align 2, 0
_0804E448: .4byte gUnk_080F0D58
_0804E44C: .4byte gUnk_080F0CB8
_0804E450: .4byte gUnk_080F0E08
_0804E454: .4byte gUnk_080F0E1C
_0804E458: .4byte 0x80100000
    .syntax divided