	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x2a
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08090EA0
	ldr r0, _08090EA4 @ =0x0000FFFE
	adds r2, r0, #0
	ldrb r0, [r5, #0xb]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldrh r0, [r4, #0x36]
	subs r0, #0x10
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_08090EA0:
	pop {r4, r5, pc}
	.align 2, 0
_08090EA4: .4byte 0x0000FFFE
	.syntax divided
