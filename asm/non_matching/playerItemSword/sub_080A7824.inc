	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A7860 @ =gPlayerState
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A7834
	bl DeleteThisEntity
_080A7834:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _080A78AE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080A7846
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
_080A7846:
	ldr r2, _080A7864 @ =gPlayerEntity
	adds r6, r2, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7868
	movs r0, #0
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
	b _080A78B4
	.align 2, 0
_080A7860: .4byte gPlayerState
_080A7864: .4byte gPlayerEntity
_080A7868:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A78B8
	ldrb r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A7880
	movs r0, #0x77
	bl SoundReq
_080A7880:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x8a
	bls _080A788A
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A788A:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A78A4
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_080A7B98
	b _080A78B4
_080A78A4:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _080A78B4
_080A78AE:
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
_080A78B4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
