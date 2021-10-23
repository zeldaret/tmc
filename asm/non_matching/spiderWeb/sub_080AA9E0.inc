	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AAA00
	ldr r0, _080AA9FC @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	b _080AAA0A
	.align 2, 0
_080AA9FC: .4byte gPlayerEntity
_080AAA00:
	ldr r0, _080AAA24 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
_080AAA0A:
	subs r4, r1, r0
	ldrb r2, [r5, #0xa]
	lsls r1, r2, #2
	ldr r0, _080AAA28 @ =gUnk_0812A074
	adds r3, r1, r0
	cmp r2, #2
	bgt _080AAA2C
	cmp r2, #1
	bge _080AAA36
	cmp r2, #0
	beq _080AAA30
	b _080AAA40
	.align 2, 0
_080AAA24: .4byte gPlayerEntity
_080AAA28: .4byte gUnk_0812A074
_080AAA2C:
	cmp r2, #3
	bne _080AAA40
_080AAA30:
	cmp r4, #4
	ble _080AAA40
	b _080AAA3E
_080AAA36:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r4, r0
	bge _080AAA40
_080AAA3E:
	adds r3, #2
_080AAA40:
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3, #1]
	strb r0, [r5, #0x15]
	ldrb r0, [r3]
	cmp r0, #5
	bne _080AAA66
	adds r0, r5, #0
	bl sub_08078930
_080AAA66:
	pop {r4, r5, pc}
	.syntax divided
