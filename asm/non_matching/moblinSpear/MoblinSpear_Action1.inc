	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A83C2
	bl DeleteThisEntity
_080A83C2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A83CC
	bl DeleteThisEntity
_080A83CC:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	ldr r1, _080A8424 @ =gUnk_0812966C
	adds r2, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _080A83F4
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A83F4:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	adds r2, #1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #7]
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8428
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8438
	movs r0, #0x7f
	ands r0, r1
	b _080A8436
	.align 2, 0
_080A8424: .4byte gUnk_0812966C
_080A8428:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8438
	movs r0, #0x80
	orrs r0, r1
_080A8436:
	strb r0, [r4, #0x10]
_080A8438:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
