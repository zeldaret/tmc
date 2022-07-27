	.syntax unified

	.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_0802EB1A:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #0x19]
	ldrb r3, [r1, #0x19]
	cmp r0, r3
	beq _0802EB4E
	movs r0, #1
	mov r8, r0
	ldrb r0, [r1, #0x19]
	ldrb r1, [r4, #0x19]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #2
	cmp r0, #0x10
	ble _0802EB42
	movs r3, #3
_0802EB42:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_0802EA68
	b _0802EB54
_0802EB4E:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EB1A
_0802EB54:
	movs r3, #0
	movs r4, #0x1f
	rsbs r6, r7, #0
	ands r6, r4
_0802EB5C:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #0x19]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EB7E
	cmp r6, r0
	ble _0802EB86
	adds r3, #1
	b _0802EB84
_0802EB7E:
	cmp r7, r0
	bge _0802EB86
	subs r3, #1
_0802EB84:
	ands r3, r4
_0802EB86:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #0x19]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EB5C
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
