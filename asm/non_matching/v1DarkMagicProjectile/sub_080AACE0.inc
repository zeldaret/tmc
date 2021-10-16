	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AACF4
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080AACF4
	bl DeleteThisEntity
_080AACF4:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r2, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0x86
	cmp r2, #1
	bne _080AAD16
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
_080AAD16:
	ldr r2, [r4, #0x50]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAD4A
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #3
	strb r0, [r1]
	adds r1, #0xc
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080AAD42
	movs r0, #8
	b _080AAD56
_080AAD42:
	cmp r0, #0
	bne _080AAD58
	movs r0, #1
	b _080AAD56
_080AAD4A:
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x45
	movs r0, #0x2b
_080AAD56:
	strb r0, [r1]
_080AAD58:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AAD68
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
_080AAD68:
	bl DeleteThisEntity
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
