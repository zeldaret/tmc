	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _08059268 @ =gRoomVars
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r4, _0805926C @ =gUnk_08108354
	ldrh r0, [r4]
	ldr r1, _08059270 @ =0x0000FFFF
	cmp r0, r1
	beq _08059254
	adds r7, r2, #0
	adds r6, r1, #0
_08059238:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldrh r2, [r4, #4]
	ldrh r3, [r4, #6]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805924C
	ldrh r0, [r4, #8]
	strh r0, [r7, #0xc]
_0805924C:
	adds r4, #0xa
	ldrh r0, [r4]
	cmp r0, r6
	bne _08059238
_08059254:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08059266
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r1, _08059274 @ =gArea
	ldr r0, _08059268 @ =gRoomVars
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xa]
_08059266:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059268: .4byte gRoomVars
_0805926C: .4byte gUnk_08108354
_08059270: .4byte 0x0000FFFF
_08059274: .4byte gArea
	.syntax divided
