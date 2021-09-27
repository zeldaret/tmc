	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r7, #0
_08059974:
	ldrh r0, [r6]
	adds r6, #2
	ldrh r1, [r5]
	adds r5, #2
	mov r2, r8
	bl sub_080598F8
	strh r0, [r4]
	adds r4, #2
	adds r7, #1
	cmp r7, #0xf
	bls _08059974
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
