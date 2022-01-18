    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	ldr r7, _0801E6C4 @ =gUnk_02018EE0
	cmp r4, #0
	bge _0801E65E
	cmp r6, #0
	blt _0801E6C2
_0801E65E:
	cmp r4, #0x9f
	ble _0801E666
	cmp r6, #0x9f
	bgt _0801E6C2
_0801E666:
	cmp r4, r6
	ble _0801E676
	adds r1, r4, #0
	adds r4, r6, #0
	adds r6, r1, #0
	adds r1, r5, #0
	adds r5, r2, #0
	adds r2, r1, #0
_0801E676:
	cmp r4, r6
	beq _0801E6C2
	subs r0, r2, r5
	lsls r0, r0, #0x10
	subs r1, r6, r4
	bl Div
	adds r3, r0, #0
	cmp r4, #0
	bge _0801E694
	rsbs r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #0x10
	adds r5, r5, r0
	movs r4, #0
_0801E694:
	cmp r6, #0x9f
	ble _0801E69A
	movs r6, #0x9f
_0801E69A:
	lsls r2, r5, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r0, r7
_0801E6A8:
	cmp r5, #0
	bge _0801E6AE
	movs r5, #0
_0801E6AE:
	cmp r5, #0xf0
	ble _0801E6B4
	movs r5, #0xf0
_0801E6B4:
	str r5, [r7]
	adds r2, r2, r3
	asrs r5, r2, #0x10
	adds r4, #1
	adds r7, #0xc
	cmp r4, r6
	ble _0801E6A8
_0801E6C2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E6C4: .4byte gUnk_02018EE0
    .syntax divided
