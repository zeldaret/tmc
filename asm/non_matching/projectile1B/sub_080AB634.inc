	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	movs r5, #0
	adds r4, r0, #0
	adds r4, #0x20
_080AB640:
	ldr r1, [r4]
	cmp r1, #0
	beq _080AB684
	adds r0, r6, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080AB684
	ldr r1, [r4]
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bhi _080AB67A
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r2, [r4]
	ldrb r0, [r2, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4]
	movs r1, #0x45
	movs r2, #0
	bl CreateFx
_080AB67A:
	adds r0, r6, #0
	bl DeleteEntity
	movs r0, #1
	b _080AB68E
_080AB684:
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	bls _080AB640
	movs r0, #0
_080AB68E:
	pop {r4, r5, r6, pc}
	.syntax divided
