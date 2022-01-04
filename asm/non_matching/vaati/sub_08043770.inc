    .syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080437D8
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x14]
	ldr r0, _080437AC @ =gRoomTransition
	adds r5, r0, #0
	adds r5, #0x39
	ldrb r1, [r5]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0804379A
	movs r0, #2
	strb r0, [r3, #0xd]
_0804379A:
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _080437B0
	ldr r0, [r3, #0x64]
	str r4, [r0, #0x14]
	ldrb r1, [r5]
	movs r0, #0xfe
	b _080437B8
	.align 2, 0
_080437AC: .4byte gRoomTransition
_080437B0:
	ldr r0, [r3, #0x64]
	str r4, [r0, #0x18]
	ldrb r1, [r5]
	movs r0, #0xfd
_080437B8:
	ands r0, r1
	strb r0, [r5]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	adds r0, #0x45
	strb r1, [r0]
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x50]
	bl DeleteThisEntity
_080437D8:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
