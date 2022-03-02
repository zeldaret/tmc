	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_0807BFA8
	ldr r7, _0807C158 @ =gRoomControls
	ldrb r1, [r7, #0xf]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r7, #0xf]
	ldr r5, _0807C15C @ =gMapDataTop
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r1, r6, #0
	bl MemClear
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	bl MemClear
	ldr r0, _0807C160 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl MemClear
	ldr r0, _0807C164 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl MemClear
	ldr r0, _0807C168 @ =gArea
	ldr r1, _0807C16C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_080197D4
	ldr r2, _0807C170 @ =gMapBottom
	ldrh r1, [r2, #4]
	ldr r0, _0807C174 @ =0x0000FFFF
	cmp r1, r0
	beq _0807C178
	adds r0, r2, #4
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	adds r0, r5, #0
	bl sub_0807C8B0
	movs r2, #0
	mov sb, r2
	b _0807C184
	.align 2, 0
_0807C158: .4byte gRoomControls
_0807C15C: .4byte gMapDataTop
_0807C160: .4byte gUnk_02019EE0
_0807C164: .4byte gMapDataTopSpecial
_0807C168: .4byte gArea
_0807C16C: .4byte 0x0000085C
_0807C170: .4byte gMapBottom
_0807C174: .4byte 0x0000FFFF
_0807C178:
	adds r0, r2, #4
	adds r1, r6, #0
	bl MemClear
	movs r3, #1
	mov sb, r3
_0807C184:
	ldr r0, _0807C1B0 @ =gRoomTransition
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807C1BC
	ldr r0, _0807C1B4 @ =gMapDataBottom
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	bl MemCopy
	ldr r0, _0807C1B8 @ =gMapDataTop
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r1, r0, r3
	adds r2, r4, #0
	bl MemCopy
	b _0807C26C
	.align 2, 0
_0807C1B0: .4byte gRoomTransition
_0807C1B4: .4byte gMapDataBottom
_0807C1B8: .4byte gMapDataTop
_0807C1BC:
	cmp r0, #2
	bne _0807C26C
	ldr r4, _0807C278 @ =gMapDataBottom
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r0, r0, r4
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl MemCopy
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r6, r4, r1
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl MemCopy
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl MemCopy
	adds r6, r4, r5
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl MemCopy
	movs r2, #0x80
	lsls r2, r2, #7
	adds r4, r4, r2
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl MemCopy
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl MemCopy
	ldr r4, _0807C27C @ =gMapDataTop
	movs r3, #0xb0
	lsls r3, r3, #8
	adds r3, r3, r4
	mov r8, r3
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl MemCopy
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r6, r4, r0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl MemCopy
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl MemCopy
	adds r6, r4, r5
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl MemCopy
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl MemCopy
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl MemCopy
_0807C26C:
	mov r2, sb
	cmp r2, #0
	bne _0807C280
	bl sub_0807BBE4
	b _0807C2A0
	.align 2, 0
_0807C278: .4byte gMapDataBottom
_0807C27C: .4byte gMapDataTop
_0807C280:
	ldr r0, _0807C2CC @ =gUnk_02027EB4
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C69C
	ldr r0, _0807C2D0 @ =gUnk_0200D654
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C69C
	bl sub_0807C460
_0807C2A0:
	bl sub_0807BC84
	ldr r4, _0807C2D4 @ =gMapBottom
	adds r0, r4, #0
	bl sub_08080B60
	ldr r5, _0807C2D8 @ =gMapTop
	adds r0, r5, #0
	bl sub_08080B60
	mov r3, sb
	cmp r3, #0
	bne _0807C2E4
	ldr r0, _0807C2DC @ =gUnk_02019EE0
	adds r1, r4, #0
	bl sub_0801AB08
	ldr r0, _0807C2E0 @ =gMapDataTopSpecial
	adds r1, r5, #0
	bl sub_0801AB08
	b _0807C326
	.align 2, 0
_0807C2CC: .4byte gUnk_02027EB4
_0807C2D0: .4byte gUnk_0200D654
_0807C2D4: .4byte gMapBottom
_0807C2D8: .4byte gMapTop
_0807C2DC: .4byte gUnk_02019EE0
_0807C2E0: .4byte gMapDataTopSpecial
_0807C2E4:
	ldr r4, _0807C34C @ =gUnk_02019EE0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl MemCopy
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl MemClear
	ldr r4, _0807C350 @ =gMapDataTopSpecial
	adds r5, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl MemCopy
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl MemClear
_0807C326:
	mov r1, sb
	cmp r1, #0
	bne _0807C332
	ldrb r0, [r7, #4]
	cmp r0, #0x71
	bne _0807C33A
_0807C332:
	ldrb r1, [r7, #0xf]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7, #0xf]
_0807C33A:
	ldrb r0, [r7, #4]
	subs r0, #0x20
	cmp r0, #0x18
	bhi _0807C400
	lsls r0, r0, #2
	ldr r1, _0807C354 @ =_0807C358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C34C: .4byte gUnk_02019EE0
_0807C350: .4byte gMapDataTopSpecial
_0807C354: .4byte _0807C358
_0807C358: @ jump table
	.4byte _0807C3BC @ case 0
	.4byte _0807C3E4 @ case 1
	.4byte _0807C3E4 @ case 2
	.4byte _0807C3E4 @ case 3
	.4byte _0807C3E4 @ case 4
	.4byte _0807C3E4 @ case 5
	.4byte _0807C400 @ case 6
	.4byte _0807C3E4 @ case 7
	.4byte _0807C3E4 @ case 8
	.4byte _0807C400 @ case 9
	.4byte _0807C400 @ case 10
	.4byte _0807C400 @ case 11
	.4byte _0807C400 @ case 12
	.4byte _0807C3BC @ case 13
	.4byte _0807C400 @ case 14
	.4byte _0807C400 @ case 15
	.4byte _0807C3E4 @ case 16
	.4byte _0807C400 @ case 17
	.4byte _0807C400 @ case 18
	.4byte _0807C400 @ case 19
	.4byte _0807C400 @ case 20
	.4byte _0807C400 @ case 21
	.4byte _0807C400 @ case 22
	.4byte _0807C400 @ case 23
	.4byte _0807C3E4 @ case 24
_0807C3BC:
	ldr r0, _0807C3D8 @ =gMapBottom
	ldr r2, [r0]
	cmp r2, #0
	beq _0807C3CC
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
_0807C3CC:
	ldr r2, _0807C3DC @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0807C3E0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	b _0807C444
	.align 2, 0
_0807C3D8: .4byte gMapBottom
_0807C3DC: .4byte gScreen
_0807C3E0: .4byte 0x0000FDFF
_0807C3E4:
	ldr r0, _0807C3F8 @ =gMapTop
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C3F2
	ldr r0, _0807C3FC @ =gUnk_080B77C0
	ldrh r0, [r0, #4]
	strh r0, [r1]
_0807C3F2:
	bl sub_0807C5B0
	b _0807C444
	.align 2, 0
_0807C3F8: .4byte gMapTop
_0807C3FC: .4byte gUnk_080B77C0
_0807C400:
	ldr r0, _0807C44C @ =gMapBottom
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C40E
	ldr r0, _0807C450 @ =gUnk_080B77C0
	ldrh r0, [r0]
	strh r0, [r1]
_0807C40E:
	ldr r0, _0807C454 @ =gMapTop
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C41C
	ldr r0, _0807C450 @ =gUnk_080B77C0
	ldrh r0, [r0, #2]
	strh r0, [r1]
_0807C41C:
	ldr r2, _0807C458 @ =gScreen
	ldrh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	movs r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0807C45C @ =gArea
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0807C444
	movs r3, #0xa0
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
_0807C444:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C44C: .4byte gMapBottom
_0807C450: .4byte gUnk_080B77C0
_0807C454: .4byte gMapTop
_0807C458: .4byte gScreen
_0807C45C: .4byte gArea
	.syntax divided
