	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	bl sub_08077F64
	cmp r0, #0
	beq _080765D4
	ldr r5, _0807655C @ =gPlayerState
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #4
	strb r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080765D4
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	bne _080765D4
	ldr r6, _08076560 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r7, [r0]
	cmp r7, #0
	beq _08076564
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077F50
	b _080765D4
	.align 2, 0
_0807655C: .4byte gPlayerState
_08076560: .4byte gPlayerEntity
_08076564:
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	ldr r0, _080765B0 @ =0x00008018
	ands r0, r1
	cmp r0, #0
	beq _080765D4
	adds r0, r6, #0
	bl sub_0806F948
	movs r0, #5
	strb r0, [r5, #5]
	ldr r1, [r4, #0x18]
	movs r0, #2
	strb r0, [r1, #0xd]
	ldr r2, [r4, #0x18]
	ldrb r1, [r6, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080765B4
	movs r1, #0x93
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08077DF4
	b _080765BE
	.align 2, 0
_080765B0: .4byte 0x00008018
_080765B4:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080765BE:
	ldr r2, _080765DC @ =gPlayerState
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	orrs r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_080765D4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080765DC: .4byte gPlayerState
	.syntax divided
