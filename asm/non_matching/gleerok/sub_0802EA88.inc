	.syntax unified

	.text
push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
_0802EA90:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #1]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _0802EAC2
	movs r6, #1
	ldrb r0, [r1, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802EAB6
	movs r3, #0
_0802EAB6:
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_0802EA48
	b _0802EAC8
_0802EAC2:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EA90
_0802EAC8:
	movs r3, #0
	movs r4, #0x1f
_0802EACC:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #1]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EAEE
	cmp r0, #0x1e
	bgt _0802EAF6
	adds r3, #1
	b _0802EAF4
_0802EAEE:
	cmp r0, #1
	ble _0802EAF6
	subs r3, #1
_0802EAF4:
	ands r3, r4
_0802EAF6:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #1]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EACC
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
