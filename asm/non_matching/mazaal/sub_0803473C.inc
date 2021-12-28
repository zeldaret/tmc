
    .syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034764
	ldr r0, [r3, #0x74]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034760 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	adds r2, r0, #0
	subs r2, #0x60
	b _08034776
	.align 2, 0
_08034760: .4byte gPlayerEntity
_08034764:
	ldr r0, [r3, #0x78]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034790 @ =gPlayerEntity
	movs r5, #0x2e
	ldrsh r0, [r0, r5]
	adds r2, r0, #0
	adds r2, #0x60
_08034776:
	ldr r0, _08034794 @ =gRoomControls
	ldrh r4, [r0, #6]
	subs r0, r2, #4
	movs r5, #0x2e
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bls _08034798
	adds r0, r4, #0
	adds r0, #0xe0
	cmp r0, r1
	blo _080347B0
	movs r0, #8
	b _080347A8
	.align 2, 0
_08034790: .4byte gPlayerEntity
_08034794: .4byte gRoomControls
_08034798:
	adds r0, r2, #4
	cmp r0, r1
	bhs _080347B0
	adds r0, r4, #0
	adds r0, #0x90
	cmp r0, r1
	bhi _080347B0
	movs r0, #0x18
_080347A8:
	strb r0, [r3, #0x15]
	adds r0, r3, #0
	bl LinearMoveUpdate
_080347B0:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
