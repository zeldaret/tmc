    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08017758 @ =gUnk_03003C70
	movs r0, #0x80
	lsls r0, r0, #1
	adds r7, r2, r0
	movs r5, #0x41
	rsbs r5, r5, #0
	ldr r6, _0801775C @ =gUnk_02018EA0
	b _08017766
	.align 2, 0
_08017758: .4byte gUnk_03003C70
_0801775C: .4byte gUnk_02018EA0
_08017760:
	adds r2, #0x10
	cmp r7, r2
	bls _0801779A
_08017766:
	ldr r0, [r2, #8]
	cmp r4, r0
	bne _08017760
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017760
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3]
	movs r0, #0
	str r0, [r2, #8]
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r6]
	cmp r2, r0
	bne _0801779A
	ldr r0, [r2, #4]
	str r0, [r6]
_0801779A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided