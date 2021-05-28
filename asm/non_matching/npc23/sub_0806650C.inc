	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r1, _0806652C @ =gPlayerEntity
	ldrh r5, [r1, #0x2e]
	adds r7, r5, #0
	ldrh r2, [r1, #0x32]
	adds r0, #0x80
	ldrh r0, [r0]
	adds r0, #0x10
	adds r6, r1, #0
	cmp r2, r0
	bge _08066530
	movs r4, #4
	b _0806654C
	.align 2, 0
_0806652C: .4byte gPlayerEntity
_08066530:
	adds r0, r3, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	adds r0, r1, #2
	cmp r5, r0
	bge _0806653E
	movs r4, #2
_0806653E:
	adds r0, r1, #6
	cmp r7, r0
	ble _08066546
	movs r4, #6
_08066546:
	cmp r4, #0
	bne _0806654C
	strh r4, [r6, #0x24]
_0806654C:
	ldrb r0, [r6, #0xc]
	cmp r0, #0xf
	beq _0806656A
	cmp r4, #0
	bne _0806655A
	movs r0, #0
	b _0806656C
_0806655A:
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	strb r4, [r6, #0x14]
	lsls r0, r4, #2
	strb r0, [r6, #0x15]
_0806656A:
	movs r0, #1
_0806656C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
