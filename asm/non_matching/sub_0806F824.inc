    .syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r2, #0
	adds r5, r3, #0
	movs r2, #0x2e
	ldrsh r6, [r0, r2]
	movs r2, #0x32
	ldrsh r3, [r0, r2]
	mov r8, r3
	movs r3, #0x2e
	ldrsh r2, [r1, r3]
	adds r2, r2, r4
	movs r0, #0x32
	ldrsh r3, [r1, r0]
	adds r3, r3, r5
	adds r0, r6, #0
	mov r1, r8
	bl sub_080045D4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
    .syntax divided
