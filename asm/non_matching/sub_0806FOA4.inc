    .syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _0806F114 @ =gUnk_03003DA8
	ldr r5, [r7, #4]
	movs r0, #0
	cmp r5, r7
	beq _0806F0BA
_0806F0B2:
	adds r0, #1
	ldr r5, [r5, #4]
	cmp r5, r7
	bne _0806F0B2
_0806F0BA:
	cmp r0, #1
	bls _0806F10E
	ldr r5, [r7, #4]
	cmp r5, r7
	beq _0806F10E
	movs r2, #1
_0806F0C6:
	ldrb r1, [r5, #0x10]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F108
	ldrb r1, [r5, #0x17]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F108
	ldr r4, [r5, #4]
	cmp r4, r7
	beq _0806F108
	movs r6, #1
_0806F0E2:
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F102
	ldrb r1, [r4, #0x17]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F102
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_08004484
	ldr r2, [sp]
_0806F102:
	ldr r4, [r4, #4]
	cmp r4, r7
	bne _0806F0E2
_0806F108:
	ldr r5, [r5, #4]
	cmp r5, r7
	bne _0806F0C6
_0806F10E:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806F114: .4byte gUnk_03003DA8
    .syntax divided
