	.syntax unified
	push {r4, r5, r6, lr}
	ldr r0, _0807C594 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x71
	beq _0807C592
	ldr r0, _0807C598 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl MemClear
	ldr r0, _0807C59C @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl MemClear
	ldr r5, _0807C5A0 @ =gUnk_02022830
	ldr r0, _0807C5A4 @ =gArea
	ldr r1, _0807C5A8 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	subs r4, #0xc
_0807C524:
	adds r4, #0xc
	ldr r1, [r4, #4]
	ldr r0, _0807C598 @ =gUnk_02019EE0
	cmp r1, r0
	beq _0807C534
	ldr r0, _0807C59C @ =gMapDataTopSpecial
	cmp r1, r0
	bne _0807C54A
_0807C534:
	ldr r0, [r4]
	ldr r1, _0807C5AC @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080197D4
_0807C54A:
	ldr r0, [r4]
	cmp r0, #0
	blt _0807C524
	ldr r4, _0807C598 @ =gUnk_02019EE0
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
	ldr r4, _0807C59C @ =gMapDataTopSpecial
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
_0807C592:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C594: .4byte gRoomControls
_0807C598: .4byte gUnk_02019EE0
_0807C59C: .4byte gMapDataTopSpecial
_0807C5A0: .4byte gUnk_02022830
_0807C5A4: .4byte gArea
_0807C5A8: .4byte 0x0000085C
_0807C5AC: .4byte 0x7FFFFFFF
	.syntax divided
