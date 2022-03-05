	.syntax unified
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080ADF00 @ =gUnk_02024494
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080ADF7C
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r3, #6]
	ldr r0, _080ADF04 @ =0x0000FFFF
	cmp r1, r0
	beq _080ADF18
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _080ADF18
	lsls r0, r0, #6
	ldr r1, _080ADF08 @ =gUnk_020000C0
	adds r4, r0, r1
	movs r5, #4
	movs r6, #9
	rsbs r6, r6, #0
_080ADEB0:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ADEF6
	ldr r0, _080ADF0C @ =gGFXSlots
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _080ADECA
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080ADEF6
_080ADECA:
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #9]
	lsls r2, r0, #5
	cmp r2, #0
	beq _080ADEF6
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #5
	ldr r3, _080ADF10 @ =0x06010000
	adds r1, r0, r3
	ldr r3, _080ADF14 @ =0x040000D4
	ldr r0, [r4, #0xc]
	str r0, [r3]
	str r1, [r3, #4]
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_080ADEF6:
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bgt _080ADEB0
	b _080ADF7C
	.align 2, 0
_080ADF00: .4byte gUnk_02024494
_080ADF04: .4byte 0x0000FFFF
_080ADF08: .4byte gUnk_020000C0
_080ADF0C: .4byte gGFXSlots
_080ADF10: .4byte 0x06010000
_080ADF14: .4byte 0x040000D4
_080ADF18:
	lsls r0, r2, #9
	ldr r2, _080ADF4C @ =0x06012800
	adds r1, r0, r2
	ldrh r2, [r3, #6]
	cmp r2, #0
	beq _080ADF58
	ldr r0, _080ADF50 @ =0x0000FFFF
	cmp r2, r0
	beq _080ADF62
	ldr r2, _080ADF54 @ =0x040000D4
	ldr r0, [r3, #8]
	str r0, [r2]
	str r1, [r2, #4]
	ldrh r0, [r3, #6]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r3, #6]
	subs r2, #0x10
	cmp r2, #0
	ble _080ADF7C
	b _080ADF70
	.align 2, 0
_080ADF4C: .4byte 0x06012800
_080ADF50: .4byte 0x0000FFFF
_080ADF54: .4byte 0x040000D4
_080ADF58:
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r3]
	b _080ADF7C
_080ADF62:
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _080ADF7C
	ldr r0, [r3, #8]
	bl LZ77UnCompVram
	b _080ADF7C
_080ADF70:
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3, #6]
	subs r2, #0x10
	cmp r2, #0
	bgt _080ADF70
_080ADF7C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
