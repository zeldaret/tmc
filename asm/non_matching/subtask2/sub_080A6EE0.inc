	.syntax unified
	push {r4, r5, r6, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6F34 @ =gUnk_08128024
	adds r1, r1, r0
	ldrh r3, [r1, #6]
	ldrh r4, [r1, #8]
	ldr r0, _080A6F38 @ =gAreaRoomHeaders
	ldrb r2, [r1, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r1, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r1, #2]
	adds r4, r4, r0
	ldr r6, _080A6F3C @ =gOamCmd
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #5
	movs r5, #0xf9
	lsls r5, r5, #4
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0x28
	strh r0, [r6]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0xc
	strh r0, [r6, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6F34: .4byte gUnk_08128024
_080A6F38: .4byte gAreaRoomHeaders
_080A6F3C: .4byte gOamCmd
	.syntax divided
