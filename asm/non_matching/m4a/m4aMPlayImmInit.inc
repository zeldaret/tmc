
    .syntax unified

    .text

	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _080B0228 @ =0x68736D53
	cmp r1, r0
	bne _080B021E
	adds r0, r1, #1
	str r0, [r7, #0x34]
	ldrb r5, [r7, #8]
	ldr r4, [r7, #0x2c]
	cmp r5, #0
	ble _080B021A
	movs r2, #0x80
_080B01E0:
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0212
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0212
	adds r0, r4, #0
	str r2, [sp]
	bl Clear64byte
	ldr r2, [sp]
	strb r2, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080B0212:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B01E0
_080B021A:
	ldr r0, _080B0228 @ =0x68736D53
	str r0, [r7, #0x34]
_080B021E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0228: .4byte 0x68736D53

    .syntax divided
