	.syntax unified
	push {r4, lr}
	ldr r4, _080548DC @ =gUnk_02032EC0
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080548E0 @ =gUnk_080FE320
	adds r0, r0, r1
	ldr r2, _080548E4 @ =gMenu
	ldrb r1, [r0]
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #1]
	strb r1, [r2, #3]
	ldrb r1, [r4, #3]
	strb r1, [r2, #4]
	str r0, [r2, #0xc]
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	strb r3, [r2, #6]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2, #8]
	movs r0, #0
	bl DispReset
	ldrb r0, [r4, #3]
	movs r1, #1
	bl sub_08054974
	bl sub_0806F364
	movs r0, #0xff
	bl ClearRoomFlag
	bl sub_080548E8
	pop {r4, pc}
	.align 2, 0
_080548DC: .4byte gUnk_02032EC0
_080548E0: .4byte gUnk_080FE320
_080548E4: .4byte gMenu
	.syntax divided
