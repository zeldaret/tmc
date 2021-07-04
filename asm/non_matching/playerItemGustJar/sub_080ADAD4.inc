	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _080ADAF4 @ =gPlayerState
	ldrb r1, [r3, #0x1c]
	adds r0, r1, #0
	cmp r0, #3
	bne _080ADAFC
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ADAF8 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, #8
	b _080ADB0C
	.align 2, 0
_080ADAF4: .4byte gPlayerState
_080ADAF8: .4byte gPlayerEntity
_080ADAFC:
	cmp r0, #6
	bne _080ADB18
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, _080ADB14 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
_080ADB0C:
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _080ADC08
	.align 2, 0
_080ADB14: .4byte gPlayerEntity
_080ADB18:
	movs r5, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080ADB58
	cmp r0, #1
	bne _080ADB36
	adds r0, r4, #0
	movs r1, #4
	bl sub_080ADCA0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080ADBE0
_080ADB36:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080ADCDC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080ADBE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080ADCA0
	strb r5, [r4, #0xa]
	b _080ADBE0
_080ADB58:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	bne _080ADB68
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #0x7f
	strb r0, [r1]
_080ADB68:
	ldrb r0, [r3, #0x1d]
	cmp r0, #2
	beq _080ADB94
	cmp r0, #2
	bgt _080ADB78
	cmp r0, #1
	beq _080ADBB0
	b _080ADBCA
_080ADB78:
	cmp r0, #3
	bne _080ADBCA
	adds r0, r4, #0
	movs r1, #3
	bl sub_080ADCDC
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
	movs r2, #3
	movs r5, #0xe9
	b _080ADBCA
_080ADB94:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080ADCDC
	ldrb r0, [r4, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #0x1a]
	movs r2, #2
	movs r5, #0xe8
	b _080ADBCA
_080ADBB0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080ADCDC
	ldrb r0, [r4, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x1a]
	movs r2, #1
	movs r5, #0xe7
_080ADBCA:
	ldr r0, _080ADC0C @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	bne _080ADBDA
	movs r5, #0xee
	movs r2, #1
_080ADBDA:
	ldrb r0, [r4, #0xf]
	subs r0, r0, r2
	strb r0, [r4, #0xf]
_080ADBE0:
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080ADBF6
	cmp r5, #0
	beq _080ADBF2
	adds r0, r5, #0
	bl SoundReq
_080ADBF2:
	movs r0, #0xf
	strb r0, [r4, #0xf]
_080ADBF6:
	ldr r2, _080ADC10 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	ldrb r0, [r2, #0x1e]
	subs r0, r0, r1
	strb r0, [r4, #0x1e]
_080ADC08:
	pop {r4, r5, pc}
	.align 2, 0
_080ADC0C: .4byte gPlayerState
_080ADC10: .4byte gPlayerEntity
	.syntax divided
