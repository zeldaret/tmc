	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0xc
	bgt _080ACA82
	cmp r1, #0xa
	bge _080ACA86
	cmp r1, #6
	beq _080ACA86
	b _080ACAC0
_080ACA82:
	cmp r1, #0x1a
	bne _080ACAC0
_080ACA86:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x24]
	adds r0, r0, r1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_080ACB40
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	b _080ACAB6
_080ACAB0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
_080ACAB6:
	strb r0, [r4, #0x15]
	movs r0, #0xd8
	bl SoundReq
	b _080ACAC4
_080ACAC0:
	bl DeleteThisEntity
_080ACAC4:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
