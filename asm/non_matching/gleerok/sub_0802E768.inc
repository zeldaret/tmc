	.syntax unified

	.text
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r6, #0x1f
_0802E770:
	lsls r3, r2, #2
	adds r0, r4, r3
	ldrb r1, [r0, #1]
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r6
	adds r5, r2, #0
	cmp r0, #0x10
	ble _0802E790
	cmp r0, #0x1e
	bgt _0802E798
	adds r1, #1
	b _0802E796
_0802E790:
	cmp r0, #1
	ble _0802E798
	subs r1, #1
_0802E796:
	ands r1, r6
_0802E798:
	adds r0, r4, r3
	strb r1, [r0, #1]
	ldrb r1, [r0, #0x19]
	lsls r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0x10
	ble _0802E7B6
	cmp r0, #0x1d
	bgt _0802E7BE
	adds r1, #1
	b _0802E7BC
_0802E7B6:
	cmp r0, #2
	ble _0802E7BE
	subs r1, #1
_0802E7BC:
	ands r1, r2
_0802E7BE:
	adds r0, r4, r3
	strb r1, [r0, #0x19]
	adds r2, r5, #0
	cmp r2, #4
	bls _0802E770
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
